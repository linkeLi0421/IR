; ModuleID = '/llk/IR/fs/ext4/namei.c_pt.bc'
source_filename = "../fs/ext4/namei.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ext4_dir_entry_tail = type { i32, i16, i8, i8, i32 }
%struct.anon.79 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.dx_hash_info = type { i32, i32, i32, ptr }
%struct.dx_frame = type { ptr, ptr, ptr }
%struct.fscrypt_str = type { ptr, i32 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ext4_dir_entry_2 = type { i32, i16, i8, i8, [255 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dx_entry = type { i32, i32 }
%struct.dx_countlimit = type { i16, i16 }
%struct.dx_node = type { %struct.fake_dirent, [0 x %struct.dx_entry] }
%struct.fake_dirent = type { i32, i16, i8, i8 }
%struct.dx_root = type { %struct.fake_dirent, [4 x i8], %struct.fake_dirent, [4 x i8], %struct.dx_root_info, [0 x %struct.dx_entry] }
%struct.dx_root_info = type { i32, i8, i8, i8, i8 }
%struct.ext4_dir_entry_hash = type { i32, i32 }
%struct.ext4_filename = type { ptr, %struct.fscrypt_str, %struct.dx_hash_info }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { i64 }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
%struct.anon.4 = type { i32, i32 }
%struct.ext4_dir_entry = type { i32, i16, i16, [255 x i8] }
%struct.dx_tail = type { i32, i32 }
%struct.jbd2_journal_handle = type { %union.anon.76, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.76 = type { ptr }
%struct.ext4_renament = type { ptr, ptr, ptr, i8, i32, ptr, ptr, i32, ptr, ptr, i32 }
%struct.dx_map_entry = type { i32, i16, i16 }

@__func__.ext4_dirblock_csum_verify = private unnamed_addr constant [26 x i8] c"ext4_dirblock_csum_verify\00", align 1
@__func__.ext4_handle_dirty_dirblock = private unnamed_addr constant [27 x i8] c"ext4_handle_dirty_dirblock\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"fs/ext4/namei.c\00", align 1
@__func__.ext4_search_dir = private unnamed_addr constant [16 x i8] c"ext4_search_dir\00", align 1
@dotdot_name = external dso_local constant %struct.qstr, align 8
@__func__.ext4_get_parent = private unnamed_addr constant [16 x i8] c"ext4_get_parent\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"bad parent inode number: %u\00", align 1
@__func__.ext4_find_dest_de = private unnamed_addr constant [18 x i8] c"ext4_find_dest_de\00", align 1
@__func__.ext4_generic_delete_entry = private unnamed_addr constant [26 x i8] c"ext4_generic_delete_entry\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@__func__.ext4_empty_dir = private unnamed_addr constant [15 x i8] c"ext4_empty_dir\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"invalid size\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"directory missing '.'\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"directory missing '..'\00", align 1
@__func__.__ext4_unlink = private unnamed_addr constant [14 x i8] c"__ext4_unlink\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Deleting file '%.*s' with no links\00", align 1
@__func__.__ext4_link = private unnamed_addr constant [12 x i8] c"__ext4_link\00", align 1
@ext4_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @ext4_lookup, ptr null, ptr null, ptr null, ptr null, ptr @ext4_create, ptr @ext4_link, ptr @ext4_unlink, ptr @ext4_symlink, ptr @ext4_mkdir, ptr @ext4_rmdir, ptr @ext4_mknod, ptr @ext4_rename2, ptr @ext4_setattr, ptr @ext4_getattr, ptr @ext4_listxattr, ptr @ext4_fiemap, ptr null, ptr null, ptr @ext4_tmpfile, ptr null, ptr @ext4_fileattr_set, ptr @ext4_fileattr_get, [36 x i8] undef }, align 64
@ext4_special_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext4_setattr, ptr @ext4_getattr, ptr @ext4_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"No space for directory leaf checksum. Please run e2fsck -D.\00", align 1
@__func__.ext4_dirblock_csum_set = private unnamed_addr constant [23 x i8] c"ext4_dirblock_csum_set\00", align 1
@__func__.htree_dirblock_to_tree = private unnamed_addr constant [23 x i8] c"htree_dirblock_to_tree\00", align 1
@__func__.dx_probe = private unnamed_addr constant [9 x i8] c"dx_probe\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unrecognised inode hash code %u\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Hash in dirent, but hash is not SIPHASH\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Hash code is SIPHASH, but hash not in dirent\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Unimplemented hash flags: %#06x\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Directory (ino: %lu) htree depth %#06x exceedsupported value\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Enable large directory feature to access it\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"dx entry: limit %u != root limit %u\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"dx entry: count %u beyond limit %u\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"dx entry: limit %u != node limit %u\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Corrupt directory, running e2fsck is recommended\00", align 1
@__func__.ext4_htree_next_block = private unnamed_addr constant [22 x i8] c"ext4_htree_next_block\00", align 1
@__func__.__ext4_find_entry = private unnamed_addr constant [18 x i8] c"__ext4_find_entry\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"reading directory lblock %lu\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"checksumming directory block %lu\00", align 1
@__func__.ext4_dx_find_entry = private unnamed_addr constant [19 x i8] c"ext4_dx_find_entry\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"error %d reading directory index block\00", align 1
@ext4_type_by_mode = internal unnamed_addr constant [16 x i8] c"\00\05\03\00\02\00\04\00\01\00\07\00\06\00\00\00", align 1
@__func__.ext4_append = private unnamed_addr constant [12 x i8] c"ext4_append\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"inode #%lu: lblock %lu: comm %s: error %ld reading directory block\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Directory hole found for htree %s block\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"leaf\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"directory leaf block found instead of index block\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Directory index failed checksum\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Directory block failed checksum\00", align 1
@__func__.ext4_dx_csum_verify = private unnamed_addr constant [20 x i8] c"ext4_dx_csum_verify\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"dir seems corrupt?  Run e2fsck -D.\00", align 1
@__func__.ext4_delete_entry = private unnamed_addr constant [18 x i8] c"ext4_delete_entry\00", align 1
@ext4_update_dx_flag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_add_entry = private unnamed_addr constant [15 x i8] c"ext4_add_entry\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Directory has corrupted htree index.\00", align 1
@__func__.ext4_dx_add_entry = private unnamed_addr constant [18 x i8] c"ext4_dx_add_entry\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"Directory (ino: %lu) index full, reach max htree level :%d\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"Large directory feature is not enabled on this filesystem\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", align 1
@__func__.dx_insert_block = private unnamed_addr constant [16 x i8] c"dx_insert_block\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"count < dx_get_limit(entries)\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"old < entries + count\00", align 1
@__func__.ext4_handle_dirty_dx_node = private unnamed_addr constant [26 x i8] c"ext4_handle_dirty_dx_node\00", align 1
@__func__.ext4_dx_csum_set = private unnamed_addr constant [17 x i8] c"ext4_dx_csum_set\00", align 1
@__func__.do_split = private unnamed_addr constant [9 x i8] c"do_split\00", align 1
@__func__.add_dirent_to_buf = private unnamed_addr constant [18 x i8] c"add_dirent_to_buf\00", align 1
@__func__.make_indexed_dir = private unnamed_addr constant [17 x i8] c"make_indexed_dir\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"invalid rec_len for '..'\00", align 1
@__func__.ext4_lookup = private unnamed_addr constant [12 x i8] c"ext4_lookup\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"bad inode number: %u\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"'%pd' linked to parent dir\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"deleted inode referenced: %u\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"Inconsistent encryption contexts: %lu/%lu\00", align 1
@ext4_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_file_operations = external dso_local constant %struct.file_operations, align 4
@__func__.ext4_create = private unnamed_addr constant [12 x i8] c"ext4_create\00", align 1
@__func__.ext4_add_nondir = private unnamed_addr constant [16 x i8] c"ext4_add_nondir\00", align 1
@__func__.ext4_unlink = private unnamed_addr constant [12 x i8] c"ext4_unlink\00", align 1
@__tracepoint_ext4_unlink_enter = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_ext4_unlink_exit = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_symlink = private unnamed_addr constant [13 x i8] c"ext4_symlink\00", align 1
@ext4_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_fast_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_dir_operations = external dso_local constant %struct.file_operations, align 4
@__func__.ext4_mkdir = private unnamed_addr constant [11 x i8] c"ext4_mkdir\00", align 1
@__func__.ext4_rmdir = private unnamed_addr constant [11 x i8] c"ext4_rmdir\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"empty directory '%.*s' has too many links (%u)\00", align 1
@__func__.ext4_mknod = private unnamed_addr constant [11 x i8] c"ext4_mknod\00", align 1
@__func__.ext4_cross_rename = private unnamed_addr constant [18 x i8] c"ext4_cross_rename\00", align 1
@__func__.ext4_rename_dir_prepare = private unnamed_addr constant [24 x i8] c"ext4_rename_dir_prepare\00", align 1
@__func__.ext4_get_first_dir_block = private unnamed_addr constant [25 x i8] c"ext4_get_first_dir_block\00", align 1
@__func__.ext4_setent = private unnamed_addr constant [12 x i8] c"ext4_setent\00", align 1
@__func__.ext4_rename_dir_finish = private unnamed_addr constant [23 x i8] c"ext4_rename_dir_finish\00", align 1
@__func__.ext4_update_dir_count = private unnamed_addr constant [22 x i8] c"ext4_update_dir_count\00", align 1
@__func__.ext4_rename = private unnamed_addr constant [12 x i8] c"ext4_rename\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"target of rename is already freed\00", align 1
@__func__.ext4_whiteout_for_rename = private unnamed_addr constant [25 x i8] c"ext4_whiteout_for_rename\00", align 1
@__func__.ext4_rename_delete = private unnamed_addr constant [19 x i8] c"ext4_rename_delete\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"Deleting old file: nlink %d, error=%d\00", align 1
@__func__.ext4_resetent = private unnamed_addr constant [14 x i8] c"ext4_resetent\00", align 1
@__func__.ext4_tmpfile = private unnamed_addr constant [13 x i8] c"ext4_tmpfile\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_initialize_dirent_tail(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, -12
  %6 = getelementptr i8, ptr %4, i32 %5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false)
  %7 = add i32 %1, -262145
  %8 = icmp ult i32 %7, -262133
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %6, i32 0, i32 1
  store i16 12, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %6, i32 0, i32 3
  store i8 -34, ptr %12, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_dirblock_csum_verify(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon.79, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 30
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %81, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 119
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %32, !prof !10

21:                                               ; preds = %14
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_super_block, ptr %24, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 119
  %31 = load ptr, ptr %30, align 8
  br label %32

32:                                               ; preds = %29, %14
  %33 = phi ptr [ %31, %29 ], [ %16, %14 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %81, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 16
  %41 = add i32 %40, -12
  %42 = getelementptr i8, ptr %37, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %42, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 12
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %42, i32 0, i32 2
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %42, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = icmp ne i8 %55, -34
  %57 = icmp eq ptr %42, null
  %58 = or i1 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %49, %45, %35
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_dirblock_csum_verify, i32 noundef 376, ptr noundef nonnull @.str.9) #11
  br label %81

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %42, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 27
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %0, i32 528
  %66 = load i32, ptr %65, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #11, !annotation !11
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %64, i32 0, i32 119
  %68 = load ptr, ptr %67, align 8
  %69 = load i32, ptr %68, align 64
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %72, label %71, !prof !12

71:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

72:                                               ; preds = %60
  store ptr %68, ptr %3, align 8
  %73 = getelementptr inbounds %struct.anon.79, ptr %3, i32 0, i32 1
  store i32 %66, ptr %73, align 8
  %74 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef %37, i32 noundef %41) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !12

76:                                               ; preds = %72
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

77:                                               ; preds = %72
  %78 = load i32, ptr %73, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %79 = icmp eq i32 %62, %78
  %80 = zext i1 %79 to i32
  br label %81

81:                                               ; preds = %77, %59, %32, %21, %2
  %82 = phi i32 [ 0, %59 ], [ 1, %32 ], [ %80, %77 ], [ 1, %21 ], [ 1, %2 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon.79, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 30
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %79, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 119
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %33, !prof !10

22:                                               ; preds = %15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 30
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 119
  %32 = load ptr, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %15
  %34 = phi ptr [ %32, %30 ], [ %17, %15 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %79, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 16
  %42 = add i32 %41, -12
  %43 = getelementptr i8, ptr %38, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %43, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 12
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %43, i32 0, i32 2
  %52 = load i8, ptr %51, align 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %43, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = icmp ne i8 %56, -34
  %58 = icmp eq ptr %43, null
  %59 = or i1 %58, %57
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %50, %46, %36
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_dirblock_csum_set, i32 noundef 397, ptr noundef nonnull @.str.9) #11
  br label %79

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 27
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %1, i32 528
  %65 = load i32, ptr %64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !annotation !11
  %66 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 119
  %67 = load ptr, ptr %66, align 8
  %68 = load i32, ptr %67, align 64
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %71, label %70, !prof !12

70:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

71:                                               ; preds = %61
  store ptr %67, ptr %4, align 8
  %72 = getelementptr inbounds %struct.anon.79, ptr %4, i32 0, i32 1
  store i32 %65, ptr %72, align 8
  %73 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %38, i32 noundef %42) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75, !prof !12

75:                                               ; preds = %71
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

76:                                               ; preds = %71
  %77 = load i32, ptr %72, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %78 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %43, i32 0, i32 4
  store i32 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %76, %60, %33, %22, %3
  %80 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_handle_dirty_dirblock, i32 noundef 410, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_htree_fill_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dx_hash_info, align 4
  %6 = alloca [3 x %struct.dx_frame], align 4
  %7 = alloca %struct.fscrypt_str, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store i64 0, ptr %7, align 8, !annotation !11
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 -124
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 49152
  %19 = icmp eq i32 %18, 49152
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dx_hash_info, ptr %5, i32 0, i32 2
  store i32 6, ptr %21, align 4
  br label %31

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 34
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dx_hash_info, ptr %5, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = icmp slt i32 %28, 3
  br i1 %30, label %36, label %31

31:                                               ; preds = %22, %20
  %32 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 27
  %35 = load ptr, ptr %34, align 4
  br label %44

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 27
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 35
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, %28
  store i32 %43, ptr %29, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi ptr [ %35, %31 ], [ %40, %36 ]
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.dx_hash_info, ptr %5, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = load volatile i32, ptr %11, align 4
  %49 = and i32 %48, 268435456
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %10, i32 478
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 1, ptr %8, align 4
  %56 = call i32 @ext4_inlinedir_to_tree(ptr noundef %0, ptr noundef %10, i32 noundef 0, ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %8) #11
  %57 = load i32, ptr %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 -1, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %237

60:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %61

61:                                               ; preds = %60, %51, %44
  %62 = call fastcc i32 @htree_dirblock_to_tree(ptr noundef %0, ptr noundef %10, i32 noundef 0, ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2)
  store i32 -1, ptr %3, align 4
  br label %237

63:                                               ; preds = %4
  store i32 %1, ptr %5, align 4
  %64 = getelementptr inbounds %struct.dx_hash_info, ptr %5, i32 0, i32 1
  store i32 0, ptr %64, align 4
  %65 = call fastcc ptr @dx_probe(ptr noundef null, ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = ptrtoint ptr %65 to i32
  br label %237

69:                                               ; preds = %63
  %70 = or i32 %2, %1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %75, i32 0, i32 4
  store ptr %76, ptr %7, align 8
  %77 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %75, i32 0, i32 2
  %78 = load i8, ptr %77, align 2
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds %struct.fscrypt_str, ptr %7, i32 0, i32 1
  store i32 %79, ptr %80, align 4
  %81 = call i32 @ext4_htree_store_dirent(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %75, ptr noundef nonnull %7) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %217

83:                                               ; preds = %72, %69
  %84 = phi i32 [ 0, %69 ], [ 1, %72 ]
  %85 = icmp ult i32 %1, 2
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = icmp eq i32 %1, 2
  %88 = icmp eq i32 %2, 0
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86, %83
  %91 = load ptr, ptr %6, align 4
  %92 = getelementptr inbounds %struct.buffer_head, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %93, i32 0, i32 1
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = getelementptr i8, ptr %93, i32 %96
  %98 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %97, i32 0, i32 4
  store ptr %98, ptr %7, align 8
  %99 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %97, i32 0, i32 2
  %100 = load i8, ptr %99, align 2
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds %struct.fscrypt_str, ptr %7, i32 0, i32 1
  store i32 %101, ptr %102, align 4
  %103 = call i32 @ext4_htree_store_dirent(ptr noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef %97, ptr noundef nonnull %7) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %217

105:                                              ; preds = %90
  %106 = add nuw nsw i32 %84, 1
  br label %107

107:                                              ; preds = %105, %86
  %108 = phi i32 [ %106, %105 ], [ %84, %86 ]
  %109 = tail call ptr @llvm.thread.pointer() #11
  %110 = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 98, i32 1
  %111 = getelementptr inbounds %struct.dx_frame, ptr %65, i32 0, i32 2
  %112 = getelementptr inbounds %struct.dx_frame, ptr %65, i32 0, i32 1
  br label %113

113:                                              ; preds = %190, %107
  %114 = phi i32 [ %108, %107 ], [ %131, %190 ]
  %115 = load volatile i32, ptr %109, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %110, align 4
  %120 = and i32 %119, 256
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %217

122:                                              ; preds = %118, %113
  %123 = call i32 @__cond_resched() #11
  %124 = load ptr, ptr %111, align 4
  %125 = getelementptr inbounds %struct.dx_entry, ptr %124, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 268435455
  %128 = call fastcc i32 @htree_dirblock_to_tree(ptr noundef %0, ptr noundef %10, i32 noundef %127, ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2)
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %217, label %130

130:                                              ; preds = %122
  %131 = add i32 %128, %114
  %132 = load ptr, ptr %111, align 4
  %133 = getelementptr %struct.dx_entry, ptr %132, i32 1
  store ptr %133, ptr %111, align 4
  %134 = load ptr, ptr %112, align 4
  %135 = getelementptr inbounds %struct.dx_countlimit, ptr %134, i32 0, i32 1
  %136 = load i16, ptr %135, align 2
  %137 = zext i16 %136 to i32
  %138 = getelementptr %struct.dx_entry, ptr %134, i32 %137
  %139 = icmp ult ptr %133, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, ptr %133, align 4
  br label %187

142:                                              ; preds = %146, %130
  %143 = phi i32 [ %147, %146 ], [ 0, %130 ]
  %144 = phi ptr [ %148, %146 ], [ %65, %130 ]
  %145 = icmp eq ptr %144, %6
  br i1 %145, label %189, label %146

146:                                              ; preds = %142
  %147 = add i32 %143, 1
  %148 = getelementptr %struct.dx_frame, ptr %144, i32 -1
  %149 = getelementptr %struct.dx_frame, ptr %144, i32 -1, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr %struct.dx_entry, ptr %150, i32 1
  store ptr %151, ptr %149, align 4
  %152 = getelementptr %struct.dx_frame, ptr %144, i32 -1, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dx_countlimit, ptr %153, i32 0, i32 1
  %155 = load i16, ptr %154, align 2
  %156 = zext i16 %155 to i32
  %157 = getelementptr %struct.dx_entry, ptr %153, i32 %156
  %158 = icmp ult ptr %151, %157
  br i1 %158, label %159, label %142

159:                                              ; preds = %146
  %160 = load i32, ptr %151, align 4
  %161 = icmp eq i32 %147, 0
  br i1 %161, label %187, label %162

162:                                              ; preds = %178, %159
  %163 = phi i32 [ %165, %178 ], [ %147, %159 ]
  %164 = phi ptr [ %174, %178 ], [ %148, %159 ]
  %165 = add i32 %163, -1
  %166 = getelementptr inbounds %struct.dx_frame, ptr %164, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.dx_entry, ptr %167, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 268435455
  %171 = call fastcc ptr @__ext4_read_dirblock(ptr noundef %10, i32 noundef %170, i32 noundef 1, ptr noundef nonnull @__func__.ext4_htree_next_block, i32 noundef 998) #11
  %172 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %185, label %173

173:                                              ; preds = %162
  %174 = getelementptr %struct.dx_frame, ptr %164, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  call void @__brelse(ptr noundef nonnull %175) #11
  br label %178

178:                                              ; preds = %177, %173
  store ptr %171, ptr %174, align 4
  %179 = getelementptr inbounds %struct.buffer_head, ptr %171, i32 0, i32 5
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.dx_node, ptr %180, i32 0, i32 1
  %182 = getelementptr %struct.dx_frame, ptr %164, i32 1, i32 1
  store ptr %181, ptr %182, align 4
  %183 = getelementptr %struct.dx_frame, ptr %164, i32 1, i32 2
  store ptr %181, ptr %183, align 4
  %184 = icmp eq i32 %165, 0
  br i1 %184, label %187, label %162

185:                                              ; preds = %162
  store i32 %160, ptr %3, align 4
  %186 = icmp slt ptr %171, null
  br i1 %186, label %215, label %190

187:                                              ; preds = %178, %159, %140
  %188 = phi i32 [ %160, %159 ], [ %141, %140 ], [ %160, %178 ]
  store i32 %188, ptr %3, align 4
  br label %190

189:                                              ; preds = %142
  store i32 -1, ptr %3, align 4
  br label %196

190:                                              ; preds = %187, %185
  %191 = phi i32 [ %188, %187 ], [ %160, %185 ]
  %192 = icmp ne i32 %131, 0
  %193 = and i32 %191, 1
  %194 = icmp eq i32 %193, 0
  %195 = select i1 %192, i1 %194, i1 false
  br i1 %195, label %196, label %113

196:                                              ; preds = %190, %189
  %197 = load ptr, ptr %6, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %237, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.buffer_head, ptr %197, i32 0, i32 5
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.dx_root, ptr %201, i32 0, i32 4, i32 3
  %203 = load i8, ptr %202, align 2
  %204 = zext i8 %203 to i32
  br label %205

205:                                              ; preds = %210, %199
  %206 = phi i32 [ 0, %199 ], [ %211, %210 ]
  %207 = phi ptr [ %197, %199 ], [ %213, %210 ]
  %208 = getelementptr %struct.dx_frame, ptr %6, i32 %206
  call void @__brelse(ptr noundef nonnull %207) #11
  store ptr null, ptr %208, align 4
  %209 = icmp eq i32 %206, %204
  br i1 %209, label %237, label %210

210:                                              ; preds = %205
  %211 = add nuw nsw i32 %206, 1
  %212 = getelementptr %struct.dx_frame, ptr %6, i32 %211
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %237, label %205

215:                                              ; preds = %185
  %216 = ptrtoint ptr %171 to i32
  br label %217

217:                                              ; preds = %215, %122, %118, %90, %72
  %218 = phi i32 [ %103, %90 ], [ %81, %72 ], [ %216, %215 ], [ -512, %118 ], [ %128, %122 ]
  %219 = load ptr, ptr %6, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %237, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.buffer_head, ptr %219, i32 0, i32 5
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.dx_root, ptr %223, i32 0, i32 4, i32 3
  %225 = load i8, ptr %224, align 2
  %226 = zext i8 %225 to i32
  br label %227

227:                                              ; preds = %232, %221
  %228 = phi i32 [ 0, %221 ], [ %233, %232 ]
  %229 = phi ptr [ %219, %221 ], [ %235, %232 ]
  %230 = getelementptr %struct.dx_frame, ptr %6, i32 %228
  call void @__brelse(ptr noundef nonnull %229) #11
  store ptr null, ptr %230, align 4
  %231 = icmp eq i32 %228, %226
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = add nuw nsw i32 %228, 1
  %234 = getelementptr %struct.dx_frame, ptr %6, i32 %233
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %227

237:                                              ; preds = %232, %227, %217, %210, %205, %196, %67, %61, %59
  %238 = phi i32 [ %68, %67 ], [ %62, %61 ], [ %56, %59 ], [ %131, %196 ], [ %218, %217 ], [ %218, %227 ], [ %218, %232 ], [ %131, %205 ], [ %131, %210 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %238
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inlinedir_to_tree(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @htree_dirblock_to_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.fscrypt_str, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store i64 0, ptr %7, align 8, !annotation !11
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 30
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 119
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  %22 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %36, !prof !10

25:                                               ; preds = %18
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 30
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 119
  %35 = load ptr, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %18
  %37 = phi ptr [ %35, %33 ], [ %20, %18 ]
  %38 = icmp ne ptr %37, null
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %36, %25, %6
  %41 = phi i32 [ 0, %25 ], [ %39, %36 ], [ 0, %6 ]
  %42 = tail call fastcc ptr @__ext4_read_dirblock(ptr noundef %1, i32 noundef %2, i32 noundef 3, ptr noundef nonnull @__func__.htree_dirblock_to_tree, i32 noundef 1028)
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = ptrtoint ptr %42 to i32
  br label %162

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %8, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 16
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = icmp ne i32 %41, 0
  %54 = icmp eq ptr %1, null
  %55 = or i1 %54, %53
  %56 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 49152
  %59 = icmp eq i32 %58, 49152
  %60 = select i1 %59, i32 -16, i32 -8
  %61 = select i1 %55, i32 -8, i32 %60
  %62 = getelementptr i8, ptr %52, i32 %61
  %63 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %64 = and i32 %57, 16384
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %46
  %67 = icmp ult ptr %48, %62
  br i1 %67, label %68, label %158

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 4
  %70 = getelementptr inbounds %struct.dx_hash_info, ptr %3, i32 0, i32 1
  %71 = getelementptr inbounds %struct.fscrypt_str, ptr %7, i32 0, i32 1
  br label %75

72:                                               ; preds = %46
  %73 = icmp eq ptr %42, null
  br i1 %73, label %162, label %74

74:                                               ; preds = %72
  tail call void @__brelse(ptr noundef nonnull %42) #11
  br label %162

75:                                               ; preds = %155, %68
  %76 = phi ptr [ %49, %68 ], [ %157, %155 ]
  %77 = phi ptr [ %48, %68 ], [ %156, %155 ]
  %78 = phi i32 [ 0, %68 ], [ %149, %155 ]
  %79 = phi ptr [ %48, %68 ], [ %153, %155 ]
  %80 = load i32, ptr %69, align 8
  %81 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 2
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i32
  %84 = shl i32 %2, %83
  %85 = ptrtoint ptr %79 to i32
  %86 = ptrtoint ptr %77 to i32
  %87 = sub i32 %85, %86
  %88 = add i32 %87, %84
  %89 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.htree_dirblock_to_tree, i32 noundef 1057, ptr noundef %1, ptr noundef null, ptr noundef %79, ptr noundef %42, ptr noundef %77, i32 noundef %80, i32 noundef %88) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %158, !prof !12

91:                                               ; preds = %75
  %92 = load i32, ptr %63, align 4
  %93 = and i32 %92, 49152
  %94 = icmp eq i32 %93, 49152
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %79, i32 0, i32 2
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = icmp eq i8 %97, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %79, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = add nuw nsw i32 %98, 11
  %105 = and i32 %104, 508
  %106 = getelementptr i8, ptr %79, i32 %105
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %3, align 4
  %108 = load i8, ptr %96, align 2
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %109, 11
  %111 = and i32 %110, 508
  %112 = getelementptr i8, ptr %79, i32 %111
  %113 = getelementptr inbounds %struct.ext4_dir_entry_hash, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  store i32 %114, ptr %70, align 4
  br label %123

115:                                              ; preds = %100, %95
  store i32 0, ptr %3, align 4
  store i32 0, ptr %70, align 4
  br label %123

116:                                              ; preds = %91
  %117 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %79, i32 0, i32 4
  %118 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %79, i32 0, i32 2
  %119 = load i8, ptr %118, align 2
  %120 = zext i8 %119 to i32
  %121 = call i32 @ext4fs_dirhash(ptr noundef %1, ptr noundef %117, i32 noundef %120, ptr noundef %3) #11
  %122 = load i32, ptr %3, align 4
  br label %123

123:                                              ; preds = %116, %115, %103
  %124 = phi i32 [ %107, %103 ], [ 0, %115 ], [ %122, %116 ]
  %125 = icmp ult i32 %124, %4
  br i1 %125, label %148, label %126

126:                                              ; preds = %123
  %127 = icmp eq i32 %124, %4
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = load i32, ptr %70, align 4
  %130 = icmp ult i32 %129, %5
  br i1 %130, label %148, label %131

131:                                              ; preds = %128, %126
  %132 = load i32, ptr %79, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr %63, align 4
  %136 = and i32 %135, 16384
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %79, i32 0, i32 4
  store ptr %139, ptr %7, align 8
  %140 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %79, i32 0, i32 2
  %141 = load i8, ptr %140, align 2
  %142 = zext i8 %141 to i32
  store i32 %142, ptr %71, align 4
  %143 = load i32, ptr %70, align 4
  %144 = call i32 @ext4_htree_store_dirent(ptr noundef %0, i32 noundef %124, i32 noundef %143, ptr noundef %79, ptr noundef nonnull %7) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %138
  %147 = add i32 %78, 1
  br label %148

148:                                              ; preds = %146, %131, %128, %123
  %149 = phi i32 [ %78, %123 ], [ %78, %128 ], [ %78, %131 ], [ %147, %146 ]
  %150 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %79, i32 0, i32 1
  %151 = load i16, ptr %150, align 4
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %79, i32 %152
  %154 = icmp ult ptr %153, %62
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load ptr, ptr %47, align 4
  %157 = load ptr, ptr %8, align 4
  br label %75

158:                                              ; preds = %148, %138, %134, %75, %66
  %159 = phi i32 [ 0, %66 ], [ -95, %134 ], [ %144, %138 ], [ %149, %148 ], [ %78, %75 ]
  %160 = icmp eq ptr %42, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call void @__brelse(ptr noundef nonnull %42) #11
  br label %162

162:                                              ; preds = %161, %158, %74, %72, %44
  %163 = phi i32 [ %45, %44 ], [ -95, %72 ], [ -95, %74 ], [ %159, %158 ], [ %159, %161 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dx_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false)
  %5 = tail call fastcc ptr @__ext4_read_dirblock(ptr noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 788)
  store ptr %5, ptr %3, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %325, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dx_root, ptr %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.dx_root, ptr %9, i32 0, i32 4, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  switch i8 %12, label %14 [
    i8 2, label %15
    i8 1, label %15
    i8 0, label %15
    i8 6, label %15
  ]

14:                                               ; preds = %7
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 798, ptr noundef nonnull @.str.10, i32 noundef %13) #11
  br label %310

15:                                               ; preds = %7, %7, %7, %7
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 49152
  %19 = icmp eq i32 %18, 49152
  %20 = icmp eq i8 %12, 6
  br i1 %19, label %21, label %34

21:                                               ; preds = %15
  br i1 %20, label %22, label %33

22:                                               ; preds = %21
  %23 = icmp eq ptr %0, null
  %24 = getelementptr inbounds %struct.ext4_filename, ptr %0, i32 0, i32 2
  %25 = select i1 %23, ptr %2, ptr %24
  %26 = getelementptr inbounds %struct.dx_hash_info, ptr %25, i32 0, i32 2
  store i32 %13, ptr %26, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 33
  %32 = getelementptr inbounds %struct.dx_hash_info, ptr %25, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  br i1 %23, label %72, label %58

33:                                               ; preds = %21
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 804, ptr noundef nonnull @.str.11) #11
  br label %310

34:                                               ; preds = %15
  br i1 %20, label %35, label %36

35:                                               ; preds = %34
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 810, ptr noundef nonnull @.str.12) #11
  br label %310

36:                                               ; preds = %34
  %37 = icmp eq ptr %0, null
  %38 = getelementptr inbounds %struct.ext4_filename, ptr %0, i32 0, i32 2
  %39 = select i1 %37, ptr %2, ptr %38
  %40 = getelementptr inbounds %struct.dx_hash_info, ptr %39, i32 0, i32 2
  store i32 %13, ptr %40, align 4
  %41 = icmp ult i8 %12, 3
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  br i1 %41, label %46, label %55

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 35
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, %13
  store i32 %49, ptr %40, align 4
  %50 = load ptr, ptr %42, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 27
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 33
  %54 = getelementptr inbounds %struct.dx_hash_info, ptr %39, i32 0, i32 3
  store ptr %53, ptr %54, align 4
  br i1 %37, label %72, label %58

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 33
  %57 = getelementptr inbounds %struct.dx_hash_info, ptr %39, i32 0, i32 3
  store ptr %56, ptr %57, align 4
  br i1 %37, label %72, label %58

58:                                               ; preds = %55, %46, %22
  %59 = phi ptr [ %27, %22 ], [ %42, %55 ], [ %42, %46 ]
  %60 = phi ptr [ %24, %22 ], [ %38, %55 ], [ %38, %46 ]
  %61 = getelementptr inbounds %struct.ext4_filename, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %58
  %65 = load i32, ptr %16, align 4
  %66 = and i32 %65, 49152
  %67 = icmp eq i32 %66, 49152
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ext4_filename, ptr %0, i32 0, i32 1, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @ext4fs_dirhash(ptr noundef %1, ptr noundef nonnull %62, i32 noundef %70, ptr noundef %60) #11
  br label %72

72:                                               ; preds = %68, %64, %58, %55, %46, %22
  %73 = phi ptr [ %27, %22 ], [ %59, %64 ], [ %59, %68 ], [ %59, %58 ], [ %42, %55 ], [ %42, %46 ]
  %74 = phi ptr [ %2, %22 ], [ %60, %64 ], [ %60, %68 ], [ %60, %58 ], [ %2, %55 ], [ %2, %46 ]
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dx_root, ptr %9, i32 0, i32 4, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 828, ptr noundef nonnull @.str.13, i32 noundef %78) #11
  br label %310

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.dx_root, ptr %9, i32 0, i32 4, i32 3
  %84 = load i8, ptr %83, align 2
  %85 = zext i8 %84 to i32
  %86 = load ptr, ptr %73, align 4
  %87 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 27
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ext4_super_block, ptr %90, i32 0, i32 29
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 16384
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 2, i32 3
  %96 = icmp ugt i32 %95, %85
  br i1 %96, label %110, label %97

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %99 = load i32, ptr %98, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %86, ptr noundef nonnull @__func__.dx_probe, i32 noundef 837, ptr noundef nonnull @.str.14, i32 noundef %99, i32 noundef %95) #11
  %100 = load ptr, ptr %73, align 4
  %101 = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 27
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ext4_sb_info, ptr %102, i32 0, i32 15
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ext4_super_block, ptr %104, i32 0, i32 29
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 16384
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %310

109:                                              ; preds = %97
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %100, ptr noundef nonnull @__func__.dx_probe, i32 noundef 840, ptr noundef nonnull @.str.15) #11
  br label %310

110:                                              ; preds = %82
  %111 = getelementptr inbounds %struct.dx_root, ptr %9, i32 0, i32 4, i32 2
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr i8, ptr %10, i32 %113
  %115 = load i16, ptr %114, align 2
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 3
  %118 = load i32, ptr %117, align 16
  %119 = sub nuw nsw i32 -24, %113
  %120 = add i32 %119, %118
  %121 = getelementptr inbounds %struct.ext4_super_block, ptr %90, i32 0, i32 30
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 1024
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %110
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 119
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  %129 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %130 = xor i1 %129, true
  %131 = select i1 %128, i1 %130, i1 false
  br i1 %131, label %132, label %143, !prof !10

132:                                              ; preds = %125
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %133 = load ptr, ptr %87, align 4
  %134 = getelementptr inbounds %struct.ext4_sb_info, ptr %133, i32 0, i32 15
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.ext4_super_block, ptr %135, i32 0, i32 30
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 1024
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.ext4_sb_info, ptr %133, i32 0, i32 119
  %142 = load ptr, ptr %141, align 8
  br label %143

143:                                              ; preds = %140, %125
  %144 = phi ptr [ %142, %140 ], [ %127, %125 ]
  %145 = icmp eq ptr %144, null
  %146 = add i32 %120, -8
  br i1 %145, label %147, label %148

147:                                              ; preds = %143, %132, %110
  br label %148

148:                                              ; preds = %147, %143
  %149 = phi i32 [ %120, %147 ], [ %146, %143 ]
  %150 = lshr i32 %149, 3
  %151 = icmp eq i32 %150, %116
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = icmp eq ptr %1, null
  br label %198

154:                                              ; preds = %148
  %155 = load i16, ptr %114, align 2
  %156 = zext i16 %155 to i32
  %157 = load i8, ptr %111, align 1
  %158 = zext i8 %157 to i32
  %159 = load ptr, ptr %73, align 4
  %160 = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 3
  %161 = load i32, ptr %160, align 16
  %162 = sub nuw nsw i32 -24, %158
  %163 = add i32 %162, %161
  %164 = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 27
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ext4_sb_info, ptr %165, i32 0, i32 15
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.ext4_super_block, ptr %167, i32 0, i32 30
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 1024
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %194, label %172

172:                                              ; preds = %154
  %173 = getelementptr inbounds %struct.ext4_sb_info, ptr %165, i32 0, i32 119
  %174 = load ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, null
  %176 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %177 = xor i1 %176, true
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %190, !prof !10

179:                                              ; preds = %172
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %180 = load ptr, ptr %164, align 4
  %181 = getelementptr inbounds %struct.ext4_sb_info, ptr %180, i32 0, i32 15
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.ext4_super_block, ptr %182, i32 0, i32 30
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 1024
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.ext4_sb_info, ptr %180, i32 0, i32 119
  %189 = load ptr, ptr %188, align 8
  br label %190

190:                                              ; preds = %187, %172
  %191 = phi ptr [ %189, %187 ], [ %174, %172 ]
  %192 = icmp eq ptr %191, null
  %193 = add i32 %163, -8
  br i1 %192, label %194, label %195

194:                                              ; preds = %190, %179, %154
  br label %195

195:                                              ; preds = %194, %190
  %196 = phi i32 [ %163, %194 ], [ %193, %190 ]
  %197 = lshr i32 %196, 3
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 852, ptr noundef nonnull @.str.16, i32 noundef %156, i32 noundef %197) #11
  br label %310

198:                                              ; preds = %298, %152
  %199 = phi i32 [ %240, %298 ], [ %85, %152 ]
  %200 = phi ptr [ %253, %298 ], [ %114, %152 ]
  %201 = phi ptr [ %243, %298 ], [ %3, %152 ]
  %202 = getelementptr inbounds %struct.dx_countlimit, ptr %200, i32 0, i32 1
  %203 = load i16, ptr %202, align 2
  %204 = zext i16 %203 to i32
  %205 = icmp eq i16 %203, 0
  %206 = load i16, ptr %200, align 2
  br i1 %205, label %211, label %207

207:                                              ; preds = %198
  %208 = icmp ugt i16 %203, %206
  br i1 %208, label %209, label %214

209:                                              ; preds = %207
  %210 = zext i16 %203 to i32
  br label %211

211:                                              ; preds = %209, %198
  %212 = phi i32 [ %210, %209 ], [ 0, %198 ]
  %213 = zext i16 %206 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 862, ptr noundef nonnull @.str.17, i32 noundef %212, i32 noundef %213) #11
  br label %306

214:                                              ; preds = %207
  %215 = getelementptr %struct.dx_entry, ptr %200, i32 1
  %216 = getelementptr %struct.dx_entry, ptr %200, i32 -1
  %217 = getelementptr %struct.dx_entry, ptr %216, i32 %204
  %218 = icmp ugt ptr %215, %217
  br i1 %218, label %235, label %219

219:                                              ; preds = %219, %214
  %220 = phi ptr [ %233, %219 ], [ %217, %214 ]
  %221 = phi ptr [ %232, %219 ], [ %215, %214 ]
  %222 = ptrtoint ptr %220 to i32
  %223 = ptrtoint ptr %221 to i32
  %224 = sub i32 %222, %223
  %225 = ashr exact i32 %224, 3
  %226 = sdiv i32 %225, 2
  %227 = getelementptr %struct.dx_entry, ptr %221, i32 %226
  %228 = load i32, ptr %227, align 4
  %229 = icmp ugt i32 %228, %75
  %230 = getelementptr %struct.dx_entry, ptr %227, i32 -1
  %231 = getelementptr %struct.dx_entry, ptr %227, i32 1
  %232 = select i1 %229, ptr %221, ptr %231
  %233 = select i1 %229, ptr %230, ptr %220
  %234 = icmp ugt ptr %232, %233
  br i1 %234, label %235, label %219

235:                                              ; preds = %219, %214
  %236 = phi ptr [ %215, %214 ], [ %232, %219 ]
  %237 = getelementptr %struct.dx_entry, ptr %236, i32 -1
  %238 = getelementptr inbounds %struct.dx_frame, ptr %201, i32 0, i32 1
  store ptr %200, ptr %238, align 4
  %239 = getelementptr inbounds %struct.dx_frame, ptr %201, i32 0, i32 2
  store ptr %237, ptr %239, align 4
  %240 = add nsw i32 %199, -1
  %241 = icmp eq i32 %199, 0
  br i1 %241, label %325, label %242

242:                                              ; preds = %235
  %243 = getelementptr %struct.dx_frame, ptr %201, i32 1
  %244 = getelementptr %struct.dx_entry, ptr %236, i32 -1, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 268435455
  %247 = tail call fastcc ptr @__ext4_read_dirblock(ptr noundef %1, i32 noundef %246, i32 noundef 1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 888)
  store ptr %247, ptr %243, align 4
  %248 = icmp ugt ptr %247, inttoptr (i32 -4096 to ptr)
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  store ptr null, ptr %243, align 4
  br label %306

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.buffer_head, ptr %247, i32 0, i32 5
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.dx_node, ptr %252, i32 0, i32 1
  %254 = load i16, ptr %253, align 2
  %255 = zext i16 %254 to i32
  %256 = load ptr, ptr %73, align 4
  %257 = getelementptr inbounds %struct.super_block, ptr %256, i32 0, i32 3
  %258 = load i32, ptr %257, align 16
  br i1 %153, label %264, label %259

259:                                              ; preds = %250
  %260 = load i32, ptr %16, align 4
  %261 = and i32 %260, 49152
  %262 = icmp eq i32 %261, 49152
  %263 = select i1 %262, i32 -16, i32 -8
  br label %264

264:                                              ; preds = %259, %250
  %265 = phi i32 [ -8, %250 ], [ %263, %259 ]
  %266 = add i32 %265, %258
  %267 = getelementptr inbounds %struct.super_block, ptr %256, i32 0, i32 27
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.ext4_sb_info, ptr %268, i32 0, i32 15
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.ext4_super_block, ptr %270, i32 0, i32 30
  %272 = load i32, ptr %271, align 4
  %273 = and i32 %272, 1024
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %297, label %275

275:                                              ; preds = %264
  %276 = getelementptr inbounds %struct.ext4_sb_info, ptr %268, i32 0, i32 119
  %277 = load ptr, ptr %276, align 8
  %278 = icmp eq ptr %277, null
  %279 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %280 = xor i1 %279, true
  %281 = select i1 %278, i1 %280, i1 false
  br i1 %281, label %282, label %293, !prof !10

282:                                              ; preds = %275
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %283 = load ptr, ptr %267, align 4
  %284 = getelementptr inbounds %struct.ext4_sb_info, ptr %283, i32 0, i32 15
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.ext4_super_block, ptr %285, i32 0, i32 30
  %287 = load i32, ptr %286, align 4
  %288 = and i32 %287, 1024
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.ext4_sb_info, ptr %283, i32 0, i32 119
  %292 = load ptr, ptr %291, align 8
  br label %293

293:                                              ; preds = %290, %275
  %294 = phi ptr [ %292, %290 ], [ %277, %275 ]
  %295 = icmp eq ptr %294, null
  %296 = add i32 %266, -8
  br i1 %295, label %297, label %298

297:                                              ; preds = %293, %282, %264
  br label %298

298:                                              ; preds = %297, %293
  %299 = phi i32 [ %266, %297 ], [ %296, %293 ]
  %300 = lshr i32 %299, 3
  %301 = icmp eq i32 %300, %255
  br i1 %301, label %198, label %302

302:                                              ; preds = %298
  %303 = load i16, ptr %253, align 2
  %304 = zext i16 %303 to i32
  %305 = tail call fastcc i32 @dx_node_limit(ptr noundef %1), !range !15
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 899, ptr noundef nonnull @.str.18, i32 noundef %304, i32 noundef %305) #11
  br label %306

306:                                              ; preds = %302, %249, %211
  %307 = phi ptr [ %201, %211 ], [ %243, %249 ], [ %243, %302 ]
  %308 = phi ptr [ inttoptr (i32 -4094 to ptr), %211 ], [ %247, %249 ], [ inttoptr (i32 -4094 to ptr), %302 ]
  %309 = icmp ult ptr %307, %3
  br i1 %309, label %321, label %310

310:                                              ; preds = %306, %195, %109, %97, %81, %35, %33, %14
  %311 = phi ptr [ %308, %306 ], [ inttoptr (i32 -4094 to ptr), %14 ], [ inttoptr (i32 -4094 to ptr), %33 ], [ inttoptr (i32 -4094 to ptr), %81 ], [ inttoptr (i32 -4094 to ptr), %109 ], [ inttoptr (i32 -4094 to ptr), %97 ], [ inttoptr (i32 -4094 to ptr), %195 ], [ inttoptr (i32 -4094 to ptr), %35 ]
  %312 = phi ptr [ %307, %306 ], [ %3, %14 ], [ %3, %33 ], [ %3, %81 ], [ %3, %109 ], [ %3, %97 ], [ %3, %195 ], [ %3, %35 ]
  br label %313

313:                                              ; preds = %318, %310
  %314 = phi ptr [ %319, %318 ], [ %312, %310 ]
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  tail call void @__brelse(ptr noundef nonnull %315) #11
  br label %318

318:                                              ; preds = %317, %313
  %319 = getelementptr %struct.dx_frame, ptr %314, i32 -1
  %320 = icmp ult ptr %319, %3
  br i1 %320, label %321, label %313

321:                                              ; preds = %318, %306
  %322 = phi ptr [ %308, %306 ], [ %311, %318 ]
  %323 = icmp eq ptr %322, inttoptr (i32 -4094 to ptr)
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.dx_probe, i32 noundef 911, ptr noundef nonnull @.str.19) #11
  br label %325

325:                                              ; preds = %324, %321, %235, %4
  %326 = phi ptr [ inttoptr (i32 -4094 to ptr), %324 ], [ %322, %321 ], [ %5, %4 ], [ %201, %235 ]
  ret ptr %326
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_htree_store_dirent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_search_dir(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = getelementptr i8, ptr %1, i32 %2
  %9 = icmp ugt ptr %8, %1
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1
  br label %13

13:                                               ; preds = %41, %10
  %14 = phi ptr [ %1, %10 ], [ %44, %41 ]
  %15 = phi i32 [ %5, %10 ], [ %43, %41 ]
  %16 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %14, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = icmp ugt ptr %19, %8
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %11, align 4
  %26 = icmp eq i32 %25, %18
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %14, i32 0, i32 4
  %29 = load i32, ptr %12, align 4
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 @bcmp(ptr %28, ptr %30, i32 %18) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = tail call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_search_dir, i32 noundef 1477, ptr noundef %3, ptr noundef null, ptr noundef %14, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %15) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46, !prof !12

36:                                               ; preds = %33
  store ptr %14, ptr %6, align 4
  br label %46

37:                                               ; preds = %27, %24, %21, %13
  %38 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %14, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = zext i16 %39 to i32
  %43 = add i32 %15, %42
  %44 = getelementptr i8, ptr %14, i32 %42
  %45 = icmp ult ptr %44, %8
  br i1 %45, label %13, label %46

46:                                               ; preds = %41, %37, %36, %33, %7
  %47 = phi i32 [ 1, %36 ], [ -1, %33 ], [ 0, %7 ], [ -1, %37 ], [ 0, %41 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_check_dir_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_get_parent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ext4_filename, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !11
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #11
  %6 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr @dotdot_name, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.qstr, ptr @dotdot_name, i32 0, i32 1), align 8
  %8 = getelementptr inbounds %struct.ext4_filename, ptr %2, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.anon.4, ptr @dotdot_name, i32 0, i32 1), align 4
  %10 = getelementptr inbounds %struct.ext4_filename, ptr %2, i32 0, i32 1, i32 1
  store i32 %9, ptr %10, align 4
  %11 = call fastcc ptr @__ext4_find_entry(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #11
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %37, label %13

13:                                               ; preds = %1
  %14 = icmp eq ptr %11, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %3, align 4
  %17 = load i32, ptr %16, align 4
  call void @__brelse(ptr noundef nonnull %11) #11
  %18 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq i32 %17, 2
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 8
  %26 = icmp ugt i32 %25, %17
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 8
  %31 = icmp ult i32 %30, %17
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %21
  %33 = load ptr, ptr %4, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %33, ptr noundef nonnull @__func__.ext4_get_parent, i32 noundef 1833, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %17) #11
  br label %37

34:                                               ; preds = %27, %15
  %35 = call ptr @__ext4_iget(ptr noundef %19, i32 noundef %17, i32 noundef 0, ptr noundef nonnull @__func__.ext4_get_parent, i32 noundef 1837) #11
  %36 = call ptr @d_obtain_alias(ptr noundef %35) #11
  br label %37

37:                                               ; preds = %34, %32, %13, %1
  %38 = phi ptr [ %36, %34 ], [ inttoptr (i32 -117 to ptr), %32 ], [ %11, %1 ], [ inttoptr (i32 -2 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_find_dest_de(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ext4_filename, ptr %5, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 255
  %11 = add nuw nsw i32 %10, 11
  %12 = icmp eq ptr %0, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 49152
  %17 = icmp eq i32 %16, 49152
  %18 = add nuw nsw i32 %10, 19
  %19 = select i1 %17, i32 %18, i32 %11
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i32 [ %11, %7 ], [ %19, %13 ]
  %22 = and i32 %21, -4
  %23 = getelementptr i8, ptr %3, i32 %4
  %24 = sub nsw i32 0, %22
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = icmp ult ptr %25, %3
  br i1 %26, label %77, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ext4_filename, ptr %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  br label %30

30:                                               ; preds = %72, %27
  %31 = phi i32 [ 0, %27 ], [ %74, %72 ]
  %32 = phi ptr [ %3, %27 ], [ %73, %72 ]
  %33 = tail call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_find_dest_de, i32 noundef 2038, ptr noundef %0, ptr noundef null, ptr noundef %32, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %31) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %77, !prof !12

35:                                               ; preds = %30
  %36 = load i32, ptr %32, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %32, i32 0, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  br label %54

42:                                               ; preds = %35
  %43 = load i32, ptr %8, align 4
  %44 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %32, i32 0, i32 2
  %45 = load i8, ptr %44, align 2
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %32, i32 0, i32 4
  %50 = load i32, ptr %28, align 4
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 @bcmp(ptr %49, ptr %51, i32 %43) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %48, %42, %38
  %55 = phi i32 [ %41, %38 ], [ %46, %42 ], [ %46, %48 ]
  %56 = add nuw nsw i32 %55, 11
  br i1 %12, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %29, align 4
  %59 = and i32 %58, 49152
  %60 = icmp eq i32 %59, 49152
  %61 = add nuw nsw i32 %55, 19
  %62 = select i1 %60, i32 %61, i32 %56
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi i32 [ %56, %54 ], [ %62, %57 ]
  %65 = and i32 %64, -4
  %66 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %32, i32 0, i32 1
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = select i1 %37, i32 0, i32 %65
  %70 = sub nsw i32 %68, %69
  %71 = icmp slt i32 %70, %22
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = getelementptr i8, ptr %32, i32 %68
  %74 = add i32 %31, %68
  %75 = icmp ugt ptr %73, %25
  br i1 %75, label %77, label %30

76:                                               ; preds = %63
  store ptr %32, ptr %6, align 4
  br label %77

77:                                               ; preds = %76, %72, %48, %30, %20
  %78 = phi i32 [ 0, %76 ], [ -28, %20 ], [ -117, %30 ], [ -17, %48 ], [ -28, %72 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_insert_dentry(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %2, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 11
  %10 = icmp eq ptr %0, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 49152
  %15 = icmp eq i32 %14, 49152
  %16 = add nuw nsw i32 %8, 19
  %17 = select i1 %15, i32 %16, i32 %9
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %9, %5 ], [ %17, %11 ]
  %20 = and i32 %19, -4
  %21 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %2, i32 0, i32 1
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %18
  %25 = load i16, ptr %21, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %2, i32 %20
  %28 = sub nsw i32 %26, %20
  %29 = icmp ugt i32 %28, %3
  %30 = icmp ugt i32 %3, 262144
  %31 = or i1 %30, %29
  %32 = and i32 %28, 3
  %33 = icmp ne i32 %32, 0
  %34 = or i1 %33, %31
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

36:                                               ; preds = %24
  %37 = trunc i32 %28 to i16
  %38 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %27, i32 0, i32 1
  store i16 %37, ptr %38, align 4
  %39 = icmp ugt i32 %20, %3
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

41:                                               ; preds = %36
  %42 = trunc i32 %20 to i16
  store i16 %42, ptr %21, align 4
  br label %43

43:                                               ; preds = %41, %18
  %44 = phi ptr [ %27, %41 ], [ %2, %18 ]
  %45 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %44, i32 0, i32 3
  store i8 0, ptr %45, align 1
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %44, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 29
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %43
  %59 = load i16, ptr %1, align 8
  %60 = lshr i16 %59, 12
  %61 = zext i16 %60 to i32
  %62 = getelementptr [16 x i8], ptr @ext4_type_by_mode, i32 0, i32 %61
  %63 = load i8, ptr %62, align 1
  store i8 %63, ptr %45, align 1
  br label %64

64:                                               ; preds = %58, %43
  %65 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1
  %66 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %44, i32 0, i32 2
  store i8 %68, ptr %69, align 2
  %70 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %44, i32 0, i32 4
  %71 = load ptr, ptr %65, align 4
  %72 = load i32, ptr %66, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %70, ptr align 1 %71, i32 %72, i1 false)
  %73 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 49152
  %76 = icmp eq i32 %75, 49152
  br i1 %76, label %77, label %92

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %67, 255
  %81 = add nuw nsw i32 %80, 11
  %82 = and i32 %81, 508
  %83 = getelementptr i8, ptr %44, i32 %82
  store i32 %79, ptr %83, align 4
  %84 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 2, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load i8, ptr %69, align 2
  %87 = zext i8 %86 to i32
  %88 = add nuw nsw i32 %87, 11
  %89 = and i32 %88, 508
  %90 = getelementptr i8, ptr %44, i32 %89
  %91 = getelementptr inbounds %struct.ext4_dir_entry_hash, ptr %90, i32 0, i32 1
  store i32 %85, ptr %91, align 4
  br label %92

92:                                               ; preds = %77, %64
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_generic_delete_entry(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 16
  %11 = sub i32 %4, %5
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %62, %6
  %14 = phi i32 [ %66, %62 ], [ 0, %6 ]
  %15 = phi ptr [ %16, %62 ], [ null, %6 ]
  %16 = phi ptr [ %67, %62 ], [ %3, %6 ]
  %17 = tail call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_generic_delete_entry, i32 noundef 2593, ptr noundef %0, ptr noundef null, ptr noundef %16, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %14) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %69, !prof !12

19:                                               ; preds = %13
  %20 = icmp eq ptr %16, %1
  br i1 %20, label %21, label %62

21:                                               ; preds = %19
  %22 = icmp eq ptr %15, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %15, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %1, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = add nuw nsw i32 %29, %26
  %31 = icmp ugt i32 %30, %10
  %32 = icmp ugt i32 %10, 262144
  %33 = or i1 %32, %31
  %34 = and i32 %30, 3
  %35 = icmp ne i32 %34, 0
  %36 = or i1 %35, %33
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

38:                                               ; preds = %23
  %39 = trunc i32 %30 to i16
  store i16 %39, ptr %24, align 4
  %40 = load i16, ptr %27, align 4
  %41 = zext i16 %40 to i32
  tail call void @llvm.memset.p0.i32(ptr align 4 %1, i8 0, i32 %41, i1 false)
  br label %48

42:                                               ; preds = %21
  store i32 0, ptr %1, align 4
  %43 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %1, i32 0, i32 2
  %44 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %1, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %46, -6
  tail call void @llvm.memset.p0.i32(ptr align 2 %43, i8 0, i32 %47, i1 false)
  br label %48

48:                                               ; preds = %42, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %49 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %50 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %49, ptr elementtype(i64) %49) #11, !srcloc !17
  br label %51

51:                                               ; preds = %59, %48
  %52 = phi i64 [ %50, %48 ], [ %60, %59 ]
  %53 = add i64 %52, 2
  %54 = and i64 %53, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !19
  br label %55

55:                                               ; preds = %55, %51
  %56 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %49, ptr %49, i64 %52, i64 %54, ptr elementtype(i64) %49) #11, !srcloc !20
  %57 = extractvalue { i32, i64 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %55

59:                                               ; preds = %55
  %60 = extractvalue { i32, i64 } %56, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %61 = icmp eq i64 %60, %52
  br i1 %61, label %69, label %51, !prof !12

62:                                               ; preds = %19
  %63 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %16, i32 0, i32 1
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = add i32 %14, %65
  %67 = getelementptr i8, ptr %16, i32 %65
  %68 = icmp slt i32 %66, %11
  br i1 %68, label %13, label %69

69:                                               ; preds = %62, %59, %13, %6
  %70 = phi i32 [ -2, %6 ], [ 0, %59 ], [ -117, %13 ], [ -2, %62 ]
  ret i32 %70
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %3 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %2, ptr elementtype(i64) %2) #11, !srcloc !17
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %3, %1 ], [ %13, %12 ]
  %6 = add i64 %5, 2
  %7 = and i64 %6, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !19
  br label %8

8:                                                ; preds = %8, %4
  %9 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2, ptr %2, i64 %5, i64 %7, ptr elementtype(i64) %2) #11, !srcloc !20
  %10 = extractvalue { i32, i64 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i64 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %4, !prof !12

15:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_init_dot_dotdot(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %1, i32 0, i32 2
  store i8 1, ptr %9, align 2
  %10 = add i32 %2, -262145
  %11 = icmp ult i32 %10, -262133
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %1, i32 0, i32 1
  store i16 12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %1, i32 0, i32 4
  store i16 46, ptr %15, align 1
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 29
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %1, i32 0, i32 3
  store i8 2, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %13
  %29 = getelementptr i8, ptr %1, i32 12
  store i32 %4, ptr %29, align 4
  %30 = getelementptr i8, ptr %1, i32 18
  store i8 2, ptr %30, align 2
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = add i32 %3, 12
  %34 = sub i32 %2, %33
  %35 = icmp ugt i32 %33, %2
  %36 = and i32 %34, 3
  %37 = icmp ne i32 %36, 0
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %40, !prof !8

39:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

40:                                               ; preds = %32
  %41 = trunc i32 %34 to i16
  %42 = getelementptr i8, ptr %1, i32 16
  store i16 %41, ptr %42, align 4
  %43 = and i32 %34, 65535
  br label %46

44:                                               ; preds = %28
  %45 = getelementptr i8, ptr %1, i32 16
  store i16 12, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ 12, %44 ], [ %43, %40 ]
  %48 = getelementptr i8, ptr %1, i32 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %48, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i32 3, i1 false)
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 29
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = getelementptr i8, ptr %1, i32 19
  store i8 2, ptr %59, align 1
  br label %60

60:                                               ; preds = %58, %46
  %61 = getelementptr i8, ptr %29, i32 %47
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_init_new_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 16
  %9 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 30
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 119
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  %21 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %35, !prof !10

24:                                               ; preds = %17
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_super_block, ptr %27, i32 0, i32 30
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 119
  %34 = load ptr, ptr %33, align 8
  br label %35

35:                                               ; preds = %32, %17
  %36 = phi ptr [ %34, %32 ], [ %19, %17 ]
  %37 = icmp eq ptr %36, null
  br label %38

38:                                               ; preds = %35, %24, %3
  %39 = phi i1 [ true, %24 ], [ %37, %35 ], [ true, %3 ]
  %40 = getelementptr i8, ptr %2, i32 -128
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @ext4_try_create_inline_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %46 = icmp sgt i32 %45, -1
  %47 = icmp eq i32 %45, -28
  %48 = or i1 %46, %47
  %49 = icmp ne i32 %45, 0
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %126

51:                                               ; preds = %44, %38
  %52 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 13
  store i64 0, ptr %52, align 8
  %53 = call fastcc ptr @ext4_append(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4)
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %53 to i32
  br label %126

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %59, align 4
  %64 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %59, i32 0, i32 2
  store i8 1, ptr %64, align 2
  %65 = add i32 %8, -262145
  %66 = icmp ult i32 %65, -262133
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %59, i32 0, i32 1
  store i16 12, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %59, i32 0, i32 4
  store i16 46, ptr %70, align 1
  %71 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 27
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 29
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %59, i32 0, i32 3
  store i8 2, ptr %82, align 1
  br label %83

83:                                               ; preds = %81, %68
  %84 = getelementptr i8, ptr %59, i32 12
  store i32 %61, ptr %84, align 4
  %85 = getelementptr i8, ptr %59, i32 18
  store i8 2, ptr %85, align 2
  %86 = select i1 %39, i32 12, i32 24
  %87 = sub nsw i32 %8, %86
  %88 = icmp ult i32 %8, %86
  %89 = and i32 %87, 3
  %90 = icmp ne i32 %89, 0
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %93, !prof !8

92:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

93:                                               ; preds = %83
  %94 = trunc i32 %87 to i16
  %95 = getelementptr i8, ptr %59, i32 16
  store i16 %94, ptr %95, align 4
  %96 = getelementptr i8, ptr %59, i32 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %96, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i32 3, i1 false) #11
  %97 = load ptr, ptr %71, align 4
  %98 = getelementptr inbounds %struct.super_block, ptr %97, i32 0, i32 27
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.ext4_sb_info, ptr %99, i32 0, i32 15
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.ext4_super_block, ptr %101, i32 0, i32 29
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %93
  %107 = getelementptr i8, ptr %59, i32 19
  store i8 2, ptr %107, align 1
  br label %108

108:                                              ; preds = %106, %93
  tail call void @set_nlink(ptr noundef %2, i32 noundef 2) #11
  br i1 %39, label %115, label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %58, align 4
  %111 = add nsw i32 %8, -12
  %112 = getelementptr i8, ptr %110, i32 %111
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %112, i8 0, i32 12, i1 false) #11
  %113 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %112, i32 0, i32 1
  store i16 12, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %112, i32 0, i32 3
  store i8 -34, ptr %114, align 1
  br label %115

115:                                              ; preds = %109, %108
  %116 = tail call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %2, ptr noundef %53)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load volatile i32, ptr %53, align 4
  %120 = and i32 %119, 16777216
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  tail call void @_set_bit(i32 noundef 24, ptr noundef %53) #11
  br label %123

123:                                              ; preds = %122, %118, %115
  %124 = icmp eq ptr %53, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %123
  tail call void @__brelse(ptr noundef nonnull %53) #11
  br label %126

126:                                              ; preds = %125, %123, %55, %44
  %127 = phi i32 [ %56, %55 ], [ %116, %123 ], [ %116, %125 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_try_create_inline_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ext4_append(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 82
  %9 = load i32, ptr %8, align 16
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %12 = load i64, ptr %11, align 8
  %13 = ashr i64 %12, 10
  %14 = zext i32 %9 to i64
  %15 = icmp slt i64 %13, %14
  %16 = select i1 %10, i1 true, i1 %15
  br i1 %16, label %17, label %42, !prof !22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i64
  %21 = ashr i64 %12, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %2, align 4
  %23 = tail call ptr @ext4_bread(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef 1) #11
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %42, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 16
  %30 = zext i32 %29 to i64
  %31 = load i64, ptr %26, align 8
  %32 = add i64 %31, %30
  store i64 %32, ptr %26, align 8
  %33 = getelementptr i8, ptr %1, i32 -32
  store i64 %32, ptr %33, align 8
  %34 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_append, i32 noundef 74, ptr noundef %0, ptr noundef %27, ptr noundef %23, i32 noundef 1) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = icmp eq ptr %23, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @__brelse(ptr noundef nonnull %23) #11
  br label %39

39:                                               ; preds = %38, %36
  %40 = load ptr, ptr %4, align 4
  tail call void @__ext4_std_error(ptr noundef %40, ptr noundef nonnull @__func__.ext4_append, i32 noundef 77, i32 noundef %34) #11
  %41 = inttoptr i32 %34 to ptr
  br label %42

42:                                               ; preds = %39, %25, %17, %3
  %43 = phi ptr [ %41, %39 ], [ %23, %17 ], [ %23, %25 ], [ inttoptr (i32 -28 to ptr), %3 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_empty_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -124
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 268435456
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 478
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 1, ptr %2, align 4
  %12 = call zeroext i1 @empty_inline_dir(ptr noundef %0, ptr noundef nonnull %2) #11
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br i1 %14, label %15, label %135

15:                                               ; preds = %11, %7, %1
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %19 = load i64, ptr %18, align 8
  %20 = icmp slt i64 %19, 24
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 2999, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.4) #11
  br label %135

22:                                               ; preds = %15
  %23 = call fastcc ptr @__ext4_read_dirblock(ptr noundef %0, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 3005)
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %135, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 3011, ptr noundef %0, ptr noundef null, ptr noundef %27, ptr noundef %23, ptr noundef %27, i32 noundef %29, i32 noundef 0) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41, !prof !12

32:                                               ; preds = %25
  %33 = load i32, ptr %27, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %27, i32 0, i32 4
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.2, ptr noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %32, %25
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 3013, ptr noundef nonnull @.str.5) #11
  %42 = icmp eq ptr %23, null
  br i1 %42, label %135, label %43

43:                                               ; preds = %41
  call void @__brelse(ptr noundef nonnull %23) #11
  br label %135

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %27, i32 0, i32 1
  %46 = load i16, ptr %45, align 4
  %47 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %48 = zext i16 %46 to i32
  %49 = getelementptr i8, ptr %27, i32 %48
  %50 = load ptr, ptr %26, align 4
  %51 = load i32, ptr %28, align 8
  %52 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 3020, ptr noundef %0, ptr noundef null, ptr noundef %49, ptr noundef %23, ptr noundef %50, i32 noundef %51, i32 noundef %48) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61, !prof !12

54:                                               ; preds = %44
  %55 = load i32, ptr %49, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %49, i32 0, i32 4
  %59 = call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.3, ptr noundef %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %54, %44
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 3022, ptr noundef nonnull @.str.6) #11
  %62 = icmp eq ptr %23, null
  br i1 %62, label %135, label %63

63:                                               ; preds = %61
  call void @__brelse(ptr noundef nonnull %23) #11
  br label %135

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %49, i32 0, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = add nuw nsw i32 %67, %48
  %69 = zext i32 %68 to i64
  %70 = load i64, ptr %18, align 8
  %71 = icmp sgt i64 %70, %69
  br i1 %71, label %72, label %131

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 2
  br label %74

74:                                               ; preds = %114, %72
  %75 = phi ptr [ %23, %72 ], [ %116, %114 ]
  %76 = phi i32 [ %68, %72 ], [ %115, %114 ]
  %77 = load i32, ptr %47, align 16
  %78 = add i32 %77, -1
  %79 = and i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %74
  %82 = icmp eq ptr %75, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  call void @__brelse(ptr noundef nonnull %75) #11
  br label %84

84:                                               ; preds = %83, %81
  %85 = load i8, ptr %73, align 4
  %86 = zext i8 %85 to i32
  %87 = lshr i32 %76, %86
  %88 = call fastcc ptr @__ext4_read_dirblock(ptr noundef %0, i32 noundef %87, i32 noundef 0, ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 3032)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %135, label %92

92:                                               ; preds = %90
  %93 = load i32, ptr %47, align 16
  %94 = add i32 %93, -1
  %95 = and i32 %94, %76
  br label %99

96:                                               ; preds = %84
  %97 = load i32, ptr %47, align 16
  %98 = add i32 %97, %76
  br label %114

99:                                               ; preds = %92, %74
  %100 = phi i32 [ %95, %92 ], [ %79, %74 ]
  %101 = phi ptr [ %88, %92 ], [ %75, %74 ]
  %102 = getelementptr inbounds %struct.buffer_head, ptr %101, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 %100
  %105 = getelementptr inbounds %struct.buffer_head, ptr %101, i32 0, i32 4
  %106 = load i32, ptr %105, align 8
  %107 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_empty_dir, i32 noundef 3043, ptr noundef %0, ptr noundef null, ptr noundef %104, ptr noundef %101, ptr noundef %103, i32 noundef %106, i32 noundef %76) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %120, label %109, !prof !12

109:                                              ; preds = %99
  %110 = load i32, ptr %47, align 16
  %111 = add i32 %110, -1
  %112 = or i32 %111, %76
  %113 = add i32 %112, 1
  br label %114

114:                                              ; preds = %126, %109, %96
  %115 = phi i32 [ %113, %109 ], [ %130, %126 ], [ %98, %96 ]
  %116 = phi ptr [ %101, %109 ], [ %101, %126 ], [ null, %96 ]
  %117 = zext i32 %115 to i64
  %118 = load i64, ptr %18, align 8
  %119 = icmp sgt i64 %118, %117
  br i1 %119, label %74, label %131

120:                                              ; preds = %99
  %121 = load i32, ptr %104, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = icmp eq ptr %101, null
  br i1 %124, label %135, label %125

125:                                              ; preds = %123
  call void @__brelse(ptr noundef nonnull %101) #11
  br label %135

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %104, i32 0, i32 1
  %128 = load i16, ptr %127, align 4
  %129 = zext i16 %128 to i32
  %130 = add i32 %76, %129
  br label %114

131:                                              ; preds = %114, %64
  %132 = phi ptr [ %23, %64 ], [ %116, %114 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @__brelse(ptr noundef nonnull %132) #11
  br label %135

135:                                              ; preds = %134, %131, %125, %123, %90, %63, %61, %43, %41, %22, %21, %11
  %136 = phi i1 [ true, %21 ], [ %12, %11 ], [ true, %22 ], [ true, %41 ], [ true, %43 ], [ true, %61 ], [ true, %63 ], [ false, %123 ], [ false, %125 ], [ true, %131 ], [ true, %134 ], [ true, %90 ]
  ret i1 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @empty_inline_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__ext4_read_dirblock(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = tail call ptr @ext4_bread(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef 0) #11
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 85
  %15 = ptrtoint ptr %7 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %10, ptr noundef %3, i32 noundef %4, ptr noundef nonnull @.str.23, i32 noundef %12, i32 noundef %1, ptr noundef %14, i32 noundef %15) #11
  br label %188

16:                                               ; preds = %5
  %17 = icmp eq ptr %7, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  switch i32 %2, label %188 [
    i32 3, label %19
    i32 1, label %19
  ]

19:                                               ; preds = %18, %18
  %20 = icmp eq i32 %2, 1
  %21 = zext i32 %1 to i64
  %22 = select i1 %20, ptr @.str.25, ptr @.str.26
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef %3, i32 noundef %4, i64 noundef %21, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull %22) #11
  br label %188

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ext4_super_block, ptr %30, i32 0, i32 28
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %23
  %36 = getelementptr i8, ptr %0, i32 -124
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 4096
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %1, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = icmp eq i32 %2, 1
  br label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ext4_dir_entry, ptr %25, i32 0, i32 1
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 3
  %49 = load i32, ptr %48, align 16
  %50 = icmp eq i32 %49, %47
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %44, %35, %23
  %53 = phi i1 [ true, %35 ], [ true, %23 ], [ %51, %44 ]
  %54 = phi i1 [ false, %35 ], [ false, %23 ], [ %50, %44 ]
  %55 = icmp eq i32 %2, 1
  %56 = and i1 %55, %53
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = zext i32 %1 to i64
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef %3, i32 noundef %4, i64 noundef %58, i32 noundef 0, ptr noundef nonnull @.str.27) #11
  tail call void @__brelse(ptr noundef nonnull %7) #11
  br label %188

59:                                               ; preds = %52, %42
  %60 = phi i1 [ %43, %42 ], [ %55, %52 ]
  %61 = phi i1 [ true, %42 ], [ %54, %52 ]
  %62 = getelementptr inbounds %struct.ext4_super_block, ptr %30, i32 0, i32 30
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %188, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 119
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  %70 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %71 = xor i1 %70, true
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %84, !prof !10

73:                                               ; preds = %66
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %74 = load ptr, ptr %27, align 4
  %75 = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 30
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1024
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %188, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 119
  %83 = load ptr, ptr %82, align 8
  br label %84

84:                                               ; preds = %81, %66
  %85 = phi ptr [ %83, %81 ], [ %68, %66 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %188, label %87

87:                                               ; preds = %84
  %88 = load volatile i32, ptr %7, align 4
  %89 = and i32 %88, 16777216
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %188

91:                                               ; preds = %87
  %92 = and i1 %60, %61
  br i1 %92, label %93, label %177

93:                                               ; preds = %91
  %94 = load ptr, ptr %6, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ext4_sb_info, ptr %96, i32 0, i32 15
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.ext4_super_block, ptr %98, i32 0, i32 30
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1024
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %170, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.ext4_sb_info, ptr %96, i32 0, i32 119
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  %107 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %108 = xor i1 %107, true
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %121, !prof !10

110:                                              ; preds = %103
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %111 = load ptr, ptr %95, align 4
  %112 = getelementptr inbounds %struct.ext4_sb_info, ptr %111, i32 0, i32 15
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.ext4_super_block, ptr %113, i32 0, i32 30
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 1024
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %170, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %111, i32 0, i32 119
  %120 = load ptr, ptr %119, align 8
  br label %121

121:                                              ; preds = %118, %103
  %122 = phi ptr [ %120, %118 ], [ %105, %103 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %170, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.ext4_dir_entry, ptr %25, i32 0, i32 1
  %126 = load i16, ptr %125, align 4
  %127 = zext i16 %126 to i32
  %128 = load ptr, ptr %6, align 4
  %129 = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 3
  %130 = load i32, ptr %129, align 16
  %131 = icmp eq i32 %130, %127
  br i1 %131, label %148, label %132

132:                                              ; preds = %124
  %133 = icmp eq i16 %126, 12
  br i1 %133, label %134, label %152

134:                                              ; preds = %132
  %135 = getelementptr i8, ptr %25, i32 16
  %136 = load i16, ptr %135, align 4
  %137 = zext i16 %136 to i32
  %138 = add i32 %130, -12
  %139 = icmp eq i32 %138, %137
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = getelementptr i8, ptr %25, i32 24
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %25, i32 29
  %146 = load i8, ptr %145, align 1
  %147 = icmp eq i8 %146, 8
  br i1 %147, label %148, label %152

148:                                              ; preds = %144, %124
  %149 = phi i32 [ 8, %124 ], [ 32, %144 ]
  %150 = getelementptr i8, ptr %25, i32 %149
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %148, %144, %140, %134, %132
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_dx_csum_verify, i32 noundef 471, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.30) #11
  br label %175

153:                                              ; preds = %148
  %154 = load i16, ptr %150, align 2
  %155 = zext i16 %154 to i32
  %156 = shl nuw nsw i32 %155, 3
  %157 = add nuw nsw i32 %156, %149
  %158 = add i32 %130, -8
  %159 = icmp ugt i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_dx_csum_verify, i32 noundef 478, ptr noundef nonnull @.str.9) #11
  br label %175

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.dx_countlimit, ptr %150, i32 0, i32 1
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = getelementptr %struct.dx_entry, ptr %150, i32 %155
  %166 = getelementptr inbounds %struct.dx_tail, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = tail call fastcc i32 @ext4_dx_csum(ptr noundef %0, ptr noundef %25, i32 noundef %149, i32 noundef %164, ptr noundef %165) #11
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %161, %121, %110, %93
  %171 = load volatile i32, ptr %7, align 4
  %172 = and i32 %171, 16777216
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %7) #11
  br label %177

175:                                              ; preds = %161, %160, %152
  %176 = zext i32 %1 to i64
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef %3, i32 noundef %4, i64 noundef %176, i32 noundef 74, ptr noundef nonnull @.str.28) #11
  tail call void @__brelse(ptr noundef nonnull %7) #11
  br label %188

177:                                              ; preds = %174, %170, %91
  br i1 %61, label %188, label %178

178:                                              ; preds = %177
  %179 = tail call i32 @ext4_dirblock_csum_verify(ptr noundef %0, ptr noundef nonnull %7)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = load volatile i32, ptr %7, align 4
  %183 = and i32 %182, 16777216
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %7) #11
  br label %188

186:                                              ; preds = %178
  %187 = zext i32 %1 to i64
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef %3, i32 noundef %4, i64 noundef %187, i32 noundef 74, ptr noundef nonnull @.str.29) #11
  tail call void @__brelse(ptr noundef nonnull %7) #11
  br label %188

188:                                              ; preds = %186, %185, %181, %177, %175, %87, %84, %73, %59, %57, %19, %18, %9
  %189 = phi ptr [ %7, %9 ], [ inttoptr (i32 -117 to ptr), %57 ], [ inttoptr (i32 -74 to ptr), %175 ], [ inttoptr (i32 -74 to ptr), %186 ], [ inttoptr (i32 -117 to ptr), %19 ], [ %7, %87 ], [ %7, %84 ], [ %7, %177 ], [ null, %18 ], [ %7, %181 ], [ %7, %185 ], [ %7, %73 ], [ %7, %59 ]
  ret ptr %189
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_filename, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store ptr null, ptr %6, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #11
  %9 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %2, ptr %5, align 4
  %10 = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ext4_filename, ptr %5, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.anon.4, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ext4_filename, ptr %5, i32 0, i32 1, i32 1
  store i32 %14, ptr %15, align 4
  %16 = call fastcc ptr @__ext4_find_entry(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #11
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = ptrtoint ptr %16 to i32
  br label %109

20:                                               ; preds = %4
  %21 = icmp eq ptr %16, null
  br i1 %21, label %109, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %6, align 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 25
  %34 = load i16, ptr %33, align 8
  %35 = and i16 %34, 32
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %107, label %37

37:                                               ; preds = %28, %22
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 144
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 65
  %48 = icmp eq i32 %47, 0
  %49 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  %50 = or i1 %49, %48
  br i1 %50, label %57, label %53

51:                                               ; preds = %37
  %52 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %52, label %57, label %53

53:                                               ; preds = %51, %44
  %54 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %51, %44
  br i1 %27, label %58, label %91

58:                                               ; preds = %57
  %59 = call fastcc i32 @ext4_delete_entry(ptr noundef %0, ptr noundef %1, ptr noundef %23, ptr noundef nonnull %16)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %63 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %1) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %62, ptr noundef align 8 dereferenceable(16) %63, i32 16, i1 false)
  %64 = load ptr, ptr %38, align 4
  %65 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 27
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ext4_super_block, ptr %68, i32 0, i32 28
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %61
  %74 = getelementptr i8, ptr %1, i32 -124
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 4096
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ext4_super_block, ptr %68, i32 0, i32 30
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1024
  %82 = icmp ne i32 %81, 0
  %83 = load i1, ptr @ext4_update_dx_flag.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !10

86:                                               ; preds = %78
  store i1 true, ptr @ext4_update_dx_flag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2858, i32 noundef 9, ptr noundef null) #11
  br label %87

87:                                               ; preds = %86, %78
  call void @_clear_bit(i32 noundef 12, ptr noundef %74) #11
  br label %88

88:                                               ; preds = %87, %73, %61
  %89 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.__ext4_unlink, i32 noundef 3183) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88, %57
  %92 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, ptr %13, align 4
  %97 = load ptr, ptr %10, align 8
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %3, ptr noundef nonnull @__func__.__ext4_unlink, i32 noundef 3191, ptr noundef nonnull @.str.7, i32 noundef %96, ptr noundef %97) #11
  br label %99

98:                                               ; preds = %91
  call void @drop_nlink(ptr noundef %3) #11
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i32, ptr %92, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 @ext4_orphan_add(ptr noundef %0, ptr noundef %3) #11
  br label %104

104:                                              ; preds = %102, %99
  %105 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %8, ptr noundef %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %105, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  %106 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @__func__.__ext4_unlink, i32 noundef 3197) #11
  br label %107

107:                                              ; preds = %104, %88, %58, %28
  %108 = phi i32 [ %106, %104 ], [ %59, %58 ], [ %89, %88 ], [ -2, %28 ]
  call void @__brelse(ptr noundef nonnull %16) #11
  br label %109

109:                                              ; preds = %107, %20, %18
  %110 = phi i32 [ %19, %18 ], [ %108, %107 ], [ -2, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_delete_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %1, i32 -124
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %1, i32 478
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 1, ptr %5, align 4
  %15 = call i32 @ext4_delete_inline_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #11
  %16 = load i32, ptr %5, align 4
  %17 = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br i1 %17, label %18, label %72

18:                                               ; preds = %14, %10, %4
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_super_block, ptr %24, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 119
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  %33 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %47, !prof !10

36:                                               ; preds = %29
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_super_block, ptr %39, i32 0, i32 30
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 119
  %46 = load ptr, ptr %45, align 8
  br label %47

47:                                               ; preds = %44, %29
  %48 = phi ptr [ %46, %44 ], [ %31, %29 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %36, %18
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ 0, %50 ], [ 12, %47 ]
  %53 = load ptr, ptr %19, align 4
  %54 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_delete_entry, i32 noundef 2647, ptr noundef %0, ptr noundef %53, ptr noundef %3, i32 noundef 1) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67, !prof !12

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %19, align 4
  %60 = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 16
  %62 = call i32 @ext4_generic_delete_entry(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %58, i32 noundef %61, i32 noundef %52)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %1, ptr noundef %3)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67, !prof !12

67:                                               ; preds = %64, %56, %51
  %68 = phi i32 [ %54, %51 ], [ %62, %56 ], [ %65, %64 ]
  %69 = icmp eq i32 %68, -2
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %19, align 4
  call void @__ext4_std_error(ptr noundef %71, ptr noundef nonnull @__func__.ext4_delete_entry, i32 noundef 2664, i32 noundef %68) #11
  br label %72

72:                                               ; preds = %70, %67, %64, %14
  %73 = phi i32 [ %15, %14 ], [ 0, %64 ], [ %68, %70 ], [ -2, %67 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_update_dx_flag(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -124
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 30
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1024
  %21 = icmp ne i32 %20, 0
  %22 = load i1, ptr @ext4_update_dx_flag.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %17
  store i1 true, ptr @ext4_update_dx_flag.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2858, i32 noundef 9, ptr noundef null) #11
  br label %26

26:                                               ; preds = %25, %17
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %13) #11
  br label %27

27:                                               ; preds = %26, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_link(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = getelementptr i8, ptr %1, i32 -124
  %11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  br label %12

12:                                               ; preds = %83, %3
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_super_block, ptr %17, i32 0, i32 29
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 25, i32 37
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 3
  %26 = call ptr @__ext4_journal_start_sb(ptr noundef %13, i32 noundef 3389, i32 noundef 4, i32 noundef %22, i32 noundef 0, i32 noundef %25) #11
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = ptrtoint ptr %26 to i32
  br label %87

30:                                               ; preds = %12
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 144
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, ptr %7, align 4
  %38 = and i32 %37, 65
  %39 = icmp eq i32 %38, 0
  %40 = icmp ult ptr %26, inttoptr (i32 4096 to ptr)
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %48, label %44

42:                                               ; preds = %30
  %43 = icmp ult ptr %26, inttoptr (i32 4096 to ptr)
  br i1 %43, label %48, label %44

44:                                               ; preds = %42, %36
  %45 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %26, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %42, %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %1) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @inc_nlink(ptr noundef %1) #11
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 28
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load volatile i32, ptr %10, align 4
  %60 = and i32 %59, 4096
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %11, align 8
  %64 = icmp ugt i32 %63, 65000
  %65 = icmp eq i32 %63, 2
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  call void @set_nlink(ptr noundef %1, i32 noundef 1) #11
  br label %68

68:                                               ; preds = %67, %62, %58, %48
  call void @ihold(ptr noundef %1) #11
  %69 = call fastcc i32 @ext4_add_entry(ptr noundef %26, ptr noundef %2, ptr noundef %1)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = call i32 @__ext4_mark_inode_dirty(ptr noundef %26, ptr noundef %1, ptr noundef nonnull @__func__.__ext4_link, i32 noundef 3402) #11
  %73 = load i32, ptr %11, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @ext4_orphan_del(ptr noundef %26, ptr noundef %1) #11
  br label %77

77:                                               ; preds = %75, %71
  call void @d_instantiate(ptr noundef %2, ptr noundef %1) #11
  call void @ext4_fc_track_link(ptr noundef %26, ptr noundef %2) #11
  br label %79

78:                                               ; preds = %68
  call void @drop_nlink(ptr noundef %1) #11
  call void @iput(ptr noundef %1) #11
  br label %79

79:                                               ; preds = %78, %77
  %80 = phi i32 [ %69, %78 ], [ %72, %77 ]
  %81 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.__ext4_link, i32 noundef 3414, ptr noundef %26) #11
  %82 = icmp eq i32 %80, -28
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load ptr, ptr %6, align 4
  %85 = call i32 @ext4_should_retry_alloc(ptr noundef %84, ptr noundef nonnull %4) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %12

87:                                               ; preds = %83, %79, %28
  %88 = phi i32 [ %29, %28 ], [ %80, %79 ], [ -28, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_inc_count(ptr noundef %0) unnamed_addr #0 {
  tail call void @inc_nlink(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -124
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %19 = load i32, ptr %18, align 8
  %20 = icmp ugt i32 %19, 65000
  %21 = icmp eq i32 %19, 2
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @set_nlink(ptr noundef %0, i32 noundef 1) #11
  br label %24

24:                                               ; preds = %23, %17, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_add_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [3 x %struct.dx_frame], align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.dx_frame], align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_filename, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 28, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4, !annotation !11
  %16 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 30
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 119
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %44, !prof !10

33:                                               ; preds = %26
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %34 = load ptr, ptr %18, align 4
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ext4_super_block, ptr %36, i32 0, i32 30
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 119
  %43 = load ptr, ptr %42, align 8
  br label %44

44:                                               ; preds = %41, %26
  %45 = phi ptr [ %43, %41 ], [ %28, %26 ]
  %46 = icmp ne ptr %45, null
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %44, %33, %3
  %49 = phi i32 [ 0, %33 ], [ %47, %44 ], [ 0, %3 ]
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 0, i32 -12
  %52 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 16
  %56 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %57 = getelementptr inbounds %struct.anon.4, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %733, label %60

60:                                               ; preds = %48
  store ptr %56, ptr %10, align 4
  %61 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.ext4_filename, ptr %10, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ext4_filename, ptr %10, i32 0, i32 1, i32 1
  store i32 %58, ptr %64, align 4
  %65 = getelementptr i8, ptr %15, i32 -124
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 268435456
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %60
  %70 = getelementptr i8, ptr %15, i32 478
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = call i32 @ext4_try_add_inline_entry(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %2) #11
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %733, label %76

76:                                               ; preds = %73
  %77 = icmp eq i32 %74, 1
  br i1 %77, label %731, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %52, align 4
  br label %80

80:                                               ; preds = %78, %69, %60
  %81 = phi ptr [ %79, %78 ], [ %53, %60 ], [ %53, %69 ]
  %82 = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 27
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ext4_super_block, ptr %85, i32 0, i32 28
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %420, label %90

90:                                               ; preds = %80
  %91 = load volatile i32, ptr %65, align 4
  %92 = and i32 %91, 4096
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %420, label %94

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i32 36, i1 false) #11, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %95 = load ptr, ptr %52, align 4
  %96 = ptrtoint ptr %7 to i32
  %97 = getelementptr inbounds %struct.super_block, ptr %95, i32 0, i32 27
  %98 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 10
  %99 = getelementptr inbounds %struct.super_block, ptr %95, i32 0, i32 3
  %100 = icmp eq ptr %15, null
  %101 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4
  %102 = getelementptr inbounds %struct.ext4_filename, ptr %10, i32 0, i32 2
  br label %103

103:                                              ; preds = %379, %94
  %104 = call fastcc ptr @dx_probe(ptr noundef nonnull %10, ptr noundef %15, ptr noundef null, ptr noundef nonnull %7) #11
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = ptrtoint ptr %104 to i32
  br label %383

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.dx_frame, ptr %104, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dx_frame, ptr %104, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.dx_entry, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 268435455
  %116 = call fastcc ptr @__ext4_read_dirblock(ptr noundef %15, i32 noundef %115, i32 noundef 3, ptr noundef nonnull @__func__.ext4_dx_add_entry, i32 noundef 2419) #11
  store ptr %116, ptr %8, align 4
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = ptrtoint ptr %116 to i32
  store ptr null, ptr %8, align 4
  br label %358

120:                                              ; preds = %108
  %121 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_dx_add_entry, i32 noundef 2427, ptr noundef %0, ptr noundef %95, ptr noundef %116, i32 noundef 1) #11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %344

123:                                              ; preds = %120
  %124 = call fastcc i32 @add_dirent_to_buf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %2, ptr noundef null, ptr noundef %116) #11
  %125 = icmp eq i32 %124, -28
  br i1 %125, label %126, label %348

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.dx_countlimit, ptr %110, i32 0, i32 1
  %128 = load i16, ptr %127, align 2
  %129 = load i16, ptr %110, align 2
  %130 = icmp eq i16 %128, %129
  br i1 %130, label %131, label %328

131:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !11
  %132 = ptrtoint ptr %104 to i32
  %133 = sub i32 %132, %96
  %134 = sdiv exact i32 %133, 12
  %135 = add nsw i32 %134, 1
  %136 = icmp ugt ptr %104, %7
  br i1 %136, label %137, label %159

137:                                              ; preds = %131
  %138 = getelementptr %struct.dx_frame, ptr %104, i32 -1, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.dx_countlimit, ptr %139, i32 0, i32 1
  %141 = load i16, ptr %140, align 2
  %142 = load i16, ptr %139, align 2
  %143 = icmp ult i16 %141, %142
  br i1 %143, label %186, label %151

144:                                              ; preds = %151
  %145 = getelementptr %struct.dx_frame, ptr %153, i32 -2, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.dx_countlimit, ptr %146, i32 0, i32 1
  %148 = load i16, ptr %147, align 2
  %149 = load i16, ptr %146, align 2
  %150 = icmp ult i16 %148, %149
  br i1 %150, label %183, label %151

151:                                              ; preds = %144, %137
  %152 = phi ptr [ %146, %144 ], [ %139, %137 ]
  %153 = phi ptr [ %154, %144 ], [ %104, %137 ]
  %154 = getelementptr %struct.dx_frame, ptr %153, i32 -1
  %155 = icmp ugt ptr %154, %7
  br i1 %155, label %144, label %156

156:                                              ; preds = %151
  %157 = getelementptr %struct.dx_frame, ptr %153, i32 -1, i32 2
  %158 = load ptr, ptr %157, align 4
  br label %159

159:                                              ; preds = %156, %131
  %160 = phi ptr [ %110, %131 ], [ %152, %156 ]
  %161 = phi ptr [ %112, %131 ], [ %158, %156 ]
  %162 = phi i32 [ 0, %131 ], [ 1, %156 ]
  %163 = phi ptr [ %104, %131 ], [ %154, %156 ]
  %164 = load ptr, ptr %97, align 4
  %165 = getelementptr inbounds %struct.ext4_sb_info, ptr %164, i32 0, i32 15
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ext4_super_block, ptr %166, i32 0, i32 29
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 16384
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 2, i32 3
  %172 = icmp eq i32 %135, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %159
  %174 = load i32, ptr %98, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %95, ptr noundef nonnull @__func__.ext4_dx_add_entry, i32 noundef 2463, ptr noundef nonnull @.str.32, i32 noundef %174, i32 noundef %135) #11
  %175 = load ptr, ptr %97, align 4
  %176 = getelementptr inbounds %struct.ext4_sb_info, ptr %175, i32 0, i32 15
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ext4_super_block, ptr %177, i32 0, i32 29
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 16384
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %324

182:                                              ; preds = %173
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %95, ptr noundef nonnull @__func__.ext4_dx_add_entry, i32 noundef 2467, ptr noundef nonnull @.str.33) #11
  br label %324

183:                                              ; preds = %144
  %184 = getelementptr %struct.dx_frame, ptr %153, i32 -1, i32 2
  %185 = load ptr, ptr %184, align 4
  br label %186

186:                                              ; preds = %183, %159, %137
  %187 = phi ptr [ %160, %159 ], [ %110, %137 ], [ %152, %183 ]
  %188 = phi ptr [ %161, %159 ], [ %112, %137 ], [ %185, %183 ]
  %189 = phi i1 [ %136, %159 ], [ false, %137 ], [ true, %183 ]
  %190 = phi i32 [ %162, %159 ], [ 0, %137 ], [ 1, %183 ]
  %191 = phi ptr [ %163, %159 ], [ %104, %137 ], [ %154, %183 ]
  %192 = phi i1 [ false, %159 ], [ true, %137 ], [ true, %183 ]
  %193 = getelementptr inbounds %struct.dx_countlimit, ptr %187, i32 0, i32 1
  %194 = load i16, ptr %193, align 2
  %195 = zext i16 %194 to i32
  %196 = call fastcc ptr @ext4_append(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %9) #11
  %197 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %197, label %198, label %200

198:                                              ; preds = %186
  %199 = ptrtoint ptr %196 to i32
  br label %324

200:                                              ; preds = %186
  %201 = getelementptr inbounds %struct.buffer_head, ptr %196, i32 0, i32 5
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.dx_node, ptr %202, i32 0, i32 1
  store i64 0, ptr %202, align 4
  %204 = load i32, ptr %99, align 16
  %205 = icmp ugt i32 %204, 262144
  %206 = and i32 %204, 3
  %207 = icmp ne i32 %206, 0
  %208 = or i1 %205, %207
  br i1 %208, label %209, label %210, !prof !8

209:                                              ; preds = %200
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

210:                                              ; preds = %200
  %211 = trunc i32 %204 to i16
  %212 = getelementptr inbounds %struct.fake_dirent, ptr %202, i32 0, i32 1
  store i16 %211, ptr %212, align 4
  %213 = load ptr, ptr %191, align 4
  %214 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_dx_add_entry, i32 noundef 2485, ptr noundef %0, ptr noundef %95, ptr noundef %213, i32 noundef 1) #11
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %338

216:                                              ; preds = %210
  br i1 %192, label %217, label %261

217:                                              ; preds = %216
  %218 = lshr i32 %195, 1
  %219 = getelementptr %struct.dx_entry, ptr %187, i32 %218
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr %struct.dx_frame, ptr %191, i32 -1
  %222 = load ptr, ptr %221, align 4
  %223 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_dx_add_entry, i32 noundef 2497, ptr noundef %0, ptr noundef %95, ptr noundef %222, i32 noundef 1) #11
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %338

225:                                              ; preds = %217
  %226 = sub nsw i32 %195, %218
  %227 = shl nsw i32 %226, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %203, ptr align 1 %219, i32 %227, i1 false) #11
  %228 = trunc i32 %218 to i16
  store i16 %228, ptr %193, align 2
  %229 = trunc i32 %226 to i16
  %230 = getelementptr inbounds %struct.dx_countlimit, ptr %203, i32 0, i32 1
  store i16 %229, ptr %230, align 2
  %231 = call fastcc i32 @dx_node_limit(ptr noundef %15) #11, !range !15
  %232 = trunc i32 %231 to i16
  store i16 %232, ptr %203, align 2
  %233 = ptrtoint ptr %188 to i32
  %234 = ptrtoint ptr %187 to i32
  %235 = sub i32 %233, %234
  %236 = ashr exact i32 %235, 3
  %237 = icmp ult i32 %236, %218
  br i1 %237, label %244, label %238

238:                                              ; preds = %225
  %239 = sub nsw i32 %236, %218
  %240 = getelementptr %struct.dx_entry, ptr %203, i32 %239
  %241 = getelementptr inbounds %struct.dx_frame, ptr %191, i32 0, i32 2
  store ptr %240, ptr %241, align 4
  %242 = getelementptr inbounds %struct.dx_frame, ptr %191, i32 0, i32 1
  store ptr %203, ptr %242, align 4
  %243 = load ptr, ptr %191, align 4
  store ptr %196, ptr %191, align 4
  br label %244

244:                                              ; preds = %238, %225
  %245 = phi ptr [ %243, %238 ], [ %196, %225 ]
  %246 = load i32, ptr %9, align 4
  call fastcc void @dx_insert_block(ptr noundef %221, i32 noundef %220, i32 noundef %246) #11
  %247 = call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %15, ptr noundef %245) #11
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %338

249:                                              ; preds = %244
  %250 = icmp eq ptr %245, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %249
  call void @__brelse(ptr noundef nonnull %245) #11
  br label %252

252:                                              ; preds = %251, %249
  %253 = load ptr, ptr %221, align 4
  %254 = call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %15, ptr noundef %253) #11
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %338

256:                                              ; preds = %252
  %257 = load ptr, ptr %191, align 4
  %258 = call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %15, ptr noundef %257) #11
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %189, i1 true, i1 %259
  br i1 %260, label %340, label %327

261:                                              ; preds = %216
  %262 = shl nuw nsw i32 %195, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %203, ptr align 1 %187, i32 %262, i1 false) #11
  %263 = load ptr, ptr %52, align 4
  %264 = getelementptr inbounds %struct.super_block, ptr %263, i32 0, i32 3
  %265 = load i32, ptr %264, align 16
  br i1 %100, label %271, label %266

266:                                              ; preds = %261
  %267 = load i32, ptr %101, align 4
  %268 = and i32 %267, 49152
  %269 = icmp eq i32 %268, 49152
  %270 = select i1 %269, i32 -16, i32 -8
  br label %271

271:                                              ; preds = %266, %261
  %272 = phi i32 [ -8, %261 ], [ %270, %266 ]
  %273 = add i32 %272, %265
  %274 = getelementptr inbounds %struct.super_block, ptr %263, i32 0, i32 27
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.ext4_sb_info, ptr %275, i32 0, i32 15
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.ext4_super_block, ptr %277, i32 0, i32 30
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, 1024
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %304, label %282

282:                                              ; preds = %271
  %283 = getelementptr inbounds %struct.ext4_sb_info, ptr %275, i32 0, i32 119
  %284 = load ptr, ptr %283, align 8
  %285 = icmp eq ptr %284, null
  %286 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %287 = xor i1 %286, true
  %288 = select i1 %285, i1 %287, i1 false
  br i1 %288, label %289, label %300, !prof !10

289:                                              ; preds = %282
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %290 = load ptr, ptr %274, align 4
  %291 = getelementptr inbounds %struct.ext4_sb_info, ptr %290, i32 0, i32 15
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.ext4_super_block, ptr %292, i32 0, i32 30
  %294 = load i32, ptr %293, align 4
  %295 = and i32 %294, 1024
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %304, label %297

297:                                              ; preds = %289
  %298 = getelementptr inbounds %struct.ext4_sb_info, ptr %290, i32 0, i32 119
  %299 = load ptr, ptr %298, align 8
  br label %300

300:                                              ; preds = %297, %282
  %301 = phi ptr [ %299, %297 ], [ %284, %282 ]
  %302 = icmp eq ptr %301, null
  %303 = add i32 %273, -8
  br i1 %302, label %304, label %305

304:                                              ; preds = %300, %289, %271
  br label %305

305:                                              ; preds = %304, %300
  %306 = phi i32 [ %273, %304 ], [ %303, %300 ]
  %307 = lshr i32 %306, 3
  %308 = trunc i32 %307 to i16
  store i16 %308, ptr %203, align 2
  store i16 1, ptr %193, align 2
  %309 = load i32, ptr %9, align 4
  %310 = getelementptr inbounds %struct.dx_entry, ptr %187, i32 0, i32 1
  store i32 %309, ptr %310, align 4
  %311 = load ptr, ptr %7, align 4
  %312 = getelementptr inbounds %struct.buffer_head, ptr %311, i32 0, i32 5
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.dx_root, ptr %313, i32 0, i32 4, i32 3
  %315 = load i8, ptr %314, align 2
  %316 = add i8 %315, 1
  store i8 %316, ptr %314, align 2
  %317 = load ptr, ptr %191, align 4
  %318 = call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %15, ptr noundef %317) #11
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %338

320:                                              ; preds = %305
  %321 = call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %15, ptr noundef %196) #11
  %322 = icmp eq ptr %196, null
  br i1 %322, label %340, label %323

323:                                              ; preds = %320
  call void @__brelse(ptr noundef nonnull %196) #11
  br label %340

324:                                              ; preds = %198, %182, %173
  %325 = phi i32 [ %162, %173 ], [ %162, %182 ], [ %190, %198 ]
  %326 = phi i32 [ -28, %173 ], [ -28, %182 ], [ %199, %198 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %348

327:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %328

328:                                              ; preds = %327, %126
  %329 = phi i32 [ %190, %327 ], [ 0, %126 ]
  %330 = phi ptr [ %191, %327 ], [ %104, %126 ]
  %331 = call fastcc ptr @do_split(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %8, ptr noundef %330, ptr noundef %102) #11
  %332 = icmp ugt ptr %331, inttoptr (i32 -4096 to ptr)
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = ptrtoint ptr %331 to i32
  br label %348

335:                                              ; preds = %328
  %336 = load ptr, ptr %8, align 4
  %337 = call fastcc i32 @add_dirent_to_buf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %2, ptr noundef %331, ptr noundef %336) #11
  br label %352

338:                                              ; preds = %305, %252, %244, %217, %210
  %339 = phi i32 [ %214, %210 ], [ %223, %217 ], [ %247, %244 ], [ %254, %252 ], [ %318, %305 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %344

340:                                              ; preds = %323, %320, %256
  %341 = phi i32 [ 1, %323 ], [ 1, %320 ], [ %190, %256 ]
  %342 = phi i32 [ %321, %323 ], [ %321, %320 ], [ %258, %256 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %340, %338, %120
  %345 = phi i32 [ %342, %340 ], [ %339, %338 ], [ %121, %120 ]
  %346 = phi i32 [ %341, %340 ], [ %190, %338 ], [ 0, %120 ]
  %347 = load ptr, ptr %52, align 4
  call void @__ext4_std_error(ptr noundef %347, ptr noundef nonnull @__func__.ext4_dx_add_entry, i32 noundef 2561, i32 noundef %345) #11
  br label %348

348:                                              ; preds = %344, %340, %333, %324, %123
  %349 = phi i32 [ %325, %324 ], [ %329, %333 ], [ 0, %123 ], [ %341, %340 ], [ %346, %344 ]
  %350 = phi i32 [ %326, %324 ], [ %334, %333 ], [ %124, %123 ], [ 0, %340 ], [ %345, %344 ]
  %351 = load ptr, ptr %8, align 4
  br label %352

352:                                              ; preds = %348, %335
  %353 = phi ptr [ %351, %348 ], [ %336, %335 ]
  %354 = phi i32 [ %349, %348 ], [ %329, %335 ]
  %355 = phi i32 [ %350, %348 ], [ %337, %335 ]
  %356 = icmp eq ptr %353, null
  br i1 %356, label %358, label %357

357:                                              ; preds = %352
  call void @__brelse(ptr noundef nonnull %353) #11
  br label %358

358:                                              ; preds = %357, %352, %118
  %359 = phi i32 [ %119, %118 ], [ %355, %352 ], [ %355, %357 ]
  %360 = phi i32 [ 0, %118 ], [ %354, %352 ], [ %354, %357 ]
  %361 = load ptr, ptr %7, align 4
  %362 = icmp eq ptr %361, null
  br i1 %362, label %379, label %363

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.buffer_head, ptr %361, i32 0, i32 5
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.dx_root, ptr %365, i32 0, i32 4, i32 3
  %367 = load i8, ptr %366, align 2
  %368 = zext i8 %367 to i32
  br label %369

369:                                              ; preds = %374, %363
  %370 = phi i32 [ 0, %363 ], [ %375, %374 ]
  %371 = phi ptr [ %361, %363 ], [ %377, %374 ]
  %372 = getelementptr %struct.dx_frame, ptr %7, i32 %370
  call void @__brelse(ptr noundef nonnull %371) #11
  store ptr null, ptr %372, align 4
  %373 = icmp eq i32 %370, %368
  br i1 %373, label %379, label %374

374:                                              ; preds = %369
  %375 = add nuw nsw i32 %370, 1
  %376 = getelementptr %struct.dx_frame, ptr %7, i32 %375
  %377 = load ptr, ptr %376, align 4
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %369

379:                                              ; preds = %374, %369, %358
  %380 = icmp ne i32 %360, 0
  %381 = icmp eq i32 %359, 0
  %382 = select i1 %380, i1 %381, i1 false
  br i1 %382, label %103, label %383

383:                                              ; preds = %379, %106
  %384 = phi i32 [ %107, %106 ], [ %359, %379 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #11
  %385 = icmp eq i32 %384, -4094
  br i1 %385, label %386, label %728

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 27
  %388 = load ptr, ptr %387, align 4
  %389 = getelementptr inbounds %struct.ext4_sb_info, ptr %388, i32 0, i32 15
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.ext4_super_block, ptr %390, i32 0, i32 30
  %392 = load i32, ptr %391, align 4
  %393 = and i32 %392, 1024
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %417, label %395

395:                                              ; preds = %386
  %396 = getelementptr inbounds %struct.ext4_sb_info, ptr %388, i32 0, i32 119
  %397 = load ptr, ptr %396, align 8
  %398 = icmp eq ptr %397, null
  %399 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %400 = xor i1 %399, true
  %401 = select i1 %398, i1 %400, i1 false
  br i1 %401, label %402, label %413, !prof !10

402:                                              ; preds = %395
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %403 = load ptr, ptr %387, align 4
  %404 = getelementptr inbounds %struct.ext4_sb_info, ptr %403, i32 0, i32 15
  %405 = load ptr, ptr %404, align 4
  %406 = getelementptr inbounds %struct.ext4_super_block, ptr %405, i32 0, i32 30
  %407 = load i32, ptr %406, align 4
  %408 = and i32 %407, 1024
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %417, label %410

410:                                              ; preds = %402
  %411 = getelementptr inbounds %struct.ext4_sb_info, ptr %403, i32 0, i32 119
  %412 = load ptr, ptr %411, align 8
  br label %413

413:                                              ; preds = %410, %395
  %414 = phi ptr [ %412, %410 ], [ %397, %395 ]
  %415 = icmp eq ptr %414, null
  br i1 %415, label %417, label %416

416:                                              ; preds = %413
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %15, ptr noundef nonnull @__func__.ext4_add_entry, i32 noundef 2338, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.31) #11
  br label %733

417:                                              ; preds = %413, %402, %386
  call void @_clear_bit(i32 noundef 12, ptr noundef %65) #11
  %418 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @__func__.ext4_add_entry, i32 noundef 2344) #11
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %733, !prof !12

420:                                              ; preds = %417, %90, %80
  %421 = phi i1 [ true, %417 ], [ false, %90 ], [ false, %80 ]
  %422 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 13
  %423 = load i64, ptr %422, align 8
  %424 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 2
  %425 = load i8, ptr %424, align 4
  %426 = zext i8 %425 to i64
  %427 = ashr i64 %423, %426
  %428 = trunc i64 %427 to i32
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %691, label %430

430:                                              ; preds = %420
  %431 = icmp ne i32 %428, 1
  %432 = or i1 %421, %431
  %433 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 27
  br label %434

434:                                              ; preds = %688, %430
  %435 = phi i32 [ 0, %430 ], [ %689, %688 ]
  %436 = call fastcc ptr @__ext4_read_dirblock(ptr noundef %15, i32 noundef %435, i32 noundef 2, ptr noundef nonnull @__func__.ext4_add_entry, i32 noundef 2350)
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %440

438:                                              ; preds = %434
  store i32 %435, ptr %11, align 4
  %439 = call ptr @ext4_bread(ptr noundef %0, ptr noundef %15, i32 noundef %435, i32 noundef 1) #11
  br label %693

440:                                              ; preds = %434
  %441 = icmp ugt ptr %436, inttoptr (i32 -4096 to ptr)
  br i1 %441, label %442, label %444

442:                                              ; preds = %440
  store i32 %435, ptr %11, align 4
  %443 = ptrtoint ptr %436 to i32
  br label %728

444:                                              ; preds = %440
  %445 = call fastcc i32 @add_dirent_to_buf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %2, ptr noundef null, ptr noundef nonnull %436)
  %446 = icmp eq i32 %445, -28
  br i1 %446, label %447, label %724

447:                                              ; preds = %444
  br i1 %432, label %688, label %448

448:                                              ; preds = %447
  %449 = load ptr, ptr %433, align 4
  %450 = getelementptr inbounds %struct.ext4_sb_info, ptr %449, i32 0, i32 15
  %451 = load ptr, ptr %450, align 4
  %452 = getelementptr inbounds %struct.ext4_super_block, ptr %451, i32 0, i32 28
  %453 = load i32, ptr %452, align 4
  %454 = and i32 %453, 32
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %688, label %456

456:                                              ; preds = %448
  store i32 %435, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false) #11, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !11
  %457 = load ptr, ptr %16, align 4
  %458 = getelementptr inbounds %struct.super_block, ptr %457, i32 0, i32 27
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr inbounds %struct.ext4_sb_info, ptr %459, i32 0, i32 15
  %461 = load ptr, ptr %460, align 4
  %462 = getelementptr inbounds %struct.ext4_super_block, ptr %461, i32 0, i32 30
  %463 = load i32, ptr %462, align 4
  %464 = and i32 %463, 1024
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %488, label %466

466:                                              ; preds = %456
  %467 = getelementptr inbounds %struct.ext4_sb_info, ptr %459, i32 0, i32 119
  %468 = load ptr, ptr %467, align 8
  %469 = icmp eq ptr %468, null
  %470 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %471 = xor i1 %470, true
  %472 = select i1 %469, i1 %471, i1 false
  br i1 %472, label %473, label %484, !prof !10

473:                                              ; preds = %466
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %474 = load ptr, ptr %458, align 4
  %475 = getelementptr inbounds %struct.ext4_sb_info, ptr %474, i32 0, i32 15
  %476 = load ptr, ptr %475, align 4
  %477 = getelementptr inbounds %struct.ext4_super_block, ptr %476, i32 0, i32 30
  %478 = load i32, ptr %477, align 4
  %479 = and i32 %478, 1024
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %488, label %481

481:                                              ; preds = %473
  %482 = getelementptr inbounds %struct.ext4_sb_info, ptr %474, i32 0, i32 119
  %483 = load ptr, ptr %482, align 8
  br label %484

484:                                              ; preds = %481, %466
  %485 = phi ptr [ %483, %481 ], [ %468, %466 ]
  %486 = icmp ne ptr %485, null
  %487 = zext i1 %486 to i32
  br label %488

488:                                              ; preds = %484, %473, %456
  %489 = phi i32 [ 0, %473 ], [ %487, %484 ], [ 0, %456 ]
  %490 = icmp eq i32 %489, 0
  %491 = select i1 %490, i32 0, i32 -12
  %492 = load ptr, ptr %52, align 4
  %493 = getelementptr inbounds %struct.super_block, ptr %492, i32 0, i32 3
  %494 = load i32, ptr %493, align 16
  %495 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.make_indexed_dir, i32 noundef 2175, ptr noundef %0, ptr noundef %492, ptr noundef nonnull %436, i32 noundef 1) #11
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %499, label %497

497:                                              ; preds = %488
  %498 = load ptr, ptr %52, align 4
  call void @__ext4_std_error(ptr noundef %498, ptr noundef nonnull @__func__.make_indexed_dir, i32 noundef 2177, i32 noundef %495) #11
  call void @__brelse(ptr noundef nonnull %436) #11
  br label %686

499:                                              ; preds = %488
  %500 = getelementptr inbounds %struct.buffer_head, ptr %436, i32 0, i32 5
  %501 = load ptr, ptr %500, align 4
  %502 = getelementptr inbounds %struct.dx_root, ptr %501, i32 0, i32 2
  %503 = getelementptr inbounds %struct.dx_root, ptr %501, i32 0, i32 2, i32 1
  %504 = load i16, ptr %503, align 4
  %505 = zext i16 %504 to i32
  %506 = getelementptr i8, ptr %502, i32 %505
  %507 = getelementptr i8, ptr %501, i32 %494
  %508 = icmp ult ptr %506, %507
  br i1 %508, label %510, label %509

509:                                              ; preds = %499
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %15, ptr noundef nonnull @__func__.make_indexed_dir, i32 noundef 2188, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.37) #11
  call void @__brelse(ptr noundef nonnull %436) #11
  br label %686

510:                                              ; preds = %499
  %511 = add i32 %491, %494
  %512 = call fastcc ptr @ext4_append(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %6) #11
  store ptr %512, ptr %4, align 4
  %513 = icmp ugt ptr %512, inttoptr (i32 -4096 to ptr)
  br i1 %513, label %514, label %516

514:                                              ; preds = %510
  call void @__brelse(ptr noundef nonnull %436) #11
  %515 = ptrtoint ptr %512 to i32
  br label %686

516:                                              ; preds = %510
  %517 = getelementptr i8, ptr %501, i32 %511
  %518 = ptrtoint ptr %517 to i32
  %519 = ptrtoint ptr %506 to i32
  %520 = sub i32 %518, %519
  call void @_set_bit(i32 noundef 12, ptr noundef %65) #11
  %521 = getelementptr inbounds %struct.buffer_head, ptr %512, i32 0, i32 5
  %522 = load ptr, ptr %521, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %522, ptr align 4 %506, i32 %520, i1 false) #11
  call void @llvm.memset.p0.i32(ptr align 4 %506, i8 0, i32 %520, i1 false) #11
  %523 = getelementptr i8, ptr %522, i32 %520
  br label %524

524:                                              ; preds = %524, %516
  %525 = phi ptr [ %522, %516 ], [ %529, %524 ]
  %526 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %525, i32 0, i32 1
  %527 = load i16, ptr %526, align 4
  %528 = zext i16 %527 to i32
  %529 = getelementptr i8, ptr %525, i32 %528
  %530 = icmp ult ptr %529, %523
  br i1 %530, label %524, label %531

531:                                              ; preds = %524
  %532 = getelementptr i8, ptr %522, i32 %511
  %533 = ptrtoint ptr %532 to i32
  %534 = ptrtoint ptr %525 to i32
  %535 = sub i32 %533, %534
  %536 = icmp ugt i32 %535, %494
  %537 = icmp ugt i32 %494, 262144
  %538 = or i1 %537, %536
  %539 = and i32 %535, 3
  %540 = icmp ne i32 %539, 0
  %541 = or i1 %540, %538
  br i1 %541, label %542, label %543, !prof !8

542:                                              ; preds = %531
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

543:                                              ; preds = %531
  %544 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %525, i32 0, i32 1
  %545 = trunc i32 %535 to i16
  store i16 %545, ptr %544, align 4
  br i1 %490, label %555, label %546

546:                                              ; preds = %543
  %547 = load ptr, ptr %521, align 4
  %548 = add nsw i32 %494, -12
  %549 = getelementptr i8, ptr %547, i32 %548
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %549, i8 0, i32 12, i1 false) #11
  %550 = icmp ult i32 %494, 12
  br i1 %550, label %551, label %552, !prof !8

551:                                              ; preds = %546
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

552:                                              ; preds = %546
  %553 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %549, i32 0, i32 1
  store i16 12, ptr %553, align 4
  %554 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %549, i32 0, i32 3
  store i8 -34, ptr %554, align 1
  br label %555

555:                                              ; preds = %552, %543
  %556 = icmp ult i32 %494, 12
  %557 = and i32 %494, 3
  %558 = icmp ne i32 %557, 0
  %559 = or i1 %556, %558
  br i1 %559, label %560, label %561, !prof !8

560:                                              ; preds = %555
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

561:                                              ; preds = %555
  %562 = trunc i32 %494 to i16
  %563 = add i16 %562, -12
  store i16 %563, ptr %503, align 4
  %564 = getelementptr inbounds %struct.dx_root, ptr %501, i32 0, i32 4
  store i64 8796093022208, ptr %564, align 4
  %565 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4
  %566 = load i32, ptr %565, align 4
  %567 = and i32 %566, 49152
  %568 = icmp eq i32 %567, 49152
  br i1 %568, label %576, label %569

569:                                              ; preds = %561
  %570 = load ptr, ptr %52, align 4
  %571 = getelementptr inbounds %struct.super_block, ptr %570, i32 0, i32 27
  %572 = load ptr, ptr %571, align 4
  %573 = getelementptr inbounds %struct.ext4_sb_info, ptr %572, i32 0, i32 34
  %574 = load i32, ptr %573, align 4
  %575 = trunc i32 %574 to i8
  br label %576

576:                                              ; preds = %569, %561
  %577 = phi i8 [ %575, %569 ], [ 6, %561 ]
  %578 = getelementptr inbounds %struct.dx_root, ptr %501, i32 0, i32 4, i32 1
  store i8 %577, ptr %578, align 4
  %579 = getelementptr inbounds %struct.dx_root, ptr %501, i32 0, i32 5
  %580 = getelementptr inbounds %struct.dx_root, ptr %501, i32 1, i32 0, i32 1
  store i32 1, ptr %580, align 4
  %581 = getelementptr inbounds %struct.dx_countlimit, ptr %579, i32 0, i32 1
  store i16 1, ptr %581, align 2
  %582 = load ptr, ptr %52, align 4
  %583 = getelementptr inbounds %struct.super_block, ptr %582, i32 0, i32 3
  %584 = load i32, ptr %583, align 16
  %585 = add i32 %584, -32
  %586 = getelementptr inbounds %struct.super_block, ptr %582, i32 0, i32 27
  %587 = load ptr, ptr %586, align 4
  %588 = getelementptr inbounds %struct.ext4_sb_info, ptr %587, i32 0, i32 15
  %589 = load ptr, ptr %588, align 4
  %590 = getelementptr inbounds %struct.ext4_super_block, ptr %589, i32 0, i32 30
  %591 = load i32, ptr %590, align 4
  %592 = and i32 %591, 1024
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %616, label %594

594:                                              ; preds = %576
  %595 = getelementptr inbounds %struct.ext4_sb_info, ptr %587, i32 0, i32 119
  %596 = load ptr, ptr %595, align 8
  %597 = icmp eq ptr %596, null
  %598 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %599 = xor i1 %598, true
  %600 = select i1 %597, i1 %599, i1 false
  br i1 %600, label %601, label %612, !prof !10

601:                                              ; preds = %594
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %602 = load ptr, ptr %586, align 4
  %603 = getelementptr inbounds %struct.ext4_sb_info, ptr %602, i32 0, i32 15
  %604 = load ptr, ptr %603, align 4
  %605 = getelementptr inbounds %struct.ext4_super_block, ptr %604, i32 0, i32 30
  %606 = load i32, ptr %605, align 4
  %607 = and i32 %606, 1024
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %616, label %609

609:                                              ; preds = %601
  %610 = getelementptr inbounds %struct.ext4_sb_info, ptr %602, i32 0, i32 119
  %611 = load ptr, ptr %610, align 8
  br label %612

612:                                              ; preds = %609, %594
  %613 = phi ptr [ %611, %609 ], [ %596, %594 ]
  %614 = icmp eq ptr %613, null
  %615 = add i32 %584, -40
  br i1 %614, label %616, label %617

616:                                              ; preds = %612, %601, %576
  br label %617

617:                                              ; preds = %616, %612
  %618 = phi i32 [ %585, %616 ], [ %615, %612 ]
  %619 = lshr i32 %618, 3
  %620 = trunc i32 %619 to i16
  store i16 %620, ptr %579, align 2
  %621 = load i8, ptr %578, align 4
  %622 = zext i8 %621 to i32
  %623 = getelementptr inbounds %struct.ext4_filename, ptr %10, i32 0, i32 2
  %624 = getelementptr inbounds %struct.ext4_filename, ptr %10, i32 0, i32 2, i32 2
  store i32 %622, ptr %624, align 4
  %625 = icmp ult i8 %621, 3
  %626 = load ptr, ptr %52, align 4
  %627 = getelementptr inbounds %struct.super_block, ptr %626, i32 0, i32 27
  %628 = load ptr, ptr %627, align 4
  br i1 %625, label %629, label %633

629:                                              ; preds = %617
  %630 = getelementptr inbounds %struct.ext4_sb_info, ptr %628, i32 0, i32 35
  %631 = load i32, ptr %630, align 8
  %632 = add i32 %631, %622
  store i32 %632, ptr %624, align 4
  br label %633

633:                                              ; preds = %629, %617
  %634 = getelementptr inbounds %struct.ext4_sb_info, ptr %628, i32 0, i32 33
  %635 = getelementptr inbounds %struct.ext4_filename, ptr %10, i32 0, i32 2, i32 3
  store ptr %634, ptr %635, align 4
  %636 = load i32, ptr %565, align 4
  %637 = and i32 %636, 49152
  %638 = icmp eq i32 %637, 49152
  br i1 %638, label %643, label %639

639:                                              ; preds = %633
  %640 = load ptr, ptr %63, align 4
  %641 = load i32, ptr %64, align 4
  %642 = call i32 @ext4fs_dirhash(ptr noundef %15, ptr noundef %640, i32 noundef %641, ptr noundef %623) #11
  br label %643

643:                                              ; preds = %639, %633
  %644 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %644, i8 0, i32 24, i1 false) #11
  %645 = getelementptr inbounds %struct.dx_frame, ptr %5, i32 0, i32 1
  store ptr %579, ptr %645, align 4
  %646 = getelementptr inbounds %struct.dx_frame, ptr %5, i32 0, i32 2
  store ptr %579, ptr %646, align 4
  store ptr %436, ptr %5, align 4
  %647 = call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %436) #11
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %663

649:                                              ; preds = %643
  %650 = call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %15, ptr noundef %512) #11
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %663

652:                                              ; preds = %649
  %653 = call fastcc ptr @do_split(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %623) #11
  %654 = icmp ugt ptr %653, inttoptr (i32 -4096 to ptr)
  br i1 %654, label %655, label %657

655:                                              ; preds = %652
  %656 = ptrtoint ptr %653 to i32
  br label %660

657:                                              ; preds = %652
  %658 = load ptr, ptr %4, align 4
  %659 = call fastcc i32 @add_dirent_to_buf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %2, ptr noundef %653, ptr noundef %658) #11
  br label %660

660:                                              ; preds = %657, %655
  %661 = phi i32 [ %656, %655 ], [ %659, %657 ]
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %666, label %663

663:                                              ; preds = %660, %649, %643
  %664 = phi i32 [ %661, %660 ], [ %650, %649 ], [ %647, %643 ]
  %665 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %15, ptr noundef nonnull @__func__.make_indexed_dir, i32 noundef 2270) #11
  br label %666

666:                                              ; preds = %663, %660
  %667 = phi i32 [ %664, %663 ], [ 0, %660 ]
  %668 = load ptr, ptr %500, align 4
  %669 = getelementptr inbounds %struct.dx_root, ptr %668, i32 0, i32 4, i32 3
  %670 = load i8, ptr %669, align 2
  %671 = zext i8 %670 to i32
  br label %672

672:                                              ; preds = %677, %666
  %673 = phi i32 [ 0, %666 ], [ %678, %677 ]
  %674 = phi ptr [ %436, %666 ], [ %680, %677 ]
  %675 = getelementptr %struct.dx_frame, ptr %5, i32 %673
  call void @__brelse(ptr noundef nonnull %674) #11
  store ptr null, ptr %675, align 4
  %676 = icmp eq i32 %673, %671
  br i1 %676, label %682, label %677

677:                                              ; preds = %672
  %678 = add nuw nsw i32 %673, 1
  %679 = getelementptr %struct.dx_frame, ptr %5, i32 %678
  %680 = load ptr, ptr %679, align 4
  %681 = icmp eq ptr %680, null
  br i1 %681, label %682, label %672

682:                                              ; preds = %677, %672
  %683 = load ptr, ptr %4, align 4
  %684 = icmp eq ptr %683, null
  br i1 %684, label %686, label %685

685:                                              ; preds = %682
  call void @__brelse(ptr noundef nonnull %683) #11
  br label %686

686:                                              ; preds = %685, %682, %514, %509, %497
  %687 = phi i32 [ %515, %514 ], [ %495, %497 ], [ -117, %509 ], [ %667, %682 ], [ %667, %685 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %728

688:                                              ; preds = %448, %447
  call void @__brelse(ptr noundef nonnull %436) #11
  %689 = add nuw i32 %435, 1
  %690 = icmp eq i32 %689, %428
  br i1 %690, label %691, label %434

691:                                              ; preds = %688, %420
  store i32 %428, ptr %11, align 4
  %692 = call fastcc ptr @ext4_append(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %11)
  br label %693

693:                                              ; preds = %691, %438
  %694 = phi ptr [ %439, %438 ], [ %692, %691 ]
  %695 = icmp ugt ptr %694, inttoptr (i32 -4096 to ptr)
  br i1 %695, label %696, label %698

696:                                              ; preds = %693
  %697 = ptrtoint ptr %694 to i32
  br label %728

698:                                              ; preds = %693
  %699 = getelementptr inbounds %struct.buffer_head, ptr %694, i32 0, i32 5
  %700 = load ptr, ptr %699, align 4
  store i32 0, ptr %700, align 4
  %701 = add i32 %51, %55
  %702 = icmp ugt i32 %701, %55
  %703 = icmp ugt i32 %55, 262144
  %704 = or i1 %703, %702
  %705 = and i32 %701, 3
  %706 = icmp ne i32 %705, 0
  %707 = or i1 %706, %704
  br i1 %707, label %708, label %709, !prof !8

708:                                              ; preds = %698
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

709:                                              ; preds = %698
  %710 = trunc i32 %701 to i16
  %711 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %700, i32 0, i32 1
  store i16 %710, ptr %711, align 4
  br i1 %50, label %721, label %712

712:                                              ; preds = %709
  %713 = load ptr, ptr %699, align 4
  %714 = add nsw i32 %55, -12
  %715 = getelementptr i8, ptr %713, i32 %714
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %715, i8 0, i32 12, i1 false) #11
  %716 = icmp ult i32 %55, 12
  br i1 %716, label %717, label %718, !prof !8

717:                                              ; preds = %712
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %715, i32 0, i32 1
  store i16 12, ptr %719, align 4
  %720 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %715, i32 0, i32 3
  store i8 -34, ptr %720, align 1
  br label %721

721:                                              ; preds = %718, %709
  %722 = call fastcc i32 @add_dirent_to_buf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %2, ptr noundef %700, ptr noundef %694)
  %723 = icmp eq ptr %694, null
  br i1 %723, label %728, label %725

724:                                              ; preds = %444
  store i32 %435, ptr %11, align 4
  br label %725

725:                                              ; preds = %724, %721
  %726 = phi i32 [ %722, %721 ], [ %445, %724 ]
  %727 = phi ptr [ %694, %721 ], [ %436, %724 ]
  call void @__brelse(ptr noundef nonnull %727) #11
  br label %728

728:                                              ; preds = %725, %721, %696, %686, %442, %383
  %729 = phi i32 [ %722, %721 ], [ %726, %725 ], [ %687, %686 ], [ %443, %442 ], [ %697, %696 ], [ %384, %383 ]
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %733

731:                                              ; preds = %728, %76
  %732 = getelementptr i8, ptr %2, i32 -128
  call void @_set_bit(i32 noundef 6, ptr noundef %732) #11
  br label %733

733:                                              ; preds = %731, %728, %417, %416, %73, %48
  %734 = phi i32 [ -22, %48 ], [ 0, %731 ], [ %729, %728 ], [ %74, %73 ], [ -117, %416 ], [ %418, %417 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #11
  ret i32 %734
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_track_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ext4_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ext4_filename, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !11
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.anon.4, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 255
  br i1 %9, label %66, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %11 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %6, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1, i32 1
  store i32 %8, ptr %15, align 4
  tail call void @generic_set_encrypted_ci_d_ops(ptr noundef %1) #11
  %16 = call fastcc ptr @__ext4_find_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %66, label %18

18:                                               ; preds = %10
  %19 = icmp eq ptr %16, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %5, align 4
  %22 = load i32, ptr %21, align 4
  call void @__brelse(ptr noundef nonnull %16) #11
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq i32 %22, 2
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 30
  %30 = load i32, ptr %29, align 8
  %31 = icmp ugt i32 %30, %22
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 15
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i32 %35, %22
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %26
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_lookup, i32 noundef 1777, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef %22) #11
  br label %66

38:                                               ; preds = %32, %20
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %22, %40
  br i1 %41, label %42, label %43, !prof !10

42:                                               ; preds = %38
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_lookup, i32 noundef 1782, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef %1) #11
  br label %66

43:                                               ; preds = %38
  %44 = call ptr @__ext4_iget(ptr noundef %24, i32 noundef %22, i32 noundef 0, ptr noundef nonnull @__func__.ext4_lookup, i32 noundef 1785) #11
  %45 = icmp eq ptr %44, inttoptr (i32 -116 to ptr)
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_lookup, i32 noundef 1789, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %22) #11
  br label %66

47:                                               ; preds = %43
  %48 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %63, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i16, ptr %44, align 8
  %56 = and i16 %55, -4096
  switch i16 %56, label %63 [
    i16 16384, label %57
    i16 -24576, label %57
  ]

57:                                               ; preds = %54, %54
  %58 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %39, align 4
  %61 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 10
  %62 = load i32, ptr %61, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %59, ptr noundef nonnull @__func__.ext4_lookup, i32 noundef 1797, ptr noundef nonnull @.str.41, i32 noundef %60, i32 noundef %62) #11
  call void @iput(ptr noundef %44) #11
  br label %66

63:                                               ; preds = %54, %49, %47, %18
  %64 = phi ptr [ null, %18 ], [ %44, %54 ], [ %44, %49 ], [ %44, %47 ]
  %65 = call ptr @d_splice_alias(ptr noundef %64, ptr noundef %1) #11
  br label %66

66:                                               ; preds = %63, %57, %46, %42, %37, %10, %3
  %67 = phi ptr [ %65, %63 ], [ inttoptr (i32 -36 to ptr), %3 ], [ %16, %10 ], [ inttoptr (i32 -117 to ptr), %37 ], [ inttoptr (i32 -1 to ptr), %57 ], [ inttoptr (i32 -117 to ptr), %46 ], [ inttoptr (i32 -117 to ptr), %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 29
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 27, i32 39
  %19 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  br label %20

20:                                               ; preds = %46, %5
  %21 = call ptr @__ext4_new_inode(ptr noundef %0, ptr noundef null, ptr noundef %1, i16 noundef zeroext %3, ptr noundef %19, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 2747, i32 noundef %18) #11
  store ptr %21, ptr %6, align 4
  %22 = tail call ptr @llvm.thread.pointer() #11
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 113
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %21 to i32
  %26 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 7
  store ptr @ext4_file_inode_operations, ptr %28, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 39
  store ptr @ext4_file_operations, ptr %29, align 8
  call void @ext4_set_aops(ptr noundef %21) #11
  %30 = call fastcc i32 @ext4_add_nondir(ptr noundef %24, ptr noundef %2, ptr noundef nonnull %6)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @ext4_fc_track_create(ptr noundef %24, ptr noundef %2) #11
  br label %33

33:                                               ; preds = %32, %27, %20
  %34 = phi i32 [ %25, %20 ], [ %30, %27 ], [ 0, %32 ]
  %35 = icmp eq ptr %24, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_create, i32 noundef 2759, ptr noundef nonnull %24) #11
  br label %38

38:                                               ; preds = %36, %33
  %39 = load ptr, ptr %6, align 4
  %40 = icmp eq ptr %39, null
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = or i1 %40, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @iput(ptr noundef nonnull %39) #11
  br label %44

44:                                               ; preds = %43, %38
  %45 = icmp eq i32 %34, -28
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load ptr, ptr %8, align 4
  %48 = call i32 @ext4_should_retry_alloc(ptr noundef %47, ptr noundef nonnull %7) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %20

50:                                               ; preds = %46, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_link(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 64999
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %1, i32 -124
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %1, i32 532
  %21 = getelementptr i8, ptr %5, i32 532
  %22 = load i32, ptr %20, align 4
  %23 = load i32, ptr %21, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %14
  %26 = tail call i32 @__ext4_link(ptr noundef %1, ptr noundef %5, ptr noundef %2)
  br label %27

27:                                               ; preds = %25, %19, %9, %3
  %28 = phi i32 [ %26, %25 ], [ -31, %3 ], [ -95, %9 ], [ -18, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_unlink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 48
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %75, !prof !12

11:                                               ; preds = %2
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_unlink_enter, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #11
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  %26 = tail call i32 @__traceiter_ext4_unlink_enter(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %25, %14, %11
  %31 = phi ptr [ %6, %11 ], [ %6, %14 ], [ %29, %25 ]
  %32 = phi ptr [ %4, %11 ], [ %4, %14 ], [ %27, %25 ]
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 15
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ext4_super_block, ptr %34, i32 0, i32 29
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 64
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 12, i32 24
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 3
  %43 = tail call ptr @__ext4_journal_start_sb(ptr noundef %32, i32 noundef 3225, i32 noundef 4, i32 noundef %39, i32 noundef 0, i32 noundef %42) #11
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = ptrtoint ptr %43 to i32
  br label %58

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %49 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %50 = load ptr, ptr %48, align 8
  %51 = tail call i32 @__ext4_unlink(ptr noundef %43, ptr noundef %0, ptr noundef %49, ptr noundef %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  tail call void @ext4_fc_track_unlink(ptr noundef %43, ptr noundef %1) #11
  br label %54

54:                                               ; preds = %53, %47
  %55 = icmp eq ptr %43, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_unlink, i32 noundef 3245, ptr noundef nonnull %43) #11
  br label %58

58:                                               ; preds = %56, %54, %45
  %59 = phi i32 [ %46, %45 ], [ %51, %56 ], [ %51, %54 ]
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_unlink_exit, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #11
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %74 = tail call i32 @__traceiter_ext4_unlink_exit(ptr noundef null, ptr noundef %1, i32 noundef %59) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %75

75:                                               ; preds = %73, %62, %58, %2
  %76 = phi i32 [ -5, %2 ], [ %59, %58 ], [ %59, %62 ], [ %59, %73 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_symlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %6 = tail call i32 @strlen(ptr noundef %3)
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 48
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %123, !prof !12

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %22 = load i32, ptr %21, align 16
  %23 = add i32 %6, 1
  %24 = icmp ugt i32 %23, %22
  br i1 %24, label %123, label %25

25:                                               ; preds = %20
  %26 = icmp ugt i32 %23, 60
  br i1 %26, label %35, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ext4_super_block, ptr %29, i32 0, i32 29
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 27, i32 39
  br label %35

35:                                               ; preds = %27, %25
  %36 = phi i32 [ %34, %27 ], [ 10, %25 ]
  %37 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %38 = tail call ptr @__ext4_new_inode(ptr noundef %0, ptr noundef null, ptr noundef %1, i16 noundef zeroext -24065, ptr noundef %37, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 3295, i32 noundef %36) #11
  store ptr %38, ptr %5, align 4
  %39 = tail call ptr @llvm.thread.pointer() #11
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 113
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = icmp eq ptr %41, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_symlink, i32 noundef 3299, ptr noundef nonnull %41) #11
  br label %47

47:                                               ; preds = %45, %43
  %48 = ptrtoint ptr %38 to i32
  br label %123

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %115

54:                                               ; preds = %49
  br i1 %26, label %55, label %90

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 7
  store ptr @ext4_symlink_inode_operations, ptr %56, align 8
  tail call void @inode_nohighmem(ptr noundef %38) #11
  tail call void @ext4_set_aops(ptr noundef %38) #11
  tail call void @drop_nlink(ptr noundef %38) #11
  %57 = tail call i32 @ext4_orphan_add(ptr noundef %41, ptr noundef %38) #11
  %58 = icmp eq ptr %41, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_symlink, i32 noundef 3328, ptr noundef nonnull %41) #11
  br label %61

61:                                               ; preds = %59, %55
  %62 = icmp eq i32 %57, 0
  br i1 %62, label %63, label %121

63:                                               ; preds = %61
  %64 = tail call i32 @__page_symlink(ptr noundef %38, ptr noundef %3, i32 noundef %23, i32 noundef 1) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %121

66:                                               ; preds = %63
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 27
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_super_block, ptr %71, i32 0, i32 29
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 64
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 25, i32 37
  %77 = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %78, 3
  %80 = tail call ptr @__ext4_journal_start_sb(ptr noundef %67, i32 noundef 3341, i32 noundef 4, i32 noundef %76, i32 noundef 0, i32 noundef %79) #11
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = ptrtoint ptr %80 to i32
  br label %121

84:                                               ; preds = %66
  tail call void @set_nlink(ptr noundef %38, i32 noundef 1) #11
  %85 = tail call i32 @ext4_orphan_del(ptr noundef %80, ptr noundef %38) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 13
  %89 = load i64, ptr %88, align 8
  br label %103

90:                                               ; preds = %54
  %91 = getelementptr i8, ptr %38, i32 -124
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %91) #11
  %92 = load i32, ptr %50, align 4
  %93 = and i32 %92, 16384
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 7
  store ptr @ext4_fast_symlink_inode_operations, ptr %96, align 8
  %97 = getelementptr i8, ptr %38, i32 -208
  %98 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 43
  store ptr %97, ptr %98, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = getelementptr i8, ptr %38, i32 -208
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %100, ptr align 1 %3, i32 %23, i1 false)
  %101 = zext i32 %6 to i64
  %102 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 13
  store i64 %101, ptr %102, align 8
  br label %103

103:                                              ; preds = %99, %87
  %104 = phi i64 [ %89, %87 ], [ %101, %99 ]
  %105 = phi ptr [ %80, %87 ], [ %41, %99 ]
  %106 = getelementptr i8, ptr %38, i32 -32
  store i64 %104, ptr %106, align 8
  %107 = call fastcc i32 @ext4_add_nondir(ptr noundef %105, ptr noundef %2, ptr noundef nonnull %5)
  %108 = icmp eq ptr %105, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_symlink, i32 noundef 3365, ptr noundef nonnull %105) #11
  br label %111

111:                                              ; preds = %109, %103
  %112 = load ptr, ptr %5, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  tail call void @iput(ptr noundef nonnull %112) #11
  br label %123

115:                                              ; preds = %84, %49
  %116 = phi i32 [ %85, %84 ], [ -95, %49 ]
  %117 = phi ptr [ %80, %84 ], [ %41, %49 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_symlink, i32 noundef 3372, ptr noundef nonnull %117) #11
  br label %121

121:                                              ; preds = %119, %115, %82, %63, %61
  %122 = phi i32 [ %116, %119 ], [ %116, %115 ], [ %83, %82 ], [ %64, %63 ], [ %57, %61 ]
  tail call void @clear_nlink(ptr noundef %38) #11
  tail call void @unlock_new_inode(ptr noundef %38) #11
  tail call void @iput(ptr noundef %38) #11
  br label %123

123:                                              ; preds = %121, %114, %111, %47, %20, %15, %4
  %124 = phi i32 [ %48, %47 ], [ -5, %4 ], [ -95, %15 ], [ -36, %20 ], [ %122, %121 ], [ %107, %114 ], [ %107, %111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_mkdir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 64999
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  br i1 %8, label %15, label %30

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 30
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %147, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 28
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %147, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %1, i32 -124
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %147, label %30, !prof !10

30:                                               ; preds = %25, %4
  %31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %32 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 29
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 27, i32 39
  %37 = or i16 %3, 16384
  %38 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %39 = getelementptr i8, ptr %1, i32 -124
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  br label %41

41:                                               ; preds = %143, %30
  %42 = call ptr @__ext4_new_inode(ptr noundef %0, ptr noundef null, ptr noundef %1, i16 noundef zeroext %37, ptr noundef %38, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 2931, i32 noundef %36) #11
  %43 = tail call ptr @llvm.thread.pointer() #11
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 113
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %42 to i32
  %47 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %135, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 7
  store ptr @ext4_dir_inode_operations, ptr %49, align 8
  %50 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 39
  store ptr @ext4_dir_operations, ptr %50, align 8
  %51 = call i32 @ext4_init_new_dir(ptr noundef %45, ptr noundef %1, ptr noundef %42)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = call i32 @__ext4_mark_inode_dirty(ptr noundef %45, ptr noundef %42, ptr noundef nonnull @__func__.ext4_mkdir, i32 noundef 2942) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call fastcc i32 @ext4_add_entry(ptr noundef %45, ptr noundef %2, ptr noundef %42)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %114, %56, %53, %48
  %60 = phi i32 [ %51, %48 ], [ %57, %56 ], [ %115, %114 ], [ %54, %53 ]
  call void @clear_nlink(ptr noundef %42) #11
  %61 = call i32 @ext4_orphan_add(ptr noundef %45, ptr noundef %42) #11
  call void @unlock_new_inode(ptr noundef %42) #11
  %62 = call i32 @__ext4_mark_inode_dirty(ptr noundef %45, ptr noundef %42, ptr noundef nonnull @__func__.ext4_mkdir, i32 noundef 2950) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64, !prof !12

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i32 [ %62, %64 ], [ %60, %59 ]
  %67 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_mkdir, i32 noundef 2953, ptr noundef %45) #11
  call void @iput(ptr noundef %42) #11
  br label %140

68:                                               ; preds = %56
  call void @inc_nlink(ptr noundef %1) #11
  %69 = load ptr, ptr %31, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ext4_super_block, ptr %73, i32 0, i32 28
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %68
  %79 = load volatile i32, ptr %39, align 4
  %80 = and i32 %79, 4096
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr %6, align 8
  %84 = icmp ugt i32 %83, 65000
  %85 = icmp eq i32 %83, 2
  %86 = or i1 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  call void @set_nlink(ptr noundef %1, i32 noundef 1) #11
  %88 = load ptr, ptr %31, align 4
  %89 = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 27
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 15
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ext4_super_block, ptr %92, i32 0, i32 28
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %87, %82, %78, %68
  %96 = phi i32 [ %75, %68 ], [ %75, %78 ], [ %75, %82 ], [ %94, %87 ]
  %97 = phi ptr [ %73, %68 ], [ %73, %78 ], [ %73, %82 ], [ %92, %87 ]
  %98 = and i32 %96, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load volatile i32, ptr %39, align 4
  %102 = and i32 %101, 4096
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ext4_super_block, ptr %97, i32 0, i32 30
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 1024
  %108 = icmp ne i32 %107, 0
  %109 = load i1, ptr @ext4_update_dx_flag.__already_done, align 1
  %110 = xor i1 %109, true
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %112, label %113, !prof !10

112:                                              ; preds = %104
  store i1 true, ptr @ext4_update_dx_flag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2858, i32 noundef 9, ptr noundef null) #11
  br label %113

113:                                              ; preds = %112, %104
  call void @_clear_bit(i32 noundef 12, ptr noundef %39) #11
  br label %114

114:                                              ; preds = %113, %100, %95
  %115 = call i32 @__ext4_mark_inode_dirty(ptr noundef %45, ptr noundef %1, ptr noundef nonnull @__func__.ext4_mkdir, i32 noundef 2960) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %59

117:                                              ; preds = %114
  call void @d_instantiate_new(ptr noundef %2, ptr noundef %42) #11
  call void @ext4_fc_track_create(ptr noundef %45, ptr noundef %2) #11
  %118 = load ptr, ptr %31, align 4
  %119 = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 10
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 144
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, ptr %40, align 4
  %125 = and i32 %124, 65
  %126 = icmp eq i32 %125, 0
  %127 = icmp ult ptr %45, inttoptr (i32 4096 to ptr)
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %135, label %131

129:                                              ; preds = %117
  %130 = icmp ult ptr %45, inttoptr (i32 4096 to ptr)
  br i1 %130, label %135, label %131

131:                                              ; preds = %129, %123
  %132 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %45, i32 0, i32 7
  %133 = load i32, ptr %132, align 4
  %134 = or i32 %133, 1
  store i32 %134, ptr %132, align 4
  br label %135

135:                                              ; preds = %131, %129, %123, %41
  %136 = phi i32 [ %46, %41 ], [ 0, %123 ], [ 0, %129 ], [ 0, %131 ]
  %137 = icmp eq ptr %45, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_mkdir, i32 noundef 2970, ptr noundef nonnull %45) #11
  br label %140

140:                                              ; preds = %138, %135, %65
  %141 = phi i32 [ %136, %138 ], [ %136, %135 ], [ %66, %65 ]
  %142 = icmp eq i32 %141, -28
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load ptr, ptr %31, align 4
  %145 = call i32 @ext4_should_retry_alloc(ptr noundef %144, ptr noundef nonnull %5) #11
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %41

147:                                              ; preds = %143, %140, %25, %20, %15
  %148 = phi i32 [ -31, %25 ], [ -31, %15 ], [ -31, %20 ], [ %141, %140 ], [ -28, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_rmdir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ext4_filename, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !11
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 48
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %114, !prof !12

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %16 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #11
  %17 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %17, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %16, ptr %3, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ext4_filename, ptr %3, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.anon.4, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_filename, ptr %3, i32 0, i32 1, i32 1
  store i32 %22, ptr %23, align 4
  %24 = call fastcc ptr @__ext4_find_entry(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #11
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = ptrtoint ptr %24 to i32
  br label %114

28:                                               ; preds = %14
  %29 = icmp eq ptr %24, null
  br i1 %29, label %114, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %15, align 8
  %32 = load ptr, ptr %4, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %107

37:                                               ; preds = %30
  %38 = call zeroext i1 @ext4_empty_dir(ptr noundef %31)
  br i1 %38, label %39, label %107

39:                                               ; preds = %37
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ext4_super_block, ptr %44, i32 0, i32 29
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 12, i32 24
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, 3
  %53 = call ptr @__ext4_journal_start_sb(ptr noundef %40, i32 noundef 3095, i32 noundef 4, i32 noundef %49, i32 noundef 0, i32 noundef %52) #11
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = ptrtoint ptr %53 to i32
  br label %107

57:                                               ; preds = %39
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 144
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 65
  %67 = icmp eq i32 %66, 0
  %68 = icmp ult ptr %53, inttoptr (i32 4096 to ptr)
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %76, label %72

70:                                               ; preds = %57
  %71 = icmp ult ptr %53, inttoptr (i32 4096 to ptr)
  br i1 %71, label %76, label %72

72:                                               ; preds = %70, %63
  %73 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %53, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 1
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %70, %63
  %77 = load ptr, ptr %4, align 4
  %78 = call fastcc i32 @ext4_delete_entry(ptr noundef %53, ptr noundef %0, ptr noundef %77, ptr noundef nonnull %24)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 11
  %82 = load i32, ptr %81, align 8
  %83 = add i32 %82, -1
  %84 = icmp ult i32 %83, 2
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %21, align 4
  %87 = load ptr, ptr %18, align 8
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %31, ptr noundef nonnull @__func__.ext4_rmdir, i32 noundef 3112, ptr noundef nonnull @.str.43, i32 noundef %86, ptr noundef %87, i32 noundef %82) #11
  br label %88

88:                                               ; preds = %85, %80
  call fastcc void @inode_inc_iversion(ptr noundef %31)
  call void @clear_nlink(ptr noundef %31) #11
  %89 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 13
  store i64 0, ptr %89, align 8
  %90 = call i32 @ext4_orphan_add(ptr noundef %53, ptr noundef %31) #11
  %91 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 16
  %92 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %93 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %31) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %93, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %92, ptr noundef align 8 dereferenceable(16) %93, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %91, ptr noundef align 8 dereferenceable(16) %93, i32 16, i1 false)
  %94 = call i32 @__ext4_mark_inode_dirty(ptr noundef %53, ptr noundef %31, ptr noundef nonnull @__func__.ext4_rmdir, i32 noundef 3121) #11
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load i16, ptr %0, align 8
  %98 = and i16 %97, -4096
  %99 = icmp eq i16 %98, 16384
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %102 = load i32, ptr %101, align 8
  %103 = icmp ugt i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %96
  call void @drop_nlink(ptr noundef %0) #11
  br label %105

105:                                              ; preds = %104, %100
  call fastcc void @ext4_update_dx_flag(ptr noundef %0)
  call void @ext4_fc_track_unlink(ptr noundef %53, ptr noundef %1) #11
  %106 = call i32 @__ext4_mark_inode_dirty(ptr noundef %53, ptr noundef %0, ptr noundef nonnull @__func__.ext4_rmdir, i32 noundef 3127) #11
  br label %109

107:                                              ; preds = %55, %37, %30
  %108 = phi i32 [ -117, %30 ], [ %56, %55 ], [ -39, %37 ]
  call void @__brelse(ptr noundef nonnull %24) #11
  br label %114

109:                                              ; preds = %105, %88, %76
  %110 = phi i32 [ %106, %105 ], [ %94, %88 ], [ %78, %76 ]
  call void @__brelse(ptr noundef nonnull %24) #11
  %111 = icmp eq ptr %53, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_rmdir, i32 noundef 3143, ptr noundef nonnull %53) #11
  br label %114

114:                                              ; preds = %112, %109, %107, %28, %26, %2
  %115 = phi i32 [ %27, %26 ], [ -5, %2 ], [ %110, %112 ], [ %110, %109 ], [ %108, %107 ], [ -2, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_mknod(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 29
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 27, i32 39
  %19 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  br label %20

20:                                               ; preds = %46, %5
  %21 = call ptr @__ext4_new_inode(ptr noundef %0, ptr noundef null, ptr noundef %1, i16 noundef zeroext %3, ptr noundef %19, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 2782, i32 noundef %18) #11
  store ptr %21, ptr %6, align 4
  %22 = tail call ptr @llvm.thread.pointer() #11
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 113
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %21 to i32
  %26 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load i16, ptr %21, align 8
  call void @init_special_inode(ptr noundef %21, i16 noundef zeroext %28, i32 noundef %4) #11
  %29 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 7
  store ptr @ext4_special_inode_operations, ptr %29, align 8
  %30 = call fastcc i32 @ext4_add_nondir(ptr noundef %24, ptr noundef %2, ptr noundef nonnull %6)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @ext4_fc_track_create(ptr noundef %24, ptr noundef %2) #11
  br label %33

33:                                               ; preds = %32, %27, %20
  %34 = phi i32 [ %25, %20 ], [ %30, %27 ], [ 0, %32 ]
  %35 = icmp eq ptr %24, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_mknod, i32 noundef 2793, ptr noundef nonnull %24) #11
  br label %38

38:                                               ; preds = %36, %33
  %39 = load ptr, ptr %6, align 4
  %40 = icmp eq ptr %39, null
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = or i1 %40, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @iput(ptr noundef nonnull %39) #11
  br label %44

44:                                               ; preds = %43, %38
  %45 = icmp eq i32 %34, -28
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load ptr, ptr %8, align 4
  %48 = call i32 @ext4_should_retry_alloc(ptr noundef %47, ptr noundef nonnull %7) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %20

50:                                               ; preds = %46, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_rename2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_filename, align 4
  %9 = alloca %struct.ext4_filename, align 4
  %10 = alloca %struct.ext4_renament, align 4
  %11 = alloca %struct.ext4_renament, align 4
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca %struct.timespec64, align 8
  %14 = alloca %struct.timespec64, align 8
  %15 = alloca %struct.ext4_filename, align 4
  %16 = alloca %struct.ext4_filename, align 4
  %17 = alloca %struct.ext4_renament, align 4
  %18 = alloca %struct.ext4_renament, align 4
  %19 = alloca %struct.timespec64, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 48
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %747, !prof !12

28:                                               ; preds = %6
  %29 = icmp ult i32 %5, 8
  br i1 %29, label %30, label %747

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %747

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %747

40:                                               ; preds = %35
  %41 = and i32 %5, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %341, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %17) #11
  %44 = getelementptr inbounds i8, ptr %17, i32 12
  store i32 0, ptr %44, align 4, !annotation !11
  store ptr %1, ptr %17, align 4
  %45 = getelementptr inbounds %struct.ext4_renament, ptr %17, i32 0, i32 1
  store ptr %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ext4_renament, ptr %17, i32 0, i32 2
  %47 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %48 = load ptr, ptr %47, align 8
  store ptr %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.ext4_renament, ptr %17, i32 0, i32 4
  %50 = getelementptr inbounds %struct.ext4_renament, ptr %17, i32 0, i32 5
  %51 = getelementptr inbounds %struct.ext4_renament, ptr %17, i32 0, i32 6
  %52 = getelementptr inbounds %struct.ext4_renament, ptr %17, i32 0, i32 7
  %53 = getelementptr inbounds %struct.ext4_renament, ptr %17, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %49, i8 0, i64 28, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %18) #11
  %54 = getelementptr inbounds i8, ptr %18, i32 12
  store i32 0, ptr %54, align 4, !annotation !11
  store ptr %3, ptr %18, align 4
  %55 = getelementptr inbounds %struct.ext4_renament, ptr %18, i32 0, i32 1
  store ptr %4, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ext4_renament, ptr %18, i32 0, i32 2
  %57 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %58 = load ptr, ptr %57, align 8
  store ptr %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.ext4_renament, ptr %18, i32 0, i32 4
  %60 = getelementptr inbounds %struct.ext4_renament, ptr %18, i32 0, i32 5
  %61 = getelementptr inbounds %struct.ext4_renament, ptr %18, i32 0, i32 6
  %62 = getelementptr inbounds %struct.ext4_renament, ptr %18, i32 0, i32 7
  %63 = getelementptr inbounds %struct.ext4_renament, ptr %18, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %59, i8 0, i64 28, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i32 16, i1 false) #11
  %64 = getelementptr i8, ptr %3, i32 -124
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 536870912
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %43
  %69 = getelementptr i8, ptr %3, i32 532
  %70 = getelementptr i8, ptr %48, i32 532
  %71 = load i32, ptr %69, align 4
  %72 = load i32, ptr %70, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %339

74:                                               ; preds = %68, %43
  %75 = getelementptr i8, ptr %1, i32 -124
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 536870912
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %1, i32 532
  %81 = getelementptr i8, ptr %58, i32 532
  %82 = load i32, ptr %80, align 4
  %83 = load i32, ptr %81, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %339

85:                                               ; preds = %79, %74
  %86 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %16) #11
  %87 = getelementptr inbounds i8, ptr %16, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %87, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %86, ptr %16, align 4
  %88 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.ext4_filename, ptr %16, i32 0, i32 1
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.anon.4, ptr %86, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ext4_filename, ptr %16, i32 0, i32 1, i32 1
  store i32 %92, ptr %93, align 4
  %94 = call fastcc ptr @__ext4_find_entry(ptr noundef %1, ptr noundef nonnull %16, ptr noundef %51, ptr noundef %52) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #11
  store ptr %94, ptr %50, align 4
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = ptrtoint ptr %94 to i32
  br label %339

98:                                               ; preds = %85
  %99 = icmp eq ptr %94, null
  br i1 %99, label %317, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr %51, align 4
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %46, align 4
  %104 = getelementptr inbounds %struct.inode, ptr %103, i32 0, i32 10
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %317

107:                                              ; preds = %100
  %108 = load ptr, ptr %18, align 4
  %109 = load ptr, ptr %55, align 4
  %110 = getelementptr inbounds %struct.dentry, ptr %109, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %15) #11
  %111 = getelementptr inbounds i8, ptr %15, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %111, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %110, ptr %15, align 4
  %112 = getelementptr inbounds %struct.dentry, ptr %109, i32 0, i32 4, i32 1
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.ext4_filename, ptr %15, i32 0, i32 1
  store ptr %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.anon.4, ptr %110, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.ext4_filename, ptr %15, i32 0, i32 1, i32 1
  store i32 %116, ptr %117, align 4
  %118 = call fastcc ptr @__ext4_find_entry(ptr noundef %108, ptr noundef nonnull %15, ptr noundef %61, ptr noundef %62) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %15) #11
  store ptr %118, ptr %60, align 4
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = ptrtoint ptr %118 to i32
  store ptr null, ptr %60, align 4
  br label %317

122:                                              ; preds = %107
  %123 = icmp eq ptr %118, null
  br i1 %123, label %317, label %124

124:                                              ; preds = %122
  %125 = load ptr, ptr %61, align 4
  %126 = load i32, ptr %125, align 4
  %127 = load ptr, ptr %56, align 4
  %128 = getelementptr inbounds %struct.inode, ptr %127, i32 0, i32 10
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %317

131:                                              ; preds = %124
  %132 = load ptr, ptr %17, align 4
  %133 = getelementptr inbounds %struct.inode, ptr %132, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.super_block, ptr %134, i32 0, i32 27
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.ext4_sb_info, ptr %136, i32 0, i32 15
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.ext4_super_block, ptr %138, i32 0, i32 29
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 64
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 50, i32 74
  %144 = getelementptr inbounds %struct.ext4_sb_info, ptr %136, i32 0, i32 11
  %145 = load i32, ptr %144, align 4
  %146 = shl i32 %145, 3
  %147 = call ptr @__ext4_journal_start_sb(ptr noundef %134, i32 noundef 3993, i32 noundef 4, i32 noundef %143, i32 noundef 0, i32 noundef %146) #11
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %151

149:                                              ; preds = %131
  %150 = ptrtoint ptr %147 to i32
  br label %317

151:                                              ; preds = %131
  %152 = load ptr, ptr %17, align 4
  %153 = getelementptr inbounds %struct.inode, ptr %152, i32 0, i32 8
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 10
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 144
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.inode, ptr %152, i32 0, i32 4
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 65
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %159
  %165 = load ptr, ptr %18, align 4
  %166 = getelementptr inbounds %struct.inode, ptr %165, i32 0, i32 8
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.super_block, ptr %167, i32 0, i32 10
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 144
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.inode, ptr %165, i32 0, i32 4
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 65
  %176 = icmp eq i32 %175, 0
  %177 = icmp ult ptr %147, inttoptr (i32 4096 to ptr)
  %178 = select i1 %176, i1 true, i1 %177
  br i1 %178, label %185, label %181

179:                                              ; preds = %164, %159, %151
  %180 = icmp ult ptr %147, inttoptr (i32 4096 to ptr)
  br i1 %180, label %185, label %181

181:                                              ; preds = %179, %172
  %182 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %147, i32 0, i32 7
  %183 = load i32, ptr %182, align 4
  %184 = or i32 %183, 1
  store i32 %184, ptr %182, align 4
  br label %185

185:                                              ; preds = %181, %179, %172
  %186 = load ptr, ptr %46, align 4
  %187 = load i16, ptr %186, align 8
  %188 = and i16 %187, -4096
  %189 = icmp eq i16 %188, 16384
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  store i8 1, ptr %44, align 4
  %191 = call fastcc i32 @ext4_rename_dir_prepare(ptr noundef %147, ptr noundef nonnull %17) #11
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %317

193:                                              ; preds = %190, %185
  %194 = load ptr, ptr %56, align 4
  %195 = load i16, ptr %194, align 8
  %196 = and i16 %195, -4096
  %197 = icmp eq i16 %196, 16384
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  store i8 1, ptr %54, align 4
  %199 = call fastcc i32 @ext4_rename_dir_prepare(ptr noundef %147, ptr noundef nonnull %18) #11
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %317

201:                                              ; preds = %198, %193
  %202 = load ptr, ptr %17, align 4
  %203 = load ptr, ptr %18, align 4
  %204 = icmp eq ptr %202, %203
  br i1 %204, label %263, label %205

205:                                              ; preds = %201
  %206 = load i8, ptr %44, align 4, !range !27
  %207 = load i8, ptr %54, align 4, !range !27
  %208 = icmp eq i8 %206, %207
  br i1 %208, label %263, label %209

209:                                              ; preds = %205
  %210 = icmp eq i8 %206, 0
  %211 = select i1 %210, i32 -1, i32 1
  %212 = select i1 %210, i32 1, i32 -1
  store i32 %212, ptr %49, align 4
  store i32 %211, ptr %59, align 4
  br i1 %210, label %213, label %238

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.inode, ptr %202, i32 0, i32 11
  %215 = load i32, ptr %214, align 8
  %216 = icmp ugt i32 %215, 64999
  br i1 %216, label %217, label %263

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.inode, ptr %202, i32 0, i32 8
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.super_block, ptr %219, i32 0, i32 27
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.ext4_sb_info, ptr %221, i32 0, i32 15
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.ext4_super_block, ptr %223, i32 0, i32 30
  %225 = load i32, ptr %224, align 4
  %226 = and i32 %225, 32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %317, label %228

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.ext4_super_block, ptr %223, i32 0, i32 28
  %230 = load i32, ptr %229, align 4
  %231 = and i32 %230, 32
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %317, label %233

233:                                              ; preds = %228
  %234 = getelementptr i8, ptr %202, i32 -124
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %235, 4096
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %317, label %263, !prof !10

238:                                              ; preds = %209
  %239 = getelementptr inbounds %struct.inode, ptr %203, i32 0, i32 11
  %240 = load i32, ptr %239, align 8
  %241 = icmp ugt i32 %240, 64999
  br i1 %241, label %242, label %263

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.inode, ptr %203, i32 0, i32 8
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.super_block, ptr %244, i32 0, i32 27
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.ext4_sb_info, ptr %246, i32 0, i32 15
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.ext4_super_block, ptr %248, i32 0, i32 30
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, 32
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %317, label %253

253:                                              ; preds = %242
  %254 = getelementptr inbounds %struct.ext4_super_block, ptr %248, i32 0, i32 28
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %255, 32
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %317, label %258

258:                                              ; preds = %253
  %259 = getelementptr i8, ptr %203, i32 -124
  %260 = load volatile i32, ptr %259, align 4
  %261 = and i32 %260, 4096
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %317, label %263, !prof !10

263:                                              ; preds = %258, %238, %233, %213, %205, %201
  %264 = load ptr, ptr %61, align 4
  %265 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %264, i32 0, i32 3
  %266 = load i8, ptr %265, align 1
  %267 = load ptr, ptr %46, align 4
  %268 = getelementptr inbounds %struct.inode, ptr %267, i32 0, i32 10
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr %51, align 4
  %271 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %270, i32 0, i32 3
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = call fastcc i32 @ext4_setent(ptr noundef %147, ptr noundef nonnull %18, i32 noundef %269, i32 noundef %273) #11
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %317

276:                                              ; preds = %263
  %277 = load ptr, ptr %56, align 4
  %278 = getelementptr inbounds %struct.inode, ptr %277, i32 0, i32 10
  %279 = load i32, ptr %278, align 4
  %280 = zext i8 %266 to i32
  %281 = call fastcc i32 @ext4_setent(ptr noundef %147, ptr noundef nonnull %17, i32 noundef %279, i32 noundef %280) #11
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %317

283:                                              ; preds = %276
  %284 = load ptr, ptr %46, align 4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %19, ptr noundef %284) #11
  %285 = load ptr, ptr %46, align 4
  %286 = getelementptr inbounds %struct.inode, ptr %285, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %286, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 16, i1 false) #11
  %287 = load ptr, ptr %56, align 4
  %288 = getelementptr inbounds %struct.inode, ptr %287, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %288, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 16, i1 false) #11
  %289 = call i32 @__ext4_mark_inode_dirty(ptr noundef %147, ptr noundef %285, ptr noundef nonnull @__func__.ext4_cross_rename, i32 noundef 4045) #11
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %317, !prof !12

291:                                              ; preds = %283
  %292 = load ptr, ptr %56, align 4
  %293 = call i32 @__ext4_mark_inode_dirty(ptr noundef %147, ptr noundef %292, ptr noundef nonnull @__func__.ext4_cross_rename, i32 noundef 4048) #11
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %317, !prof !12

295:                                              ; preds = %291
  %296 = load ptr, ptr %56, align 4
  %297 = getelementptr inbounds %struct.inode, ptr %296, i32 0, i32 8
  %298 = load ptr, ptr %297, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %298, i32 noundef 1, ptr noundef %147) #11
  %299 = load ptr, ptr %53, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr %18, align 4
  %303 = getelementptr inbounds %struct.inode, ptr %302, i32 0, i32 10
  %304 = load i32, ptr %303, align 4
  %305 = call fastcc i32 @ext4_rename_dir_finish(ptr noundef %147, ptr noundef nonnull %17, i32 noundef %304) #11
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %301, %295
  %308 = load ptr, ptr %63, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %316, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr %17, align 4
  %312 = getelementptr inbounds %struct.inode, ptr %311, i32 0, i32 10
  %313 = load i32, ptr %312, align 4
  %314 = call fastcc i32 @ext4_rename_dir_finish(ptr noundef %147, ptr noundef nonnull %18, i32 noundef %313) #11
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %310, %307
  call fastcc void @ext4_update_dir_count(ptr noundef %147, ptr noundef nonnull %17) #11
  call fastcc void @ext4_update_dir_count(ptr noundef %147, ptr noundef nonnull %18) #11
  br label %317

317:                                              ; preds = %316, %310, %301, %291, %283, %276, %263, %258, %253, %242, %233, %228, %217, %198, %190, %149, %124, %122, %120, %100, %98
  %318 = phi i32 [ -2, %100 ], [ %121, %120 ], [ -2, %124 ], [ %150, %149 ], [ %191, %190 ], [ %199, %198 ], [ -31, %233 ], [ -31, %258 ], [ %274, %263 ], [ %281, %276 ], [ %289, %283 ], [ %293, %291 ], [ %305, %301 ], [ %314, %310 ], [ 0, %316 ], [ -2, %122 ], [ -2, %98 ], [ -31, %217 ], [ -31, %228 ], [ -31, %242 ], [ -31, %253 ]
  %319 = phi ptr [ null, %100 ], [ null, %120 ], [ null, %124 ], [ null, %149 ], [ %147, %190 ], [ %147, %198 ], [ %147, %233 ], [ %147, %258 ], [ %147, %263 ], [ %147, %276 ], [ %147, %283 ], [ %147, %291 ], [ %147, %301 ], [ %147, %310 ], [ %147, %316 ], [ null, %122 ], [ null, %98 ], [ %147, %217 ], [ %147, %228 ], [ %147, %242 ], [ %147, %253 ]
  %320 = load ptr, ptr %53, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %317
  call void @__brelse(ptr noundef nonnull %320) #11
  br label %323

323:                                              ; preds = %322, %317
  %324 = load ptr, ptr %63, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %327, label %326

326:                                              ; preds = %323
  call void @__brelse(ptr noundef nonnull %324) #11
  br label %327

327:                                              ; preds = %326, %323
  %328 = load ptr, ptr %50, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  call void @__brelse(ptr noundef nonnull %328) #11
  br label %331

331:                                              ; preds = %330, %327
  %332 = load ptr, ptr %60, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %335, label %334

334:                                              ; preds = %331
  call void @__brelse(ptr noundef nonnull %332) #11
  br label %335

335:                                              ; preds = %334, %331
  %336 = icmp eq ptr %319, null
  br i1 %336, label %339, label %337

337:                                              ; preds = %335
  %338 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_cross_rename, i32 noundef 4073, ptr noundef nonnull %319) #11
  br label %339

339:                                              ; preds = %337, %335, %96, %79, %68
  %340 = phi i32 [ %97, %96 ], [ -18, %79 ], [ -18, %68 ], [ %318, %337 ], [ %318, %335 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %17) #11
  br label %747

341:                                              ; preds = %40
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %10) #11
  %342 = getelementptr inbounds i8, ptr %10, i32 12
  store i32 0, ptr %342, align 4, !annotation !11
  store ptr %1, ptr %10, align 4
  %343 = getelementptr inbounds %struct.ext4_renament, ptr %10, i32 0, i32 1
  store ptr %2, ptr %343, align 4
  %344 = getelementptr inbounds %struct.ext4_renament, ptr %10, i32 0, i32 2
  %345 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %346 = load ptr, ptr %345, align 8
  store ptr %346, ptr %344, align 4
  %347 = getelementptr inbounds %struct.ext4_renament, ptr %10, i32 0, i32 4
  %348 = getelementptr inbounds %struct.ext4_renament, ptr %10, i32 0, i32 5
  %349 = getelementptr inbounds %struct.ext4_renament, ptr %10, i32 0, i32 6
  %350 = getelementptr inbounds %struct.ext4_renament, ptr %10, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %347, i8 0, i64 28, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %11) #11
  %351 = getelementptr inbounds i8, ptr %11, i32 12
  store i32 0, ptr %351, align 4, !annotation !11
  store ptr %3, ptr %11, align 4
  %352 = getelementptr inbounds %struct.ext4_renament, ptr %11, i32 0, i32 1
  store ptr %4, ptr %352, align 4
  %353 = getelementptr inbounds %struct.ext4_renament, ptr %11, i32 0, i32 2
  %354 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %355 = load ptr, ptr %354, align 8
  store ptr %355, ptr %353, align 4
  %356 = getelementptr inbounds %struct.ext4_renament, ptr %11, i32 0, i32 4
  %357 = getelementptr inbounds %struct.ext4_renament, ptr %11, i32 0, i32 5
  %358 = getelementptr inbounds %struct.ext4_renament, ptr %11, i32 0, i32 6
  %359 = getelementptr inbounds %struct.ext4_renament, ptr %11, i32 0, i32 7
  %360 = icmp eq ptr %355, null
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %356, i8 0, i64 28, i1 false) #11
  br i1 %360, label %366, label %361

361:                                              ; preds = %341
  %362 = getelementptr inbounds %struct.inode, ptr %355, i32 0, i32 11
  %363 = load i32, ptr %362, align 8
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %361
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %355, ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3715, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.44) #11
  br label %745

366:                                              ; preds = %361, %341
  %367 = getelementptr i8, ptr %3, i32 -124
  %368 = load volatile i32, ptr %367, align 4
  %369 = and i32 %368, 536870912
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %377, label %371

371:                                              ; preds = %366
  %372 = getelementptr i8, ptr %3, i32 532
  %373 = getelementptr i8, ptr %346, i32 532
  %374 = load i32, ptr %372, align 4
  %375 = load i32, ptr %373, align 4
  %376 = icmp eq i32 %374, %375
  br i1 %376, label %377, label %745

377:                                              ; preds = %371, %366
  %378 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #11
  %379 = getelementptr inbounds i8, ptr %9, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %379, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %378, ptr %9, align 4
  %380 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %381 = load ptr, ptr %380, align 8
  %382 = getelementptr inbounds %struct.ext4_filename, ptr %9, i32 0, i32 1
  store ptr %381, ptr %382, align 4
  %383 = getelementptr inbounds %struct.anon.4, ptr %378, i32 0, i32 1
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr inbounds %struct.ext4_filename, ptr %9, i32 0, i32 1, i32 1
  store i32 %384, ptr %385, align 4
  %386 = call fastcc ptr @__ext4_find_entry(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %349, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #11
  store ptr %386, ptr %348, align 4
  %387 = icmp ugt ptr %386, inttoptr (i32 -4096 to ptr)
  br i1 %387, label %388, label %390

388:                                              ; preds = %377
  %389 = ptrtoint ptr %386 to i32
  br label %745

390:                                              ; preds = %377
  %391 = icmp eq ptr %386, null
  br i1 %391, label %732, label %392

392:                                              ; preds = %390
  %393 = load ptr, ptr %349, align 4
  %394 = load i32, ptr %393, align 4
  %395 = load ptr, ptr %344, align 4
  %396 = getelementptr inbounds %struct.inode, ptr %395, i32 0, i32 10
  %397 = load i32, ptr %396, align 4
  %398 = icmp eq i32 %394, %397
  br i1 %398, label %399, label %732

399:                                              ; preds = %392
  %400 = load ptr, ptr %11, align 4
  %401 = load ptr, ptr %352, align 4
  %402 = getelementptr inbounds %struct.dentry, ptr %401, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #11
  %403 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %403, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %402, ptr %8, align 4
  %404 = getelementptr inbounds %struct.dentry, ptr %401, i32 0, i32 4, i32 1
  %405 = load ptr, ptr %404, align 8
  %406 = getelementptr inbounds %struct.ext4_filename, ptr %8, i32 0, i32 1
  store ptr %405, ptr %406, align 4
  %407 = getelementptr inbounds %struct.anon.4, ptr %402, i32 0, i32 1
  %408 = load i32, ptr %407, align 4
  %409 = getelementptr inbounds %struct.ext4_filename, ptr %8, i32 0, i32 1, i32 1
  store i32 %408, ptr %409, align 4
  %410 = call fastcc ptr @__ext4_find_entry(ptr noundef %400, ptr noundef nonnull %8, ptr noundef %358, ptr noundef %359) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #11
  store ptr %410, ptr %357, align 4
  %411 = icmp ugt ptr %410, inttoptr (i32 -4096 to ptr)
  br i1 %411, label %412, label %414

412:                                              ; preds = %399
  %413 = ptrtoint ptr %410 to i32
  store ptr null, ptr %357, align 4
  br label %732

414:                                              ; preds = %399
  %415 = icmp eq ptr %410, null
  %416 = load ptr, ptr %353, align 4
  %417 = icmp ne ptr %416, null
  %418 = select i1 %415, i1 true, i1 %417
  br i1 %418, label %421, label %419

419:                                              ; preds = %414
  call void @__brelse(ptr noundef nonnull %410) #11
  store ptr null, ptr %357, align 4
  %420 = load ptr, ptr %353, align 4
  br label %421

421:                                              ; preds = %419, %414
  %422 = phi ptr [ %420, %419 ], [ %416, %414 ]
  %423 = icmp eq ptr %422, null
  br i1 %423, label %437, label %424

424:                                              ; preds = %421
  %425 = load ptr, ptr %11, align 4
  %426 = getelementptr inbounds %struct.inode, ptr %425, i32 0, i32 8
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr inbounds %struct.super_block, ptr %427, i32 0, i32 27
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr inbounds %struct.ext4_sb_info, ptr %429, i32 0, i32 17
  %431 = load i32, ptr %430, align 4
  %432 = and i32 %431, 65536
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %424
  %435 = load ptr, ptr %344, align 4
  %436 = call i32 @ext4_alloc_da_blocks(ptr noundef %435) #11
  br label %437

437:                                              ; preds = %434, %424, %421
  %438 = load ptr, ptr %10, align 4
  %439 = getelementptr inbounds %struct.inode, ptr %438, i32 0, i32 8
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr inbounds %struct.super_block, ptr %440, i32 0, i32 27
  %442 = load ptr, ptr %441, align 4
  %443 = getelementptr inbounds %struct.ext4_sb_info, ptr %442, i32 0, i32 15
  %444 = load ptr, ptr %443, align 4
  %445 = getelementptr inbounds %struct.ext4_super_block, ptr %444, i32 0, i32 29
  %446 = load i32, ptr %445, align 8
  %447 = and i32 %446, 64
  %448 = icmp eq i32 %447, 0
  %449 = select i1 %448, i32 38, i32 62
  %450 = and i32 %5, 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %437
  %453 = getelementptr inbounds %struct.ext4_sb_info, ptr %442, i32 0, i32 11
  %454 = load i32, ptr %453, align 4
  %455 = shl i32 %454, 3
  %456 = call ptr @__ext4_journal_start_sb(ptr noundef %440, i32 noundef 3771, i32 noundef 4, i32 noundef %449, i32 noundef 0, i32 noundef %455) #11
  %457 = icmp ugt ptr %456, inttoptr (i32 -4096 to ptr)
  br i1 %457, label %458, label %490

458:                                              ; preds = %452
  %459 = ptrtoint ptr %456 to i32
  br label %732

460:                                              ; preds = %437
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  %461 = add nuw nsw i32 %449, 10
  br label %462

462:                                              ; preds = %483, %460
  %463 = phi ptr [ %484, %483 ], [ %438, %460 ]
  %464 = load ptr, ptr %343, align 4
  %465 = getelementptr inbounds %struct.dentry, ptr %464, i32 0, i32 4
  %466 = call ptr @__ext4_new_inode(ptr noundef %0, ptr noundef null, ptr noundef %463, i16 noundef zeroext 8192, ptr noundef %465, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 3667, i32 noundef %461) #11
  %467 = tail call ptr @llvm.thread.pointer() #11
  %468 = getelementptr inbounds %struct.task_struct, ptr %467, i32 0, i32 113
  %469 = load ptr, ptr %468, align 4
  %470 = icmp ugt ptr %466, inttoptr (i32 -4096 to ptr)
  br i1 %470, label %471, label %485

471:                                              ; preds = %462
  %472 = icmp eq ptr %469, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %471
  %474 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_whiteout_for_rename, i32 noundef 3672, ptr noundef nonnull %469) #11
  br label %475

475:                                              ; preds = %473, %471
  %476 = icmp eq ptr %466, inttoptr (i32 -28 to ptr)
  br i1 %476, label %477, label %488

477:                                              ; preds = %475
  %478 = load ptr, ptr %10, align 4
  %479 = getelementptr inbounds %struct.inode, ptr %478, i32 0, i32 8
  %480 = load ptr, ptr %479, align 4
  %481 = call i32 @ext4_should_retry_alloc(ptr noundef %480, ptr noundef nonnull %7) #11
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %488, label %483

483:                                              ; preds = %477
  %484 = load ptr, ptr %10, align 4
  br label %462

485:                                              ; preds = %462
  %486 = load i16, ptr %466, align 8
  call void @init_special_inode(ptr noundef %466, i16 noundef zeroext %486, i32 noundef 0) #11
  %487 = getelementptr inbounds %struct.inode, ptr %466, i32 0, i32 7
  store ptr @ext4_special_inode_operations, ptr %487, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %490

488:                                              ; preds = %477, %475
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %489 = ptrtoint ptr %466 to i32
  br label %732

490:                                              ; preds = %485, %452
  %491 = phi ptr [ %456, %452 ], [ %469, %485 ]
  %492 = phi ptr [ null, %452 ], [ %466, %485 ]
  %493 = load ptr, ptr %349, align 4
  %494 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %493, i32 0, i32 3
  %495 = load i8, ptr %494, align 1
  %496 = load ptr, ptr %10, align 4
  %497 = getelementptr inbounds %struct.inode, ptr %496, i32 0, i32 8
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.super_block, ptr %498, i32 0, i32 10
  %500 = load i32, ptr %499, align 4
  %501 = and i32 %500, 144
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %523

503:                                              ; preds = %490
  %504 = getelementptr inbounds %struct.inode, ptr %496, i32 0, i32 4
  %505 = load i32, ptr %504, align 4
  %506 = and i32 %505, 65
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %523

508:                                              ; preds = %503
  %509 = load ptr, ptr %11, align 4
  %510 = getelementptr inbounds %struct.inode, ptr %509, i32 0, i32 8
  %511 = load ptr, ptr %510, align 4
  %512 = getelementptr inbounds %struct.super_block, ptr %511, i32 0, i32 10
  %513 = load i32, ptr %512, align 4
  %514 = and i32 %513, 144
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %508
  %517 = getelementptr inbounds %struct.inode, ptr %509, i32 0, i32 4
  %518 = load i32, ptr %517, align 4
  %519 = and i32 %518, 65
  %520 = icmp eq i32 %519, 0
  %521 = icmp ult ptr %491, inttoptr (i32 4096 to ptr)
  %522 = select i1 %520, i1 true, i1 %521
  br i1 %522, label %529, label %525

523:                                              ; preds = %508, %503, %490
  %524 = icmp ult ptr %491, inttoptr (i32 4096 to ptr)
  br i1 %524, label %529, label %525

525:                                              ; preds = %523, %516
  %526 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %491, i32 0, i32 7
  %527 = load i32, ptr %526, align 4
  %528 = or i32 %527, 1
  store i32 %528, ptr %526, align 4
  br label %529

529:                                              ; preds = %525, %523, %516
  %530 = load ptr, ptr %344, align 4
  %531 = load i16, ptr %530, align 8
  %532 = and i16 %531, -4096
  %533 = icmp eq i16 %532, 16384
  br i1 %533, label %534, label %572

534:                                              ; preds = %529
  %535 = load ptr, ptr %353, align 4
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537

537:                                              ; preds = %534
  %538 = call zeroext i1 @ext4_empty_dir(ptr noundef nonnull %535) #11
  br i1 %538, label %567, label %715

539:                                              ; preds = %534
  %540 = load ptr, ptr %11, align 4
  %541 = icmp eq ptr %540, %496
  br i1 %541, label %567, label %542

542:                                              ; preds = %539
  %543 = getelementptr inbounds %struct.inode, ptr %540, i32 0, i32 11
  %544 = load i32, ptr %543, align 8
  %545 = icmp ugt i32 %544, 64999
  br i1 %545, label %546, label %567

546:                                              ; preds = %542
  %547 = getelementptr inbounds %struct.inode, ptr %540, i32 0, i32 8
  %548 = load ptr, ptr %547, align 4
  %549 = getelementptr inbounds %struct.super_block, ptr %548, i32 0, i32 27
  %550 = load ptr, ptr %549, align 4
  %551 = getelementptr inbounds %struct.ext4_sb_info, ptr %550, i32 0, i32 15
  %552 = load ptr, ptr %551, align 4
  %553 = getelementptr inbounds %struct.ext4_super_block, ptr %552, i32 0, i32 30
  %554 = load i32, ptr %553, align 4
  %555 = and i32 %554, 32
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %715, label %557

557:                                              ; preds = %546
  %558 = getelementptr inbounds %struct.ext4_super_block, ptr %552, i32 0, i32 28
  %559 = load i32, ptr %558, align 4
  %560 = and i32 %559, 32
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %715, label %562

562:                                              ; preds = %557
  %563 = getelementptr i8, ptr %540, i32 -124
  %564 = load volatile i32, ptr %563, align 4
  %565 = and i32 %564, 4096
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %715, label %567, !prof !10

567:                                              ; preds = %562, %542, %539, %537
  %568 = call fastcc i32 @ext4_rename_dir_prepare(ptr noundef %491, ptr noundef nonnull %10) #11
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %715

570:                                              ; preds = %567
  %571 = load ptr, ptr %10, align 4
  br label %572

572:                                              ; preds = %570, %529
  %573 = phi ptr [ %571, %570 ], [ %496, %529 ]
  %574 = load ptr, ptr %11, align 4
  %575 = getelementptr inbounds %struct.inode, ptr %574, i32 0, i32 10
  %576 = load i32, ptr %575, align 4
  %577 = getelementptr inbounds %struct.inode, ptr %573, i32 0, i32 10
  %578 = load i32, ptr %577, align 4
  %579 = icmp eq i32 %576, %578
  br i1 %579, label %580, label %585

580:                                              ; preds = %572
  %581 = getelementptr i8, ptr %574, i32 -124
  %582 = load volatile i32, ptr %581, align 4
  %583 = and i32 %582, 268435456
  %584 = icmp ne i32 %583, 0
  br label %585

585:                                              ; preds = %580, %572
  %586 = phi i1 [ false, %572 ], [ %584, %580 ]
  %587 = icmp eq ptr %492, null
  br i1 %587, label %596, label %588

588:                                              ; preds = %585
  %589 = getelementptr inbounds %struct.inode, ptr %492, i32 0, i32 10
  %590 = load i32, ptr %589, align 4
  %591 = call fastcc i32 @ext4_setent(ptr noundef %491, ptr noundef nonnull %10, i32 noundef %590, i32 noundef 3) #11
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %720

593:                                              ; preds = %588
  %594 = call i32 @__ext4_mark_inode_dirty(ptr noundef %491, ptr noundef nonnull %492, ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3821) #11
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %720, !prof !12

596:                                              ; preds = %593, %585
  %597 = load ptr, ptr %357, align 4
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %604

599:                                              ; preds = %596
  %600 = load ptr, ptr %352, align 4
  %601 = load ptr, ptr %344, align 4
  %602 = call fastcc i32 @ext4_add_entry(ptr noundef %491, ptr noundef %600, ptr noundef %601) #11
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %611, label %715

604:                                              ; preds = %596
  %605 = load ptr, ptr %344, align 4
  %606 = getelementptr inbounds %struct.inode, ptr %605, i32 0, i32 10
  %607 = load i32, ptr %606, align 4
  %608 = zext i8 %495 to i32
  %609 = call fastcc i32 @ext4_setent(ptr noundef %491, ptr noundef nonnull %11, i32 noundef %607, i32 noundef %608) #11
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %715

611:                                              ; preds = %604, %599
  br i1 %586, label %612, label %618

612:                                              ; preds = %611
  %613 = load ptr, ptr %11, align 4
  %614 = getelementptr i8, ptr %613, i32 -124
  %615 = load volatile i32, ptr %614, align 4
  %616 = and i32 %615, 268435456
  %617 = icmp eq i32 %616, 0
  br label %618

618:                                              ; preds = %612, %611
  %619 = phi i1 [ %617, %612 ], [ false, %611 ]
  %620 = zext i1 %619 to i32
  %621 = load ptr, ptr %344, align 4
  %622 = getelementptr inbounds %struct.inode, ptr %621, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %12, ptr noundef %621) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %622, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  %623 = load ptr, ptr %344, align 4
  %624 = call i32 @__ext4_mark_inode_dirty(ptr noundef %491, ptr noundef %623, ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3845) #11
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %715, !prof !12

626:                                              ; preds = %618
  br i1 %587, label %627, label %628

627:                                              ; preds = %626
  call fastcc void @ext4_rename_delete(ptr noundef %491, ptr noundef nonnull %10, i32 noundef %620) #11
  br label %628

628:                                              ; preds = %627, %626
  %629 = load ptr, ptr %353, align 4
  %630 = icmp eq ptr %629, null
  br i1 %630, label %644, label %631

631:                                              ; preds = %628
  %632 = load i16, ptr %629, align 8
  %633 = and i16 %632, -4096
  %634 = icmp eq i16 %633, 16384
  br i1 %634, label %635, label %639

635:                                              ; preds = %631
  %636 = getelementptr inbounds %struct.inode, ptr %629, i32 0, i32 11
  %637 = load i32, ptr %636, align 8
  %638 = icmp ugt i32 %637, 2
  br i1 %638, label %639, label %641

639:                                              ; preds = %635, %631
  call void @drop_nlink(ptr noundef nonnull %629) #11
  %640 = load ptr, ptr %353, align 4
  br label %641

641:                                              ; preds = %639, %635
  %642 = phi ptr [ %629, %635 ], [ %640, %639 ]
  %643 = getelementptr inbounds %struct.inode, ptr %642, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %13, ptr noundef %642) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %643, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  br label %644

644:                                              ; preds = %641, %628
  %645 = load ptr, ptr %10, align 4
  %646 = getelementptr inbounds %struct.inode, ptr %645, i32 0, i32 16
  %647 = getelementptr inbounds %struct.inode, ptr %645, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %14, ptr noundef %645) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %647, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %646, ptr noundef align 8 dereferenceable(16) %647, i32 16, i1 false) #11
  %648 = load ptr, ptr %10, align 4
  call fastcc void @ext4_update_dx_flag(ptr noundef %648) #11
  %649 = load ptr, ptr %350, align 4
  %650 = icmp eq ptr %649, null
  br i1 %650, label %677, label %651

651:                                              ; preds = %644
  %652 = load ptr, ptr %11, align 4
  %653 = getelementptr inbounds %struct.inode, ptr %652, i32 0, i32 10
  %654 = load i32, ptr %653, align 4
  %655 = call fastcc i32 @ext4_rename_dir_finish(ptr noundef %491, ptr noundef nonnull %10, i32 noundef %654) #11
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %715

657:                                              ; preds = %651
  %658 = load ptr, ptr %10, align 4
  %659 = load i16, ptr %658, align 8
  %660 = and i16 %659, -4096
  %661 = icmp eq i16 %660, 16384
  br i1 %661, label %662, label %666

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.inode, ptr %658, i32 0, i32 11
  %664 = load i32, ptr %663, align 8
  %665 = icmp ugt i32 %664, 2
  br i1 %665, label %666, label %667

666:                                              ; preds = %662, %657
  call void @drop_nlink(ptr noundef %658) #11
  br label %667

667:                                              ; preds = %666, %662
  %668 = load ptr, ptr %353, align 4
  %669 = icmp eq ptr %668, null
  br i1 %669, label %671, label %670

670:                                              ; preds = %667
  call void @clear_nlink(ptr noundef nonnull %668) #11
  br label %677

671:                                              ; preds = %667
  %672 = load ptr, ptr %11, align 4
  call fastcc void @ext4_inc_count(ptr noundef %672) #11
  %673 = load ptr, ptr %11, align 4
  call fastcc void @ext4_update_dx_flag(ptr noundef %673) #11
  %674 = load ptr, ptr %11, align 4
  %675 = call i32 @__ext4_mark_inode_dirty(ptr noundef %491, ptr noundef %674, ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3876) #11
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %715, !prof !12

677:                                              ; preds = %671, %670, %644
  %678 = load ptr, ptr %10, align 4
  %679 = call i32 @__ext4_mark_inode_dirty(ptr noundef %491, ptr noundef %678, ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3881) #11
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %715, !prof !12

681:                                              ; preds = %677
  %682 = load ptr, ptr %344, align 4
  %683 = load i16, ptr %682, align 8
  %684 = and i16 %683, -4096
  %685 = icmp eq i16 %684, 16384
  br i1 %685, label %686, label %689

686:                                              ; preds = %681
  %687 = getelementptr inbounds %struct.inode, ptr %682, i32 0, i32 8
  %688 = load ptr, ptr %687, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %688, i32 noundef 6, ptr noundef %491) #11
  br label %702

689:                                              ; preds = %681
  %690 = load ptr, ptr %353, align 4
  %691 = icmp eq ptr %690, null
  br i1 %691, label %695, label %692

692:                                              ; preds = %689
  %693 = load ptr, ptr %352, align 4
  call void @ext4_fc_track_unlink(ptr noundef %491, ptr noundef %693) #11
  %694 = load ptr, ptr %344, align 4
  br label %695

695:                                              ; preds = %692, %689
  %696 = phi ptr [ %694, %692 ], [ %682, %689 ]
  %697 = load ptr, ptr %352, align 4
  call void @__ext4_fc_track_link(ptr noundef %491, ptr noundef %696, ptr noundef %697) #11
  %698 = load ptr, ptr %344, align 4
  %699 = load ptr, ptr %343, align 4
  call void @__ext4_fc_track_unlink(ptr noundef %491, ptr noundef %698, ptr noundef %699) #11
  br i1 %587, label %702, label %700

700:                                              ; preds = %695
  %701 = load ptr, ptr %343, align 4
  call void @__ext4_fc_track_create(ptr noundef %491, ptr noundef nonnull %492, ptr noundef %701) #11
  br label %702

702:                                              ; preds = %700, %695, %686
  %703 = load ptr, ptr %353, align 4
  %704 = icmp eq ptr %703, null
  br i1 %704, label %715, label %705

705:                                              ; preds = %702
  %706 = call i32 @__ext4_mark_inode_dirty(ptr noundef %491, ptr noundef nonnull %703, ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3903) #11
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %715, !prof !12

708:                                              ; preds = %705
  %709 = load ptr, ptr %353, align 4
  %710 = getelementptr inbounds %struct.inode, ptr %709, i32 0, i32 11
  %711 = load i32, ptr %710, align 8
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %715

713:                                              ; preds = %708
  %714 = call i32 @ext4_orphan_add(ptr noundef %491, ptr noundef %709) #11
  br label %715

715:                                              ; preds = %713, %708, %705, %702, %677, %671, %651, %618, %604, %599, %567, %562, %557, %546, %537
  %716 = phi i32 [ %568, %567 ], [ %609, %604 ], [ %624, %618 ], [ %655, %651 ], [ %679, %677 ], [ %706, %705 ], [ %675, %671 ], [ %602, %599 ], [ -39, %537 ], [ -31, %562 ], [ 0, %708 ], [ 0, %713 ], [ 0, %702 ], [ -31, %546 ], [ -31, %557 ]
  %717 = icmp eq ptr %492, null
  br i1 %717, label %730, label %718

718:                                              ; preds = %715
  %719 = icmp eq i32 %716, 0
  br i1 %719, label %727, label %720

720:                                              ; preds = %718, %593, %588
  %721 = phi i32 [ %716, %718 ], [ %594, %593 ], [ %591, %588 ]
  %722 = load ptr, ptr %344, align 4
  %723 = getelementptr inbounds %struct.inode, ptr %722, i32 0, i32 10
  %724 = load i32, ptr %723, align 4
  %725 = zext i8 %495 to i32
  call fastcc void @ext4_resetent(ptr noundef %491, ptr noundef nonnull %10, i32 noundef %724, i32 noundef %725) #11
  call void @drop_nlink(ptr noundef nonnull %492) #11
  %726 = call i32 @ext4_orphan_add(ptr noundef %491, ptr noundef nonnull %492) #11
  br label %727

727:                                              ; preds = %720, %718
  %728 = phi i32 [ %721, %720 ], [ 0, %718 ]
  call void @unlock_new_inode(ptr noundef nonnull %492) #11
  %729 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3920, ptr noundef %491) #11
  call void @iput(ptr noundef nonnull %492) #11
  br label %732

730:                                              ; preds = %715
  %731 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_rename, i32 noundef 3923, ptr noundef %491) #11
  br label %732

732:                                              ; preds = %730, %727, %488, %458, %412, %392, %390
  %733 = phi i32 [ -2, %392 ], [ %413, %412 ], [ %489, %488 ], [ %728, %727 ], [ %716, %730 ], [ %459, %458 ], [ -2, %390 ]
  %734 = load ptr, ptr %350, align 4
  %735 = icmp eq ptr %734, null
  br i1 %735, label %737, label %736

736:                                              ; preds = %732
  call void @__brelse(ptr noundef nonnull %734) #11
  br label %737

737:                                              ; preds = %736, %732
  %738 = load ptr, ptr %348, align 4
  %739 = icmp eq ptr %738, null
  br i1 %739, label %741, label %740

740:                                              ; preds = %737
  call void @__brelse(ptr noundef nonnull %738) #11
  br label %741

741:                                              ; preds = %740, %737
  %742 = load ptr, ptr %357, align 4
  %743 = icmp eq ptr %742, null
  br i1 %743, label %745, label %744

744:                                              ; preds = %741
  call void @__brelse(ptr noundef nonnull %742) #11
  br label %745

745:                                              ; preds = %744, %741, %388, %371, %365
  %746 = phi i32 [ -117, %365 ], [ %389, %388 ], [ -18, %371 ], [ %733, %741 ], [ %733, %744 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %10) #11
  br label %747

747:                                              ; preds = %745, %339, %35, %30, %28, %6
  %748 = phi i32 [ %340, %339 ], [ %746, %745 ], [ -5, %6 ], [ -22, %28 ], [ -95, %30 ], [ -95, %35 ]
  ret i32 %748
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_setattr(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_listxattr(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_tmpfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %7

7:                                                ; preds = %27, %4
  %8 = call ptr @__ext4_new_inode(ptr noundef %0, ptr noundef null, ptr noundef %1, i16 noundef zeroext %3, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 2817, i32 noundef 10) #11
  %9 = tail call ptr @llvm.thread.pointer() #11
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 113
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %8 to i32
  %13 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 7
  store ptr @ext4_file_inode_operations, ptr %15, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 39
  store ptr @ext4_file_operations, ptr %16, align 8
  call void @ext4_set_aops(ptr noundef %8) #11
  call void @d_tmpfile(ptr noundef %2, ptr noundef %8) #11
  %17 = call i32 @ext4_orphan_add(ptr noundef %11, ptr noundef %8) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  call void @__mark_inode_dirty(ptr noundef %8, i32 noundef 7) #11
  call void @unlock_new_inode(ptr noundef %8) #11
  br label %20

20:                                               ; preds = %19, %7
  %21 = phi i32 [ %12, %7 ], [ 0, %19 ]
  %22 = icmp eq ptr %11, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_tmpfile, i32 noundef 2832, ptr noundef nonnull %11) #11
  br label %25

25:                                               ; preds = %23, %20
  %26 = icmp eq i32 %21, -28
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 4
  %29 = call i32 @ext4_should_retry_alloc(ptr noundef %28, ptr noundef nonnull %5) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %7

31:                                               ; preds = %14
  %32 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_tmpfile, i32 noundef 2837, ptr noundef %11) #11
  call void @unlock_new_inode(ptr noundef %8) #11
  br label %33

33:                                               ; preds = %31, %27, %25
  %34 = phi i32 [ %17, %31 ], [ %21, %25 ], [ -28, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fileattr_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4fs_dirhash(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dx_node_limit(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 16
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 49152
  %11 = icmp eq i32 %10, 49152
  %12 = select i1 %11, i32 -16, i32 -8
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ -8, %1 ], [ %12, %7 ]
  %15 = add i32 %14, %5
  %16 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_super_block, ptr %19, i32 0, i32 30
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 119
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %42, !prof !10

31:                                               ; preds = %24
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 15
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ext4_super_block, ptr %34, i32 0, i32 30
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 119
  %41 = load ptr, ptr %40, align 8
  br label %42

42:                                               ; preds = %39, %24
  %43 = phi ptr [ %41, %39 ], [ %26, %24 ]
  %44 = icmp eq ptr %43, null
  %45 = add i32 %15, -8
  br i1 %44, label %46, label %47

46:                                               ; preds = %42, %31, %13
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %15, %46 ], [ %45, %42 ]
  %49 = lshr i32 %48, 3
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__ext4_find_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [3 x %struct.dx_frame], align 4
  %6 = alloca [8 x ptr], align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !11
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.qstr, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr null, ptr %2, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.anon.4, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 255
  br i1 %16, label %393, label %17

17:                                               ; preds = %4
  %18 = getelementptr i8, ptr %0, i32 -124
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 268435456
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %0, i32 478
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 1, ptr %7, align 4
  %27 = call ptr @ext4_find_inline_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7) #11
  %28 = load i32, ptr %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %3, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  store i32 1, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %393

34:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %35

35:                                               ; preds = %34, %22, %17
  %36 = phi ptr [ %27, %34 ], [ null, %22 ], [ null, %17 ]
  %37 = icmp slt i32 %15, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i8, ptr %10, align 1
  %40 = icmp eq i8 %39, 46
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %10, i32 1
  %43 = load i8, ptr %42, align 1
  switch i8 %43, label %44 [
    i8 46, label %234
    i8 0, label %234
  ]

44:                                               ; preds = %41, %38, %35
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 27
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %47, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ext4_super_block, ptr %49, i32 0, i32 28
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %219, label %54

54:                                               ; preds = %44
  %55 = load volatile i32, ptr %18, align 4
  %56 = and i32 %55, 4096
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %219, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false) #11, !annotation !11
  %59 = call fastcc ptr @dx_probe(ptr noundef %1, ptr noundef %0, ptr noundef null, ptr noundef nonnull %5) #11
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %216, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.dx_frame, ptr %59, i32 0, i32 2
  %63 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 2
  %64 = getelementptr inbounds %struct.ext4_filename, ptr %1, i32 0, i32 1, i32 1
  %65 = getelementptr inbounds %struct.ext4_filename, ptr %1, i32 0, i32 1
  %66 = getelementptr inbounds %struct.ext4_filename, ptr %1, i32 0, i32 2
  %67 = getelementptr inbounds %struct.dx_frame, ptr %59, i32 0, i32 1
  br label %68

68:                                               ; preds = %193, %61
  %69 = load ptr, ptr %62, align 4
  %70 = getelementptr inbounds %struct.dx_entry, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 268435455
  %73 = call fastcc ptr @__ext4_read_dirblock(ptr noundef %0, i32 noundef %72, i32 noundef 3, ptr noundef nonnull @__func__.ext4_dx_find_entry, i32 noundef 1725) #11
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %196, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %11, align 4
  %79 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 16
  %81 = getelementptr i8, ptr %77, i32 %80
  %82 = icmp ugt ptr %81, %77
  br i1 %82, label %83, label %121

83:                                               ; preds = %75
  %84 = load i8, ptr %63, align 4
  %85 = zext i8 %84 to i32
  %86 = shl i32 %72, %85
  br label %87

87:                                               ; preds = %110, %83
  %88 = phi ptr [ %77, %83 ], [ %117, %110 ]
  %89 = phi i32 [ %86, %83 ], [ %116, %110 ]
  %90 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %88, i32 0, i32 2
  %91 = load i8, ptr %90, align 2
  %92 = zext i8 %91 to i32
  %93 = getelementptr i8, ptr %88, i32 %92
  %94 = icmp ugt ptr %93, %81
  br i1 %94, label %110, label %95

95:                                               ; preds = %87
  %96 = load i32, ptr %88, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %64, align 4
  %100 = icmp eq i32 %99, %92
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %88, i32 0, i32 4
  %103 = load i32, ptr %65, align 4
  %104 = inttoptr i32 %103 to ptr
  %105 = call i32 @bcmp(ptr %102, ptr %104, i32 %92) #11
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_search_dir, i32 noundef 1477, ptr noundef %0, ptr noundef null, ptr noundef %88, ptr noundef %73, ptr noundef %77, i32 noundef %80, i32 noundef %89) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %120, label %121, !prof !12

110:                                              ; preds = %101, %98, %95, %87
  %111 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %88, i32 0, i32 1
  %112 = load i16, ptr %111, align 4
  %113 = icmp eq i16 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i16 %112 to i32
  %116 = add i32 %89, %115
  %117 = getelementptr i8, ptr %88, i32 %115
  %118 = icmp ult ptr %117, %81
  %119 = select i1 %114, i1 %118, i1 false
  br i1 %119, label %87, label %121

120:                                              ; preds = %107
  store ptr %88, ptr %2, align 4
  br label %196

121:                                              ; preds = %110, %107, %75
  %122 = phi i1 [ true, %107 ], [ false, %75 ], [ %113, %110 ]
  %123 = icmp eq ptr %73, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  call void @__brelse(ptr noundef nonnull %73) #11
  br label %125

125:                                              ; preds = %124, %121
  br i1 %122, label %196, label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %66, align 4
  %128 = load ptr, ptr %62, align 4
  %129 = getelementptr %struct.dx_entry, ptr %128, i32 1
  store ptr %129, ptr %62, align 4
  %130 = load ptr, ptr %67, align 4
  %131 = getelementptr inbounds %struct.dx_countlimit, ptr %130, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = getelementptr %struct.dx_entry, ptr %130, i32 %133
  %135 = icmp ult ptr %129, %134
  br i1 %135, label %153, label %136

136:                                              ; preds = %140, %126
  %137 = phi i32 [ %141, %140 ], [ 0, %126 ]
  %138 = phi ptr [ %142, %140 ], [ %59, %126 ]
  %139 = icmp eq ptr %138, %5
  br i1 %139, label %196, label %140

140:                                              ; preds = %136
  %141 = add i32 %137, 1
  %142 = getelementptr %struct.dx_frame, ptr %138, i32 -1
  %143 = getelementptr %struct.dx_frame, ptr %138, i32 -1, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr %struct.dx_entry, ptr %144, i32 1
  store ptr %145, ptr %143, align 4
  %146 = getelementptr %struct.dx_frame, ptr %138, i32 -1, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.dx_countlimit, ptr %147, i32 0, i32 1
  %149 = load i16, ptr %148, align 2
  %150 = zext i16 %149 to i32
  %151 = getelementptr %struct.dx_entry, ptr %147, i32 %150
  %152 = icmp ult ptr %145, %151
  br i1 %152, label %153, label %136

153:                                              ; preds = %140, %126
  %154 = phi ptr [ %59, %126 ], [ %142, %140 ]
  %155 = phi i32 [ 0, %126 ], [ %141, %140 ]
  %156 = phi ptr [ %129, %126 ], [ %145, %140 ]
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %127, 1
  %159 = icmp ne i32 %158, 0
  %160 = and i32 %157, -2
  %161 = icmp eq i32 %160, %127
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %163, label %196

163:                                              ; preds = %153
  %164 = icmp eq i32 %155, 0
  br i1 %164, label %193, label %165

165:                                              ; preds = %181, %163
  %166 = phi i32 [ %168, %181 ], [ %155, %163 ]
  %167 = phi ptr [ %177, %181 ], [ %154, %163 ]
  %168 = add i32 %166, -1
  %169 = getelementptr inbounds %struct.dx_frame, ptr %167, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.dx_entry, ptr %170, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 268435455
  %174 = call fastcc ptr @__ext4_read_dirblock(ptr noundef %0, i32 noundef %173, i32 noundef 1, ptr noundef nonnull @__func__.ext4_htree_next_block, i32 noundef 998) #11
  %175 = icmp ugt ptr %174, inttoptr (i32 -4096 to ptr)
  br i1 %175, label %188, label %176

176:                                              ; preds = %165
  %177 = getelementptr %struct.dx_frame, ptr %167, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void @__brelse(ptr noundef nonnull %178) #11
  br label %181

181:                                              ; preds = %180, %176
  store ptr %174, ptr %177, align 4
  %182 = getelementptr inbounds %struct.buffer_head, ptr %174, i32 0, i32 5
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.dx_node, ptr %183, i32 0, i32 1
  %185 = getelementptr %struct.dx_frame, ptr %167, i32 1, i32 1
  store ptr %184, ptr %185, align 4
  %186 = getelementptr %struct.dx_frame, ptr %167, i32 1, i32 2
  store ptr %184, ptr %186, align 4
  %187 = icmp eq i32 %168, 0
  br i1 %187, label %193, label %165

188:                                              ; preds = %165
  %189 = ptrtoint ptr %174 to i32
  %190 = icmp slt ptr %174, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = ptrtoint ptr %174 to i32
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_dx_find_entry, i32 noundef 1746, ptr noundef nonnull @.str.22, i32 noundef %192) #11
  br label %196

193:                                              ; preds = %188, %181, %163
  %194 = phi i32 [ %189, %188 ], [ 1, %163 ], [ 1, %181 ]
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %68, label %196

196:                                              ; preds = %193, %191, %153, %136, %125, %120, %68
  %197 = phi ptr [ %73, %120 ], [ %174, %191 ], [ null, %136 ], [ %73, %68 ], [ null, %193 ], [ inttoptr (i32 -4094 to ptr), %125 ], [ null, %153 ]
  %198 = load ptr, ptr %5, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %216, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.buffer_head, ptr %198, i32 0, i32 5
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.dx_root, ptr %202, i32 0, i32 4, i32 3
  %204 = load i8, ptr %203, align 2
  %205 = zext i8 %204 to i32
  br label %206

206:                                              ; preds = %211, %200
  %207 = phi i32 [ 0, %200 ], [ %212, %211 ]
  %208 = phi ptr [ %198, %200 ], [ %214, %211 ]
  %209 = getelementptr %struct.dx_frame, ptr %5, i32 %207
  call void @__brelse(ptr noundef nonnull %208) #11
  store ptr null, ptr %209, align 4
  %210 = icmp eq i32 %207, %205
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = add nuw nsw i32 %207, 1
  %213 = getelementptr %struct.dx_frame, ptr %5, i32 %212
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %206

216:                                              ; preds = %211, %206, %196, %58
  %217 = phi ptr [ %59, %58 ], [ %197, %196 ], [ %197, %211 ], [ %197, %206 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  %218 = icmp eq ptr %217, inttoptr (i32 -4094 to ptr)
  br i1 %218, label %219, label %393

219:                                              ; preds = %216, %54, %44
  %220 = phi ptr [ %36, %54 ], [ %36, %44 ], [ null, %216 ]
  %221 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %222 = load i64, ptr %221, align 8
  %223 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 2
  %224 = load i8, ptr %223, align 4
  %225 = zext i8 %224 to i64
  %226 = ashr i64 %222, %225
  %227 = trunc i64 %226 to i32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %393, label %229

229:                                              ; preds = %219
  %230 = getelementptr i8, ptr %0, i32 -132
  %231 = load i32, ptr %230, align 4
  %232 = icmp ult i32 %231, %227
  %233 = select i1 %232, i32 %231, i32 0
  br label %234

234:                                              ; preds = %229, %41, %41
  %235 = phi i32 [ %227, %229 ], [ 1, %41 ], [ 1, %41 ]
  %236 = phi i32 [ %233, %229 ], [ 0, %41 ], [ 0, %41 ]
  %237 = phi ptr [ %220, %229 ], [ %36, %41 ], [ %36, %41 ]
  %238 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 2
  %239 = getelementptr inbounds %struct.ext4_filename, ptr %1, i32 0, i32 1, i32 1
  %240 = getelementptr inbounds %struct.ext4_filename, ptr %1, i32 0, i32 1
  %241 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %242

242:                                              ; preds = %374, %234
  %243 = phi i32 [ %266, %374 ], [ 0, %234 ]
  %244 = phi i32 [ %379, %374 ], [ %235, %234 ]
  %245 = phi i32 [ %265, %374 ], [ 0, %234 ]
  %246 = phi i32 [ %244, %374 ], [ %236, %234 ]
  %247 = phi i32 [ 0, %374 ], [ %236, %234 ]
  br label %248

248:                                              ; preds = %369, %242
  %249 = phi i32 [ %243, %242 ], [ %266, %369 ]
  %250 = phi i32 [ %245, %242 ], [ %265, %369 ]
  %251 = phi i32 [ %246, %242 ], [ %372, %369 ]
  %252 = call i32 @__cond_resched() #11
  %253 = icmp ult i32 %249, %250
  br i1 %253, label %263, label %254

254:                                              ; preds = %248
  %255 = icmp ugt i32 %247, %251
  %256 = select i1 %255, i32 %247, i32 %244
  %257 = sub i32 %256, %251
  %258 = call i32 @llvm.umin.i32(i32 %257, i32 8)
  %259 = call i32 @ext4_bread_batch(ptr noundef %0, i32 noundef %251, i32 noundef %258, i1 noundef zeroext false, ptr noundef nonnull %6) #11
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %254
  %262 = inttoptr i32 %259 to ptr
  br label %393

263:                                              ; preds = %254, %248
  %264 = phi i32 [ 0, %254 ], [ %249, %248 ]
  %265 = phi i32 [ %258, %254 ], [ %250, %248 ]
  %266 = add nuw i32 %264, 1
  %267 = getelementptr [8 x ptr], ptr %6, i32 0, i32 %264
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %369, label %270

270:                                              ; preds = %263
  %271 = load volatile i32, ptr %268, align 4
  %272 = and i32 %271, 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %270
  call void @__wait_on_buffer(ptr noundef nonnull %268) #11
  br label %275

275:                                              ; preds = %274, %270
  %276 = load volatile i32, ptr %268, align 4
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.__ext4_find_entry, i32 noundef 1614, i64 noundef 0, i32 noundef 5, ptr noundef nonnull @.str.20, i32 noundef %251) #11
  call void @__brelse(ptr noundef nonnull %268) #11
  br label %381

280:                                              ; preds = %275
  %281 = load volatile i32, ptr %268, align 4
  %282 = and i32 %281, 16777216
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %316

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.buffer_head, ptr %268, i32 0, i32 5
  %286 = load ptr, ptr %285, align 4
  %287 = load ptr, ptr %11, align 4
  %288 = getelementptr inbounds %struct.super_block, ptr %287, i32 0, i32 27
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.ext4_sb_info, ptr %289, i32 0, i32 15
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.ext4_super_block, ptr %291, i32 0, i32 28
  %293 = load i32, ptr %292, align 4
  %294 = and i32 %293, 32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %312, label %296

296:                                              ; preds = %284
  %297 = load volatile i32, ptr %18, align 4
  %298 = and i32 %297, 4096
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %312, label %300

300:                                              ; preds = %296
  %301 = icmp eq i32 %251, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %300
  %303 = load i32, ptr %286, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.ext4_dir_entry, ptr %286, i32 0, i32 1
  %307 = load i16, ptr %306, align 4
  %308 = getelementptr inbounds %struct.super_block, ptr %287, i32 0, i32 3
  %309 = zext i16 %307 to i32
  %310 = load i32, ptr %308, align 16
  %311 = icmp eq i32 %310, %309
  br i1 %311, label %316, label %312

312:                                              ; preds = %305, %302, %296, %284
  %313 = call i32 @ext4_dirblock_csum_verify(ptr noundef %0, ptr noundef nonnull %268)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.__ext4_find_entry, i32 noundef 1625, i64 noundef 0, i32 noundef 74, ptr noundef nonnull @.str.21, i32 noundef %251) #11
  call void @__brelse(ptr noundef nonnull %268) #11
  br label %381

316:                                              ; preds = %312, %305, %300, %280
  %317 = load volatile i32, ptr %268, align 4
  %318 = and i32 %317, 16777216
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %316
  call void @_set_bit(i32 noundef 24, ptr noundef nonnull %268) #11
  br label %321

321:                                              ; preds = %320, %316
  %322 = getelementptr inbounds %struct.buffer_head, ptr %268, i32 0, i32 5
  %323 = load ptr, ptr %322, align 4
  %324 = load ptr, ptr %11, align 4
  %325 = getelementptr inbounds %struct.super_block, ptr %324, i32 0, i32 3
  %326 = load i32, ptr %325, align 16
  %327 = getelementptr i8, ptr %323, i32 %326
  %328 = icmp ugt ptr %327, %323
  br i1 %328, label %329, label %368

329:                                              ; preds = %321
  %330 = load i8, ptr %238, align 4
  %331 = zext i8 %330 to i32
  %332 = shl i32 %251, %331
  br label %333

333:                                              ; preds = %360, %329
  %334 = phi ptr [ %323, %329 ], [ %363, %360 ]
  %335 = phi i32 [ %332, %329 ], [ %362, %360 ]
  %336 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %334, i32 0, i32 2
  %337 = load i8, ptr %336, align 2
  %338 = zext i8 %337 to i32
  %339 = getelementptr i8, ptr %334, i32 %338
  %340 = icmp ugt ptr %339, %327
  br i1 %340, label %356, label %341

341:                                              ; preds = %333
  %342 = load i32, ptr %334, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %356, label %344

344:                                              ; preds = %341
  %345 = load i32, ptr %239, align 4
  %346 = icmp eq i32 %345, %338
  br i1 %346, label %347, label %356

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %334, i32 0, i32 4
  %349 = load i32, ptr %240, align 4
  %350 = inttoptr i32 %349 to ptr
  %351 = call i32 @bcmp(ptr %348, ptr %350, i32 %338) #11
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_search_dir, i32 noundef 1477, ptr noundef %0, ptr noundef null, ptr noundef %334, ptr noundef nonnull %268, ptr noundef %323, i32 noundef %326, i32 noundef %335) #11
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %365, label %367, !prof !12

356:                                              ; preds = %347, %344, %341, %333
  %357 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %334, i32 0, i32 1
  %358 = load i16, ptr %357, align 4
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %367, label %360

360:                                              ; preds = %356
  %361 = zext i16 %358 to i32
  %362 = add i32 %335, %361
  %363 = getelementptr i8, ptr %334, i32 %361
  %364 = icmp ult ptr %363, %327
  br i1 %364, label %333, label %368

365:                                              ; preds = %353
  store ptr %334, ptr %2, align 4
  %366 = getelementptr i8, ptr %0, i32 -132
  store i32 %251, ptr %366, align 4
  br label %381

367:                                              ; preds = %356, %353
  call void @__brelse(ptr noundef nonnull %268) #11
  br label %381

368:                                              ; preds = %360, %321
  call void @__brelse(ptr noundef nonnull %268) #11
  br label %369

369:                                              ; preds = %368, %263
  %370 = add i32 %251, 1
  %371 = icmp ult i32 %370, %244
  %372 = select i1 %371, i32 %370, i32 0
  %373 = icmp eq i32 %372, %247
  br i1 %373, label %374, label %248

374:                                              ; preds = %369
  %375 = load i64, ptr %241, align 8
  %376 = load i8, ptr %238, align 4
  %377 = zext i8 %376 to i64
  %378 = ashr i64 %375, %377
  %379 = trunc i64 %378 to i32
  %380 = icmp ult i32 %244, %379
  br i1 %380, label %242, label %381

381:                                              ; preds = %374, %367, %365, %315, %279
  %382 = phi ptr [ %268, %365 ], [ inttoptr (i32 -74 to ptr), %315 ], [ inttoptr (i32 -5 to ptr), %279 ], [ %237, %367 ], [ %237, %374 ]
  %383 = icmp ult i32 %266, %265
  br i1 %383, label %384, label %393

384:                                              ; preds = %390, %381
  %385 = phi i32 [ %391, %390 ], [ %266, %381 ]
  %386 = getelementptr [8 x ptr], ptr %6, i32 0, i32 %385
  %387 = load ptr, ptr %386, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %384
  call void @__brelse(ptr noundef nonnull %387) #11
  br label %390

390:                                              ; preds = %389, %384
  %391 = add i32 %385, 1
  %392 = icmp eq i32 %391, %265
  br i1 %392, label %393, label %384

393:                                              ; preds = %390, %381, %261, %219, %216, %33, %4
  %394 = phi ptr [ null, %4 ], [ %382, %381 ], [ %27, %33 ], [ null, %219 ], [ %217, %216 ], [ %262, %261 ], [ %382, %390 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  ret ptr %394
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_inline_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bread_batch(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_bread(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_dx_csum(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.anon.79, align 8
  %7 = alloca %struct.anon.79, align 8
  %8 = alloca %struct.anon.79, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4
  %14 = getelementptr i8, ptr %0, i32 528
  %15 = load i32, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #11, !annotation !11
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 119
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %17, align 64
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %21, label %20, !prof !12

20:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

21:                                               ; preds = %5
  %22 = shl i32 %3, 3
  %23 = add i32 %22, %2
  store ptr %17, ptr %8, align 8
  %24 = getelementptr inbounds %struct.anon.79, ptr %8, i32 0, i32 1
  store i32 %15, ptr %24, align 8
  %25 = call i32 @crypto_shash_update(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %23) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !12

27:                                               ; preds = %21
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

28:                                               ; preds = %21
  %29 = load i32, ptr %24, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #11, !annotation !11
  %30 = load ptr, ptr %16, align 8
  %31 = load i32, ptr %30, align 64
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %34, label %33, !prof !12

33:                                               ; preds = %28
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

34:                                               ; preds = %28
  store ptr %30, ptr %7, align 8
  %35 = getelementptr inbounds %struct.anon.79, ptr %7, i32 0, i32 1
  store i32 %29, ptr %35, align 8
  %36 = call i32 @crypto_shash_update(ptr noundef nonnull %7, ptr noundef %4, i32 noundef 4) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !12

38:                                               ; preds = %34
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

39:                                               ; preds = %34
  %40 = load i32, ptr %35, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #11, !annotation !11
  %41 = load ptr, ptr %16, align 8
  %42 = load i32, ptr %41, align 64
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %45, label %44, !prof !12

44:                                               ; preds = %39
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

45:                                               ; preds = %39
  store ptr %41, ptr %6, align 8
  %46 = getelementptr inbounds %struct.anon.79, ptr %6, i32 0, i32 1
  store i32 %40, ptr %46, align 8
  %47 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef nonnull %9, i32 noundef 4) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !12

49:                                               ; preds = %45
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

50:                                               ; preds = %45
  %51 = load i32, ptr %46, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_delete_inline_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_try_add_inline_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_dirent_to_buf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.timespec64, align 8
  store ptr %4, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 16
  %13 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %18, i32 0, i32 30
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 119
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %41, !prof !10

30:                                               ; preds = %23
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_super_block, ptr %33, i32 0, i32 30
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 119
  %40 = load ptr, ptr %39, align 8
  br label %41

41:                                               ; preds = %38, %23
  %42 = phi ptr [ %40, %38 ], [ %25, %23 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %30, %6
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ 0, %44 ], [ -12, %41 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = add i32 %46, %12
  %52 = call i32 @ext4_find_dest_de(ptr noundef %2, ptr undef, ptr noundef %5, ptr noundef %50, i32 noundef %51, ptr noundef %1, ptr noundef nonnull %7)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %108

54:                                               ; preds = %48, %45
  %55 = load ptr, ptr %9, align 4
  %56 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.add_dirent_to_buf, i32 noundef 2116, ptr noundef %0, ptr noundef %55, ptr noundef %5, i32 noundef 1) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %9, align 4
  tail call void @__ext4_std_error(ptr noundef %59, ptr noundef nonnull @__func__.add_dirent_to_buf, i32 noundef 2118, i32 noundef %56) #11
  br label %108

60:                                               ; preds = %54
  %61 = load ptr, ptr %7, align 4
  tail call void @ext4_insert_dentry(ptr noundef %2, ptr noundef %3, ptr noundef %61, i32 noundef %12, ptr noundef %1)
  %62 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 15
  %63 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %8, ptr noundef %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %62, ptr noundef align 8 dereferenceable(16) %63, i32 16, i1 false)
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 27
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ext4_super_block, ptr %68, i32 0, i32 28
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %60
  %74 = getelementptr i8, ptr %2, i32 -124
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 4096
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ext4_super_block, ptr %68, i32 0, i32 30
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1024
  %82 = icmp ne i32 %81, 0
  %83 = load i1, ptr @ext4_update_dx_flag.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !10

86:                                               ; preds = %78
  store i1 true, ptr @ext4_update_dx_flag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2858, i32 noundef 9, ptr noundef null) #11
  br label %87

87:                                               ; preds = %86, %78
  call void @_clear_bit(i32 noundef 12, ptr noundef %74) #11
  br label %88

88:                                               ; preds = %87, %73, %60
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %89 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 33
  %90 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %89, ptr elementtype(i64) %89) #11, !srcloc !17
  br label %91

91:                                               ; preds = %99, %88
  %92 = phi i64 [ %90, %88 ], [ %100, %99 ]
  %93 = add i64 %92, 2
  %94 = and i64 %93, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #11, !srcloc !19
  br label %95

95:                                               ; preds = %95, %91
  %96 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %89, ptr %89, i64 %92, i64 %94, ptr elementtype(i64) %89) #11, !srcloc !20
  %97 = extractvalue { i32, i64 } %96, 0
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %95

99:                                               ; preds = %95
  %100 = extractvalue { i32, i64 } %96, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %101 = icmp eq i64 %100, %92
  br i1 %101, label %102, label %91, !prof !12

102:                                              ; preds = %99
  %103 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @__func__.add_dirent_to_buf, i32 noundef 2139) #11
  %104 = call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %2, ptr noundef %5)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %9, align 4
  call void @__ext4_std_error(ptr noundef %107, ptr noundef nonnull @__func__.add_dirent_to_buf, i32 noundef 2143, i32 noundef %104) #11
  br label %108

108:                                              ; preds = %106, %102, %58, %48
  %109 = phi i32 [ %56, %58 ], [ %52, %48 ], [ %104, %106 ], [ %103, %102 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dx_insert_block(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dx_frame, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dx_frame, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dx_countlimit, ptr %5, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = load i16, ptr %5, align 2
  %11 = icmp ult i16 %9, %10
  br i1 %11, label %14, label %12, !prof !12

12:                                               ; preds = %3
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dx_insert_block, ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @.str.35) #12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1312, 0\0A.popsection", ""() #11, !srcloc !28
  unreachable

14:                                               ; preds = %3
  %15 = zext i16 %9 to i32
  %16 = getelementptr %struct.dx_entry, ptr %5, i32 %15
  %17 = icmp ult ptr %7, %16
  br i1 %17, label %20, label %18, !prof !12

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dx_insert_block, ptr noundef nonnull @.str, i32 noundef 1313, ptr noundef nonnull @.str.36) #12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1313, 0\0A.popsection", ""() #11, !srcloc !29
  unreachable

20:                                               ; preds = %14
  %21 = getelementptr %struct.dx_entry, ptr %7, i32 1
  %22 = getelementptr %struct.dx_entry, ptr %7, i32 2
  %23 = ptrtoint ptr %16 to i32
  %24 = ptrtoint ptr %21 to i32
  %25 = sub i32 %23, %24
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %22, ptr align 4 %21, i32 %25, i1 false)
  store i32 %1, ptr %21, align 4
  %26 = getelementptr %struct.dx_entry, ptr %7, i32 1, i32 1
  store i32 %2, ptr %26, align 4
  %27 = add nuw i16 %9, 1
  store i16 %27, ptr %8, align 2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 30
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %81, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 119
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %34, !prof !10

23:                                               ; preds = %16
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_super_block, ptr %26, i32 0, i32 30
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 119
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %16
  %35 = phi ptr [ %33, %31 ], [ %18, %16 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %81, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ext4_dir_entry, ptr %5, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 16
  %44 = icmp eq i32 %43, %40
  br i1 %44, label %61, label %45

45:                                               ; preds = %37
  %46 = icmp eq i16 %39, 12
  br i1 %46, label %47, label %65

47:                                               ; preds = %45
  %48 = getelementptr i8, ptr %5, i32 16
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = add i32 %43, -12
  %52 = icmp eq i32 %51, %50
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %5, i32 24
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %5, i32 29
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 8
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %37
  %62 = phi i32 [ 8, %37 ], [ 32, %57 ]
  %63 = getelementptr i8, ptr %5, i32 %62
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57, %53, %47, %45
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_dx_csum_set, i32 noundef 500, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.30) #11
  br label %81

66:                                               ; preds = %61
  %67 = load i16, ptr %63, align 2
  %68 = zext i16 %67 to i32
  %69 = shl nuw nsw i32 %68, 3
  %70 = add nuw nsw i32 %69, %62
  %71 = add i32 %43, -8
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_dx_csum_set, i32 noundef 507, ptr noundef nonnull @.str.9) #11
  br label %81

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.dx_countlimit, ptr %63, i32 0, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = getelementptr %struct.dx_entry, ptr %63, i32 %68
  %79 = tail call fastcc i32 @ext4_dx_csum(ptr noundef %1, ptr noundef %5, i32 noundef %62, i32 noundef %77, ptr noundef %78) #11
  %80 = getelementptr inbounds %struct.dx_tail, ptr %78, i32 0, i32 1
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %74, %73, %65, %34, %23, %3
  %82 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_handle_dirty_dx_node, i32 noundef 520, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @do_split(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.dx_hash_info, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !11
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %18, i32 0, i32 30
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 119
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %41, !prof !10

30:                                               ; preds = %23
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_super_block, ptr %33, i32 0, i32 30
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 119
  %40 = load ptr, ptr %39, align 8
  br label %41

41:                                               ; preds = %38, %23
  %42 = phi ptr [ %40, %38 ], [ %25, %23 ]
  %43 = icmp ne ptr %42, null
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %41, %30, %5
  %46 = phi i32 [ 0, %30 ], [ %44, %41 ], [ 0, %5 ]
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 -12
  %49 = call fastcc ptr @ext4_append(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7)
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load ptr, ptr %2, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @__brelse(ptr noundef nonnull %52) #11
  br label %55

55:                                               ; preds = %54, %51
  store ptr null, ptr %2, align 4
  br label %402

56:                                               ; preds = %45
  %57 = load ptr, ptr %8, align 4
  %58 = load ptr, ptr %2, align 4
  %59 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.do_split, i32 noundef 1932, ptr noundef %0, ptr noundef %57, ptr noundef %58, i32 noundef 1) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %390

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 4
  %63 = load ptr, ptr %3, align 4
  %64 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.do_split, i32 noundef 1938, ptr noundef %0, ptr noundef %62, ptr noundef %63, i32 noundef 1) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %390

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %4, i32 16, i1 false) #11
  %70 = getelementptr i8, ptr %14, i32 %11
  %71 = icmp ugt ptr %70, %14
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  %73 = getelementptr %struct.dx_map_entry, ptr %69, i32 -1
  br label %131

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %14 to i32
  br label %77

77:                                               ; preds = %115, %74
  %78 = phi ptr [ %14, %74 ], [ %121, %115 ]
  %79 = phi i32 [ 0, %74 ], [ %117, %115 ]
  %80 = phi ptr [ %69, %74 ], [ %116, %115 ]
  %81 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %78, i32 0, i32 2
  %82 = load i8, ptr %81, align 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %77
  %85 = load i32, ptr %78, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %75, align 4
  %89 = and i32 %88, 49152
  %90 = icmp eq i32 %89, 49152
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = zext i8 %82 to i32
  %93 = add nuw nsw i32 %92, 11
  %94 = and i32 %93, 508
  %95 = getelementptr i8, ptr %78, i32 %94
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %6, align 4
  br label %102

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %78, i32 0, i32 4
  %99 = zext i8 %82 to i32
  %100 = call i32 @ext4fs_dirhash(ptr noundef %1, ptr noundef %98, i32 noundef %99, ptr noundef nonnull %6) #11
  %101 = load i32, ptr %6, align 4
  br label %102

102:                                              ; preds = %97, %91
  %103 = phi i32 [ %101, %97 ], [ %96, %91 ]
  %104 = getelementptr %struct.dx_map_entry, ptr %80, i32 -1
  store i32 %103, ptr %104, align 4
  %105 = ptrtoint ptr %78 to i32
  %106 = sub i32 %105, %76
  %107 = lshr i32 %106, 2
  %108 = trunc i32 %107 to i16
  %109 = getelementptr %struct.dx_map_entry, ptr %80, i32 -1, i32 1
  store i16 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %78, i32 0, i32 1
  %111 = load i16, ptr %110, align 4
  %112 = getelementptr %struct.dx_map_entry, ptr %80, i32 -1, i32 2
  store i16 %111, ptr %112, align 2
  %113 = add i32 %79, 1
  %114 = call i32 @__cond_resched() #11
  br label %115

115:                                              ; preds = %102, %84, %77
  %116 = phi ptr [ %104, %102 ], [ %80, %84 ], [ %80, %77 ]
  %117 = phi i32 [ %113, %102 ], [ %79, %84 ], [ %79, %77 ]
  %118 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %78, i32 0, i32 1
  %119 = load i16, ptr %118, align 4
  %120 = zext i16 %119 to i32
  %121 = getelementptr i8, ptr %78, i32 %120
  %122 = icmp ult ptr %121, %70
  br i1 %122, label %77, label %123

123:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  %124 = sub i32 0, %117
  %125 = getelementptr %struct.dx_map_entry, ptr %69, i32 %124
  %126 = getelementptr %struct.dx_map_entry, ptr %125, i32 %117
  %127 = getelementptr %struct.dx_map_entry, ptr %126, i32 -1
  %128 = icmp ugt i32 %117, 2
  br i1 %128, label %135, label %131

129:                                              ; preds = %154, %135
  %130 = icmp ugt i32 %141, 2
  br i1 %130, label %135, label %131

131:                                              ; preds = %129, %123, %72
  %132 = phi ptr [ %73, %72 ], [ %127, %123 ], [ %127, %129 ]
  %133 = phi ptr [ %69, %72 ], [ %125, %123 ], [ %125, %129 ]
  %134 = phi i32 [ 0, %72 ], [ %117, %123 ], [ %117, %129 ]
  br label %158

135:                                              ; preds = %129, %123
  %136 = phi i32 [ %141, %129 ], [ %117, %123 ]
  %137 = mul i32 %136, 10
  %138 = udiv i32 %137, 13
  %139 = add nsw i32 %138, -9
  %140 = icmp ult i32 %139, 2
  %141 = select i1 %140, i32 11, i32 %138
  %142 = sub nsw i32 0, %141
  %143 = getelementptr %struct.dx_map_entry, ptr %127, i32 %142
  %144 = icmp ult ptr %143, %125
  br i1 %144, label %129, label %145

145:                                              ; preds = %154, %135
  %146 = phi ptr [ %156, %154 ], [ %143, %135 ]
  %147 = phi ptr [ %155, %154 ], [ %127, %135 ]
  %148 = load i32, ptr %147, align 4
  %149 = load i32, ptr %146, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i64, ptr %147, align 4
  %153 = load i64, ptr %146, align 4
  store i64 %153, ptr %147, align 4
  store i64 %152, ptr %146, align 4
  br label %154

154:                                              ; preds = %151, %145
  %155 = getelementptr %struct.dx_map_entry, ptr %147, i32 -1
  %156 = getelementptr %struct.dx_map_entry, ptr %146, i32 -1
  %157 = icmp ult ptr %156, %125
  br i1 %157, label %129, label %145

158:                                              ; preds = %172, %131
  %159 = phi ptr [ %132, %131 ], [ %173, %172 ]
  %160 = phi i1 [ true, %131 ], [ %174, %172 ]
  br label %161

161:                                              ; preds = %164, %158
  %162 = phi ptr [ %165, %164 ], [ %159, %158 ]
  %163 = icmp ugt ptr %162, %133
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = getelementptr %struct.dx_map_entry, ptr %162, i32 -1
  %166 = load i32, ptr %162, align 4
  %167 = load i32, ptr %165, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %161

169:                                              ; preds = %164
  %170 = load i64, ptr %162, align 4
  %171 = load i64, ptr %165, align 4
  store i64 %171, ptr %162, align 4
  store i64 %170, ptr %165, align 4
  br label %172

172:                                              ; preds = %175, %169
  %173 = phi ptr [ %165, %169 ], [ %132, %175 ]
  %174 = xor i1 %163, true
  br label %158

175:                                              ; preds = %161
  br i1 %160, label %176, label %172

176:                                              ; preds = %175
  %177 = add i32 %134, -1
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %179, label %196

179:                                              ; preds = %176
  %180 = lshr i32 %11, 1
  br label %181

181:                                              ; preds = %191, %179
  %182 = phi i32 [ %177, %179 ], [ %194, %191 ]
  %183 = phi i32 [ 0, %179 ], [ %192, %191 ]
  %184 = phi i32 [ 0, %179 ], [ %193, %191 ]
  %185 = getelementptr %struct.dx_map_entry, ptr %133, i32 %182, i32 2
  %186 = load i16, ptr %185, align 2
  %187 = zext i16 %186 to i32
  %188 = lshr i32 %187, 1
  %189 = add i32 %188, %183
  %190 = icmp ugt i32 %189, %180
  br i1 %190, label %198, label %191

191:                                              ; preds = %181
  %192 = add i32 %183, %187
  %193 = add nuw i32 %184, 1
  %194 = add i32 %182, -1
  %195 = icmp eq i32 %193, %134
  br i1 %195, label %196, label %181

196:                                              ; preds = %191, %176
  %197 = lshr i32 %134, 1
  br label %203

198:                                              ; preds = %181
  %199 = icmp sgt i32 %182, 0
  %200 = sub i32 %134, %184
  %201 = lshr i32 %134, 1
  %202 = select i1 %199, i32 %200, i32 %201
  br label %203

203:                                              ; preds = %198, %196
  %204 = phi i32 [ %197, %196 ], [ %202, %198 ]
  %205 = getelementptr %struct.dx_map_entry, ptr %133, i32 %204
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %204, -1
  %208 = getelementptr %struct.dx_map_entry, ptr %133, i32 %207
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %206, %209
  %211 = zext i1 %210 to i32
  %212 = sub i32 %134, %204
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %254, label %214

214:                                              ; preds = %203
  %215 = icmp eq ptr %1, null
  %216 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %217 = icmp ugt i32 %11, 262144
  br label %218

218:                                              ; preds = %244, %214
  %219 = phi ptr [ %68, %214 ], [ %252, %244 ]
  %220 = phi ptr [ %205, %214 ], [ %251, %244 ]
  %221 = phi i32 [ %212, %214 ], [ %222, %244 ]
  %222 = add i32 %221, -1
  %223 = getelementptr inbounds %struct.dx_map_entry, ptr %220, i32 0, i32 1
  %224 = load i16, ptr %223, align 4
  %225 = zext i16 %224 to i32
  %226 = shl nuw nsw i32 %225, 2
  %227 = getelementptr i8, ptr %14, i32 %226
  %228 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %227, i32 0, i32 2
  %229 = load i8, ptr %228, align 2
  %230 = zext i8 %229 to i32
  %231 = add nuw nsw i32 %230, 11
  br i1 %215, label %238, label %232

232:                                              ; preds = %218
  %233 = load i32, ptr %216, align 4
  %234 = and i32 %233, 49152
  %235 = icmp eq i32 %234, 49152
  %236 = add nuw nsw i32 %230, 19
  %237 = select i1 %235, i32 %236, i32 %231
  br label %238

238:                                              ; preds = %232, %218
  %239 = phi i32 [ %231, %218 ], [ %237, %232 ]
  %240 = and i32 %239, -4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %219, ptr align 4 %227, i32 %240, i1 false) #11
  %241 = icmp ugt i32 %240, %11
  %242 = or i1 %217, %241
  br i1 %242, label %243, label %244, !prof !8

243:                                              ; preds = %238
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

244:                                              ; preds = %238
  %245 = trunc i32 %240 to i16
  %246 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %219, i32 0, i32 1
  store i16 %245, ptr %246, align 4
  store i32 0, ptr %227, align 4
  %247 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %227, i32 0, i32 1
  %248 = load i16, ptr %247, align 4
  %249 = zext i16 %248 to i32
  %250 = add nsw i32 %249, -6
  call void @llvm.memset.p0.i32(ptr align 2 %228, i8 0, i32 %250, i1 false) #11
  %251 = getelementptr %struct.dx_map_entry, ptr %220, i32 1
  %252 = getelementptr i8, ptr %219, i32 %240
  %253 = icmp eq i32 %222, 0
  br i1 %253, label %254, label %218

254:                                              ; preds = %244, %203
  %255 = phi i32 [ 0, %203 ], [ %240, %244 ]
  %256 = phi ptr [ %68, %203 ], [ %252, %244 ]
  %257 = sub nsw i32 0, %255
  %258 = getelementptr i8, ptr %256, i32 %257
  br i1 %71, label %259, label %303

259:                                              ; preds = %254
  %260 = icmp eq ptr %1, null
  %261 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %262 = icmp ugt i32 %11, 262144
  br label %263

263:                                              ; preds = %299, %259
  %264 = phi ptr [ %14, %259 ], [ %270, %299 ]
  %265 = phi ptr [ %14, %259 ], [ %301, %299 ]
  %266 = phi ptr [ %14, %259 ], [ %300, %299 ]
  %267 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %264, i32 0, i32 1
  %268 = load i16, ptr %267, align 4
  %269 = zext i16 %268 to i32
  %270 = getelementptr i8, ptr %264, i32 %269
  %271 = load i32, ptr %264, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %299, label %273

273:                                              ; preds = %263
  %274 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %264, i32 0, i32 2
  %275 = load i8, ptr %274, align 2
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %299, label %277

277:                                              ; preds = %273
  %278 = zext i8 %275 to i32
  %279 = add nuw nsw i32 %278, 11
  br i1 %260, label %286, label %280

280:                                              ; preds = %277
  %281 = load i32, ptr %261, align 4
  %282 = and i32 %281, 49152
  %283 = icmp eq i32 %282, 49152
  %284 = add nuw nsw i32 %278, 19
  %285 = select i1 %283, i32 %284, i32 %279
  br label %286

286:                                              ; preds = %280, %277
  %287 = phi i32 [ %279, %277 ], [ %285, %280 ]
  %288 = and i32 %287, -4
  %289 = icmp ugt ptr %264, %266
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %266, ptr nonnull align 4 %264, i32 %288, i1 false) #11
  br label %291

291:                                              ; preds = %290, %286
  %292 = icmp ugt i32 %288, %11
  %293 = or i1 %262, %292
  br i1 %293, label %294, label %295, !prof !8

294:                                              ; preds = %291
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

295:                                              ; preds = %291
  %296 = trunc i32 %288 to i16
  %297 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %266, i32 0, i32 1
  store i16 %296, ptr %297, align 4
  %298 = getelementptr i8, ptr %266, i32 %288
  br label %299

299:                                              ; preds = %295, %273, %263
  %300 = phi ptr [ %298, %295 ], [ %266, %273 ], [ %266, %263 ]
  %301 = phi ptr [ %266, %295 ], [ %265, %273 ], [ %265, %263 ]
  %302 = icmp ult ptr %270, %70
  br i1 %302, label %263, label %303

303:                                              ; preds = %299, %254
  %304 = phi ptr [ %14, %254 ], [ %301, %299 ]
  %305 = add i32 %48, %11
  %306 = getelementptr i8, ptr %14, i32 %305
  %307 = ptrtoint ptr %306 to i32
  %308 = ptrtoint ptr %304 to i32
  %309 = sub i32 %307, %308
  %310 = icmp ugt i32 %309, %11
  %311 = icmp ugt i32 %11, 262144
  %312 = or i1 %311, %310
  %313 = and i32 %309, 3
  %314 = icmp ne i32 %313, 0
  %315 = or i1 %314, %312
  br i1 %315, label %316, label %317, !prof !8

316:                                              ; preds = %303
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

317:                                              ; preds = %303
  %318 = trunc i32 %309 to i16
  %319 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %304, i32 0, i32 1
  store i16 %318, ptr %319, align 4
  %320 = getelementptr i8, ptr %68, i32 %305
  %321 = ptrtoint ptr %320 to i32
  %322 = ptrtoint ptr %258 to i32
  %323 = sub i32 %321, %322
  %324 = icmp ugt i32 %323, %11
  %325 = and i32 %323, 3
  %326 = icmp ne i32 %325, 0
  %327 = or i1 %324, %326
  br i1 %327, label %328, label %329, !prof !8

328:                                              ; preds = %317
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

329:                                              ; preds = %317
  %330 = trunc i32 %323 to i16
  %331 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %258, i32 0, i32 1
  store i16 %330, ptr %331, align 4
  br i1 %47, label %347, label %332

332:                                              ; preds = %329
  %333 = load ptr, ptr %2, align 4
  %334 = getelementptr inbounds %struct.buffer_head, ptr %333, i32 0, i32 5
  %335 = load ptr, ptr %334, align 4
  %336 = add nsw i32 %11, -12
  %337 = getelementptr i8, ptr %335, i32 %336
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %337, i8 0, i32 12, i1 false) #11
  %338 = icmp ult i32 %11, 12
  br i1 %338, label %339, label %340, !prof !8

339:                                              ; preds = %332
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

340:                                              ; preds = %332
  %341 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %337, i32 0, i32 1
  store i16 12, ptr %341, align 4
  %342 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %337, i32 0, i32 3
  store i8 -34, ptr %342, align 1
  %343 = load ptr, ptr %67, align 4
  %344 = getelementptr i8, ptr %343, i32 %336
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %344, i8 0, i32 12, i1 false) #11
  %345 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %344, i32 0, i32 1
  store i16 12, ptr %345, align 4
  %346 = getelementptr inbounds %struct.ext4_dir_entry_tail, ptr %344, i32 0, i32 3
  store i8 -34, ptr %346, align 1
  br label %347

347:                                              ; preds = %340, %329
  %348 = load i32, ptr %4, align 4
  %349 = icmp ult i32 %348, %206
  br i1 %349, label %352, label %350

350:                                              ; preds = %347
  %351 = load ptr, ptr %2, align 4
  store ptr %49, ptr %2, align 4
  br label %352

352:                                              ; preds = %350, %347
  %353 = phi ptr [ %351, %350 ], [ %49, %347 ]
  %354 = phi ptr [ %258, %350 ], [ %304, %347 ]
  %355 = add i32 %206, %211
  %356 = load i32, ptr %7, align 4
  %357 = getelementptr inbounds %struct.dx_frame, ptr %3, i32 0, i32 1
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.dx_frame, ptr %3, i32 0, i32 2
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.dx_countlimit, ptr %358, i32 0, i32 1
  %362 = load i16, ptr %361, align 2
  %363 = load i16, ptr %358, align 2
  %364 = icmp ult i16 %362, %363
  br i1 %364, label %367, label %365, !prof !12

365:                                              ; preds = %352
  %366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dx_insert_block, ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @.str.35) #12
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1312, 0\0A.popsection", ""() #11, !srcloc !28
  unreachable

367:                                              ; preds = %352
  %368 = zext i16 %362 to i32
  %369 = getelementptr %struct.dx_entry, ptr %358, i32 %368
  %370 = icmp ult ptr %360, %369
  br i1 %370, label %373, label %371, !prof !12

371:                                              ; preds = %367
  %372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dx_insert_block, ptr noundef nonnull @.str, i32 noundef 1313, ptr noundef nonnull @.str.36) #12
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1313, 0\0A.popsection", ""() #11, !srcloc !29
  unreachable

373:                                              ; preds = %367
  %374 = getelementptr %struct.dx_entry, ptr %360, i32 1
  %375 = getelementptr %struct.dx_entry, ptr %360, i32 2
  %376 = ptrtoint ptr %369 to i32
  %377 = ptrtoint ptr %374 to i32
  %378 = sub i32 %376, %377
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %375, ptr align 4 %374, i32 %378, i1 false) #11
  store i32 %355, ptr %374, align 4
  %379 = getelementptr %struct.dx_entry, ptr %360, i32 1, i32 1
  store i32 %356, ptr %379, align 4
  %380 = add nuw i16 %362, 1
  store i16 %380, ptr %361, align 2
  %381 = call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %1, ptr noundef %353)
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %373
  %384 = load ptr, ptr %3, align 4
  %385 = call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %1, ptr noundef %384)
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %383
  %388 = icmp eq ptr %353, null
  br i1 %388, label %402, label %389

389:                                              ; preds = %387
  call void @__brelse(ptr noundef nonnull %353) #11
  br label %402

390:                                              ; preds = %383, %373, %61, %56
  %391 = phi ptr [ %49, %56 ], [ %49, %61 ], [ %353, %373 ], [ %353, %383 ]
  %392 = phi i32 [ %59, %56 ], [ %64, %61 ], [ %381, %373 ], [ %385, %383 ]
  %393 = load ptr, ptr %2, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %390
  call void @__brelse(ptr noundef nonnull %393) #11
  br label %396

396:                                              ; preds = %395, %390
  %397 = icmp eq ptr %391, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %396
  call void @__brelse(ptr noundef nonnull %391) #11
  br label %399

399:                                              ; preds = %398, %396
  store ptr null, ptr %2, align 4
  %400 = load ptr, ptr %8, align 4
  call void @__ext4_std_error(ptr noundef %400, ptr noundef nonnull @__func__.do_split, i32 noundef 2018, i32 noundef %392) #11
  %401 = inttoptr i32 %392 to ptr
  br label %402

402:                                              ; preds = %399, %389, %387, %55
  %403 = phi ptr [ %49, %55 ], [ %401, %399 ], [ %354, %387 ], [ %354, %389 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret ptr %403
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_set_encrypted_ci_d_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_new_inode(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_aops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_add_nondir(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %2, align 4
  %9 = tail call fastcc i32 @ext4_add_entry(ptr noundef %0, ptr noundef %1, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @__func__.ext4_add_nondir, i32 noundef 2711) #11
  %13 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 65
  %23 = icmp eq i32 %22, 0
  %24 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  %25 = or i1 %24, %23
  br i1 %25, label %32, label %28

26:                                               ; preds = %11
  %27 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %27, label %32, label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 1
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %28, %26, %19
  tail call void @d_instantiate_new(ptr noundef %1, ptr noundef %8) #11
  store ptr null, ptr %2, align 4
  br label %35

33:                                               ; preds = %3
  tail call void @drop_nlink(ptr noundef %8) #11
  %34 = tail call i32 @ext4_orphan_add(ptr noundef %0, ptr noundef %8) #11
  tail call void @unlock_new_inode(ptr noundef %8) #11
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ %9, %33 ], [ %12, %32 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_track_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_track_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_unlink_enter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_unlink_exit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_symlink(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_rename_dir_prepare(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !11
  %4 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 9
  %7 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 10
  %8 = getelementptr i8, ptr %5, i32 -124
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 268435456
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %5, i32 478
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12, %2
  %17 = tail call fastcc ptr @__ext4_read_dirblock(ptr noundef %5, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @__func__.ext4_get_first_dir_block, i32 noundef 3461) #11
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  %21 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 8
  store ptr null, ptr %21, align 4
  br label %48

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %24, i32 0, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  store ptr %28, ptr %6, align 4
  br label %31

29:                                               ; preds = %12
  store i32 1, ptr %7, align 4
  %30 = call ptr @ext4_get_first_inline_block(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %3) #11
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %30, %29 ], [ %17, %22 ]
  %33 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 8
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, ptr %3, align 4
  br label %48

37:                                               ; preds = %31
  %38 = load ptr, ptr %6, align 4
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_rename_dir_prepare, i32 noundef 3507, ptr noundef %0, ptr noundef %46, ptr noundef nonnull %32, i32 noundef 1) #11
  br label %48

48:                                               ; preds = %44, %37, %35, %19
  %49 = phi i32 [ %47, %44 ], [ -117, %37 ], [ %36, %35 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_setent(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_setent, i32 noundef 3543, ptr noundef %0, ptr noundef %8, ptr noundef %10, i32 noundef 1) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  store i32 %2, ptr %15, align 4
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_super_block, ptr %22, i32 0, i32 29
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %13
  %28 = trunc i32 %3 to i8
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %29, i32 0, i32 3
  store i8 %28, ptr %30, align 1
  %31 = load ptr, ptr %1, align 4
  br label %32

32:                                               ; preds = %27, %13
  %33 = phi ptr [ %31, %27 ], [ %16, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 33
  %35 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %34, ptr elementtype(i64) %34) #11, !srcloc !17
  br label %36

36:                                               ; preds = %44, %32
  %37 = phi i64 [ %35, %32 ], [ %45, %44 ]
  %38 = add i64 %37, 2
  %39 = and i64 %38, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #11, !srcloc !19
  br label %40

40:                                               ; preds = %40, %36
  %41 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %34, ptr %34, i64 %37, i64 %39, ptr elementtype(i64) %34) #11, !srcloc !20
  %42 = extractvalue { i32, i64 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %40

44:                                               ; preds = %40
  %45 = extractvalue { i32, i64 } %41, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %46 = icmp eq i64 %45, %37
  br i1 %46, label %47, label %36, !prof !12

47:                                               ; preds = %44
  %48 = load ptr, ptr %1, align 4
  %49 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 16
  %50 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %48) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %49, ptr noundef align 8 dereferenceable(16) %50, i32 16, i1 false)
  %51 = load ptr, ptr %1, align 4
  %52 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %51, ptr noundef nonnull @__func__.ext4_setent, i32 noundef 3552) #11
  %53 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load ptr, ptr %1, align 4
  %58 = load ptr, ptr %9, align 4
  %59 = call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %57, ptr noundef %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61, !prof !12

61:                                               ; preds = %56
  %62 = load ptr, ptr %1, align 4
  %63 = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  call void @__ext4_std_error(ptr noundef %64, ptr noundef nonnull @__func__.ext4_setent, i32 noundef 3557, i32 noundef %59) #11
  br label %65

65:                                               ; preds = %61, %56, %47, %4
  %66 = phi i32 [ %59, %61 ], [ %11, %4 ], [ %52, %56 ], [ %52, %47 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_mark_ineligible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_rename_dir_finish(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %11, label %35

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_super_block, ptr %17, i32 0, i32 28
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %11
  %23 = getelementptr i8, ptr %10, i32 -124
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call fastcc i32 @ext4_handle_dirty_dx_node(ptr noundef %0, ptr noundef %10, ptr noundef %29)
  br label %37

31:                                               ; preds = %22, %11
  %32 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %10, ptr noundef %33)
  br label %37

35:                                               ; preds = %3
  %36 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %10, ptr noundef nonnull @__func__.ext4_rename_dir_finish, i32 noundef 3527) #11
  br label %37

37:                                               ; preds = %35, %31, %27
  %38 = phi i32 [ %36, %35 ], [ %30, %27 ], [ %34, %31 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  tail call void @__ext4_std_error(ptr noundef %43, ptr noundef nonnull @__func__.ext4_rename_dir_finish, i32 noundef 3530, i32 noundef %38) #11
  br label %44

44:                                               ; preds = %40, %37
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_update_dir_count(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %15 [
    i32 0, label %42
    i32 -1, label %5
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 4
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, 16384
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %39

14:                                               ; preds = %10, %5
  tail call void @drop_nlink(ptr noundef %6) #11
  br label %39

15:                                               ; preds = %2
  %16 = load ptr, ptr %1, align 4
  tail call void @inc_nlink(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_super_block, ptr %22, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %15
  %28 = getelementptr i8, ptr %16, i32 -124
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 4096
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 11
  %34 = load i32, ptr %33, align 8
  %35 = icmp ugt i32 %34, 65000
  %36 = icmp eq i32 %34, 2
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @set_nlink(ptr noundef %16, i32 noundef 1) #11
  br label %39

39:                                               ; preds = %38, %32, %27, %15, %14, %10
  %40 = load ptr, ptr %1, align 4
  %41 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %40, ptr noundef nonnull @__func__.ext4_update_dir_count, i32 noundef 3645) #11
  br label %42

42:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_first_inline_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_da_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_rename_delete(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ext4_filename, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.ext4_filename, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.anon.4, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  br label %39

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %9, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.anon.4, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %25
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %9, i32 0, i32 4
  %34 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 4, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @strncmp(ptr noundef %33, ptr noundef %35, i32 noundef %25)
  %37 = or i32 %36, %2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %32, %22, %16
  %40 = phi i32 [ %21, %16 ], [ %25, %32 ], [ %30, %22 ]
  %41 = phi ptr [ %18, %16 ], [ %27, %32 ], [ %27, %22 ]
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store ptr null, ptr %7, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #11
  %44 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %44, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %43, ptr %6, align 4
  %45 = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.ext4_filename, ptr %6, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ext4_filename, ptr %6, i32 0, i32 1, i32 1
  store i32 %40, ptr %48, align 4
  %49 = call fastcc ptr @__ext4_find_entry(ptr noundef %42, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #11
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = ptrtoint ptr %49 to i32
  br label %58

53:                                               ; preds = %39
  %54 = icmp eq ptr %49, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %7, align 4
  %57 = call fastcc i32 @ext4_delete_entry(ptr noundef %0, ptr noundef %42, ptr noundef %56, ptr noundef nonnull %49) #11
  call void @__brelse(ptr noundef nonnull %49) #11
  br label %58

58:                                               ; preds = %55, %53, %51
  %59 = phi i32 [ %52, %51 ], [ %57, %55 ], [ -2, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %88

60:                                               ; preds = %32
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr inbounds %struct.ext4_renament, ptr %1, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = tail call fastcc i32 @ext4_delete_entry(ptr noundef %0, ptr noundef %61, ptr noundef %9, ptr noundef %63)
  %65 = icmp eq i32 %64, -2
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load ptr, ptr %1, align 4
  %68 = load ptr, ptr %26, align 4
  %69 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %70 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %70, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %69, ptr %4, align 4
  %71 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 4, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.anon.4, ptr %69, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ext4_filename, ptr %4, i32 0, i32 1, i32 1
  store i32 %75, ptr %76, align 4
  %77 = call fastcc ptr @__ext4_find_entry(ptr noundef %67, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = ptrtoint ptr %77 to i32
  br label %86

81:                                               ; preds = %66
  %82 = icmp eq ptr %77, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %5, align 4
  %85 = call fastcc i32 @ext4_delete_entry(ptr noundef %0, ptr noundef %67, ptr noundef %84, ptr noundef nonnull %77) #11
  call void @__brelse(ptr noundef nonnull %77) #11
  br label %86

86:                                               ; preds = %83, %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %83 ], [ -2, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %88

88:                                               ; preds = %86, %60, %58
  %89 = phi i32 [ %59, %58 ], [ %87, %86 ], [ %64, %60 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %1, align 4
  %93 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 11
  %94 = load i32, ptr %93, align 8
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %92, ptr noundef nonnull @__func__.ext4_rename_delete, i32 noundef 3634, ptr noundef nonnull @.str.45, i32 noundef %94, i32 noundef %89) #11
  br label %95

95:                                               ; preds = %91, %88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_fc_track_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_fc_track_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_fc_track_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_resetent(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ext4_filename, align 4
  %6 = alloca %struct.ext4_renament, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef align 4 dereferenceable(44) %1, i32 44, i1 false)
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_renament, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.ext4_renament, ptr %6, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #11
  %12 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 16, i1 false) #11, !annotation !11
  store ptr %10, ptr %5, align 4
  %13 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ext4_filename, ptr %5, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.anon.4, ptr %10, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_filename, ptr %5, i32 0, i32 1, i32 1
  store i32 %17, ptr %18, align 4
  %19 = call fastcc ptr @__ext4_find_entry(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %11, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #11
  %20 = getelementptr inbounds %struct.ext4_renament, ptr %6, i32 0, i32 5
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %19 to i32
  %23 = select i1 %21, i32 %22, i32 0
  %24 = icmp eq ptr %19, null
  %25 = select i1 %24, i32 -2, i32 %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  call void @__ext4_std_error(ptr noundef %30, ptr noundef nonnull @__func__.ext4_resetent, i32 noundef 3581, i32 noundef %25) #11
  br label %36

31:                                               ; preds = %4
  %32 = call fastcc i32 @ext4_setent(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3)
  %33 = load ptr, ptr %20, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void @__brelse(ptr noundef nonnull %33) #11
  br label %36

36:                                               ; preds = %35, %31, %27
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 6003000, i32 -294967296}
!9 = !{i64 2153865368, i64 2153865848, i64 2153865405, i64 2153865461, i64 2153865495, i64 2153865519, i64 2153865560, i64 2153865581, i64 2153865609, i64 2153865643}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2153866746, i64 2153867226, i64 2153866783, i64 2153866839, i64 2153866873, i64 2153866897, i64 2153866938, i64 2153866959, i64 2153866987, i64 2153867021}
!14 = !{i64 2153867824, i64 2153868304, i64 2153867861, i64 2153867917, i64 2153867951, i64 2153867975, i64 2153868016, i64 2153868037, i64 2153868065, i64 2153868099}
!15 = !{i32 0, i32 536870912}
!16 = !{i64 2153104432}
!17 = !{i64 926758, i64 926779}
!18 = !{i64 2148596975}
!19 = !{i64 937144, i64 2148427115, i64 2148427141, i64 2148427188, i64 2148427210, i64 2148427238, i64 2148427258}
!20 = !{i64 930373, i64 930399, i64 930427, i64 930445, i64 930463, i64 930485}
!21 = !{i64 2148597177}
!22 = !{!"branch_weights", i32 4001, i32 1}
!23 = !{i64 2155104736}
!24 = !{i64 2155104910}
!25 = !{i64 2155121018}
!26 = !{i64 2155121184}
!27 = !{i8 0, i8 2}
!28 = !{i64 2156207678, i64 2156208159, i64 2156207715, i64 2156207771, i64 2156207805, i64 2156207829, i64 2156207870, i64 2156207891, i64 2156207919, i64 2156207953}
!29 = !{i64 2156209398, i64 2156209879, i64 2156209435, i64 2156209491, i64 2156209525, i64 2156209549, i64 2156209590, i64 2156209611, i64 2156209639, i64 2156209673}
