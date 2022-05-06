; ModuleID = '/llk/IR/fs/ext4/extents.c_pt.bc'
source_filename = "../fs/ext4/extents.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.anon.78 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.ext4_extent_header = type { i16, i16, i16, i16, i32 }
%struct.ext4_extent = type { i32, i16, i16, i32 }
%struct.ext4_extent_idx = type { i32, i32, i16, i16 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_ext_path = type { i64, i16, i16, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.partial_cluster = type { i64, i32, i32 }
%struct.extent_status = type { %struct.rb_node, i32, i32, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.ext4_allocation_request = type { ptr, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.jbd2_journal_handle = type { %union.anon, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.3, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ext4_io_end = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.list_head }
%struct.ext4_io_end_vec = type { %struct.list_head, i64, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }

@__func__.ext4_ext_check_inode = private unnamed_addr constant [21 x i8] c"ext4_ext_check_inode\00", align 1
@__func__.ext4_ext_precache = private unnamed_addr constant [18 x i8] c"ext4_ext_precache\00", align 1
@__func__.ext4_ext_tree_init = private unnamed_addr constant [19 x i8] c"ext4_ext_tree_init\00", align 1
@__func__.ext4_find_extent = private unnamed_addr constant [17 x i8] c"ext4_find_extent\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"inode has invalid extent depth: %d\00", align 1
@__func__.ext4_ext_insert_extent = private unnamed_addr constant [23 x i8] c"ext4_ext_insert_extent\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ext4_ext_get_actual_len(newext) == 0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"path[%d].p_hdr == NULL\00", align 1
@__func__.ext4_ext_remove_space = private unnamed_addr constant [22 x i8] c"ext4_ext_remove_space\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"fs/ext4/extents.c\00", align 1
@__func__.ext4_ext_map_blocks = private unnamed_addr constant [20 x i8] c"ext4_ext_map_blocks\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"bad extent address lblock: %lu, depth: %d pblock %lld\00", align 1
@__func__.ext4_ext_truncate = private unnamed_addr constant [18 x i8] c"ext4_ext_truncate\00", align 1
@__func__.ext4_convert_unwritten_extents = private unnamed_addr constant [31 x i8] c"ext4_convert_unwritten_extents\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"inode #%lu: block %u: len %u: ext4_ext_map_blocks returned %d\00", align 1
@__func__.ext4_convert_unwritten_io_end_vec = private unnamed_addr constant [34 x i8] c"ext4_convert_unwritten_io_end_vec\00", align 1
@ext4_iomap_xattr_ops = internal constant %struct.iomap_ops { ptr @ext4_iomap_xattr_begin, ptr null }, align 4
@ext4_iomap_report_ops = external dso_local constant %struct.iomap_ops, align 4
@__func__.ext4_swap_extents = private unnamed_addr constant [18 x i8] c"ext4_swap_extents\00", align 1
@__func__.ext4_clu_mapped = private unnamed_addr constant [16 x i8] c"ext4_clu_mapped\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"bad extent address - lblock: %lu, depth: %d, pblock: %lld\00", align 1
@__func__.ext4_ext_replay_update_ex = private unnamed_addr constant [26 x i8] c"ext4_ext_replay_update_ex\00", align 1
@__func__.ext4_ext_replay_shrink_inode = private unnamed_addr constant [29 x i8] c"ext4_ext_replay_shrink_inode\00", align 1
@__func__.ext4_ext_replay_set_iblocks = private unnamed_addr constant [28 x i8] c"ext4_ext_replay_set_iblocks\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"invalid magic\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"unexpected eh_depth\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"invalid eh_max\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"too large eh_max\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"invalid eh_entries\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"invalid extent entries\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"too large eh_depth\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"extent tree corrupted\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"pblk %llu bad header/extent: %s - magic %x, entries %u, max %u(%u), depth %u(%u)\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__tracepoint_ext4_ext_load_extent = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.ext4_ext_get_access = private unnamed_addr constant [20 x i8] c"ext4_ext_get_access\00", align 1
@__func__.ext4_ext_split = private unnamed_addr constant [15 x i8] c"ext4_ext_split\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"p_ext > EXT_MAX_EXTENT!\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"newblock == 0!\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"eh_entries %d != eh_max %d!\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"k %d < 0!\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"EXT_MAX_INDEX != EXT_LAST_INDEX ee_block %d!\00", align 1
@__func__.ext4_ext_insert_index = private unnamed_addr constant [22 x i8] c"ext4_ext_insert_index\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"logical %d == ei_block %d!\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"eh_entries %d >= eh_max %d!\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"ix > EXT_MAX_INDEX!\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"ix > EXT_LAST_INDEX!\00", align 1
@__func__.ext4_ext_grow_indepth = private unnamed_addr constant [22 x i8] c"ext4_ext_grow_indepth\00", align 1
@__func__.ext4_ext_try_to_merge_right = private unnamed_addr constant [28 x i8] c"ext4_ext_try_to_merge_right\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"eh->eh_entries = 0!\00", align 1
@__func__.ext4_ext_correct_indexes = private unnamed_addr constant [25 x i8] c"ext4_ext_correct_indexes\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"ex %p == NULL or eh %p == NULL\00", align 1
@__func__.__ext4_ext_dirty = private unnamed_addr constant [17 x i8] c"__ext4_ext_dirty\00", align 1
@__tracepoint_ext4_ext_remove_space = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_split_extent_at = private unnamed_addr constant [21 x i8] c"ext4_split_extent_at\00", align 1
@__func__.ext4_ext_search_right = private unnamed_addr constant [22 x i8] c"ext4_ext_search_right\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"path == NULL *logical %d!\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"first_extent(path[%d].p_hdr) != ex\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"ix != EXT_FIRST_INDEX *logical %d!\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"logical %d < ee_block %d + ee_len %d!\00", align 1
@__func__.ext4_ext_rm_leaf = private unnamed_addr constant [17 x i8] c"ext4_ext_rm_leaf\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"can not handle truncate %u:%u on extent %u:%u\00", align 1
@__tracepoint_ext4_ext_rm_leaf = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_remove_blocks = private unnamed_addr constant [19 x i8] c"ext4_remove_blocks\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"strange request: removal(2) %u-%u from %u:%u\00", align 1
@__tracepoint_ext4_remove_blocks = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_ext_rm_idx = private unnamed_addr constant [16 x i8] c"ext4_ext_rm_idx\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"path->p_hdr->eh_entries == 0\00", align 1
@__tracepoint_ext4_ext_rm_idx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_ext_remove_space_done = external dso_local global %struct.tracepoint, align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_ext4_ext_map_blocks_enter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_ext_show_extent = external dso_local global %struct.tracepoint, align 4
@__func__.convert_initialized_extent = private unnamed_addr constant [27 x i8] c"convert_initialized_extent\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"unexpected hole at %lu\00", align 1
@__func__.ext4_split_extent = private unnamed_addr constant [18 x i8] c"ext4_split_extent\00", align 1
@__func__.ext4_ext_handle_unwritten_extents = private unnamed_addr constant [34 x i8] c"ext4_ext_handle_unwritten_extents\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"unexpected ret == 0, m_len = %u\00", align 1
@__tracepoint_ext4_ext_handle_unwritten_extents = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_convert_unwritten_extents_endio = private unnamed_addr constant [37 x i8] c"ext4_convert_unwritten_extents_endio\00", align 1
@__func__.ext4_ext_convert_to_initialized = private unnamed_addr constant [32 x i8] c"ext4_ext_convert_to_initialized\00", align 1
@__tracepoint_ext4_ext_convert_to_initialized_enter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_ext_convert_to_initialized_fastpath = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_get_implied_cluster_alloc_exit = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_ext_search_left = private unnamed_addr constant [21 x i8] c"ext4_ext_search_left\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"EXT_FIRST_EXTENT != ex *logical %d ee_block %d!\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"ix (%d) != EXT_FIRST_INDEX (%d) (depth %d)!\00", align 1
@__tracepoint_ext4_ext_map_blocks_exit = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_zero_range = private unnamed_addr constant [16 x i8] c"ext4_zero_range\00", align 1
@__tracepoint_ext4_zero_range = external dso_local global %struct.tracepoint, align 4
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ext4_fallocate_enter = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_alloc_file_blocks = private unnamed_addr constant [23 x i8] c"ext4_alloc_file_blocks\00", align 1
@__tracepoint_ext4_fallocate_exit = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_collapse_range = private unnamed_addr constant [20 x i8] c"ext4_collapse_range\00", align 1
@__tracepoint_ext4_collapse_range = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_ext_shift_extents = private unnamed_addr constant [23 x i8] c"ext4_ext_shift_extents\00", align 1
@__func__.ext4_ext_shift_path_extents = private unnamed_addr constant [28 x i8] c"ext4_ext_shift_path_extents\00", align 1
@__func__.ext4_insert_range = private unnamed_addr constant [18 x i8] c"ext4_insert_range\00", align 1
@__tracepoint_ext4_insert_range = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_datasem_ensure_credits(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

17:                                               ; preds = %8
  tail call void @ext4_discard_preallocations(ptr noundef %1, i32 noundef 0) #13
  %18 = getelementptr i8, ptr %1, i32 -24
  tail call void @up_write(ptr noundef %18) #13
  %19 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef 3136) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %21, %20 ], [ 1, %23 ]
  tail call void @down_write(ptr noundef %18) #13
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi i32 [ %25, %24 ], [ %6, %5 ]
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_check_inode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -208
  %3 = getelementptr i8, ptr %0, i32 -202
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = tail call fastcc i32 @__ext4_ext_check(ptr noundef nonnull @__func__.ext4_ext_check_inode, i32 noundef 497, ptr noundef %0, ptr noundef %2, i32 noundef %5, i64 noundef 0, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ext4_ext_check(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.anon.78, align 8
  %9 = load i16, ptr %3, align 4
  %10 = icmp eq i16 %9, -3318
  br i1 %10, label %11, label %197, !prof !10

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ext4_extent_header, ptr %3, i32 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %16, label %197, !prof !10

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ext4_extent_header, ptr %3, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %197, label %20, !prof !8

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %2, i32 -202
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %23, %4
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 16
  %30 = add i32 %29, -12
  %31 = udiv i32 %30, 12
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i32 [ 4, %20 ], [ %31, %25 ]
  %34 = zext i16 %18 to i32
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %197, label %36, !prof !8

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ext4_extent_header, ptr %3, i32 0, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = icmp ugt i16 %38, %18
  br i1 %39, label %197, label %40, !prof !8

40:                                               ; preds = %36
  %41 = icmp eq i16 %38, 0
  br i1 %41, label %134, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %4, 0
  %44 = getelementptr i8, ptr %3, i32 12
  br i1 %43, label %45, label %91

45:                                               ; preds = %42
  %46 = icmp eq i16 %22, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %44, align 4
  %49 = icmp eq i32 %48, %6
  br i1 %49, label %50, label %197

50:                                               ; preds = %47, %45
  br label %51

51:                                               ; preds = %80, %50
  %52 = phi ptr [ %88, %80 ], [ %44, %50 ]
  %53 = phi i32 [ %87, %80 ], [ 0, %50 ]
  %54 = phi i16 [ %89, %80 ], [ %38, %50 ]
  %55 = getelementptr inbounds %struct.ext4_extent, ptr %52, i32 0, i32 1
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = icmp ult i16 %56, -32767
  %59 = add nsw i32 %57, -32768
  %60 = select i1 %58, i32 %57, i32 %59
  %61 = load i32, ptr %52, align 4
  %62 = add i32 %60, %61
  %63 = icmp ugt i32 %62, %61
  br i1 %63, label %64, label %197

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.ext4_extent, ptr %52, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i64
  %68 = shl nuw nsw i64 %67, 32
  %69 = getelementptr inbounds %struct.ext4_extent, ptr %52, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %70 to i64
  %72 = or i64 %68, %71
  %73 = tail call i32 @ext4_inode_block_valid(ptr noundef %2, i64 noundef %72, i32 noundef %60) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %197, label %75

75:                                               ; preds = %64
  %76 = load i32, ptr %52, align 4
  %77 = icmp ule i32 %76, %53
  %78 = icmp ne i32 %53, 0
  %79 = and i1 %78, %77
  br i1 %79, label %119, label %80

80:                                               ; preds = %75
  %81 = load i16, ptr %55, align 4
  %82 = zext i16 %81 to i32
  %83 = icmp ult i16 %81, -32767
  %84 = add nsw i32 %82, -32768
  %85 = select i1 %83, i32 %82, i32 %84
  %86 = add i32 %76, -1
  %87 = add i32 %86, %85
  %88 = getelementptr %struct.ext4_extent, ptr %52, i32 1
  %89 = add i16 %54, -1
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %134, label %51

91:                                               ; preds = %42
  br i1 %24, label %95, label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %44, align 4
  %94 = icmp eq i32 %93, %6
  br i1 %94, label %95, label %197

95:                                               ; preds = %92, %91
  br label %96

96:                                               ; preds = %115, %95
  %97 = phi ptr [ %116, %115 ], [ %44, %95 ]
  %98 = phi i32 [ %111, %115 ], [ 0, %95 ]
  %99 = phi i16 [ %117, %115 ], [ %38, %95 ]
  %100 = getelementptr inbounds %struct.ext4_extent_idx, ptr %97, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ext4_extent_idx, ptr %97, i32 0, i32 2
  %104 = load i16, ptr %103, align 4
  %105 = zext i16 %104 to i64
  %106 = shl nuw nsw i64 %105, 32
  %107 = or i64 %106, %102
  %108 = tail call i32 @ext4_inode_block_valid(ptr noundef %2, i64 noundef %107, i32 noundef 1) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %197, label %110

110:                                              ; preds = %96
  %111 = load i32, ptr %97, align 4
  %112 = icmp ule i32 %111, %98
  %113 = icmp ne i32 %98, 0
  %114 = and i1 %113, %112
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = getelementptr %struct.ext4_extent_idx, ptr %97, i32 1
  %117 = add i16 %99, -1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %134, label %96

119:                                              ; preds = %75
  %120 = getelementptr inbounds %struct.ext4_extent, ptr %52, i32 0, i32 2
  %121 = getelementptr inbounds %struct.ext4_extent, ptr %52, i32 0, i32 3
  br label %125

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.ext4_extent_idx, ptr %97, i32 0, i32 1
  %124 = getelementptr inbounds %struct.ext4_extent_idx, ptr %97, i32 0, i32 2
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi ptr [ %120, %119 ], [ %124, %122 ]
  %127 = phi ptr [ %121, %119 ], [ %123, %122 ]
  %128 = load i32, ptr %127, align 4
  %129 = zext i32 %128 to i64
  %130 = load i16, ptr %126, align 2
  %131 = zext i16 %130 to i64
  %132 = shl nuw nsw i64 %131, 32
  %133 = or i64 %132, %129
  br label %197

134:                                              ; preds = %115, %80, %40
  %135 = icmp sgt i32 %4, 32
  br i1 %135, label %197, label %136, !prof !8

136:                                              ; preds = %134
  %137 = load i16, ptr %21, align 2
  %138 = zext i16 %137 to i32
  %139 = icmp eq i32 %138, %4
  br i1 %139, label %214, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.super_block, ptr %142, i32 0, i32 27
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.ext4_sb_info, ptr %144, i32 0, i32 15
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.ext4_super_block, ptr %146, i32 0, i32 30
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 1024
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %214, label %151

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.ext4_sb_info, ptr %144, i32 0, i32 119
  %153 = load ptr, ptr %152, align 8
  %154 = icmp eq ptr %153, null
  %155 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %156 = xor i1 %155, true
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %169, !prof !8

158:                                              ; preds = %151
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %159 = load ptr, ptr %143, align 4
  %160 = getelementptr inbounds %struct.ext4_sb_info, ptr %159, i32 0, i32 15
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.ext4_super_block, ptr %161, i32 0, i32 30
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 1024
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %214, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.ext4_sb_info, ptr %159, i32 0, i32 119
  %168 = load ptr, ptr %167, align 8
  br label %169

169:                                              ; preds = %166, %151
  %170 = phi ptr [ %168, %166 ], [ %153, %151 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %214, label %172

172:                                              ; preds = %169
  %173 = load i16, ptr %17, align 4
  %174 = zext i16 %173 to i32
  %175 = mul nuw nsw i32 %174, 12
  %176 = add nuw nsw i32 %175, 12
  %177 = getelementptr i8, ptr %3, i32 %176
  %178 = load i32, ptr %177, align 4
  %179 = load ptr, ptr %141, align 4
  %180 = getelementptr inbounds %struct.super_block, ptr %179, i32 0, i32 27
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %2, i32 528
  %183 = load i32, ptr %182, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #13, !annotation !11
  %184 = getelementptr inbounds %struct.ext4_sb_info, ptr %181, i32 0, i32 119
  %185 = load ptr, ptr %184, align 8
  %186 = load i32, ptr %185, align 64
  %187 = icmp eq i32 %186, 4
  br i1 %187, label %189, label %188, !prof !10

188:                                              ; preds = %172
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

189:                                              ; preds = %172
  store ptr %185, ptr %8, align 8
  %190 = getelementptr inbounds %struct.anon.78, ptr %8, i32 0, i32 1
  store i32 %183, ptr %190, align 8
  %191 = call i32 @crypto_shash_update(ptr noundef nonnull %8, ptr noundef %3, i32 noundef %176) #13
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193, !prof !10

193:                                              ; preds = %189
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

194:                                              ; preds = %189
  %195 = load i32, ptr %190, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  %196 = icmp eq i32 %178, %195
  br i1 %196, label %214, label %197

197:                                              ; preds = %194, %134, %125, %96, %92, %64, %51, %47, %36, %32, %16, %11, %7
  %198 = phi i64 [ %5, %16 ], [ %5, %32 ], [ %5, %36 ], [ %5, %134 ], [ %5, %194 ], [ %5, %11 ], [ %5, %7 ], [ %5, %92 ], [ %5, %47 ], [ %133, %125 ], [ %5, %64 ], [ %5, %51 ], [ %5, %96 ]
  %199 = phi ptr [ @.str.9, %16 ], [ @.str.10, %32 ], [ @.str.11, %36 ], [ @.str.13, %134 ], [ @.str.14, %194 ], [ @.str.8, %11 ], [ @.str.7, %7 ], [ @.str.12, %92 ], [ @.str.12, %47 ], [ @.str.12, %125 ], [ @.str.12, %64 ], [ @.str.12, %51 ], [ @.str.12, %96 ]
  %200 = phi i32 [ 0, %16 ], [ %33, %32 ], [ %33, %36 ], [ %33, %134 ], [ %33, %194 ], [ 0, %11 ], [ 0, %7 ], [ %33, %92 ], [ %33, %47 ], [ %33, %125 ], [ %33, %64 ], [ %33, %51 ], [ %33, %96 ]
  %201 = phi i32 [ -117, %16 ], [ -117, %32 ], [ -117, %36 ], [ -117, %134 ], [ -74, %194 ], [ -117, %11 ], [ -117, %7 ], [ -117, %92 ], [ -117, %47 ], [ -117, %125 ], [ -117, %64 ], [ -117, %51 ], [ -117, %96 ]
  %202 = sub nsw i32 0, %201
  %203 = load i16, ptr %3, align 4
  %204 = zext i16 %203 to i32
  %205 = getelementptr inbounds %struct.ext4_extent_header, ptr %3, i32 0, i32 1
  %206 = load i16, ptr %205, align 2
  %207 = zext i16 %206 to i32
  %208 = getelementptr inbounds %struct.ext4_extent_header, ptr %3, i32 0, i32 2
  %209 = load i16, ptr %208, align 4
  %210 = zext i16 %209 to i32
  %211 = getelementptr inbounds %struct.ext4_extent_header, ptr %3, i32 0, i32 3
  %212 = load i16, ptr %211, align 2
  %213 = zext i16 %212 to i32
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %2, ptr noundef %0, i32 noundef %1, i64 noundef 0, i32 noundef %202, ptr noundef nonnull @.str.15, i64 noundef %198, ptr noundef nonnull %199, i32 noundef %204, i32 noundef %207, i32 noundef %210, i32 noundef %200, i32 noundef %213, i32 noundef %4) #13
  br label %214

214:                                              ; preds = %197, %194, %169, %158, %140, %136
  %215 = phi i32 [ %201, %197 ], [ 0, %194 ], [ 0, %136 ], [ 0, %169 ], [ 0, %158 ], [ 0, %140 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_precache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -124
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %87, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -24
  tail call void @down_read(ptr noundef %7) #13
  %8 = getelementptr i8, ptr %0, i32 -202
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i16 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @up_read(ptr noundef %7) #13
  br label %87

13:                                               ; preds = %6
  %14 = shl nuw nsw i32 %10, 5
  %15 = add nuw nsw i32 %14, 32
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3392) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @up_read(ptr noundef %7) #13
  br label %87

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %0, i32 -208
  %21 = getelementptr inbounds %struct.ext4_ext_path, ptr %16, i32 0, i32 5
  store ptr %20, ptr %21, align 4
  %22 = tail call fastcc i32 @__ext4_ext_check(ptr noundef nonnull @__func__.ext4_ext_precache, i32 noundef 604, ptr noundef %0, ptr noundef %20, i32 noundef %10, i64 noundef 0, i32 noundef 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %19
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = getelementptr inbounds %struct.ext4_ext_path, ptr %16, i32 0, i32 4
  store ptr %26, ptr %27, align 16
  br label %28

28:                                               ; preds = %48, %24
  %29 = phi i32 [ 0, %24 ], [ %49, %48 ]
  %30 = icmp eq i32 %29, %10
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = getelementptr %struct.ext4_ext_path, ptr %16, i32 %29, i32 4
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr %struct.ext4_ext_path, ptr %16, i32 %29, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ext4_extent_header, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr %struct.ext4_extent_idx, ptr %35, i32 %38
  %40 = icmp ugt ptr %33, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %31, %28
  %42 = getelementptr %struct.ext4_ext_path, ptr %16, i32 %29, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @__brelse(ptr noundef nonnull %43) #13
  br label %46

46:                                               ; preds = %45, %41
  store ptr null, ptr %42, align 8
  %47 = add nsw i32 %29, -1
  br label %48

48:                                               ; preds = %59, %46
  %49 = phi i32 [ %47, %46 ], [ %60, %59 ]
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %28, label %67

51:                                               ; preds = %31
  %52 = getelementptr %struct.ext4_extent_idx, ptr %33, i32 1
  store ptr %52, ptr %32, align 16
  %53 = xor i32 %29, -1
  %54 = add i32 %53, %10
  %55 = tail call fastcc ptr @__read_extent_tree_block(ptr noundef nonnull @__func__.ext4_ext_precache, i32 noundef 622, ptr noundef %0, ptr noundef %33, i32 noundef %54, i32 noundef 536870912)
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = ptrtoint ptr %55 to i32
  br label %67

59:                                               ; preds = %51
  %60 = add nuw i32 %29, 1
  %61 = getelementptr %struct.ext4_ext_path, ptr %16, i32 %60, i32 6
  store ptr %55, ptr %61, align 8
  %62 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr %struct.ext4_ext_path, ptr %16, i32 %60, i32 5
  store ptr %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %63, i32 12
  %66 = getelementptr %struct.ext4_ext_path, ptr %16, i32 %60, i32 4
  store ptr %65, ptr %66, align 16
  br label %48

67:                                               ; preds = %57, %48
  %68 = phi i32 [ %58, %57 ], [ 0, %48 ]
  %69 = getelementptr i8, ptr %0, i32 -128
  tail call void @_set_bit(i32 noundef 8, ptr noundef %69) #13
  br label %70

70:                                               ; preds = %67, %19
  %71 = phi i32 [ %22, %19 ], [ %68, %67 ]
  tail call void @up_read(ptr noundef %7) #13
  %72 = getelementptr inbounds %struct.ext4_ext_path, ptr %16, i32 0, i32 1
  %73 = load i16, ptr %72, align 8
  %74 = zext i16 %73 to i32
  br label %75

75:                                               ; preds = %82, %70
  %76 = phi i32 [ 0, %70 ], [ %83, %82 ]
  %77 = phi ptr [ %16, %70 ], [ %84, %82 ]
  %78 = getelementptr inbounds %struct.ext4_ext_path, ptr %77, i32 0, i32 6
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call void @__brelse(ptr noundef nonnull %79) #13
  br label %82

82:                                               ; preds = %81, %75
  store ptr null, ptr %78, align 8
  %83 = add nuw nsw i32 %76, 1
  %84 = getelementptr %struct.ext4_ext_path, ptr %77, i32 1
  %85 = icmp eq i32 %76, %74
  br i1 %85, label %86, label %75

86:                                               ; preds = %82
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %87

87:                                               ; preds = %86, %18, %12, %1
  %88 = phi i32 [ -12, %18 ], [ %71, %86 ], [ 0, %12 ], [ 0, %1 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__read_extent_tree_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = and i32 %5, 268435456
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 3144, i32 35912
  %10 = getelementptr inbounds %struct.ext4_extent_idx, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ext4_extent_idx, ptr %3, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i64
  %16 = shl nuw nsw i64 %15, 32
  %17 = or i64 %16, %12
  %18 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %23 = load i32, ptr %22, align 16
  %24 = tail call ptr @__getblk_gfp(ptr noundef %21, i64 noundef %17, i32 noundef %23, i32 noundef %9) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %119, label %26, !prof !8

26:                                               ; preds = %6
  %27 = tail call i32 @bh_uptodate_or_lock(ptr noundef nonnull %24) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = tail call ptr @llvm.returnaddress(i32 0)
  %31 = ptrtoint ptr %30 to i32
  %32 = zext i32 %31 to i64
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_load_extent, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = tail call ptr @llvm.thread.pointer() #13
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %47 = tail call i32 @__traceiter_ext4_ext_load_extent(ptr noundef null, ptr noundef %2, i32 noundef %11, i64 noundef %32) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %48

48:                                               ; preds = %46, %35, %29
  %49 = tail call i32 @ext4_read_bh(ptr noundef nonnull %24, i32 noundef 0, ptr noundef null) #13
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %114, label %51

51:                                               ; preds = %48, %26
  %52 = load volatile i32, ptr %24, align 4
  %53 = and i32 %52, 16777216
  %54 = icmp ne i32 %53, 0
  %55 = and i32 %5, 536870912
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %56, %54
  br i1 %57, label %119, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %3, align 4
  %62 = tail call fastcc i32 @__ext4_ext_check(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %60, i32 noundef %4, i64 noundef %17, i32 noundef %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %114

64:                                               ; preds = %58
  %65 = load volatile i32, ptr %24, align 4
  %66 = and i32 %65, 16777216
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %24) #13
  br label %69

69:                                               ; preds = %68, %64
  %70 = and i32 %5, 1073741824
  %71 = or i32 %70, %4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %119

73:                                               ; preds = %69
  %74 = load ptr, ptr %59, align 4
  %75 = getelementptr inbounds %struct.ext4_extent_header, ptr %74, i32 0, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %119, label %78

78:                                               ; preds = %73
  %79 = zext i16 %76 to i32
  %80 = getelementptr i8, ptr %74, i32 12
  br label %81

81:                                               ; preds = %98, %78
  %82 = phi i32 [ %111, %98 ], [ %79, %78 ]
  %83 = phi i32 [ %110, %98 ], [ 0, %78 ]
  %84 = phi ptr [ %112, %98 ], [ %80, %78 ]
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ext4_extent, ptr %84, i32 0, i32 1
  %87 = load i16, ptr %86, align 4
  %88 = zext i16 %87 to i32
  %89 = icmp ult i16 %87, -32767
  %90 = add nsw i32 %88, -32768
  %91 = select i1 %89, i32 %88, i32 %90
  %92 = icmp eq i32 %83, 0
  %93 = icmp eq i32 %85, %83
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %81
  %96 = sub i32 %85, %83
  tail call void @ext4_es_cache_extent(ptr noundef %2, i32 noundef %83, i32 noundef %96, i64 noundef -1, i32 noundef 8) #13
  %97 = load i16, ptr %86, align 4
  br label %98

98:                                               ; preds = %95, %81
  %99 = phi i16 [ %97, %95 ], [ %87, %81 ]
  %100 = icmp ult i16 %99, -32767
  %101 = select i1 %100, i32 1, i32 2
  %102 = getelementptr inbounds %struct.ext4_extent, ptr %84, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ext4_extent, ptr %84, i32 0, i32 2
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i64
  %108 = shl nuw nsw i64 %107, 32
  %109 = or i64 %108, %104
  tail call void @ext4_es_cache_extent(ptr noundef %2, i32 noundef %85, i32 noundef %91, i64 noundef %109, i32 noundef %101) #13
  %110 = add i32 %91, %85
  %111 = add nsw i32 %82, -1
  %112 = getelementptr %struct.ext4_extent, ptr %84, i32 1
  %113 = icmp sgt i32 %82, 1
  br i1 %113, label %81, label %119

114:                                              ; preds = %58, %48
  %115 = phi i32 [ %62, %58 ], [ %49, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %116 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %116) #13, !srcloc !17
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %116, ptr %116, i32 1, ptr elementtype(i32) %116) #13, !srcloc !18
  %118 = inttoptr i32 %115 to ptr
  br label %119

119:                                              ; preds = %114, %98, %73, %69, %51, %6
  %120 = phi ptr [ %118, %114 ], [ %24, %51 ], [ %24, %69 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %24, %73 ], [ %24, %98 ]
  ret ptr %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_ext_drop_refs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ext4_ext_path, ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  br label %7

7:                                                ; preds = %14, %3
  %8 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %9 = phi ptr [ %0, %3 ], [ %16, %14 ]
  %10 = getelementptr inbounds %struct.ext4_ext_path, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @__brelse(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %7
  store ptr null, ptr %10, align 8
  %15 = add nuw nsw i32 %8, 1
  %16 = getelementptr %struct.ext4_ext_path, ptr %9, i32 1
  %17 = icmp eq i32 %8, %6
  br i1 %17, label %18, label %7

18:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_ext_tree_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 -208
  %4 = getelementptr i8, ptr %1, i32 -202
  store i16 0, ptr %4, align 2
  %5 = getelementptr i8, ptr %1, i32 -206
  store i16 0, ptr %5, align 2
  store i16 -3318, ptr %3, align 4
  %6 = getelementptr i8, ptr %1, i32 -204
  store i16 4, ptr %6, align 4
  %7 = getelementptr i8, ptr %1, i32 -200
  store i32 0, ptr %7, align 4
  %8 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_tree_init, i32 noundef 870) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_find_extent(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %2, align 4
  %8 = and i32 %3, 268435456
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 3136, i32 35904
  %11 = getelementptr i8, ptr %0, i32 -208
  %12 = getelementptr i8, ptr %0, i32 -202
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp ugt i16 %13, 5
  br i1 %15, label %25, label %28

16:                                               ; preds = %4
  %17 = and i32 %3, 268435456
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 3136, i32 35904
  %20 = getelementptr i8, ptr %0, i32 -208
  %21 = getelementptr i8, ptr %0, i32 -202
  %22 = load i16, ptr %21, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp ugt i16 %22, 5
  br i1 %24, label %25, label %51

25:                                               ; preds = %16, %6
  %26 = phi i32 [ %23, %16 ], [ %14, %6 ]
  %27 = phi ptr [ null, %16 ], [ %7, %6 ]
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_find_extent, i32 noundef 891, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %26) #13
  br label %219

28:                                               ; preds = %6
  %29 = icmp eq ptr %7, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ext4_ext_path, ptr %7, i32 0, i32 1
  %32 = load i16, ptr %31, align 8
  %33 = zext i16 %32 to i32
  br label %34

34:                                               ; preds = %41, %30
  %35 = phi i32 [ 0, %30 ], [ %42, %41 ]
  %36 = phi ptr [ %7, %30 ], [ %43, %41 ]
  %37 = getelementptr inbounds %struct.ext4_ext_path, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void @__brelse(ptr noundef nonnull %38) #13
  br label %41

41:                                               ; preds = %40, %34
  store ptr null, ptr %37, align 8
  %42 = add nuw nsw i32 %35, 1
  %43 = getelementptr %struct.ext4_ext_path, ptr %36, i32 1
  %44 = icmp eq i32 %35, %33
  br i1 %44, label %45, label %34

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ext4_ext_path, ptr %7, i32 0, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp sgt i32 %14, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  tail call void @kfree(ptr noundef nonnull %7) #13
  store ptr null, ptr %2, align 4
  br label %51

51:                                               ; preds = %50, %28, %16
  %52 = phi i32 [ %14, %28 ], [ %14, %50 ], [ %23, %16 ]
  %53 = phi i16 [ %13, %28 ], [ %13, %50 ], [ %22, %16 ]
  %54 = phi ptr [ %11, %28 ], [ %11, %50 ], [ %20, %16 ]
  %55 = phi i32 [ %10, %28 ], [ %10, %50 ], [ %19, %16 ]
  %56 = add nsw i32 %52, 2
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 32) #13
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %240, label %59, !prof !8

59:                                               ; preds = %51
  %60 = extractvalue { i32, i1 } %57, 0
  %61 = or i32 %55, 256
  %62 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %60, i32 noundef %61) #14
  %63 = icmp eq ptr %62, null
  br i1 %63, label %240, label %64, !prof !8

64:                                               ; preds = %59
  %65 = add i16 %53, 1
  %66 = getelementptr inbounds %struct.ext4_ext_path, ptr %62, i32 0, i32 2
  store i16 %65, ptr %66, align 2
  br label %67

67:                                               ; preds = %64, %45
  %68 = phi i16 [ %53, %64 ], [ %13, %45 ]
  %69 = phi ptr [ %54, %64 ], [ %11, %45 ]
  %70 = phi ptr [ %62, %64 ], [ %7, %45 ]
  %71 = getelementptr inbounds %struct.ext4_ext_path, ptr %70, i32 0, i32 5
  store ptr %69, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ext4_ext_path, ptr %70, i32 0, i32 6
  store ptr null, ptr %72, align 8
  %73 = and i32 %3, 1073741824
  %74 = icmp eq i32 %73, 0
  %75 = icmp eq i16 %68, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %117

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.ext4_extent_header, ptr %69, i32 0, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %117, label %81

81:                                               ; preds = %77
  %82 = zext i16 %79 to i32
  %83 = getelementptr i8, ptr %69, i32 12
  br label %84

84:                                               ; preds = %101, %81
  %85 = phi i32 [ %114, %101 ], [ %82, %81 ]
  %86 = phi i32 [ %113, %101 ], [ 0, %81 ]
  %87 = phi ptr [ %115, %101 ], [ %83, %81 ]
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.ext4_extent, ptr %87, i32 0, i32 1
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  %92 = icmp ult i16 %90, -32767
  %93 = add nsw i32 %91, -32768
  %94 = select i1 %92, i32 %91, i32 %93
  %95 = icmp eq i32 %86, 0
  %96 = icmp eq i32 %88, %86
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %84
  %99 = sub i32 %88, %86
  tail call void @ext4_es_cache_extent(ptr noundef %0, i32 noundef %86, i32 noundef %99, i64 noundef -1, i32 noundef 8) #13
  %100 = load i16, ptr %89, align 4
  br label %101

101:                                              ; preds = %98, %84
  %102 = phi i16 [ %100, %98 ], [ %90, %84 ]
  %103 = icmp ult i16 %102, -32767
  %104 = select i1 %103, i32 1, i32 2
  %105 = getelementptr inbounds %struct.ext4_extent, ptr %87, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ext4_extent, ptr %87, i32 0, i32 2
  %109 = load i16, ptr %108, align 2
  %110 = zext i16 %109 to i64
  %111 = shl nuw nsw i64 %110, 32
  %112 = or i64 %111, %107
  tail call void @ext4_es_cache_extent(ptr noundef %0, i32 noundef %88, i32 noundef %94, i64 noundef %112, i32 noundef %104) #13
  %113 = add i32 %94, %88
  %114 = add nsw i32 %85, -1
  %115 = getelementptr %struct.ext4_extent, ptr %87, i32 1
  %116 = icmp sgt i32 %85, 1
  br i1 %116, label %84, label %117

117:                                              ; preds = %101, %77, %67
  br i1 %75, label %173, label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr %71, align 4
  br label %120

120:                                              ; preds = %165, %118
  %121 = phi ptr [ %167, %165 ], [ %119, %118 ]
  %122 = phi i16 [ %168, %165 ], [ 0, %118 ]
  %123 = phi i16 [ %161, %165 ], [ %68, %118 ]
  %124 = sext i16 %122 to i32
  %125 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %124
  %126 = getelementptr i8, ptr %121, i32 24
  %127 = getelementptr inbounds %struct.ext4_extent_header, ptr %121, i32 0, i32 1
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = getelementptr %struct.ext4_extent_idx, ptr %121, i32 %129
  %131 = icmp ugt ptr %126, %130
  br i1 %131, label %147, label %132

132:                                              ; preds = %132, %120
  %133 = phi ptr [ %145, %132 ], [ %130, %120 ]
  %134 = phi ptr [ %144, %132 ], [ %126, %120 ]
  %135 = ptrtoint ptr %133 to i32
  %136 = ptrtoint ptr %134 to i32
  %137 = sub i32 %135, %136
  %138 = sdiv i32 %137, 24
  %139 = getelementptr %struct.ext4_extent_idx, ptr %134, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = icmp ugt i32 %140, %1
  %142 = getelementptr %struct.ext4_extent_idx, ptr %139, i32 -1
  %143 = getelementptr %struct.ext4_extent_idx, ptr %139, i32 1
  %144 = select i1 %141, ptr %134, ptr %143
  %145 = select i1 %141, ptr %142, ptr %133
  %146 = icmp ugt ptr %144, %145
  br i1 %146, label %147, label %132

147:                                              ; preds = %132, %120
  %148 = phi ptr [ %126, %120 ], [ %144, %132 ]
  %149 = getelementptr %struct.ext4_extent_idx, ptr %148, i32 -1
  %150 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %124, i32 4
  store ptr %149, ptr %150, align 8
  %151 = getelementptr %struct.ext4_extent_idx, ptr %148, i32 -1, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr %struct.ext4_extent_idx, ptr %148, i32 -1, i32 2
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i64
  %157 = shl nuw nsw i64 %156, 32
  %158 = or i64 %157, %153
  store i64 %158, ptr %125, align 8
  %159 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %124, i32 1
  store i16 %123, ptr %159, align 8
  %160 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %124, i32 3
  store ptr null, ptr %160, align 4
  %161 = add i16 %123, -1
  %162 = sext i16 %161 to i32
  %163 = tail call fastcc ptr @__read_extent_tree_block(ptr noundef nonnull @__func__.ext4_find_extent, i32 noundef 927, ptr noundef %0, ptr noundef %149, i32 noundef %162, i32 noundef %3)
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %219, label %165

165:                                              ; preds = %147
  %166 = getelementptr inbounds %struct.buffer_head, ptr %163, i32 0, i32 5
  %167 = load ptr, ptr %166, align 4
  %168 = add nuw i16 %122, 1
  %169 = sext i16 %168 to i32
  %170 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %169, i32 6
  store ptr %163, ptr %170, align 8
  %171 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %169, i32 5
  store ptr %167, ptr %171, align 4
  %172 = icmp eq i16 %161, 0
  br i1 %172, label %173, label %120

173:                                              ; preds = %165, %117
  %174 = sext i16 %68 to i32
  %175 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %174
  %176 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %174, i32 1
  store i16 0, ptr %176, align 8
  %177 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %174, i32 3
  store ptr null, ptr %177, align 4
  %178 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %174, i32 4
  store ptr null, ptr %178, align 8
  %179 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %174, i32 5
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.ext4_extent_header, ptr %180, i32 0, i32 1
  %182 = load i16, ptr %181, align 2
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %240, label %184

184:                                              ; preds = %173
  %185 = zext i16 %182 to i32
  %186 = getelementptr i8, ptr %180, i32 12
  %187 = getelementptr i8, ptr %180, i32 24
  %188 = getelementptr %struct.ext4_extent, ptr %186, i32 %185
  %189 = getelementptr %struct.ext4_extent, ptr %188, i32 -1
  %190 = icmp ugt ptr %187, %189
  br i1 %190, label %206, label %191

191:                                              ; preds = %191, %184
  %192 = phi ptr [ %204, %191 ], [ %189, %184 ]
  %193 = phi ptr [ %203, %191 ], [ %187, %184 ]
  %194 = ptrtoint ptr %192 to i32
  %195 = ptrtoint ptr %193 to i32
  %196 = sub i32 %194, %195
  %197 = sdiv i32 %196, 24
  %198 = getelementptr %struct.ext4_extent, ptr %193, i32 %197
  %199 = load i32, ptr %198, align 4
  %200 = icmp ugt i32 %199, %1
  %201 = getelementptr %struct.ext4_extent, ptr %198, i32 -1
  %202 = getelementptr %struct.ext4_extent, ptr %198, i32 1
  %203 = select i1 %200, ptr %193, ptr %202
  %204 = select i1 %200, ptr %201, ptr %192
  %205 = icmp ugt ptr %203, %204
  br i1 %205, label %206, label %191

206:                                              ; preds = %191, %184
  %207 = phi ptr [ %187, %184 ], [ %203, %191 ]
  %208 = getelementptr %struct.ext4_extent, ptr %207, i32 -1
  store ptr %208, ptr %177, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %240, label %210

210:                                              ; preds = %206
  %211 = getelementptr %struct.ext4_extent, ptr %207, i32 -1, i32 3
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr %struct.ext4_extent, ptr %207, i32 -1, i32 2
  %215 = load i16, ptr %214, align 2
  %216 = zext i16 %215 to i64
  %217 = shl nuw nsw i64 %216, 32
  %218 = or i64 %217, %213
  store i64 %218, ptr %175, align 8
  br label %240

219:                                              ; preds = %147, %25
  %220 = phi ptr [ %27, %25 ], [ %70, %147 ]
  %221 = phi ptr [ inttoptr (i32 -117 to ptr), %25 ], [ %163, %147 ]
  %222 = icmp eq ptr %220, null
  br i1 %222, label %238, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ext4_ext_path, ptr %220, i32 0, i32 1
  %225 = load i16, ptr %224, align 8
  %226 = zext i16 %225 to i32
  br label %227

227:                                              ; preds = %234, %223
  %228 = phi i32 [ 0, %223 ], [ %235, %234 ]
  %229 = phi ptr [ %220, %223 ], [ %236, %234 ]
  %230 = getelementptr inbounds %struct.ext4_ext_path, ptr %229, i32 0, i32 6
  %231 = load ptr, ptr %230, align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %227
  tail call void @__brelse(ptr noundef nonnull %231) #13
  br label %234

234:                                              ; preds = %233, %227
  store ptr null, ptr %230, align 8
  %235 = add nuw nsw i32 %228, 1
  %236 = getelementptr %struct.ext4_ext_path, ptr %229, i32 1
  %237 = icmp eq i32 %228, %226
  br i1 %237, label %238, label %227

238:                                              ; preds = %234, %219
  tail call void @kfree(ptr noundef %220) #13
  br i1 %5, label %240, label %239

239:                                              ; preds = %238
  store ptr null, ptr %2, align 4
  br label %240

240:                                              ; preds = %239, %238, %210, %206, %173, %59, %51
  %241 = phi ptr [ %70, %210 ], [ %70, %206 ], [ inttoptr (i32 -12 to ptr), %59 ], [ inttoptr (i32 -12 to ptr), %51 ], [ %221, %239 ], [ %221, %238 ], [ %70, %173 ]
  ret ptr %241
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_next_allocated_block(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ext4_ext_path, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp eq i16 %6, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ext4_ext_path, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %9, %4
  %14 = getelementptr %struct.ext4_ext_path, ptr %0, i32 %7, i32 3
  %15 = getelementptr %struct.ext4_ext_path, ptr %0, i32 %7, i32 5
  br label %16

16:                                               ; preds = %43, %13
  %17 = phi i32 [ %7, %13 ], [ %44, %43 ]
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load ptr, ptr %14, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds %struct.ext4_extent_header, ptr %23, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr %struct.ext4_extent, ptr %23, i32 %26
  %28 = icmp eq ptr %20, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = getelementptr %struct.ext4_extent, ptr %20, i32 1
  br label %46

31:                                               ; preds = %16
  %32 = getelementptr %struct.ext4_ext_path, ptr %0, i32 %17, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr %struct.ext4_ext_path, ptr %0, i32 %17, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ext4_extent_header, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr %struct.ext4_extent_idx, ptr %35, i32 %38
  %40 = icmp eq ptr %33, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = getelementptr %struct.ext4_extent_idx, ptr %33, i32 1
  br label %46

43:                                               ; preds = %31, %22, %19
  %44 = add nsw i32 %17, -1
  %45 = icmp sgt i32 %17, 0
  br i1 %45, label %16, label %49

46:                                               ; preds = %41, %29
  %47 = phi ptr [ %42, %41 ], [ %30, %29 ]
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %43, %9
  %50 = phi i32 [ -1, %9 ], [ %48, %46 ], [ -1, %43 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_insert_extent(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = shl i32 %4, 8
  %10 = getelementptr inbounds %struct.ext4_extent, ptr %3, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = icmp ult i16 %11, -32767
  %14 = add nsw i32 %12, -32768
  %15 = select i1 %13, i32 %12, i32 %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %5
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_insert_extent, i32 noundef 1975, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.1) #13
  br label %891

18:                                               ; preds = %5
  %19 = getelementptr i8, ptr %1, i32 -202
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %21, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %21, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %18
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_insert_extent, i32 noundef 1982, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %21) #13
  br label %891

28:                                               ; preds = %18
  %29 = icmp ne ptr %23, null
  %30 = and i32 %4, 8
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %31, %29
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ext4_extent_header, ptr %25, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  br label %219

36:                                               ; preds = %28
  %37 = getelementptr i8, ptr %25, i32 12
  %38 = getelementptr inbounds %struct.ext4_extent_header, ptr %25, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr %struct.ext4_extent, ptr %37, i32 %40
  %42 = getelementptr %struct.ext4_extent, ptr %41, i32 -1
  %43 = icmp ult ptr %23, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load i32, ptr %23, align 4
  %46 = getelementptr inbounds %struct.ext4_extent, ptr %23, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = icmp ult i16 %47, -32767
  %50 = add nsw i32 %48, -32768
  %51 = select i1 %49, i32 %48, i32 %50
  %52 = add i32 %51, %45
  %53 = load i32, ptr %3, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = getelementptr %struct.ext4_extent, ptr %23, i32 1
  %57 = getelementptr %struct.ext4_extent, ptr %23, i32 1, i32 1
  %58 = load i16, ptr %57, align 4
  br label %142

59:                                               ; preds = %44, %36
  %60 = icmp ugt ptr %23, %37
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = load i32, ptr %3, align 4
  %63 = add i32 %62, %15
  %64 = load i32, ptr %23, align 4
  %65 = icmp ult i32 %63, %64
  %66 = sext i1 %65 to i32
  %67 = getelementptr %struct.ext4_extent, ptr %23, i32 %66
  br label %68

68:                                               ; preds = %61, %59
  %69 = phi ptr [ %23, %59 ], [ %67, %61 ]
  %70 = getelementptr inbounds %struct.ext4_extent, ptr %69, i32 0, i32 1
  %71 = load i16, ptr %70, align 4
  %72 = icmp ugt i16 %71, -32768
  %73 = xor i1 %13, %72
  br i1 %73, label %74, label %142

74:                                               ; preds = %68
  %75 = zext i16 %71 to i32
  %76 = icmp ult i16 %71, -32767
  %77 = add nuw nsw i32 %75, 32768
  %78 = select i1 %76, i32 %75, i32 %77
  %79 = load i32, ptr %69, align 4
  %80 = and i32 %78, 65535
  %81 = add i32 %79, %80
  %82 = load i32, ptr %3, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %142

84:                                               ; preds = %74
  %85 = add nuw nsw i32 %12, 32768
  %86 = select i1 %13, i32 %12, i32 %85
  %87 = and i32 %86, 65535
  %88 = add nuw nsw i32 %80, %87
  %89 = icmp ugt i32 %88, 32768
  %90 = icmp ugt i32 %88, 32767
  %91 = select i1 %72, i1 %90, i1 false
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %142, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.ext4_extent, ptr %69, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ext4_extent, ptr %69, i32 0, i32 2
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i64
  %100 = shl nuw nsw i64 %99, 32
  %101 = or i64 %100, %96
  %102 = zext i32 %80 to i64
  %103 = add nuw nsw i64 %101, %102
  %104 = getelementptr inbounds %struct.ext4_extent, ptr %3, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ext4_extent, ptr %3, i32 0, i32 2
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i64
  %110 = shl nuw nsw i64 %109, 32
  %111 = or i64 %110, %106
  %112 = icmp eq i64 %103, %111
  br i1 %112, label %113, label %142

113:                                              ; preds = %93
  %114 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %21, i32 6
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %119, ptr noundef nonnull %115, i32 noundef 1) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %891

122:                                              ; preds = %117
  %123 = load ptr, ptr %114, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %123) #13
  %124 = load i16, ptr %70, align 4
  %125 = load i16, ptr %10, align 4
  br label %126

126:                                              ; preds = %122, %113
  %127 = phi i16 [ %125, %122 ], [ %11, %113 ]
  %128 = phi i16 [ %124, %122 ], [ %71, %113 ]
  %129 = icmp ult i16 %128, -32767
  %130 = xor i16 %128, -32768
  %131 = select i1 %129, i16 %128, i16 %130
  %132 = icmp ult i16 %127, -32767
  %133 = xor i16 %127, -32768
  %134 = select i1 %132, i16 %127, i16 %133
  %135 = add i16 %134, %131
  store i16 %135, ptr %70, align 4
  br i1 %129, label %857, label %136

136:                                              ; preds = %126
  %137 = and i16 %135, 32767
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %140, !prof !8

139:                                              ; preds = %136
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

140:                                              ; preds = %136
  %141 = or i16 %135, -32768
  store i16 %141, ptr %70, align 4
  br label %857

142:                                              ; preds = %93, %84, %74, %68, %55
  %143 = phi i16 [ %58, %55 ], [ %71, %93 ], [ %71, %68 ], [ %71, %74 ], [ %71, %84 ]
  %144 = phi ptr [ %56, %55 ], [ %69, %93 ], [ %69, %68 ], [ %69, %74 ], [ %69, %84 ]
  %145 = icmp ugt i16 %11, -32768
  %146 = getelementptr inbounds %struct.ext4_extent, ptr %144, i32 0, i32 1
  %147 = icmp ult i16 %143, -32767
  %148 = xor i1 %145, %147
  br i1 %148, label %149, label %219

149:                                              ; preds = %142
  %150 = add nuw nsw i32 %12, 32768
  %151 = select i1 %13, i32 %12, i32 %150
  %152 = load i32, ptr %3, align 4
  %153 = and i32 %151, 65535
  %154 = add i32 %152, %153
  %155 = load i32, ptr %144, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %219

157:                                              ; preds = %149
  %158 = zext i16 %143 to i32
  %159 = add nuw nsw i32 %158, 32768
  %160 = select i1 %147, i32 %158, i32 %159
  %161 = and i32 %160, 65535
  %162 = add nuw nsw i32 %161, %153
  %163 = icmp ugt i32 %162, 32768
  %164 = icmp ugt i32 %162, 32767
  %165 = select i1 %145, i1 %164, i1 false
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %219, label %167

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.ext4_extent, ptr %3, i32 0, i32 3
  %169 = load i32, ptr %168, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ext4_extent, ptr %3, i32 0, i32 2
  %172 = load i16, ptr %171, align 2
  %173 = zext i16 %172 to i64
  %174 = shl nuw nsw i64 %173, 32
  %175 = or i64 %174, %170
  %176 = zext i32 %153 to i64
  %177 = add nuw nsw i64 %175, %176
  %178 = getelementptr inbounds %struct.ext4_extent, ptr %144, i32 0, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.ext4_extent, ptr %144, i32 0, i32 2
  %182 = load i16, ptr %181, align 2
  %183 = zext i16 %182 to i64
  %184 = shl nuw nsw i64 %183, 32
  %185 = or i64 %184, %180
  %186 = icmp eq i64 %177, %185
  br i1 %186, label %187, label %219

187:                                              ; preds = %167
  %188 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %21, i32 6
  %189 = load ptr, ptr %188, align 8
  %190 = icmp eq ptr %189, null
  br i1 %190, label %200, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %193 = load ptr, ptr %192, align 4
  %194 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %193, ptr noundef nonnull %189, i32 noundef 1) #13
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %891

196:                                              ; preds = %191
  %197 = load ptr, ptr %188, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %197) #13
  %198 = load i16, ptr %146, align 4
  %199 = load i32, ptr %3, align 4
  br label %200

200:                                              ; preds = %196, %187
  %201 = phi i32 [ %199, %196 ], [ %152, %187 ]
  %202 = phi i16 [ %198, %196 ], [ %143, %187 ]
  %203 = icmp ult i16 %202, -32767
  store i32 %201, ptr %144, align 4
  %204 = load i32, ptr %168, align 4
  %205 = load i16, ptr %171, align 2
  store i32 %204, ptr %178, align 4
  store i16 %205, ptr %181, align 2
  %206 = xor i16 %202, -32768
  %207 = select i1 %203, i16 %202, i16 %206
  %208 = load i16, ptr %10, align 4
  %209 = icmp ult i16 %208, -32767
  %210 = xor i16 %208, -32768
  %211 = select i1 %209, i16 %208, i16 %210
  %212 = add i16 %211, %207
  store i16 %212, ptr %146, align 4
  br i1 %203, label %857, label %213

213:                                              ; preds = %200
  %214 = and i16 %212, 32767
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %217, !prof !8

216:                                              ; preds = %213
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

217:                                              ; preds = %213
  %218 = or i16 %212, -32768
  store i16 %218, ptr %146, align 4
  br label %857

219:                                              ; preds = %167, %157, %149, %142, %33
  %220 = phi i16 [ %35, %33 ], [ %39, %157 ], [ %39, %149 ], [ %39, %142 ], [ %39, %167 ]
  %221 = getelementptr inbounds %struct.ext4_extent_header, ptr %25, i32 0, i32 2
  %222 = load i16, ptr %221, align 4
  %223 = icmp ult i16 %220, %222
  br i1 %223, label %798, label %224

224:                                              ; preds = %219
  %225 = zext i16 %220 to i32
  %226 = getelementptr i8, ptr %25, i32 12
  %227 = getelementptr %struct.ext4_extent, ptr %226, i32 %225
  %228 = getelementptr %struct.ext4_extent, ptr %227, i32 -1
  %229 = load i32, ptr %3, align 4
  %230 = load i32, ptr %228, align 4
  %231 = icmp ugt i32 %229, %230
  br i1 %231, label %232, label %281

232:                                              ; preds = %224
  %233 = icmp eq ptr %8, null
  br i1 %233, label %234, label %235, !prof !8

234:                                              ; preds = %232
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1670, 0\0A.popsection", ""() #13, !srcloc !21
  unreachable

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.ext4_ext_path, ptr %8, i32 0, i32 1
  %237 = load i16, ptr %236, align 8
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %281, label %239

239:                                              ; preds = %235
  %240 = zext i16 %237 to i32
  br label %241

241:                                              ; preds = %244, %239
  %242 = phi i32 [ %240, %239 ], [ %245, %244 ]
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %281

244:                                              ; preds = %241
  %245 = add nsw i32 %242, -1
  %246 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %245, i32 4
  %247 = load ptr, ptr %246, align 8
  %248 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %245, i32 5
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.ext4_extent_header, ptr %249, i32 0, i32 1
  %251 = load i16, ptr %250, align 2
  %252 = zext i16 %251 to i32
  %253 = getelementptr %struct.ext4_extent_idx, ptr %249, i32 %252
  %254 = icmp eq ptr %247, %253
  br i1 %254, label %241, label %255

255:                                              ; preds = %244
  %256 = getelementptr %struct.ext4_extent_idx, ptr %247, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %281, label %259

259:                                              ; preds = %255
  %260 = tail call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %257, ptr noundef null, i32 noundef %4)
  %261 = icmp ugt ptr %260, inttoptr (i32 -4096 to ptr)
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = ptrtoint ptr %260 to i32
  br label %891

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.ext4_ext_path, ptr %260, i32 0, i32 1
  %266 = load i16, ptr %265, align 8
  %267 = load i16, ptr %236, align 8
  %268 = icmp eq i16 %266, %267
  br i1 %268, label %270, label %269, !prof !10

269:                                              ; preds = %264
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2076, 0\0A.popsection", ""() #13, !srcloc !22
  unreachable

270:                                              ; preds = %264
  %271 = getelementptr %struct.ext4_ext_path, ptr %260, i32 %21, i32 5
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.ext4_extent_header, ptr %272, i32 0, i32 1
  %274 = load i16, ptr %273, align 2
  %275 = getelementptr inbounds %struct.ext4_extent_header, ptr %272, i32 0, i32 2
  %276 = load i16, ptr %275, align 4
  %277 = icmp ult i16 %274, %276
  br i1 %277, label %798, label %278

278:                                              ; preds = %270
  %279 = load ptr, ptr %2, align 4
  %280 = load i16, ptr %19, align 2
  br label %281

281:                                              ; preds = %278, %255, %241, %235, %224
  %282 = phi i16 [ %20, %255 ], [ %280, %278 ], [ %20, %224 ], [ %20, %235 ], [ %20, %241 ]
  %283 = phi ptr [ %8, %255 ], [ %279, %278 ], [ %8, %224 ], [ %8, %235 ], [ %8, %241 ]
  %284 = phi ptr [ null, %255 ], [ %260, %278 ], [ null, %224 ], [ null, %235 ], [ null, %241 ]
  %285 = and i32 %9, 9216
  %286 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %287 = getelementptr i8, ptr %1, i32 -192
  %288 = getelementptr i8, ptr %1, i32 -188
  %289 = or i32 %285, 512
  %290 = getelementptr i8, ptr %1, i32 -208
  %291 = getelementptr i8, ptr %1, i32 -206
  %292 = getelementptr i8, ptr %1, i32 -204
  br label %293

293:                                              ; preds = %779, %281
  %294 = phi i16 [ %282, %281 ], [ %780, %779 ]
  %295 = phi ptr [ %283, %281 ], [ %777, %779 ]
  %296 = zext i16 %294 to i32
  %297 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %296
  %298 = icmp eq i16 %294, 0
  br i1 %298, label %313, label %299

299:                                              ; preds = %309, %293
  %300 = phi i32 [ %310, %309 ], [ %296, %293 ]
  %301 = phi ptr [ %311, %309 ], [ %297, %293 ]
  %302 = getelementptr inbounds %struct.ext4_ext_path, ptr %301, i32 0, i32 5
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.ext4_extent_header, ptr %303, i32 0, i32 1
  %305 = load i16, ptr %304, align 2
  %306 = getelementptr inbounds %struct.ext4_extent_header, ptr %303, i32 0, i32 2
  %307 = load i16, ptr %306, align 4
  %308 = icmp ult i16 %305, %307
  br i1 %308, label %313, label %309

309:                                              ; preds = %299
  %310 = add nsw i32 %300, -1
  %311 = getelementptr %struct.ext4_ext_path, ptr %301, i32 -1
  %312 = icmp sgt i32 %300, 1
  br i1 %312, label %299, label %313

313:                                              ; preds = %309, %299, %293
  %314 = phi ptr [ %297, %293 ], [ %301, %299 ], [ %295, %309 ]
  %315 = phi i32 [ 0, %293 ], [ %300, %299 ], [ 0, %309 ]
  %316 = getelementptr inbounds %struct.ext4_ext_path, ptr %314, i32 0, i32 5
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.ext4_extent_header, ptr %317, i32 0, i32 1
  %319 = load i16, ptr %318, align 2
  %320 = getelementptr inbounds %struct.ext4_extent_header, ptr %317, i32 0, i32 2
  %321 = load i16, ptr %320, align 4
  %322 = icmp ult i16 %319, %321
  br i1 %322, label %323, label %682

323:                                              ; preds = %313
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4
  %324 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %296, i32 3
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %296, i32 5
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr inbounds %struct.ext4_extent_header, ptr %327, i32 0, i32 2
  %329 = load i16, ptr %328, align 4
  %330 = icmp eq i16 %329, 0
  %331 = zext i16 %329 to i32
  %332 = getelementptr i8, ptr %327, i32 12
  %333 = getelementptr %struct.ext4_extent, ptr %332, i32 %331
  %334 = getelementptr %struct.ext4_extent, ptr %333, i32 -1
  %335 = select i1 %330, ptr null, ptr %334
  %336 = icmp ugt ptr %325, %335
  br i1 %336, label %337, label %338, !prof !8

337:                                              ; preds = %323
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1070, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.18) #13
  br label %673

338:                                              ; preds = %323
  %339 = icmp eq ptr %325, %335
  %340 = getelementptr %struct.ext4_extent, ptr %325, i32 1
  %341 = select i1 %339, ptr %3, ptr %340
  %342 = load i32, ptr %341, align 4
  %343 = shl nuw nsw i32 %296, 3
  %344 = call noalias align 64 ptr @__kmalloc(i32 noundef %343, i32 noundef 3392) #14
  %345 = icmp eq ptr %344, null
  br i1 %345, label %673, label %346

346:                                              ; preds = %338
  %347 = sub i32 %296, %315
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %397

349:                                              ; preds = %346
  %350 = icmp eq ptr %295, null
  %351 = getelementptr inbounds %struct.ext4_ext_path, ptr %295, i32 0, i32 1
  br label %352

352:                                              ; preds = %393, %349
  %353 = phi i32 [ 0, %349 ], [ %395, %393 ]
  %354 = load i32, ptr %3, align 4
  br i1 %350, label %387, label %355

355:                                              ; preds = %352
  %356 = load i16, ptr %351, align 8
  %357 = zext i16 %356 to i32
  %358 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %357, i32 3
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %380, label %361

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.ext4_extent, ptr %359, i32 0, i32 3
  %363 = load i32, ptr %362, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds %struct.ext4_extent, ptr %359, i32 0, i32 2
  %366 = load i16, ptr %365, align 2
  %367 = zext i16 %366 to i64
  %368 = shl nuw nsw i64 %367, 32
  %369 = or i64 %368, %364
  %370 = load i32, ptr %359, align 4
  %371 = icmp ult i32 %370, %354
  br i1 %371, label %372, label %376

372:                                              ; preds = %361
  %373 = sub i32 %354, %370
  %374 = zext i32 %373 to i64
  %375 = add nuw nsw i64 %369, %374
  br label %389

376:                                              ; preds = %361
  %377 = sub i32 %370, %354
  %378 = zext i32 %377 to i64
  %379 = sub nsw i64 %369, %378
  br label %389

380:                                              ; preds = %355
  %381 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %357, i32 6
  %382 = load ptr, ptr %381, align 8
  %383 = icmp eq ptr %382, null
  br i1 %383, label %387, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.buffer_head, ptr %382, i32 0, i32 3
  %386 = load i64, ptr %385, align 8
  br label %389

387:                                              ; preds = %380, %352
  %388 = call i64 @ext4_inode_to_goal_block(ptr noundef %1) #13
  br label %389

389:                                              ; preds = %387, %384, %376, %372
  %390 = phi i64 [ %388, %387 ], [ %379, %376 ], [ %375, %372 ], [ %386, %384 ]
  %391 = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %390, i32 noundef %285, ptr noundef null, ptr noundef nonnull %7) #13
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %657, label %393

393:                                              ; preds = %389
  %394 = getelementptr i64, ptr %344, i32 %353
  store i64 %391, ptr %394, align 8
  %395 = add nuw nsw i32 %353, 1
  %396 = icmp eq i32 %395, %347
  br i1 %396, label %397, label %352

397:                                              ; preds = %393, %346
  %398 = phi i32 [ 0, %346 ], [ %347, %393 ]
  %399 = add nsw i32 %398, -1
  %400 = getelementptr i64, ptr %344, i32 %399
  %401 = load i64, ptr %400, align 8
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %404, !prof !8

403:                                              ; preds = %397
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1114, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.19) #13
  store i32 -117, ptr %7, align 4
  br label %659

404:                                              ; preds = %397
  %405 = load ptr, ptr %286, align 4
  %406 = getelementptr inbounds %struct.super_block, ptr %405, i32 0, i32 20
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr inbounds %struct.super_block, ptr %405, i32 0, i32 3
  %409 = load i32, ptr %408, align 16
  %410 = call ptr @__getblk_gfp(ptr noundef %407, i64 noundef %401, i32 noundef %409, i32 noundef 3144) #13
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %413, !prof !8

412:                                              ; preds = %404
  store i32 -12, ptr %7, align 4
  br label %659

413:                                              ; preds = %404
  %414 = load volatile i32, ptr %410, align 4
  %415 = and i32 %414, 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %413
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %410) #13, !srcloc !17
  %418 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %410, ptr nonnull %410, i32 4, ptr nonnull elementtype(i32) %410) #13, !srcloc !23
  %419 = extractvalue { i32, i32, i32 } %418, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %420 = and i32 %419, 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %417, %413
  call void @__lock_buffer(ptr noundef nonnull %410) #13
  br label %423

423:                                              ; preds = %422, %417
  %424 = load ptr, ptr %286, align 4
  %425 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1126, ptr noundef %0, ptr noundef %424, ptr noundef nonnull %410, i32 noundef 1) #13
  store i32 %425, ptr %7, align 4
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %650

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.buffer_head, ptr %410, i32 0, i32 5
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr inbounds %struct.ext4_extent_header, ptr %429, i32 0, i32 1
  store i16 0, ptr %430, align 2
  %431 = load ptr, ptr %286, align 4
  %432 = getelementptr inbounds %struct.super_block, ptr %431, i32 0, i32 3
  %433 = load i32, ptr %432, align 16
  %434 = add i32 %433, -12
  %435 = udiv i32 %434, 12
  %436 = trunc i32 %435 to i16
  %437 = getelementptr inbounds %struct.ext4_extent_header, ptr %429, i32 0, i32 2
  store i16 %436, ptr %437, align 4
  store i16 -3318, ptr %429, align 4
  %438 = getelementptr inbounds %struct.ext4_extent_header, ptr %429, i32 0, i32 3
  store i16 0, ptr %438, align 2
  %439 = getelementptr inbounds %struct.ext4_extent_header, ptr %429, i32 0, i32 4
  store i32 0, ptr %439, align 4
  %440 = load ptr, ptr %326, align 4
  %441 = getelementptr inbounds %struct.ext4_extent_header, ptr %440, i32 0, i32 1
  %442 = load i16, ptr %441, align 2
  %443 = getelementptr inbounds %struct.ext4_extent_header, ptr %440, i32 0, i32 2
  %444 = load i16, ptr %443, align 4
  %445 = zext i16 %444 to i32
  %446 = icmp eq i16 %442, %444
  br i1 %446, label %449, label %447, !prof !10

447:                                              ; preds = %427
  %448 = zext i16 %442 to i32
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1142, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %448, i32 noundef %445) #13
  store i32 -117, ptr %7, align 4
  br label %650

449:                                              ; preds = %427
  %450 = icmp eq i16 %442, 0
  %451 = getelementptr i8, ptr %440, i32 12
  %452 = getelementptr %struct.ext4_extent, ptr %451, i32 %445
  %453 = getelementptr %struct.ext4_extent, ptr %452, i32 -1
  %454 = select i1 %450, ptr null, ptr %453
  %455 = load ptr, ptr %324, align 4
  %456 = getelementptr %struct.ext4_extent, ptr %455, i32 1
  store ptr %456, ptr %324, align 4
  %457 = ptrtoint ptr %454 to i32
  %458 = ptrtoint ptr %455 to i32
  %459 = sub i32 %457, %458
  %460 = sdiv exact i32 %459, 12
  %461 = icmp eq ptr %454, %455
  br i1 %461, label %462, label %464

462:                                              ; preds = %449
  %463 = load i16, ptr %430, align 2
  br label %469

464:                                              ; preds = %449
  %465 = getelementptr i8, ptr %429, i32 12
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %465, ptr align 4 %456, i32 %459, i1 false) #13
  %466 = trunc i32 %460 to i16
  %467 = load i16, ptr %430, align 2
  %468 = add i16 %467, %466
  store i16 %468, ptr %430, align 2
  br label %469

469:                                              ; preds = %464, %462
  %470 = phi i16 [ %463, %462 ], [ %468, %464 ]
  %471 = zext i16 %470 to i32
  %472 = mul nuw nsw i32 %471, 12
  %473 = add nuw nsw i32 %472, 12
  %474 = load ptr, ptr %428, align 4
  %475 = getelementptr i8, ptr %474, i32 %473
  %476 = load ptr, ptr %286, align 4
  %477 = getelementptr inbounds %struct.super_block, ptr %476, i32 0, i32 3
  %478 = load i32, ptr %477, align 16
  %479 = sub i32 %478, %473
  call void @llvm.memset.p0.i32(ptr align 1 %475, i8 0, i32 %479, i1 false) #13
  call fastcc void @ext4_extent_block_csum_set(ptr noundef %1, ptr noundef %429) #13
  %480 = load volatile i32, ptr %410, align 4
  %481 = and i32 %480, 1
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %469
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %410) #13
  br label %484

484:                                              ; preds = %483, %469
  call void @unlock_buffer(ptr noundef nonnull %410) #13
  %485 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1164, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %410) #13
  store i32 %485, ptr %7, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %650

487:                                              ; preds = %484
  call void @__brelse(ptr noundef nonnull %410) #13
  br i1 %461, label %507, label %488

488:                                              ; preds = %487
  %489 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %296, i32 6
  %490 = load ptr, ptr %489, align 8
  %491 = icmp eq ptr %490, null
  br i1 %491, label %499, label %492

492:                                              ; preds = %488
  %493 = load ptr, ptr %286, align 4
  %494 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %493, ptr noundef nonnull %490, i32 noundef 1) #13
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %492
  %497 = load ptr, ptr %489, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %497) #13
  br label %499

498:                                              ; preds = %492
  store i32 %494, ptr %7, align 4
  br label %659

499:                                              ; preds = %496, %488
  store i32 0, ptr %7, align 4
  %500 = load ptr, ptr %326, align 4
  %501 = getelementptr inbounds %struct.ext4_extent_header, ptr %500, i32 0, i32 1
  %502 = trunc i32 %460 to i16
  %503 = load i16, ptr %501, align 2
  %504 = sub i16 %503, %502
  store i16 %504, ptr %501, align 2
  %505 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1176, ptr noundef %0, ptr noundef %1, ptr noundef %297) #13
  store i32 %505, ptr %7, align 4
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %659

507:                                              ; preds = %499, %487
  %508 = add i32 %347, -1
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %517, label %510, !prof !8

510:                                              ; preds = %507
  %511 = icmp eq i32 %508, 0
  br i1 %511, label %646, label %512

512:                                              ; preds = %510
  %513 = lshr i64 %401, 32
  %514 = trunc i64 %513 to i16
  %515 = trunc i64 %401 to i32
  %516 = add i32 %347, -2
  br label %518

517:                                              ; preds = %507
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1185, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %508) #13
  store i32 -117, ptr %7, align 4
  br label %659

518:                                              ; preds = %640, %512
  %519 = phi i32 [ %641, %640 ], [ %516, %512 ]
  %520 = phi i32 [ %524, %640 ], [ %296, %512 ]
  %521 = phi i32 [ %643, %640 ], [ %515, %512 ]
  %522 = phi i16 [ %645, %640 ], [ %514, %512 ]
  %523 = phi i32 [ %525, %640 ], [ %399, %512 ]
  %524 = add i32 %520, -1
  %525 = add i32 %523, -1
  %526 = getelementptr i64, ptr %344, i32 %525
  %527 = load i64, ptr %526, align 8
  %528 = load ptr, ptr %286, align 4
  %529 = getelementptr inbounds %struct.super_block, ptr %528, i32 0, i32 20
  %530 = load ptr, ptr %529, align 4
  %531 = getelementptr inbounds %struct.super_block, ptr %528, i32 0, i32 3
  %532 = load i32, ptr %531, align 16
  %533 = call ptr @__getblk_gfp(ptr noundef %530, i64 noundef %527, i32 noundef %532, i32 noundef 8) #13
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %536, !prof !8

535:                                              ; preds = %518
  store i32 -12, ptr %7, align 4
  br label %659

536:                                              ; preds = %518
  %537 = load volatile i32, ptr %533, align 4
  %538 = and i32 %537, 4
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %536
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %533) #13, !srcloc !17
  %541 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %533, ptr nonnull %533, i32 4, ptr nonnull elementtype(i32) %533) #13, !srcloc !23
  %542 = extractvalue { i32, i32, i32 } %541, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %543 = and i32 %542, 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %546, label %545

545:                                              ; preds = %540, %536
  call void @__lock_buffer(ptr noundef nonnull %533) #13
  br label %546

546:                                              ; preds = %545, %540
  %547 = load ptr, ptr %286, align 4
  %548 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1205, ptr noundef %0, ptr noundef %547, ptr noundef nonnull %533, i32 noundef 1) #13
  store i32 %548, ptr %7, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %650

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.buffer_head, ptr %533, i32 0, i32 5
  %552 = load ptr, ptr %551, align 4
  %553 = getelementptr inbounds %struct.ext4_extent_header, ptr %552, i32 0, i32 1
  store i16 1, ptr %553, align 2
  store i16 -3318, ptr %552, align 4
  %554 = load ptr, ptr %286, align 4
  %555 = getelementptr inbounds %struct.super_block, ptr %554, i32 0, i32 3
  %556 = load i32, ptr %555, align 16
  %557 = add i32 %556, -12
  %558 = udiv i32 %557, 12
  %559 = trunc i32 %558 to i16
  %560 = getelementptr inbounds %struct.ext4_extent_header, ptr %552, i32 0, i32 2
  store i16 %559, ptr %560, align 4
  %561 = trunc i32 %524 to i16
  %562 = sub i16 %294, %561
  %563 = getelementptr inbounds %struct.ext4_extent_header, ptr %552, i32 0, i32 3
  store i16 %562, ptr %563, align 2
  %564 = getelementptr inbounds %struct.ext4_extent_header, ptr %552, i32 0, i32 4
  store i32 0, ptr %564, align 4
  %565 = getelementptr i8, ptr %552, i32 12
  store i32 %342, ptr %565, align 4
  %566 = getelementptr i8, ptr %552, i32 16
  store i32 %521, ptr %566, align 4
  %567 = getelementptr i8, ptr %552, i32 20
  store i16 %522, ptr %567, align 4
  %568 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %524
  %569 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %524, i32 5
  %570 = load ptr, ptr %569, align 4
  %571 = getelementptr inbounds %struct.ext4_extent_header, ptr %570, i32 0, i32 2
  %572 = load i16, ptr %571, align 4
  %573 = icmp eq i16 %572, 0
  %574 = zext i16 %572 to i32
  %575 = getelementptr %struct.ext4_extent_idx, ptr %570, i32 %574
  %576 = select i1 %573, ptr null, ptr %575
  %577 = getelementptr inbounds %struct.ext4_extent_header, ptr %570, i32 0, i32 1
  %578 = load i16, ptr %577, align 2
  %579 = zext i16 %578 to i32
  %580 = getelementptr %struct.ext4_extent_idx, ptr %570, i32 %579
  %581 = icmp eq ptr %576, %580
  br i1 %581, label %586, label %582, !prof !10

582:                                              ; preds = %550
  %583 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %524, i32 3
  %584 = load ptr, ptr %583, align 4
  %585 = load i32, ptr %584, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1227, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %585) #13
  store i32 -117, ptr %7, align 4
  br label %650

586:                                              ; preds = %550
  %587 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %524, i32 4
  %588 = load ptr, ptr %587, align 8
  %589 = getelementptr %struct.ext4_extent_idx, ptr %588, i32 1
  store ptr %589, ptr %587, align 8
  %590 = ptrtoint ptr %576 to i32
  %591 = ptrtoint ptr %588 to i32
  %592 = sub i32 %590, %591
  %593 = sdiv exact i32 %592, 12
  %594 = icmp eq ptr %576, %588
  br i1 %594, label %595, label %597

595:                                              ; preds = %586
  %596 = load i16, ptr %553, align 2
  br label %602

597:                                              ; preds = %586
  %598 = getelementptr i8, ptr %552, i32 24
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %598, ptr align 4 %589, i32 %592, i1 false) #13
  %599 = trunc i32 %593 to i16
  %600 = load i16, ptr %553, align 2
  %601 = add i16 %600, %599
  store i16 %601, ptr %553, align 2
  br label %602

602:                                              ; preds = %597, %595
  %603 = phi i16 [ %596, %595 ], [ %601, %597 ]
  %604 = zext i16 %603 to i32
  %605 = mul nuw nsw i32 %604, 12
  %606 = add nuw nsw i32 %605, 12
  %607 = load ptr, ptr %551, align 4
  %608 = getelementptr i8, ptr %607, i32 %606
  %609 = load ptr, ptr %286, align 4
  %610 = getelementptr inbounds %struct.super_block, ptr %609, i32 0, i32 3
  %611 = load i32, ptr %610, align 16
  %612 = sub i32 %611, %606
  call void @llvm.memset.p0.i32(ptr align 1 %608, i8 0, i32 %612, i1 false) #13
  call fastcc void @ext4_extent_block_csum_set(ptr noundef %1, ptr noundef %552) #13
  %613 = load volatile i32, ptr %533, align 4
  %614 = and i32 %613, 1
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %602
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %533) #13
  br label %617

617:                                              ; preds = %616, %602
  call void @unlock_buffer(ptr noundef nonnull %533) #13
  %618 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1250, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %533) #13
  store i32 %618, ptr %7, align 4
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %650

620:                                              ; preds = %617
  call void @__brelse(ptr noundef nonnull %533) #13
  br i1 %594, label %640, label %621

621:                                              ; preds = %620
  %622 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %524, i32 6
  %623 = load ptr, ptr %622, align 8
  %624 = icmp eq ptr %623, null
  br i1 %624, label %632, label %625

625:                                              ; preds = %621
  %626 = load ptr, ptr %286, align 4
  %627 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %626, ptr noundef nonnull %623, i32 noundef 1) #13
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %631

629:                                              ; preds = %625
  %630 = load ptr, ptr %622, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %630) #13
  br label %632

631:                                              ; preds = %625
  store i32 %627, ptr %7, align 4
  br label %659

632:                                              ; preds = %629, %621
  store i32 0, ptr %7, align 4
  %633 = load ptr, ptr %569, align 4
  %634 = getelementptr inbounds %struct.ext4_extent_header, ptr %633, i32 0, i32 1
  %635 = trunc i32 %593 to i16
  %636 = load i16, ptr %634, align 2
  %637 = sub i16 %636, %635
  store i16 %637, ptr %634, align 2
  %638 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1262, ptr noundef %0, ptr noundef %1, ptr noundef %568) #13
  store i32 %638, ptr %7, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %659

640:                                              ; preds = %632, %620
  %641 = add i32 %519, -1
  %642 = icmp eq i32 %519, 0
  %643 = trunc i64 %527 to i32
  %644 = lshr i64 %527, 32
  %645 = trunc i64 %644 to i16
  br i1 %642, label %646, label %518

646:                                              ; preds = %640, %510
  %647 = phi i64 [ %401, %510 ], [ %527, %640 ]
  %648 = getelementptr %struct.ext4_ext_path, ptr %295, i32 %315
  %649 = call fastcc i32 @ext4_ext_insert_index(ptr noundef %0, ptr noundef %1, ptr noundef %648, i32 noundef %342, i64 noundef %647) #13
  store i32 %649, ptr %7, align 4
  br label %659

650:                                              ; preds = %617, %582, %546, %484, %447, %423
  %651 = phi ptr [ %410, %423 ], [ %410, %447 ], [ %410, %484 ], [ %533, %582 ], [ %533, %546 ], [ %533, %617 ]
  %652 = load volatile i32, ptr %651, align 4
  %653 = and i32 %652, 4
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %656, label %655

655:                                              ; preds = %650
  call void @unlock_buffer(ptr noundef nonnull %651) #13
  br label %656

656:                                              ; preds = %655, %650
  call void @__brelse(ptr noundef nonnull %651) #13
  br label %657

657:                                              ; preds = %656, %389
  %658 = load i32, ptr %7, align 4
  br label %659

659:                                              ; preds = %657, %646, %632, %631, %535, %517, %499, %498, %412, %403
  %660 = phi i32 [ %658, %657 ], [ %649, %646 ], [ -12, %631 ], [ -12, %535 ], [ -12, %517 ], [ %505, %499 ], [ -12, %498 ], [ -12, %412 ], [ -12, %403 ], [ -12, %632 ]
  %661 = icmp ne i32 %660, 0
  %662 = icmp ne i16 %294, 0
  %663 = select i1 %661, i1 %662, i1 false
  br i1 %663, label %664, label %675

664:                                              ; preds = %670, %659
  %665 = phi i32 [ %671, %670 ], [ 0, %659 ]
  %666 = getelementptr i64, ptr %344, i32 %665
  %667 = load i64, ptr %666, align 8
  %668 = icmp eq i64 %667, 0
  br i1 %668, label %670, label %669

669:                                              ; preds = %664
  call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %667, i32 noundef 1, i32 noundef 1) #13
  br label %670

670:                                              ; preds = %669, %664
  %671 = add nuw nsw i32 %665, 1
  %672 = icmp eq i32 %671, %296
  br i1 %672, label %675, label %664

673:                                              ; preds = %338, %337
  %674 = phi i32 [ -12, %338 ], [ -117, %337 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %871

675:                                              ; preds = %670, %659
  call void @kfree(ptr noundef nonnull %344) #13
  %676 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %871

678:                                              ; preds = %675
  %679 = load i32, ptr %3, align 4
  %680 = call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %679, ptr noundef %2, i32 noundef %4) #13
  %681 = icmp ugt ptr %680, inttoptr (i32 -4096 to ptr)
  br i1 %681, label %789, label %793

682:                                              ; preds = %313
  %683 = load ptr, ptr %286, align 4
  %684 = getelementptr inbounds %struct.super_block, ptr %683, i32 0, i32 27
  %685 = load ptr, ptr %684, align 4
  %686 = getelementptr inbounds %struct.ext4_sb_info, ptr %685, i32 0, i32 15
  %687 = load ptr, ptr %686, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  br i1 %298, label %701, label %688

688:                                              ; preds = %682
  %689 = load i32, ptr %287, align 4
  %690 = zext i32 %689 to i64
  %691 = load i16, ptr %288, align 4
  %692 = zext i16 %691 to i64
  %693 = shl nuw nsw i64 %692, 32
  %694 = or i64 %693, %690
  %695 = getelementptr inbounds %struct.ext4_super_block, ptr %687, i32 0, i32 5
  %696 = load i32, ptr %695, align 4
  %697 = zext i32 %696 to i64
  %698 = icmp ugt i64 %694, %697
  br i1 %698, label %699, label %701

699:                                              ; preds = %688
  %700 = add nsw i64 %694, -1
  br label %703

701:                                              ; preds = %688, %682
  %702 = call i64 @ext4_inode_to_goal_block(ptr noundef %1) #13
  br label %703

703:                                              ; preds = %701, %699
  %704 = phi i64 [ %700, %699 ], [ %702, %701 ]
  %705 = phi i32 [ %289, %699 ], [ %285, %701 ]
  %706 = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %704, i32 noundef %705, ptr noundef null, ptr noundef nonnull %6) #13
  %707 = icmp eq i64 %706, 0
  br i1 %707, label %772, label %708

708:                                              ; preds = %703
  %709 = load ptr, ptr %286, align 4
  %710 = getelementptr inbounds %struct.super_block, ptr %709, i32 0, i32 20
  %711 = load ptr, ptr %710, align 4
  %712 = getelementptr inbounds %struct.super_block, ptr %709, i32 0, i32 3
  %713 = load i32, ptr %712, align 16
  %714 = call ptr @__getblk_gfp(ptr noundef %711, i64 noundef %706, i32 noundef %713, i32 noundef 3144) #13
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %717, !prof !8

716:                                              ; preds = %708
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %871

717:                                              ; preds = %708
  %718 = load volatile i32, ptr %714, align 4
  %719 = and i32 %718, 4
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %726

721:                                              ; preds = %717
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %714) #13, !srcloc !17
  %722 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %714, ptr nonnull %714, i32 4, ptr nonnull elementtype(i32) %714) #13, !srcloc !23
  %723 = extractvalue { i32, i32, i32 } %722, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  %724 = and i32 %723, 4
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %727, label %726

726:                                              ; preds = %721, %717
  call void @__lock_buffer(ptr noundef nonnull %714) #13
  br label %727

727:                                              ; preds = %726, %721
  %728 = load ptr, ptr %286, align 4
  %729 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_ext_grow_indepth, i32 noundef 1332, ptr noundef %0, ptr noundef %728, ptr noundef nonnull %714, i32 noundef 1) #13
  store i32 %729, ptr %6, align 4
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %732, label %731

731:                                              ; preds = %727
  call void @unlock_buffer(ptr noundef nonnull %714) #13
  br label %771

732:                                              ; preds = %727
  %733 = getelementptr inbounds %struct.buffer_head, ptr %714, i32 0, i32 5
  %734 = load ptr, ptr %733, align 4
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(60) %734, ptr noundef align 8 dereferenceable(60) %290, i32 60, i1 false) #13
  %735 = load ptr, ptr %733, align 4
  %736 = getelementptr i8, ptr %735, i32 60
  %737 = load ptr, ptr %286, align 4
  %738 = getelementptr inbounds %struct.super_block, ptr %737, i32 0, i32 3
  %739 = load i32, ptr %738, align 16
  %740 = add i32 %739, -60
  call void @llvm.memset.p0.i32(ptr align 1 %736, i8 0, i32 %740, i1 false) #13
  %741 = load ptr, ptr %733, align 4
  %742 = load ptr, ptr %286, align 4
  %743 = getelementptr inbounds %struct.super_block, ptr %742, i32 0, i32 3
  %744 = load i32, ptr %743, align 16
  %745 = add i32 %744, -12
  %746 = udiv i32 %745, 12
  %747 = trunc i32 %746 to i16
  %748 = getelementptr inbounds %struct.ext4_extent_header, ptr %741, i32 0, i32 2
  store i16 %747, ptr %748, align 4
  store i16 -3318, ptr %741, align 4
  call fastcc void @ext4_extent_block_csum_set(ptr noundef %1, ptr noundef %741) #13
  %749 = load volatile i32, ptr %714, align 4
  %750 = and i32 %749, 1
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %753

752:                                              ; preds = %732
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %714) #13
  br label %753

753:                                              ; preds = %752, %732
  %754 = load volatile i32, ptr %714, align 4
  %755 = and i32 %754, 16777216
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %758

757:                                              ; preds = %753
  call void @_set_bit(i32 noundef 24, ptr noundef nonnull %714) #13
  br label %758

758:                                              ; preds = %757, %753
  call void @unlock_buffer(ptr noundef nonnull %714) #13
  %759 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ext_grow_indepth, i32 noundef 1358, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %714) #13
  store i32 %759, ptr %6, align 4
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %771

761:                                              ; preds = %758
  store i16 1, ptr %291, align 2
  %762 = trunc i64 %706 to i32
  store i32 %762, ptr %287, align 4
  %763 = lshr i64 %706, 32
  %764 = trunc i64 %763 to i16
  store i16 %764, ptr %288, align 4
  %765 = load i16, ptr %19, align 2
  %766 = icmp eq i16 %765, 0
  br i1 %766, label %767, label %768

767:                                              ; preds = %761
  store i16 4, ptr %292, align 4
  br label %768

768:                                              ; preds = %767, %761
  %769 = add i16 %765, 1
  store i16 %769, ptr %19, align 2
  %770 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_grow_indepth, i32 noundef 1378) #13
  store i32 %770, ptr %6, align 4
  br label %771

771:                                              ; preds = %768, %758, %731
  call void @__brelse(ptr noundef nonnull %714) #13
  br label %772

772:                                              ; preds = %771, %703
  %773 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %871

775:                                              ; preds = %772
  %776 = load i32, ptr %3, align 4
  %777 = call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %776, ptr noundef %2, i32 noundef %4) #13
  %778 = icmp ugt ptr %777, inttoptr (i32 -4096 to ptr)
  br i1 %778, label %789, label %779

779:                                              ; preds = %775
  %780 = load i16, ptr %19, align 2
  %781 = zext i16 %780 to i32
  %782 = getelementptr %struct.ext4_ext_path, ptr %777, i32 %781, i32 5
  %783 = load ptr, ptr %782, align 4
  %784 = getelementptr inbounds %struct.ext4_extent_header, ptr %783, i32 0, i32 1
  %785 = load i16, ptr %784, align 2
  %786 = getelementptr inbounds %struct.ext4_extent_header, ptr %783, i32 0, i32 2
  %787 = load i16, ptr %786, align 4
  %788 = icmp eq i16 %785, %787
  br i1 %788, label %293, label %793

789:                                              ; preds = %775, %678
  %790 = phi ptr [ %680, %678 ], [ %777, %775 ]
  %791 = ptrtoint ptr %790 to i32
  %792 = icmp eq ptr %790, null
  br i1 %792, label %793, label %871

793:                                              ; preds = %789, %779, %678
  %794 = load i16, ptr %19, align 2
  %795 = zext i16 %794 to i32
  %796 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %795, i32 5
  %797 = load ptr, ptr %796, align 4
  br label %798

798:                                              ; preds = %793, %270, %219
  %799 = phi i32 [ %21, %219 ], [ %795, %793 ], [ %21, %270 ]
  %800 = phi ptr [ null, %219 ], [ %284, %793 ], [ %260, %270 ]
  %801 = phi ptr [ %25, %219 ], [ %797, %793 ], [ %272, %270 ]
  %802 = phi ptr [ %8, %219 ], [ %8, %793 ], [ %260, %270 ]
  %803 = getelementptr %struct.ext4_ext_path, ptr %802, i32 %799, i32 3
  %804 = load ptr, ptr %803, align 4
  %805 = getelementptr %struct.ext4_ext_path, ptr %802, i32 %799, i32 6
  %806 = load ptr, ptr %805, align 8
  %807 = icmp eq ptr %806, null
  br i1 %807, label %815, label %808

808:                                              ; preds = %798
  %809 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %810 = load ptr, ptr %809, align 4
  %811 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %810, ptr noundef nonnull %806, i32 noundef 1) #13
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %871

813:                                              ; preds = %808
  %814 = load ptr, ptr %805, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %814) #13
  br label %815

815:                                              ; preds = %813, %798
  %816 = icmp eq ptr %804, null
  br i1 %816, label %817, label %819

817:                                              ; preds = %815
  %818 = getelementptr i8, ptr %801, i32 12
  br label %843

819:                                              ; preds = %815
  %820 = load i32, ptr %3, align 4
  %821 = load i32, ptr %804, align 4
  %822 = icmp ugt i32 %820, %821
  br i1 %822, label %823, label %825

823:                                              ; preds = %819
  %824 = getelementptr %struct.ext4_extent, ptr %804, i32 1
  br label %828

825:                                              ; preds = %819
  %826 = icmp eq i32 %820, %821
  br i1 %826, label %827, label %828, !prof !8

827:                                              ; preds = %825
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2130, 0\0A.popsection", ""() #13, !srcloc !25
  unreachable

828:                                              ; preds = %825, %823
  %829 = phi ptr [ %824, %823 ], [ %804, %825 ]
  %830 = getelementptr i8, ptr %801, i32 12
  %831 = getelementptr inbounds %struct.ext4_extent_header, ptr %801, i32 0, i32 1
  %832 = load i16, ptr %831, align 2
  %833 = zext i16 %832 to i32
  %834 = getelementptr %struct.ext4_extent, ptr %830, i32 %833
  %835 = getelementptr %struct.ext4_extent, ptr %834, i32 -1
  %836 = ptrtoint ptr %835 to i32
  %837 = ptrtoint ptr %829 to i32
  %838 = sub i32 %836, %837
  %839 = icmp sgt i32 %838, -12
  br i1 %839, label %840, label %843

840:                                              ; preds = %828
  %841 = getelementptr %struct.ext4_extent, ptr %829, i32 1
  %842 = add i32 %838, 12
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %841, ptr align 4 %829, i32 %842, i1 false)
  br label %843

843:                                              ; preds = %840, %828, %817
  %844 = phi ptr [ %829, %840 ], [ %829, %828 ], [ %818, %817 ]
  %845 = getelementptr inbounds %struct.ext4_extent_header, ptr %801, i32 0, i32 1
  %846 = load i16, ptr %845, align 2
  %847 = add i16 %846, 1
  store i16 %847, ptr %845, align 2
  store ptr %844, ptr %803, align 4
  %848 = load i32, ptr %3, align 4
  store i32 %848, ptr %844, align 4
  %849 = getelementptr inbounds %struct.ext4_extent, ptr %3, i32 0, i32 3
  %850 = load i32, ptr %849, align 4
  %851 = getelementptr inbounds %struct.ext4_extent, ptr %3, i32 0, i32 2
  %852 = load i16, ptr %851, align 2
  %853 = getelementptr inbounds %struct.ext4_extent, ptr %844, i32 0, i32 3
  store i32 %850, ptr %853, align 4
  %854 = getelementptr inbounds %struct.ext4_extent, ptr %844, i32 0, i32 2
  store i16 %852, ptr %854, align 2
  %855 = load i16, ptr %10, align 4
  %856 = getelementptr inbounds %struct.ext4_extent, ptr %844, i32 0, i32 1
  store i16 %855, ptr %856, align 4
  br label %857

857:                                              ; preds = %843, %217, %200, %140, %126
  %858 = phi ptr [ %800, %843 ], [ null, %140 ], [ null, %126 ], [ null, %217 ], [ null, %200 ]
  %859 = phi ptr [ %844, %843 ], [ %69, %140 ], [ %69, %126 ], [ %144, %217 ], [ %144, %200 ]
  %860 = phi ptr [ %802, %843 ], [ %8, %140 ], [ %8, %126 ], [ %8, %217 ], [ %8, %200 ]
  br i1 %31, label %861, label %862

861:                                              ; preds = %857
  call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr noundef %860, ptr noundef %859)
  br label %862

862:                                              ; preds = %861, %857
  %863 = call fastcc i32 @ext4_ext_correct_indexes(ptr noundef %0, ptr noundef %1, ptr noundef %860)
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %871

865:                                              ; preds = %862
  %866 = getelementptr inbounds %struct.ext4_ext_path, ptr %860, i32 0, i32 1
  %867 = load i16, ptr %866, align 8
  %868 = zext i16 %867 to i32
  %869 = getelementptr %struct.ext4_ext_path, ptr %860, i32 %868
  %870 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_insert_extent, i32 noundef 2170, ptr noundef %0, ptr noundef %1, ptr noundef %869)
  br label %871

871:                                              ; preds = %865, %862, %808, %789, %772, %716, %675, %673
  %872 = phi i32 [ %863, %862 ], [ %870, %865 ], [ %791, %789 ], [ %811, %808 ], [ -12, %716 ], [ %674, %673 ], [ %676, %675 ], [ %773, %772 ]
  %873 = phi ptr [ %858, %862 ], [ %858, %865 ], [ %284, %789 ], [ %800, %808 ], [ %284, %716 ], [ %284, %673 ], [ %284, %675 ], [ %284, %772 ]
  %874 = icmp eq ptr %873, null
  br i1 %874, label %890, label %875

875:                                              ; preds = %871
  %876 = getelementptr inbounds %struct.ext4_ext_path, ptr %873, i32 0, i32 1
  %877 = load i16, ptr %876, align 8
  %878 = zext i16 %877 to i32
  br label %879

879:                                              ; preds = %886, %875
  %880 = phi i32 [ 0, %875 ], [ %887, %886 ]
  %881 = phi ptr [ %873, %875 ], [ %888, %886 ]
  %882 = getelementptr inbounds %struct.ext4_ext_path, ptr %881, i32 0, i32 6
  %883 = load ptr, ptr %882, align 8
  %884 = icmp eq ptr %883, null
  br i1 %884, label %886, label %885

885:                                              ; preds = %879
  call void @__brelse(ptr noundef nonnull %883) #13
  br label %886

886:                                              ; preds = %885, %879
  store ptr null, ptr %882, align 8
  %887 = add nuw nsw i32 %880, 1
  %888 = getelementptr %struct.ext4_ext_path, ptr %881, i32 1
  %889 = icmp eq i32 %880, %878
  br i1 %889, label %890, label %879

890:                                              ; preds = %886, %871
  call void @kfree(ptr noundef %873) #13
  br label %891

891:                                              ; preds = %890, %262, %191, %117, %27, %17
  %892 = phi i32 [ -117, %17 ], [ -117, %27 ], [ %872, %890 ], [ %263, %262 ], [ %120, %117 ], [ %194, %191 ]
  ret i32 %892
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_get_access(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %9, ptr noundef nonnull %5, i32 noundef 1) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %13) #13
  br label %14

14:                                               ; preds = %12, %7, %3
  %15 = phi i32 [ %10, %7 ], [ 0, %12 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr i8, ptr %1, i32 -202
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %7, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1890, 0\0A.popsection", ""() #13, !srcloc !26
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %9, i32 12
  %14 = icmp ult ptr %13, %3
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr %struct.ext4_extent, ptr %3, i32 -1
  %17 = tail call fastcc i32 @ext4_ext_try_to_merge_right(ptr noundef %1, ptr noundef %2, ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %12
  %20 = tail call fastcc i32 @ext4_ext_try_to_merge_right(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 1
  %23 = load i16, ptr %22, align 8
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %91

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_extent_header, ptr %27, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %91

31:                                               ; preds = %25
  %32 = getelementptr %struct.ext4_ext_path, ptr %2, i32 1, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_extent_header, ptr %33, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = icmp ugt i16 %35, 4
  br i1 %36, label %91, label %37

37:                                               ; preds = %31
  %38 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %38, label %53, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 27
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %43, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @jbd2_journal_extend(ptr noundef %0, i32 noundef 2, i32 noundef %45) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %39
  %49 = load ptr, ptr %32, align 4
  %50 = getelementptr inbounds %struct.ext4_extent_header, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = load ptr, ptr %26, align 4
  br label %53

53:                                               ; preds = %48, %37
  %54 = phi ptr [ %52, %48 ], [ %27, %37 ]
  %55 = phi i16 [ %51, %48 ], [ %35, %37 ]
  %56 = phi ptr [ %49, %48 ], [ %33, %37 ]
  %57 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 4
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.ext4_extent_idx, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ext4_extent_idx, ptr %58, i32 0, i32 2
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i64
  %65 = shl nuw nsw i64 %64, 32
  %66 = or i64 %65, %61
  %67 = zext i16 %55 to i32
  %68 = mul nuw nsw i32 %67, 12
  %69 = add nuw nsw i32 %68, 12
  %70 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 2
  %71 = load i16, ptr %70, align 2
  %72 = getelementptr %struct.ext4_ext_path, ptr %2, i32 1, i32 2
  store i16 %71, ptr %72, align 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 %54, ptr noundef align 4 %56, i32 %69, i1 false) #13
  store i16 0, ptr %22, align 8
  %73 = load ptr, ptr %26, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  %75 = getelementptr %struct.ext4_ext_path, ptr %2, i32 1, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %32, align 4
  %78 = getelementptr i8, ptr %77, i32 12
  %79 = ptrtoint ptr %76 to i32
  %80 = ptrtoint ptr %78 to i32
  %81 = sub i32 %79, %80
  %82 = sdiv exact i32 %81, 12
  %83 = getelementptr %struct.ext4_extent, ptr %74, i32 %82
  %84 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 3
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.ext4_extent_header, ptr %73, i32 0, i32 2
  store i16 4, ptr %85, align 4
  %86 = getelementptr %struct.ext4_ext_path, ptr %2, i32 1, i32 6
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %53
  tail call void @__brelse(ptr noundef nonnull %87) #13
  br label %90

90:                                               ; preds = %89, %53
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %66, i32 noundef 1, i32 noundef 3) #13
  br label %91

91:                                               ; preds = %90, %39, %31, %25, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_correct_indexes(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 -202
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %6, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %6, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %8, null
  %13 = select i1 %11, i1 true, i1 %12, !prof !8
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %3
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_correct_indexes, i32 noundef 1711, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef %10, ptr noundef %8) #13
  br label %68

15:                                               ; preds = %3
  %16 = icmp ne i16 %5, 0
  %17 = getelementptr i8, ptr %8, i32 12
  %18 = icmp eq ptr %10, %17
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %68

20:                                               ; preds = %15
  %21 = add nsw i32 %6, -1
  %22 = load i32, ptr %10, align 4
  %23 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %21
  %24 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %21, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %29, ptr noundef nonnull %25, i32 noundef 1) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  %33 = load ptr, ptr %24, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %33) #13
  br label %34

34:                                               ; preds = %32, %20
  %35 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %21, i32 4
  %36 = load ptr, ptr %35, align 8
  store i32 %22, ptr %36, align 4
  %37 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_correct_indexes, i32 noundef 1734, ptr noundef %0, ptr noundef %1, ptr noundef %23)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %41

41:                                               ; preds = %63, %39
  %42 = phi i32 [ %43, %63 ], [ %21, %39 ]
  %43 = add i32 %42, -1
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %42, i32 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %42, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %43
  %54 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %43, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %40, align 4
  %59 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %58, ptr noundef nonnull %55, i32 noundef 1) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load ptr, ptr %54, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %62) #13
  br label %63

63:                                               ; preds = %61, %52
  %64 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %43, i32 4
  %65 = load ptr, ptr %64, align 8
  store i32 %22, ptr %65, align 4
  %66 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_correct_indexes, i32 noundef 1746, ptr noundef %0, ptr noundef %1, ptr noundef %53)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %41, label %68

68:                                               ; preds = %63, %57, %45, %41, %34, %27, %15, %14
  %69 = phi i32 [ -117, %14 ], [ 0, %15 ], [ %37, %34 ], [ %30, %27 ], [ %59, %57 ], [ 0, %41 ], [ %66, %63 ], [ 0, %45 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ext4_ext_dirty(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr i8, ptr %3, i32 -24
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 172, i32 noundef 9, ptr noundef null) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.ext4_ext_path, ptr %4, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  tail call fastcc void @ext4_extent_block_csum_set(ptr noundef %3, ptr noundef %16)
  %17 = load ptr, ptr %11, align 8
  %18 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %17) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load ptr, ptr %11, align 8
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 16777216
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 24, ptr noundef %21) #13
  br label %28

26:                                               ; preds = %10
  %27 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %2, ptr noundef %3, ptr noundef nonnull @__func__.__ext4_ext_dirty, i32 noundef 183) #13
  br label %28

28:                                               ; preds = %26, %25, %20, %14
  %29 = phi i32 [ %18, %14 ], [ %27, %26 ], [ 0, %20 ], [ 0, %25 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_calc_credits_for_single_extent(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -202
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %8, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_extent_header, ptr %10, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.ext4_extent_header, ptr %10, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = icmp ult i16 %12, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %5, %3
  %17 = tail call i32 @ext4_chunk_trans_blocks(ptr noundef %0, i32 noundef %1) #13
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi i32 [ 8, %5 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_chunk_trans_blocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ext4_ext_index_trans_blocks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 -124
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 268435456
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 478
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7, %2
  %12 = getelementptr i8, ptr %0, i32 -202
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %1, 2
  %16 = shl nuw nsw i32 %14, 1
  %17 = mul nuw nsw i32 %14, 3
  %18 = select i1 %15, i32 %16, i32 %17
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi i32 [ %18, %11 ], [ 1, %7 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_remove_space(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.partial_cluster, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -202
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %15 = getelementptr inbounds %struct.partial_cluster, ptr %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.partial_cluster, ptr %5, i32 0, i32 2
  %17 = add nuw nsw i32 %14, 1
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, %14
  %21 = tail call ptr @__ext4_journal_start_sb(ptr noundef %9, i32 noundef 2826, i32 noundef 5, i32 noundef %17, i32 noundef 0, i32 noundef %20) #13
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %38, label %23

23:                                               ; preds = %3
  %24 = icmp ult i32 %2, -2
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 12
  %26 = zext i32 %2 to i64
  %27 = add nuw nsw i64 %26, 1
  %28 = add nuw i32 %2, 1
  %29 = getelementptr i8, ptr %0, i32 -208
  %30 = getelementptr i8, ptr %0, i32 -124
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %32 = getelementptr i8, ptr %0, i32 516
  %33 = getelementptr i8, ptr %0, i32 468
  %34 = icmp eq i32 %2, -2
  %35 = getelementptr i8, ptr %0, i32 -24
  %36 = icmp ult ptr %21, inttoptr (i32 4096 to ptr)
  %37 = getelementptr i8, ptr %0, i32 -204
  br label %40

38:                                               ; preds = %3
  %39 = ptrtoint ptr %21 to i32
  br label %939

40:                                               ; preds = %934, %23
  %41 = phi i32 [ -11, %934 ], [ 0, %23 ]
  %42 = phi i32 [ %914, %934 ], [ %14, %23 ]
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_remove_space, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
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
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %57 = call i32 @__traceiter_ext4_ext_remove_space(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %42) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  br label %58

58:                                               ; preds = %56, %45, %40
  br i1 %24, label %59, label %137

59:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8, !annotation !11
  %60 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %2, ptr noundef null, i32 noundef 1342177280)
  store ptr %60, ptr %4, align 4
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_remove_space, i32 noundef 2849, ptr noundef %21) #13
  %64 = load ptr, ptr %4, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %939

66:                                               ; preds = %59
  %67 = load i16, ptr %12, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr %struct.ext4_ext_path, ptr %60, i32 %68, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = icmp eq i16 %67, 0
  br i1 %73, label %134, label %74

74:                                               ; preds = %72
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_remove_space, i32 noundef 2859, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %68) #13
  br label %134

75:                                               ; preds = %66
  %76 = load i32, ptr %70, align 4
  %77 = getelementptr inbounds %struct.ext4_extent, ptr %70, i32 0, i32 1
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = icmp ult i16 %78, -32767
  %81 = add nsw i32 %79, -32768
  %82 = select i1 %80, i32 %79, i32 %81
  %83 = add i32 %82, %76
  %84 = add i32 %83, -1
  %85 = icmp ule i32 %76, %2
  %86 = icmp ugt i32 %84, %2
  %87 = select i1 %85, i1 %86, i1 false
  %88 = load i32, ptr %18, align 4
  %89 = icmp ugt i32 %88, 1
  br i1 %87, label %90, label %118

90:                                               ; preds = %75
  br i1 %89, label %91, label %106

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.ext4_extent, ptr %70, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ext4_extent, ptr %70, i32 0, i32 2
  %96 = load i16, ptr %95, align 2
  %97 = zext i16 %96 to i64
  %98 = shl nuw nsw i64 %97, 32
  %99 = or i64 %98, %94
  %100 = zext i32 %76 to i64
  %101 = sub nsw i64 %27, %100
  %102 = add nsw i64 %101, %99
  %103 = load i32, ptr %25, align 16
  %104 = zext i32 %103 to i64
  %105 = lshr i64 %102, %104
  store i64 %105, ptr %5, align 8
  store i32 2, ptr %16, align 4
  br label %106

106:                                              ; preds = %91, %90
  %107 = getelementptr inbounds %struct.ext4_ext_path, ptr %60, i32 0, i32 1
  %108 = load i16, ptr %107, align 8
  %109 = zext i16 %108 to i32
  %110 = getelementptr %struct.ext4_ext_path, ptr %60, i32 %109, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ext4_extent, ptr %111, i32 0, i32 1
  %113 = load i16, ptr %112, align 4
  %114 = icmp ult i16 %113, -32767
  %115 = select i1 %114, i32 0, i32 6
  %116 = call fastcc i32 @ext4_split_extent_at(ptr noundef %21, ptr noundef %0, ptr noundef nonnull %4, i32 noundef %28, i32 noundef %115, i32 noundef 1342177320) #13
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %134, label %136

118:                                              ; preds = %75
  br i1 %89, label %119, label %136

119:                                              ; preds = %118
  %120 = icmp ule i32 %84, %2
  %121 = load i32, ptr %16, align 4
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  store i32 %83, ptr %6, align 4
  %125 = call fastcc i32 @ext4_ext_search_right(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load i64, ptr %7, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %25, align 16
  %132 = zext i32 %131 to i64
  %133 = lshr i64 %128, %132
  store i64 %133, ptr %5, align 8
  store i32 2, ptr %16, align 4
  br label %136

134:                                              ; preds = %124, %106, %74, %72
  %135 = phi i32 [ %125, %124 ], [ %116, %106 ], [ %41, %72 ], [ -117, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %912

136:                                              ; preds = %130, %127, %119, %118, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %137

137:                                              ; preds = %136, %58
  %138 = load i16, ptr %12, align 2
  %139 = zext i16 %138 to i32
  %140 = load ptr, ptr %4, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %156, label %142

142:                                              ; preds = %137
  %143 = icmp ugt i16 %138, 1
  br i1 %143, label %144, label %169

144:                                              ; preds = %144, %142
  %145 = phi i32 [ %146, %144 ], [ %139, %142 ]
  %146 = add nsw i32 %145, -1
  %147 = getelementptr %struct.ext4_ext_path, ptr %140, i32 %146
  %148 = getelementptr %struct.ext4_ext_path, ptr %140, i32 %146, i32 5
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.ext4_extent_header, ptr %149, i32 0, i32 1
  %151 = load i16, ptr %150, align 2
  %152 = zext i16 %151 to i32
  %153 = add nuw nsw i32 %152, 1
  %154 = zext i32 %153 to i64
  store i64 %154, ptr %147, align 8
  %155 = icmp ugt i32 %145, 2
  br i1 %155, label %144, label %169

156:                                              ; preds = %137
  %157 = shl nuw nsw i32 %139, 5
  %158 = add nuw nsw i32 %157, 32
  %159 = call noalias align 64 ptr @__kmalloc(i32 noundef %158, i32 noundef 36160) #14
  store ptr %159, ptr %4, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_remove_space, i32 noundef 2935, ptr noundef %21) #13
  br label %939

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.ext4_ext_path, ptr %159, i32 0, i32 1
  store i16 %138, ptr %164, align 8
  %165 = getelementptr inbounds %struct.ext4_ext_path, ptr %159, i32 0, i32 2
  store i16 %138, ptr %165, align 2
  %166 = getelementptr inbounds %struct.ext4_ext_path, ptr %159, i32 0, i32 5
  store ptr %29, ptr %166, align 4
  %167 = call fastcc i32 @__ext4_ext_check(ptr noundef nonnull @__func__.ext4_ext_remove_space, i32 noundef 2942, ptr noundef %0, ptr noundef %29, i32 noundef %139, i64 noundef 0, i32 noundef 0)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %912

169:                                              ; preds = %163, %144, %142
  %170 = phi i32 [ 0, %163 ], [ %139, %142 ], [ %139, %144 ]
  %171 = add nsw i32 %139, -1
  br label %172

172:                                              ; preds = %719, %169
  %173 = phi i32 [ %170, %169 ], [ %721, %719 ]
  %174 = icmp eq i32 %173, %139
  %175 = load ptr, ptr %4, align 4
  br i1 %174, label %176, label %725

176:                                              ; preds = %172
  %177 = load ptr, ptr %8, align 4
  %178 = getelementptr inbounds %struct.super_block, ptr %177, i32 0, i32 27
  %179 = load ptr, ptr %178, align 4
  %180 = load i16, ptr %12, align 2
  %181 = zext i16 %180 to i32
  %182 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %181
  %183 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %181, i32 5
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %176
  %187 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %181, i32 6
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.buffer_head, ptr %188, i32 0, i32 5
  %190 = load ptr, ptr %189, align 4
  store ptr %190, ptr %183, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193, !prof !8

192:                                              ; preds = %186
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_rm_leaf, i32 noundef 2606, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %181) #13
  br label %708

193:                                              ; preds = %186, %176
  %194 = phi ptr [ %190, %186 ], [ %184, %176 ]
  %195 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %181, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.ext4_extent_header, ptr %194, i32 0, i32 1
  %200 = load i16, ptr %199, align 2
  %201 = zext i16 %200 to i32
  %202 = getelementptr %struct.ext4_extent, ptr %194, i32 %201
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi ptr [ %196, %193 ], [ %202, %198 ]
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.ext4_extent, ptr %204, i32 0, i32 1
  %207 = load i16, ptr %206, align 4
  %208 = zext i16 %207 to i32
  %209 = icmp ult i16 %207, -32767
  %210 = add nsw i32 %208, -32768
  %211 = select i1 %209, i32 %208, i32 %210
  %212 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_rm_leaf, i32 0, i32 1), align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %203
  %215 = tail call ptr @llvm.thread.pointer() #13
  %216 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 2
  %217 = load i32, ptr %216, align 8
  %218 = lshr i32 %217, 5
  %219 = getelementptr i32, ptr @__cpu_online_mask, i32 %218
  %220 = load volatile i32, ptr %219, align 4
  %221 = and i32 %217, 31
  %222 = shl nuw i32 1, %221
  %223 = and i32 %222, %220
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %214
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %226 = call i32 @__traceiter_ext4_ext_rm_leaf(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %204, ptr noundef nonnull %5) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  br label %227

227:                                              ; preds = %225, %214, %203
  %228 = getelementptr i8, ptr %194, i32 12
  %229 = icmp ult ptr %204, %228
  br i1 %229, label %698, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.ext4_sb_info, ptr %179, i32 0, i32 11
  %232 = getelementptr inbounds %struct.ext4_sb_info, ptr %179, i32 0, i32 12
  %233 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %181, i32 6
  %234 = getelementptr inbounds %struct.ext4_extent_header, ptr %194, i32 0, i32 1
  br label %235

235:                                              ; preds = %608, %230
  %236 = phi i32 [ 0, %230 ], [ %308, %608 ]
  %237 = phi ptr [ %204, %230 ], [ %609, %608 ]
  %238 = phi i32 [ %211, %230 ], [ %616, %608 ]
  %239 = phi i32 [ %205, %230 ], [ %610, %608 ]
  br label %240

240:                                              ; preds = %266, %235
  %241 = phi ptr [ %237, %235 ], [ %267, %266 ]
  %242 = phi i32 [ %238, %235 ], [ %274, %266 ]
  %243 = phi i32 [ %239, %235 ], [ %268, %266 ]
  %244 = and i32 %242, 65535
  %245 = add i32 %244, %243
  %246 = icmp ugt i32 %245, %1
  br i1 %246, label %247, label %618

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.ext4_extent, ptr %241, i32 0, i32 1
  %249 = load i16, ptr %248, align 4
  store ptr %241, ptr %195, align 4
  %250 = icmp ugt i32 %243, %2
  br i1 %250, label %251, label %276

251:                                              ; preds = %247
  %252 = load i32, ptr %231, align 4
  %253 = icmp ugt i32 %252, 1
  br i1 %253, label %254, label %266

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.ext4_extent, ptr %241, i32 0, i32 3
  %256 = load i32, ptr %255, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.ext4_extent, ptr %241, i32 0, i32 2
  %259 = load i16, ptr %258, align 2
  %260 = zext i16 %259 to i64
  %261 = shl nuw nsw i64 %260, 32
  %262 = or i64 %261, %257
  %263 = load i32, ptr %232, align 16
  %264 = zext i32 %263 to i64
  %265 = lshr i64 %262, %264
  store i64 %265, ptr %5, align 8
  store i32 2, ptr %16, align 4
  br label %266

266:                                              ; preds = %254, %251
  %267 = getelementptr %struct.ext4_extent, ptr %241, i32 -1
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr %struct.ext4_extent, ptr %241, i32 -1, i32 1
  %270 = load i16, ptr %269, align 4
  %271 = zext i16 %270 to i32
  %272 = icmp ult i16 %270, -32767
  %273 = add nsw i32 %271, -32768
  %274 = select i1 %272, i32 %271, i32 %273
  %275 = icmp ult ptr %267, %228
  br i1 %275, label %618, label %240

276:                                              ; preds = %247
  %277 = getelementptr inbounds %struct.ext4_extent, ptr %241, i32 0, i32 1
  %278 = icmp ugt i16 %249, -32768
  %279 = call i32 @llvm.umax.i32(i32 %243, i32 %1) #13
  %280 = add i32 %245, -1
  %281 = call i32 @llvm.umin.i32(i32 %280, i32 %2) #13
  %282 = icmp ugt i32 %280, %2
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_rm_leaf, i32 noundef 2660, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %1, i32 noundef %2, i32 noundef %243, i32 noundef %280) #13
  br label %708

284:                                              ; preds = %276
  %285 = icmp ult i32 %243, %1
  %286 = sub i32 %279, %243
  %287 = select i1 %285, i32 %286, i32 0
  %288 = load ptr, ptr %8, align 4
  %289 = getelementptr inbounds %struct.super_block, ptr %288, i32 0, i32 27
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.ext4_sb_info, ptr %290, i32 0, i32 2
  %292 = load i32, ptr %291, align 8
  %293 = udiv i32 %244, %292
  %294 = shl nuw nsw i32 %293, 1
  %295 = icmp eq ptr %241, %228
  br i1 %295, label %300, label %296

296:                                              ; preds = %284
  %297 = add nuw nsw i32 %294, 7
  %298 = load i16, ptr %12, align 2
  %299 = zext i16 %298 to i32
  br label %305

300:                                              ; preds = %284
  %301 = load i16, ptr %12, align 2
  %302 = zext i16 %301 to i32
  %303 = add nuw nsw i32 %294, 8
  %304 = add nuw nsw i32 %303, %302
  br label %305

305:                                              ; preds = %300, %296
  %306 = phi i32 [ %299, %296 ], [ %302, %300 ]
  %307 = phi i32 [ %297, %296 ], [ %304, %300 ]
  %308 = phi i32 [ %236, %296 ], [ 1, %300 ]
  %309 = getelementptr inbounds %struct.ext4_sb_info, ptr %290, i32 0, i32 11
  %310 = load i32, ptr %309, align 4
  %311 = mul i32 %310, %306
  %312 = getelementptr inbounds %struct.ext4_sb_info, ptr %290, i32 0, i32 17
  %313 = load i32, ptr %312, align 4
  %314 = and i32 %313, 3072
  %315 = icmp eq i32 %314, 1024
  br i1 %315, label %330, label %316

316:                                              ; preds = %305
  %317 = call i32 @ext4_inode_journal_mode(ptr noundef %0) #13
  %318 = and i32 %317, 1
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %330, label %320

320:                                              ; preds = %316
  %321 = load ptr, ptr %8, align 4
  %322 = getelementptr inbounds %struct.super_block, ptr %321, i32 0, i32 27
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr inbounds %struct.ext4_sb_info, ptr %323, i32 0, i32 11
  %325 = load i32, ptr %324, align 4
  %326 = shl i32 %325, 1
  %327 = xor i32 %279, -1
  %328 = add i32 %281, %327
  %329 = add i32 %328, %326
  br label %330

330:                                              ; preds = %320, %316, %305
  %331 = phi i32 [ %329, %320 ], [ 0, %305 ], [ 0, %316 ]
  %332 = add i32 %331, %311
  %333 = call i32 @__ext4_journal_ensure_credits(ptr noundef %21, i32 noundef %307, i32 noundef %307, i32 noundef %332) #13
  %334 = icmp slt i32 %333, 1
  br i1 %334, label %350, label %335

335:                                              ; preds = %330
  %336 = load ptr, ptr %8, align 4
  %337 = getelementptr inbounds %struct.super_block, ptr %336, i32 0, i32 27
  %338 = load ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.ext4_sb_info, ptr %338, i32 0, i32 47
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %343, !prof !8

342:                                              ; preds = %335
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

343:                                              ; preds = %335
  call void @ext4_discard_preallocations(ptr noundef %0, i32 noundef 0) #13
  call void @up_write(ptr noundef %35) #13
  br i1 %36, label %347, label %344

344:                                              ; preds = %343
  %345 = call i32 @jbd2__journal_restart(ptr noundef %21, i32 noundef %307, i32 noundef %332, i32 noundef 3136) #13
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %344, %343
  br label %348

348:                                              ; preds = %347, %344
  %349 = phi i32 [ %345, %344 ], [ 1, %347 ]
  call void @down_write(ptr noundef %35) #13
  br label %352

350:                                              ; preds = %330
  %351 = icmp eq i32 %333, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %350, %348
  %353 = phi i32 [ %349, %348 ], [ %333, %350 ]
  %354 = icmp sgt i32 %353, 0
  %355 = select i1 %354, i32 -11, i32 %353
  br label %708

356:                                              ; preds = %350
  %357 = load ptr, ptr %233, align 8
  %358 = icmp eq ptr %357, null
  br i1 %358, label %365, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr %8, align 4
  %361 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %21, ptr noundef %360, ptr noundef nonnull %357, i32 noundef 1) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %708

363:                                              ; preds = %359
  %364 = load ptr, ptr %233, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %364) #13
  br label %365

365:                                              ; preds = %363, %356
  %366 = load ptr, ptr %8, align 4
  %367 = getelementptr inbounds %struct.super_block, ptr %366, i32 0, i32 27
  %368 = load ptr, ptr %367, align 4
  %369 = load i16, ptr %277, align 4
  %370 = zext i16 %369 to i32
  %371 = icmp ult i16 %369, -32767
  %372 = add nuw nsw i32 %370, 32768
  %373 = select i1 %371, i32 %370, i32 %372
  %374 = load i32, ptr %241, align 4
  %375 = icmp ugt i32 %374, %279
  %376 = and i32 %373, 65535
  br i1 %375, label %381, label %377

377:                                              ; preds = %365
  %378 = add i32 %374, -1
  %379 = add i32 %378, %376
  %380 = icmp eq i32 %379, %281
  br i1 %380, label %384, label %381

381:                                              ; preds = %377, %365
  %382 = getelementptr inbounds %struct.ext4_sb_info, ptr %368, i32 0, i32 45
  %383 = load ptr, ptr %382, align 4
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %383, ptr noundef nonnull @__func__.ext4_remove_blocks, i32 noundef 2463, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %279, i32 noundef %281, i32 noundef %374, i32 noundef %376) #13
  br label %580

384:                                              ; preds = %377
  %385 = zext i32 %281 to i64
  %386 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_remove_blocks, i32 0, i32 1), align 4
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %384
  %389 = tail call ptr @llvm.thread.pointer() #13
  %390 = getelementptr inbounds %struct.thread_info, ptr %389, i32 0, i32 2
  %391 = load i32, ptr %390, align 8
  %392 = lshr i32 %391, 5
  %393 = getelementptr i32, ptr @__cpu_online_mask, i32 %392
  %394 = load volatile i32, ptr %393, align 4
  %395 = and i32 %391, 31
  %396 = shl nuw i32 1, %395
  %397 = and i32 %396, %394
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %388
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %400 = call i32 @__traceiter_ext4_remove_blocks(ptr noundef null, ptr noundef %0, ptr noundef %241, i32 noundef %279, i64 noundef %385, ptr noundef nonnull %5) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %401

401:                                              ; preds = %399, %388, %384
  %402 = getelementptr inbounds %struct.ext4_extent, ptr %241, i32 0, i32 3
  %403 = load i32, ptr %402, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds %struct.ext4_extent, ptr %241, i32 0, i32 2
  %406 = load i16, ptr %405, align 2
  %407 = zext i16 %406 to i64
  %408 = shl nuw nsw i64 %407, 32
  %409 = or i64 %408, %404
  %410 = zext i32 %376 to i64
  %411 = add nsw i64 %410, -1
  %412 = add nsw i64 %411, %409
  %413 = load i32, ptr %16, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %476, label %415

415:                                              ; preds = %401
  %416 = load i64, ptr %5, align 8
  %417 = getelementptr inbounds %struct.ext4_sb_info, ptr %368, i32 0, i32 12
  %418 = load i32, ptr %417, align 16
  %419 = zext i32 %418 to i64
  %420 = lshr i64 %412, %419
  %421 = icmp eq i64 %416, %420
  br i1 %421, label %476, label %422

422:                                              ; preds = %415
  %423 = icmp eq i32 %413, 1
  br i1 %423, label %424, label %469

424:                                              ; preds = %422
  %425 = load i16, ptr %0, align 8
  %426 = and i16 %425, -4096
  switch i16 %426, label %427 [
    i16 16384, label %435
    i16 -24576, label %435
  ]

427:                                              ; preds = %424
  %428 = load volatile i32, ptr %30, align 4
  %429 = and i32 %428, 2097152
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %427
  %432 = call i32 @ext4_inode_journal_mode(ptr noundef %0) #13
  %433 = shl i32 %432, 1
  %434 = and i32 %433, 2
  br label %435

435:                                              ; preds = %431, %427, %424, %424
  %436 = phi i32 [ 3, %424 ], [ 3, %424 ], [ 3, %427 ], [ %434, %431 ]
  %437 = load i32, ptr %15, align 8
  %438 = call zeroext i1 @ext4_is_pending(ptr noundef %0, i32 noundef %437) #13
  %439 = or i32 %436, 64
  %440 = select i1 %438, i32 %439, i32 %436
  %441 = load i64, ptr %5, align 8
  %442 = load i32, ptr %417, align 16
  %443 = zext i32 %442 to i64
  %444 = shl i64 %441, %443
  %445 = getelementptr inbounds %struct.ext4_sb_info, ptr %368, i32 0, i32 11
  %446 = load i32, ptr %445, align 4
  call void @ext4_free_blocks(ptr noundef %21, ptr noundef %0, ptr noundef null, i64 noundef %444, i32 noundef %446, i32 noundef %440) #13
  %447 = and i32 %440, 64
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %469, label %449

449:                                              ; preds = %435
  %450 = load i32, ptr %15, align 8
  %451 = load ptr, ptr %8, align 4
  %452 = getelementptr inbounds %struct.super_block, ptr %451, i32 0, i32 27
  %453 = load ptr, ptr %452, align 4
  %454 = getelementptr inbounds %struct.ext4_sb_info, ptr %453, i32 0, i32 12
  %455 = load i32, ptr %454, align 16
  %456 = shl nuw i32 1, %455
  %457 = sext i32 %456 to i64
  %458 = load i8, ptr %31, align 2
  %459 = zext i8 %458 to i64
  %460 = shl i64 %457, %459
  call void @inode_sub_bytes(ptr noundef %0, i64 noundef %460) #13
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #13
  call void @_raw_spin_lock(ptr noundef %32) #13
  %461 = load i32, ptr %33, align 4
  %462 = add i32 %461, 1
  store i32 %462, ptr %33, align 4
  %463 = getelementptr inbounds %struct.ext4_sb_info, ptr %453, i32 0, i32 39
  %464 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %463, i64 noundef 1, i32 noundef %464) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %465 = load i16, ptr %32, align 4
  %466 = add i16 %465, 1
  store i16 %466, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !34
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !35
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %467 = getelementptr inbounds %struct.ext4_sb_info, ptr %453, i32 0, i32 36
  %468 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %467, i64 noundef 1, i32 noundef %468) #13
  call void @ext4_remove_pending(ptr noundef %0, i32 noundef %450) #13
  br label %469

469:                                              ; preds = %449, %435, %422
  store i32 0, ptr %16, align 4
  %470 = load i32, ptr %402, align 4
  %471 = load i16, ptr %405, align 2
  %472 = zext i32 %470 to i64
  %473 = zext i16 %471 to i64
  %474 = shl nuw nsw i64 %473, 32
  %475 = or i64 %474, %472
  br label %476

476:                                              ; preds = %469, %415, %401
  %477 = phi i64 [ %475, %469 ], [ %409, %415 ], [ %409, %401 ]
  %478 = load i32, ptr %241, align 4
  %479 = sub i32 %376, %279
  %480 = add i32 %478, %479
  %481 = zext i32 %480 to i64
  %482 = sub nsw i64 %410, %481
  %483 = add nsw i64 %482, %477
  %484 = load i16, ptr %0, align 8
  %485 = and i16 %484, -4096
  switch i16 %485, label %486 [
    i16 16384, label %494
    i16 -24576, label %494
  ]

486:                                              ; preds = %476
  %487 = load volatile i32, ptr %30, align 4
  %488 = and i32 %487, 2097152
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %486
  %491 = call i32 @ext4_inode_journal_mode(ptr noundef %0) #13
  %492 = shl i32 %491, 1
  %493 = and i32 %492, 2
  br label %494

494:                                              ; preds = %490, %486, %476, %476
  %495 = phi i32 [ 3, %476 ], [ 3, %476 ], [ 3, %486 ], [ %493, %490 ]
  %496 = getelementptr inbounds %struct.ext4_sb_info, ptr %368, i32 0, i32 11
  %497 = load i32, ptr %496, align 4
  %498 = add i32 %497, -1
  %499 = and i32 %498, %281
  %500 = icmp eq i32 %499, %498
  br i1 %500, label %548, label %501

501:                                              ; preds = %494
  %502 = sub i32 0, %497
  %503 = and i32 %281, %502
  %504 = icmp ult i32 %503, %279
  %505 = load i32, ptr %16, align 4
  %506 = icmp eq i32 %505, 2
  %507 = select i1 %504, i1 true, i1 %506
  br i1 %507, label %548, label %508

508:                                              ; preds = %501
  %509 = call zeroext i1 @ext4_is_pending(ptr noundef %0, i32 noundef %281) #13
  %510 = or i32 %495, 64
  %511 = select i1 %509, i32 %510, i32 %495
  %512 = load i32, ptr %496, align 4
  %513 = zext i32 %512 to i64
  %514 = sub nsw i64 0, %513
  %515 = and i64 %412, %514
  call void @ext4_free_blocks(ptr noundef %21, ptr noundef %0, ptr noundef null, i64 noundef %515, i32 noundef %512, i32 noundef %511) #13
  %516 = and i32 %511, 64
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %537, label %518

518:                                              ; preds = %508
  %519 = load ptr, ptr %8, align 4
  %520 = getelementptr inbounds %struct.super_block, ptr %519, i32 0, i32 27
  %521 = load ptr, ptr %520, align 4
  %522 = getelementptr inbounds %struct.ext4_sb_info, ptr %521, i32 0, i32 12
  %523 = load i32, ptr %522, align 16
  %524 = shl nuw i32 1, %523
  %525 = sext i32 %524 to i64
  %526 = load i8, ptr %31, align 2
  %527 = zext i8 %526 to i64
  %528 = shl i64 %525, %527
  call void @inode_sub_bytes(ptr noundef %0, i64 noundef %528) #13
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #13
  call void @_raw_spin_lock(ptr noundef %32) #13
  %529 = load i32, ptr %33, align 4
  %530 = add i32 %529, 1
  store i32 %530, ptr %33, align 4
  %531 = getelementptr inbounds %struct.ext4_sb_info, ptr %521, i32 0, i32 39
  %532 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %531, i64 noundef 1, i32 noundef %532) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %533 = load i16, ptr %32, align 4
  %534 = add i16 %533, 1
  store i16 %534, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !34
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !35
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %535 = getelementptr inbounds %struct.ext4_sb_info, ptr %521, i32 0, i32 36
  %536 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %535, i64 noundef 1, i32 noundef %536) #13
  call void @ext4_remove_pending(ptr noundef %0, i32 noundef %281) #13
  br label %537

537:                                              ; preds = %518, %508
  store i32 0, ptr %16, align 4
  %538 = load i16, ptr %0, align 8
  %539 = and i16 %538, -4096
  switch i16 %539, label %540 [
    i16 16384, label %548
    i16 -24576, label %548
  ]

540:                                              ; preds = %537
  %541 = load volatile i32, ptr %30, align 4
  %542 = and i32 %541, 2097152
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %548

544:                                              ; preds = %540
  %545 = call i32 @ext4_inode_journal_mode(ptr noundef %0) #13
  %546 = shl i32 %545, 1
  %547 = and i32 %546, 2
  br label %548

548:                                              ; preds = %544, %540, %537, %537, %501, %494
  %549 = phi i32 [ %495, %501 ], [ %495, %494 ], [ 3, %537 ], [ 3, %537 ], [ 3, %540 ], [ %547, %544 ]
  %550 = or i32 %549, 48
  call void @ext4_free_blocks(ptr noundef %21, ptr noundef %0, ptr noundef null, i64 noundef %483, i32 noundef %480, i32 noundef %550) #13
  %551 = load i32, ptr %16, align 4
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %560, label %553

553:                                              ; preds = %548
  %554 = load i64, ptr %5, align 8
  %555 = getelementptr inbounds %struct.ext4_sb_info, ptr %368, i32 0, i32 12
  %556 = load i32, ptr %555, align 16
  %557 = zext i32 %556 to i64
  %558 = lshr i64 %483, %557
  %559 = icmp eq i64 %554, %558
  br i1 %559, label %567, label %560

560:                                              ; preds = %553, %548
  %561 = load i32, ptr %496, align 4
  %562 = add i32 %561, -1
  %563 = and i32 %562, %279
  %564 = icmp ne i32 %563, 0
  %565 = icmp eq i32 %480, %376
  %566 = select i1 %564, i1 %565, i1 false
  br i1 %566, label %574, label %579

567:                                              ; preds = %553
  %568 = load i32, ptr %496, align 4
  %569 = add i32 %568, -1
  %570 = and i32 %569, %279
  %571 = icmp ne i32 %570, 0
  %572 = icmp eq i32 %480, %376
  %573 = select i1 %571, i1 %572, i1 false
  br i1 %573, label %580, label %579

574:                                              ; preds = %560
  %575 = getelementptr inbounds %struct.ext4_sb_info, ptr %368, i32 0, i32 12
  %576 = load i32, ptr %575, align 16
  %577 = zext i32 %576 to i64
  %578 = lshr i64 %483, %577
  store i64 %578, ptr %5, align 8
  store i32 %279, ptr %15, align 8
  store i32 1, ptr %16, align 4
  br label %580

579:                                              ; preds = %567, %560
  store i32 0, ptr %16, align 4
  br label %580

580:                                              ; preds = %579, %574, %567, %381
  %581 = icmp eq i32 %287, 0
  br i1 %581, label %590, label %582

582:                                              ; preds = %580
  %583 = trunc i32 %287 to i16
  store i16 %583, ptr %277, align 4
  br i1 %278, label %584, label %605

584:                                              ; preds = %582
  %585 = and i16 %583, 32767
  %586 = icmp eq i16 %585, 0
  br i1 %586, label %587, label %588, !prof !8

587:                                              ; preds = %584
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

588:                                              ; preds = %584
  %589 = or i16 %583, -32768
  store i16 %589, ptr %277, align 4
  br label %605

590:                                              ; preds = %580
  store i64 0, ptr %277, align 4
  br i1 %34, label %602, label %591

591:                                              ; preds = %590
  %592 = getelementptr %struct.ext4_extent, ptr %241, i32 1
  %593 = load i16, ptr %234, align 2
  %594 = zext i16 %593 to i32
  %595 = getelementptr %struct.ext4_extent, ptr %194, i32 %594
  %596 = ptrtoint ptr %595 to i32
  %597 = ptrtoint ptr %241 to i32
  %598 = sub i32 %596, %597
  call void @llvm.memmove.p0.p0.i32(ptr align 4 %241, ptr align 4 %592, i32 %598, i1 false) #13
  %599 = load i16, ptr %234, align 2
  %600 = zext i16 %599 to i32
  %601 = getelementptr %struct.ext4_extent, ptr %194, i32 %600
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %601, i8 0, i32 12, i1 false) #13
  br label %602

602:                                              ; preds = %591, %590
  %603 = load i16, ptr %234, align 2
  %604 = add i16 %603, -1
  store i16 %604, ptr %234, align 2
  br label %605

605:                                              ; preds = %602, %588, %582
  %606 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_rm_leaf, i32 noundef 2740, ptr noundef %21, ptr noundef %0, ptr noundef %182) #13
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %708

608:                                              ; preds = %605
  %609 = getelementptr %struct.ext4_extent, ptr %241, i32 -1
  %610 = load i32, ptr %609, align 4
  %611 = getelementptr %struct.ext4_extent, ptr %241, i32 -1, i32 1
  %612 = load i16, ptr %611, align 4
  %613 = zext i16 %612 to i32
  %614 = icmp ult i16 %612, -32767
  %615 = add nsw i32 %613, -32768
  %616 = select i1 %614, i32 %613, i32 %615
  %617 = icmp ult ptr %609, %228
  br i1 %617, label %618, label %235

618:                                              ; preds = %608, %266, %240
  %619 = phi i32 [ %236, %240 ], [ %236, %266 ], [ %308, %608 ]
  %620 = phi i32 [ %274, %266 ], [ %242, %240 ], [ %616, %608 ]
  %621 = phi ptr [ %267, %266 ], [ %241, %240 ], [ %609, %608 ]
  %622 = icmp eq i32 %619, 0
  br i1 %622, label %628, label %623

623:                                              ; preds = %618
  %624 = load i16, ptr %234, align 2
  %625 = icmp eq i16 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %623
  %627 = call fastcc i32 @ext4_ext_correct_indexes(ptr noundef %21, ptr noundef %0, ptr noundef %175) #13
  br label %628

628:                                              ; preds = %626, %623, %618
  %629 = phi i32 [ %627, %626 ], [ 0, %623 ], [ 0, %618 ]
  %630 = load i32, ptr %16, align 4
  %631 = icmp ne i32 %630, 1
  %632 = select i1 %631, i1 true, i1 %246
  br i1 %632, label %696, label %633

633:                                              ; preds = %628
  %634 = getelementptr inbounds %struct.ext4_extent, ptr %621, i32 0, i32 3
  %635 = load i32, ptr %634, align 4
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds %struct.ext4_extent, ptr %621, i32 0, i32 2
  %638 = load i16, ptr %637, align 2
  %639 = zext i16 %638 to i64
  %640 = shl nuw nsw i64 %639, 32
  %641 = or i64 %640, %636
  %642 = and i32 %620, 65535
  %643 = zext i32 %642 to i64
  %644 = add nsw i64 %643, -1
  %645 = add nsw i64 %644, %641
  %646 = load i64, ptr %5, align 8
  %647 = load i32, ptr %232, align 16
  %648 = zext i32 %647 to i64
  %649 = lshr i64 %645, %648
  %650 = icmp eq i64 %646, %649
  br i1 %650, label %695, label %651

651:                                              ; preds = %633
  %652 = load i16, ptr %0, align 8
  %653 = and i16 %652, -4096
  switch i16 %653, label %654 [
    i16 16384, label %662
    i16 -24576, label %662
  ]

654:                                              ; preds = %651
  %655 = load volatile i32, ptr %30, align 4
  %656 = and i32 %655, 2097152
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %662

658:                                              ; preds = %654
  %659 = call i32 @ext4_inode_journal_mode(ptr noundef %0) #13
  %660 = shl i32 %659, 1
  %661 = and i32 %660, 2
  br label %662

662:                                              ; preds = %658, %654, %651, %651
  %663 = phi i32 [ 3, %651 ], [ 3, %651 ], [ 3, %654 ], [ %661, %658 ]
  %664 = load i32, ptr %15, align 8
  %665 = call zeroext i1 @ext4_is_pending(ptr noundef %0, i32 noundef %664) #13
  %666 = or i32 %663, 64
  %667 = select i1 %665, i32 %666, i32 %663
  %668 = load i64, ptr %5, align 8
  %669 = load i32, ptr %232, align 16
  %670 = zext i32 %669 to i64
  %671 = shl i64 %668, %670
  %672 = load i32, ptr %231, align 4
  call void @ext4_free_blocks(ptr noundef %21, ptr noundef %0, ptr noundef null, i64 noundef %671, i32 noundef %672, i32 noundef %667) #13
  %673 = and i32 %667, 64
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %695, label %675

675:                                              ; preds = %662
  %676 = load i32, ptr %15, align 8
  %677 = load ptr, ptr %8, align 4
  %678 = getelementptr inbounds %struct.super_block, ptr %677, i32 0, i32 27
  %679 = load ptr, ptr %678, align 4
  %680 = getelementptr inbounds %struct.ext4_sb_info, ptr %679, i32 0, i32 12
  %681 = load i32, ptr %680, align 16
  %682 = shl nuw i32 1, %681
  %683 = sext i32 %682 to i64
  %684 = load i8, ptr %31, align 2
  %685 = zext i8 %684 to i64
  %686 = shl i64 %683, %685
  call void @inode_sub_bytes(ptr noundef %0, i64 noundef %686) #13
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #13
  call void @_raw_spin_lock(ptr noundef %32) #13
  %687 = load i32, ptr %33, align 4
  %688 = add i32 %687, 1
  store i32 %688, ptr %33, align 4
  %689 = getelementptr inbounds %struct.ext4_sb_info, ptr %679, i32 0, i32 39
  %690 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %689, i64 noundef 1, i32 noundef %690) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %691 = load i16, ptr %32, align 4
  %692 = add i16 %691, 1
  store i16 %692, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !34
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !35
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %693 = getelementptr inbounds %struct.ext4_sb_info, ptr %679, i32 0, i32 36
  %694 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %693, i64 noundef 1, i32 noundef %694) #13
  call void @ext4_remove_pending(ptr noundef %0, i32 noundef %676) #13
  br label %695

695:                                              ; preds = %675, %662, %633
  store i32 0, ptr %16, align 4
  br label %696

696:                                              ; preds = %695, %628
  %697 = icmp eq i32 %629, 0
  br i1 %697, label %698, label %708

698:                                              ; preds = %696, %227
  %699 = getelementptr inbounds %struct.ext4_extent_header, ptr %194, i32 0, i32 1
  %700 = load i16, ptr %699, align 2
  %701 = icmp eq i16 %700, 0
  br i1 %701, label %702, label %708

702:                                              ; preds = %698
  %703 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %181, i32 6
  %704 = load ptr, ptr %703, align 8
  %705 = icmp eq ptr %704, null
  br i1 %705, label %708, label %706

706:                                              ; preds = %702
  %707 = call fastcc i32 @ext4_ext_rm_idx(ptr noundef %21, ptr noundef %0, ptr noundef %175, i32 noundef %181) #13
  br label %708

708:                                              ; preds = %706, %702, %698, %696, %605, %359, %352, %283, %192
  %709 = phi i32 [ -117, %192 ], [ -117, %283 ], [ %355, %352 ], [ %707, %706 ], [ 0, %702 ], [ 0, %698 ], [ %629, %696 ], [ %606, %605 ], [ %361, %359 ]
  %710 = load ptr, ptr %4, align 4
  %711 = getelementptr %struct.ext4_ext_path, ptr %710, i32 %139, i32 6
  %712 = load ptr, ptr %711, align 8
  %713 = icmp eq ptr %712, null
  br i1 %713, label %716, label %714

714:                                              ; preds = %708
  call void @__brelse(ptr noundef nonnull %712) #13
  %715 = load ptr, ptr %4, align 4
  br label %716

716:                                              ; preds = %714, %708
  %717 = phi ptr [ %710, %708 ], [ %715, %714 ]
  %718 = getelementptr %struct.ext4_ext_path, ptr %717, i32 %139, i32 6
  store ptr null, ptr %718, align 8
  br label %719

719:                                              ; preds = %815, %790, %716
  %720 = phi i32 [ %709, %716 ], [ 0, %790 ], [ %809, %815 ]
  %721 = phi i32 [ %171, %716 ], [ %787, %790 ], [ %818, %815 ]
  %722 = icmp sgt i32 %721, -1
  %723 = icmp eq i32 %720, 0
  %724 = select i1 %722, i1 %723, i1 false
  br i1 %724, label %172, label %819

725:                                              ; preds = %172
  %726 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %173, i32 5
  %727 = load ptr, ptr %726, align 4
  %728 = icmp eq ptr %727, null
  br i1 %728, label %729, label %735

729:                                              ; preds = %725
  %730 = getelementptr %struct.ext4_ext_path, ptr %175, i32 %173, i32 6
  %731 = load ptr, ptr %730, align 8
  %732 = getelementptr inbounds %struct.buffer_head, ptr %731, i32 0, i32 5
  %733 = load ptr, ptr %732, align 4
  store ptr %733, ptr %726, align 4
  %734 = load ptr, ptr %4, align 4
  br label %735

735:                                              ; preds = %729, %725
  %736 = phi ptr [ %734, %729 ], [ %175, %725 ]
  %737 = getelementptr %struct.ext4_ext_path, ptr %736, i32 %173, i32 4
  %738 = load ptr, ptr %737, align 8
  %739 = icmp eq ptr %738, null
  br i1 %739, label %740, label %756

740:                                              ; preds = %735
  %741 = getelementptr %struct.ext4_ext_path, ptr %736, i32 %173, i32 5
  %742 = load ptr, ptr %741, align 4
  %743 = getelementptr inbounds %struct.ext4_extent_header, ptr %742, i32 0, i32 1
  %744 = load i16, ptr %743, align 2
  %745 = zext i16 %744 to i32
  %746 = getelementptr %struct.ext4_extent_idx, ptr %742, i32 %745
  store ptr %746, ptr %737, align 8
  %747 = load ptr, ptr %4, align 4
  %748 = getelementptr %struct.ext4_ext_path, ptr %747, i32 %173
  %749 = getelementptr %struct.ext4_ext_path, ptr %747, i32 %173, i32 5
  %750 = load ptr, ptr %749, align 4
  %751 = getelementptr inbounds %struct.ext4_extent_header, ptr %750, i32 0, i32 1
  %752 = load i16, ptr %751, align 2
  %753 = zext i16 %752 to i32
  %754 = add nuw nsw i32 %753, 1
  %755 = zext i32 %754 to i64
  store i64 %755, ptr %748, align 8
  br label %759

756:                                              ; preds = %735
  %757 = getelementptr %struct.ext4_extent_idx, ptr %738, i32 -1
  store ptr %757, ptr %737, align 8
  %758 = load ptr, ptr %4, align 4
  br label %759

759:                                              ; preds = %756, %740
  %760 = phi ptr [ %758, %756 ], [ %747, %740 ]
  %761 = getelementptr %struct.ext4_ext_path, ptr %760, i32 %173
  %762 = getelementptr %struct.ext4_ext_path, ptr %760, i32 %173, i32 4
  %763 = load ptr, ptr %762, align 8
  %764 = icmp eq ptr %763, null
  br i1 %764, label %765, label %766, !prof !8

765:                                              ; preds = %759
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2793, 0\0A.popsection", ""() #13, !srcloc !37
  unreachable

766:                                              ; preds = %759
  %767 = getelementptr %struct.ext4_ext_path, ptr %760, i32 %173, i32 5
  %768 = load ptr, ptr %767, align 4
  %769 = getelementptr i8, ptr %768, i32 12
  %770 = icmp ult ptr %763, %769
  %771 = getelementptr inbounds %struct.ext4_extent_header, ptr %768, i32 0, i32 1
  %772 = load i16, ptr %771, align 2
  br i1 %770, label %800, label %773

773:                                              ; preds = %766
  %774 = zext i16 %772 to i64
  %775 = load i64, ptr %761, align 8
  %776 = icmp eq i64 %775, %774
  br i1 %776, label %800, label %777

777:                                              ; preds = %773
  %778 = getelementptr %struct.ext4_ext_path, ptr %761, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %778, i8 0, i32 32, i1 false)
  %779 = xor i32 %173, -1
  %780 = add i32 %779, %139
  %781 = call fastcc ptr @__read_extent_tree_block(ptr noundef nonnull @__func__.ext4_ext_remove_space, i32 noundef 2990, ptr noundef %0, ptr noundef nonnull %763, i32 noundef %780, i32 noundef 1073741824)
  %782 = icmp ugt ptr %781, inttoptr (i32 -4096 to ptr)
  br i1 %782, label %783, label %785

783:                                              ; preds = %777
  %784 = ptrtoint ptr %781 to i32
  br label %819

785:                                              ; preds = %777
  %786 = call i32 @__cond_resched() #13
  %787 = add nuw i32 %173, 1
  %788 = icmp sgt i32 %787, %139
  br i1 %788, label %789, label %790, !prof !8

789:                                              ; preds = %785
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2999, i32 noundef 9, ptr noundef null) #13
  br label %819

790:                                              ; preds = %785
  %791 = load ptr, ptr %4, align 4
  %792 = getelementptr %struct.ext4_ext_path, ptr %791, i32 %787, i32 6
  store ptr %781, ptr %792, align 8
  %793 = load ptr, ptr %4, align 4
  %794 = getelementptr %struct.ext4_ext_path, ptr %793, i32 %173
  %795 = getelementptr %struct.ext4_ext_path, ptr %793, i32 %173, i32 5
  %796 = load ptr, ptr %795, align 4
  %797 = getelementptr inbounds %struct.ext4_extent_header, ptr %796, i32 0, i32 1
  %798 = load i16, ptr %797, align 2
  %799 = zext i16 %798 to i64
  store i64 %799, ptr %794, align 8
  br label %719

800:                                              ; preds = %773, %766
  %801 = icmp eq i16 %772, 0
  %802 = icmp ne i32 %173, 0
  %803 = select i1 %801, i1 %802, i1 false
  br i1 %803, label %804, label %807

804:                                              ; preds = %800
  %805 = call fastcc i32 @ext4_ext_rm_idx(ptr noundef %21, ptr noundef %0, ptr noundef %760, i32 noundef %173)
  %806 = load ptr, ptr %4, align 4
  br label %807

807:                                              ; preds = %804, %800
  %808 = phi ptr [ %806, %804 ], [ %760, %800 ]
  %809 = phi i32 [ %805, %804 ], [ 0, %800 ]
  %810 = getelementptr %struct.ext4_ext_path, ptr %808, i32 %173, i32 6
  %811 = load ptr, ptr %810, align 8
  %812 = icmp eq ptr %811, null
  br i1 %812, label %815, label %813

813:                                              ; preds = %807
  call void @__brelse(ptr noundef nonnull %811) #13
  %814 = load ptr, ptr %4, align 4
  br label %815

815:                                              ; preds = %813, %807
  %816 = phi ptr [ %808, %807 ], [ %814, %813 ]
  %817 = getelementptr %struct.ext4_ext_path, ptr %816, i32 %173, i32 6
  store ptr null, ptr %817, align 8
  %818 = add nsw i32 %173, -1
  br label %719

819:                                              ; preds = %789, %783, %719
  %820 = phi i32 [ -117, %789 ], [ %784, %783 ], [ %720, %719 ]
  %821 = load ptr, ptr %4, align 4
  %822 = getelementptr inbounds %struct.ext4_ext_path, ptr %821, i32 0, i32 5
  %823 = load ptr, ptr %822, align 4
  %824 = getelementptr inbounds %struct.ext4_extent_header, ptr %823, i32 0, i32 1
  %825 = load i16, ptr %824, align 2
  %826 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_remove_space_done, i32 0, i32 1), align 4
  %827 = icmp sgt i32 %826, 0
  br i1 %827, label %828, label %841

828:                                              ; preds = %819
  %829 = tail call ptr @llvm.thread.pointer() #13
  %830 = getelementptr inbounds %struct.thread_info, ptr %829, i32 0, i32 2
  %831 = load i32, ptr %830, align 8
  %832 = lshr i32 %831, 5
  %833 = getelementptr i32, ptr @__cpu_online_mask, i32 %832
  %834 = load volatile i32, ptr %833, align 4
  %835 = and i32 %831, 31
  %836 = shl nuw i32 1, %835
  %837 = and i32 %836, %834
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %841, label %839

839:                                              ; preds = %828
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %840 = call i32 @__traceiter_ext4_ext_remove_space_done(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %139, ptr noundef nonnull %5, i16 noundef zeroext %825) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  br label %841

841:                                              ; preds = %839, %828, %819
  %842 = load i32, ptr %16, align 4
  %843 = icmp eq i32 %842, 1
  %844 = icmp eq i32 %820, 0
  %845 = select i1 %843, i1 %844, i1 false
  br i1 %845, label %846, label %891

846:                                              ; preds = %841
  %847 = load i16, ptr %0, align 8
  %848 = and i16 %847, -4096
  switch i16 %848, label %849 [
    i16 16384, label %857
    i16 -24576, label %857
  ]

849:                                              ; preds = %846
  %850 = load volatile i32, ptr %30, align 4
  %851 = and i32 %850, 2097152
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %853, label %857

853:                                              ; preds = %849
  %854 = call i32 @ext4_inode_journal_mode(ptr noundef %0) #13
  %855 = shl i32 %854, 1
  %856 = and i32 %855, 2
  br label %857

857:                                              ; preds = %853, %849, %846, %846
  %858 = phi i32 [ 3, %846 ], [ 3, %846 ], [ 3, %849 ], [ %856, %853 ]
  %859 = load i32, ptr %15, align 8
  %860 = call zeroext i1 @ext4_is_pending(ptr noundef %0, i32 noundef %859) #13
  %861 = or i32 %858, 64
  %862 = select i1 %860, i32 %861, i32 %858
  %863 = load i64, ptr %5, align 8
  %864 = load i32, ptr %25, align 16
  %865 = zext i32 %864 to i64
  %866 = shl i64 %863, %865
  %867 = load i32, ptr %18, align 4
  call void @ext4_free_blocks(ptr noundef %21, ptr noundef %0, ptr noundef null, i64 noundef %866, i32 noundef %867, i32 noundef %862) #13
  %868 = and i32 %862, 64
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %890, label %870

870:                                              ; preds = %857
  %871 = load i32, ptr %15, align 8
  %872 = load ptr, ptr %8, align 4
  %873 = getelementptr inbounds %struct.super_block, ptr %872, i32 0, i32 27
  %874 = load ptr, ptr %873, align 4
  %875 = getelementptr inbounds %struct.ext4_sb_info, ptr %874, i32 0, i32 12
  %876 = load i32, ptr %875, align 16
  %877 = shl nuw i32 1, %876
  %878 = sext i32 %877 to i64
  %879 = load i8, ptr %31, align 2
  %880 = zext i8 %879 to i64
  %881 = shl i64 %878, %880
  call void @inode_sub_bytes(ptr noundef %0, i64 noundef %881) #13
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #13
  call void @_raw_spin_lock(ptr noundef %32) #13
  %882 = load i32, ptr %33, align 4
  %883 = add i32 %882, 1
  store i32 %883, ptr %33, align 4
  %884 = getelementptr inbounds %struct.ext4_sb_info, ptr %874, i32 0, i32 39
  %885 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %884, i64 noundef 1, i32 noundef %885) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %886 = load i16, ptr %32, align 4
  %887 = add i16 %886, 1
  store i16 %887, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !34
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !35
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %888 = getelementptr inbounds %struct.ext4_sb_info, ptr %874, i32 0, i32 36
  %889 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %888, i64 noundef 1, i32 noundef %889) #13
  call void @ext4_remove_pending(ptr noundef %0, i32 noundef %871) #13
  br label %890

890:                                              ; preds = %870, %857
  store i32 0, ptr %16, align 4
  br label %891

891:                                              ; preds = %890, %841
  %892 = load ptr, ptr %4, align 4
  %893 = getelementptr inbounds %struct.ext4_ext_path, ptr %892, i32 0, i32 5
  %894 = load ptr, ptr %893, align 4
  %895 = getelementptr inbounds %struct.ext4_extent_header, ptr %894, i32 0, i32 1
  %896 = load i16, ptr %895, align 2
  %897 = icmp eq i16 %896, 0
  br i1 %897, label %898, label %912

898:                                              ; preds = %891
  %899 = getelementptr inbounds %struct.ext4_ext_path, ptr %892, i32 0, i32 6
  %900 = load ptr, ptr %899, align 8
  %901 = icmp eq ptr %900, null
  br i1 %901, label %909, label %902

902:                                              ; preds = %898
  %903 = load ptr, ptr %8, align 4
  %904 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %21, ptr noundef %903, ptr noundef nonnull %900, i32 noundef 1) #13
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %912

906:                                              ; preds = %902
  %907 = load ptr, ptr %899, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %907) #13
  %908 = load ptr, ptr %4, align 4
  br label %909

909:                                              ; preds = %906, %898
  %910 = phi ptr [ %908, %906 ], [ %892, %898 ]
  store i16 0, ptr %12, align 2
  store i16 4, ptr %37, align 4
  %911 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_remove_space, i32 noundef 3056, ptr noundef %21, ptr noundef %0, ptr noundef %910)
  br label %912

912:                                              ; preds = %909, %902, %891, %163, %134
  %913 = phi i32 [ %911, %909 ], [ %820, %891 ], [ -117, %163 ], [ %135, %134 ], [ %904, %902 ]
  %914 = phi i32 [ %139, %909 ], [ %139, %891 ], [ %139, %163 ], [ %68, %134 ], [ %139, %902 ]
  %915 = load ptr, ptr %4, align 4
  %916 = icmp eq ptr %915, null
  br i1 %916, label %934, label %917

917:                                              ; preds = %912
  %918 = getelementptr inbounds %struct.ext4_ext_path, ptr %915, i32 0, i32 1
  %919 = load i16, ptr %918, align 8
  %920 = zext i16 %919 to i32
  br label %921

921:                                              ; preds = %928, %917
  %922 = phi i32 [ 0, %917 ], [ %929, %928 ]
  %923 = phi ptr [ %915, %917 ], [ %930, %928 ]
  %924 = getelementptr inbounds %struct.ext4_ext_path, ptr %923, i32 0, i32 6
  %925 = load ptr, ptr %924, align 8
  %926 = icmp eq ptr %925, null
  br i1 %926, label %928, label %927

927:                                              ; preds = %921
  call void @__brelse(ptr noundef nonnull %925) #13
  br label %928

928:                                              ; preds = %927, %921
  store ptr null, ptr %924, align 8
  %929 = add nuw nsw i32 %922, 1
  %930 = getelementptr %struct.ext4_ext_path, ptr %923, i32 1
  %931 = icmp eq i32 %922, %920
  br i1 %931, label %932, label %921

932:                                              ; preds = %928
  %933 = load ptr, ptr %4, align 4
  br label %934

934:                                              ; preds = %932, %912
  %935 = phi ptr [ %933, %932 ], [ null, %912 ]
  call void @kfree(ptr noundef %935) #13
  store ptr null, ptr %4, align 4
  %936 = icmp eq i32 %913, -11
  br i1 %936, label %40, label %937

937:                                              ; preds = %934
  %938 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_remove_space, i32 noundef 3065, ptr noundef %21) #13
  br label %939

939:                                              ; preds = %937, %161, %62, %38
  %940 = phi i32 [ %39, %38 ], [ %913, %937 ], [ -12, %161 ], [ %65, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %940
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_search_right(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %5
  %8 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_search_right, i32 noundef 1539, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %8) #13
  br label %136

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ext4_ext_path, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  store i64 0, ptr %3, align 8
  %13 = icmp eq i16 %11, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ext4_ext_path, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %136, label %18

18:                                               ; preds = %14, %9
  %19 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %12, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_extent, ptr %20, i32 0, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = icmp ult i16 %22, -32767
  %25 = add nsw i32 %23, -32768
  %26 = select i1 %24, i32 %23, i32 %25
  %27 = load i32, ptr %2, align 4
  %28 = load i32, ptr %20, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %18
  %31 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %12, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  %34 = icmp eq ptr %33, %20
  br i1 %34, label %36, label %35, !prof !10

35:                                               ; preds = %30
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_search_right, i32 noundef 1558, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %12) #13
  br label %136

36:                                               ; preds = %39, %30
  %37 = phi i32 [ %40, %39 ], [ %12, %30 ]
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %117

39:                                               ; preds = %36
  %40 = add nsw i32 %37, -1
  %41 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %40, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %40, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 12
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %36, label %47, !prof !10

47:                                               ; preds = %39
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_search_right, i32 noundef 1566, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %27) #13
  br label %136

48:                                               ; preds = %18
  %49 = add i32 %26, %28
  %50 = icmp ult i32 %27, %49
  br i1 %50, label %51, label %52, !prof !8

51:                                               ; preds = %48
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_search_right, i32 noundef 1576, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %27, i32 noundef %28, i32 noundef %26) #13
  br label %136

52:                                               ; preds = %48
  %53 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %12, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  %56 = getelementptr inbounds %struct.ext4_extent_header, ptr %54, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr %struct.ext4_extent, ptr %55, i32 %58
  %60 = getelementptr %struct.ext4_extent, ptr %59, i32 -1
  %61 = icmp eq ptr %20, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %52
  %63 = getelementptr %struct.ext4_extent, ptr %20, i32 1
  br label %117

64:                                               ; preds = %67, %52
  %65 = phi i32 [ %68, %67 ], [ %12, %52 ]
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %136

67:                                               ; preds = %64
  %68 = add nsw i32 %65, -1
  %69 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %68, i32 4
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %68, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ext4_extent_header, ptr %72, i32 0, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = getelementptr %struct.ext4_extent_idx, ptr %72, i32 %75
  %77 = icmp eq ptr %70, %76
  br i1 %77, label %64, label %78

78:                                               ; preds = %67
  %79 = getelementptr %struct.ext4_extent_idx, ptr %70, i32 1
  %80 = load i16, ptr %10, align 8
  %81 = zext i16 %80 to i32
  %82 = icmp ult i32 %65, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %92, %78
  %84 = phi i32 [ %100, %92 ], [ %81, %78 ]
  %85 = phi i32 [ %98, %92 ], [ %65, %78 ]
  %86 = phi ptr [ %95, %92 ], [ %79, %78 ]
  %87 = sub i32 %84, %85
  %88 = tail call fastcc ptr @__read_extent_tree_block(ptr noundef nonnull @__func__.ext4_ext_search_right, i32 noundef 1603, ptr noundef %0, ptr noundef %86, i32 noundef %87, i32 noundef 0)
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = ptrtoint ptr %88 to i32
  br label %136

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.buffer_head, ptr %88, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %96 = getelementptr inbounds %struct.buffer_head, ptr %88, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #13, !srcloc !17
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #13, !srcloc !18
  %98 = add nsw i32 %85, 1
  %99 = load i16, ptr %10, align 8
  %100 = zext i16 %99 to i32
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %83, label %102

102:                                              ; preds = %92
  %103 = zext i16 %99 to i32
  br label %104

104:                                              ; preds = %102, %78
  %105 = phi i32 [ %81, %78 ], [ %103, %102 ]
  %106 = phi ptr [ %79, %78 ], [ %95, %102 ]
  %107 = phi i32 [ %65, %78 ], [ %98, %102 ]
  %108 = sub i32 %105, %107
  %109 = tail call fastcc ptr @__read_extent_tree_block(ptr noundef nonnull @__func__.ext4_ext_search_right, i32 noundef 1611, ptr noundef %0, ptr noundef %106, i32 noundef %108, i32 noundef 0)
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = ptrtoint ptr %109 to i32
  br label %136

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.buffer_head, ptr %109, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 12
  br label %117

117:                                              ; preds = %113, %62, %36
  %118 = phi ptr [ null, %62 ], [ %109, %113 ], [ null, %36 ]
  %119 = phi ptr [ %63, %62 ], [ %116, %113 ], [ %20, %36 ]
  %120 = load i32, ptr %119, align 4
  store i32 %120, ptr %2, align 4
  %121 = getelementptr inbounds %struct.ext4_extent, ptr %119, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ext4_extent, ptr %119, i32 0, i32 2
  %125 = load i16, ptr %124, align 2
  %126 = zext i16 %125 to i64
  %127 = shl nuw nsw i64 %126, 32
  %128 = or i64 %127, %123
  store i64 %128, ptr %3, align 8
  %129 = icmp eq ptr %4, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %117
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef align 4 dereferenceable(12) %119, i32 12, i1 false)
  br label %131

131:                                              ; preds = %130, %117
  %132 = icmp eq ptr %118, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %131
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %134 = getelementptr inbounds %struct.buffer_head, ptr %118, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %134) #13, !srcloc !17
  %135 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 1, ptr elementtype(i32) %134) #13, !srcloc !18
  br label %136

136:                                              ; preds = %133, %131, %111, %90, %64, %51, %47, %35, %14, %7
  %137 = phi i32 [ -117, %7 ], [ -117, %35 ], [ -117, %47 ], [ -117, %51 ], [ %91, %90 ], [ %112, %111 ], [ 0, %14 ], [ 1, %133 ], [ 1, %131 ], [ 0, %64 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_rm_idx(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = add i32 %3, -1
  %6 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %5
  %7 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %5, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ext4_extent_idx, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ext4_extent_idx, ptr %8, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i64
  %15 = shl nuw nsw i64 %14, 32
  %16 = or i64 %15, %11
  %17 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %5, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_extent_header, ptr %18, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %4
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_rm_idx, i32 noundef 2305, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.35) #13
  br label %111

23:                                               ; preds = %4
  %24 = getelementptr %struct.ext4_ext_path, ptr %2, i32 %5, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %29, ptr noundef nonnull %25, i32 noundef 1) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %111

32:                                               ; preds = %27
  %33 = load ptr, ptr %24, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %33) #13
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr inbounds %struct.ext4_extent_header, ptr %35, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  br label %38

38:                                               ; preds = %32, %23
  %39 = phi i16 [ %37, %32 ], [ %20, %23 ]
  %40 = phi ptr [ %35, %32 ], [ %18, %23 ]
  %41 = phi ptr [ %34, %32 ], [ %8, %23 ]
  %42 = getelementptr i8, ptr %40, i32 12
  %43 = zext i16 %39 to i32
  %44 = getelementptr %struct.ext4_extent_idx, ptr %42, i32 %43
  %45 = getelementptr %struct.ext4_extent_idx, ptr %44, i32 -1
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = ptrtoint ptr %45 to i32
  %49 = ptrtoint ptr %41 to i32
  %50 = sub i32 %48, %49
  %51 = getelementptr %struct.ext4_extent_idx, ptr %41, i32 1
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %41, ptr align 4 %51, i32 %50, i1 false)
  %52 = load ptr, ptr %17, align 4
  %53 = getelementptr inbounds %struct.ext4_extent_header, ptr %52, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  br label %55

55:                                               ; preds = %47, %38
  %56 = phi i16 [ %54, %47 ], [ %39, %38 ]
  %57 = phi ptr [ %52, %47 ], [ %40, %38 ]
  %58 = getelementptr inbounds %struct.ext4_extent_header, ptr %57, i32 0, i32 1
  %59 = add i16 %56, -1
  store i16 %59, ptr %58, align 2
  %60 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_rm_idx, i32 noundef 2319, ptr noundef %0, ptr noundef %1, ptr noundef %6)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %111

62:                                               ; preds = %55
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_rm_idx, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = tail call ptr @llvm.thread.pointer() #13
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %77 = tail call i32 @__traceiter_ext4_ext_rm_idx(ptr noundef null, ptr noundef %1, i64 noundef %16) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %78

78:                                               ; preds = %76, %65, %62
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %16, i32 noundef 1, i32 noundef 3) #13
  %79 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %80

80:                                               ; preds = %104, %78
  %81 = phi i32 [ %5, %78 ], [ %83, %104 ]
  %82 = phi ptr [ %6, %78 ], [ %93, %104 ]
  %83 = add i32 %81, -1
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.ext4_ext_path, ptr %82, i32 0, i32 4
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.ext4_ext_path, ptr %82, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 12
  %91 = icmp eq ptr %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %85
  %93 = getelementptr %struct.ext4_ext_path, ptr %82, i32 -1
  %94 = getelementptr %struct.ext4_ext_path, ptr %82, i32 -1, i32 6
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %79, align 4
  %99 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %98, ptr noundef nonnull %95, i32 noundef 1) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load ptr, ptr %94, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %102) #13
  %103 = load ptr, ptr %86, align 8
  br label %104

104:                                              ; preds = %101, %92
  %105 = phi ptr [ %103, %101 ], [ %87, %92 ]
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr %struct.ext4_ext_path, ptr %82, i32 -1, i32 4
  %108 = load ptr, ptr %107, align 8
  store i32 %106, ptr %108, align 4
  %109 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_rm_idx, i32 noundef 2336, ptr noundef %0, ptr noundef %1, ptr noundef %93)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %80, label %111

111:                                              ; preds = %104, %97, %85, %80, %55, %27, %22
  %112 = phi i32 [ -117, %22 ], [ %60, %55 ], [ %30, %27 ], [ %99, %97 ], [ 0, %80 ], [ %109, %104 ], [ 0, %85 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ext4_is_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ext4_ext_init(ptr nocapture noundef %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ext4_ext_release(ptr nocapture noundef %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.extent_status, align 8
  %6 = alloca %struct.ext4_map_blocks, align 8
  %7 = alloca %struct.ext4_extent, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.ext4_extent, align 4
  %10 = alloca %struct.ext4_extent, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_allocation_request, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i32 12, i1 false), !annotation !11
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i32 56, i1 false), !annotation !11
  %17 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_map_blocks_enter, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = tail call ptr @llvm.thread.pointer() #13
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  %35 = tail call i32 @__traceiter_ext4_ext_map_blocks_enter(ptr noundef null, ptr noundef %1, i32 noundef %18, i32 noundef %20, i32 noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !43
  %36 = load i32, ptr %17, align 8
  br label %37

37:                                               ; preds = %34, %23, %4
  %38 = phi i32 [ %18, %4 ], [ %18, %23 ], [ %36, %34 ]
  %39 = tail call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %38, ptr noundef null, i32 noundef 0)
  store ptr %39, ptr %8, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %39 to i32
  store i32 %42, ptr %11, align 4
  store ptr null, ptr %8, align 4
  br label %1185

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %1, i32 -202
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %46, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  %50 = icmp ne i16 %45, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56, !prof !8

52:                                               ; preds = %43
  %53 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %46
  %54 = load i32, ptr %17, align 8
  %55 = load i64, ptr %53, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_map_blocks, i32 noundef 4116, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %54, i32 noundef %46, i64 noundef %55) #13
  store i32 -117, ptr %11, align 4
  br label %1164

56:                                               ; preds = %43
  %57 = icmp ne ptr %48, null
  br i1 %57, label %58, label %802

58:                                               ; preds = %56
  %59 = load i32, ptr %48, align 4
  %60 = getelementptr inbounds %struct.ext4_extent, ptr %48, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ext4_extent, ptr %48, i32 0, i32 2
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i64
  %66 = shl nuw nsw i64 %65, 32
  %67 = or i64 %66, %62
  %68 = getelementptr inbounds %struct.ext4_extent, ptr %48, i32 0, i32 1
  %69 = load i16, ptr %68, align 4
  %70 = zext i16 %69 to i32
  %71 = icmp ult i16 %69, -32767
  %72 = add nsw i32 %70, -32768
  %73 = select i1 %71, i32 %70, i32 %72
  %74 = trunc i32 %73 to i16
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_show_extent, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %58
  %78 = tail call ptr @llvm.thread.pointer() #13
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !44
  %89 = tail call i32 @__traceiter_ext4_ext_show_extent(ptr noundef null, ptr noundef %1, i32 noundef %59, i64 noundef %67, i16 noundef zeroext %74) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  br label %90

90:                                               ; preds = %88, %77, %58
  %91 = load i32, ptr %17, align 8
  %92 = icmp ult i32 %91, %59
  br i1 %92, label %802, label %93

93:                                               ; preds = %90
  %94 = and i32 %73, 65535
  %95 = add i32 %59, -1
  %96 = add i32 %95, %94
  %97 = icmp ugt i32 %91, %96
  br i1 %97, label %802, label %98

98:                                               ; preds = %93
  %99 = sub i32 %91, %59
  %100 = zext i32 %99 to i64
  %101 = add nuw nsw i64 %67, %100
  %102 = sub i32 %94, %99
  %103 = load i16, ptr %68, align 4
  %104 = icmp ugt i16 %103, -32768
  %105 = and i32 %3, 256
  %106 = icmp eq i32 %105, 0
  %107 = or i1 %106, %104
  br i1 %107, label %204, label %108

108:                                              ; preds = %98
  %109 = load i32, ptr %19, align 4
  %110 = icmp ugt i32 %109, 32767
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 16383, ptr %19, align 4
  br label %112

112:                                              ; preds = %111, %108
  %113 = phi i32 [ 16383, %111 ], [ %109, %108 ]
  %114 = load i16, ptr %44, align 2
  %115 = zext i16 %114 to i32
  %116 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %115, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, %91
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.ext4_extent, ptr %117, i32 0, i32 1
  %122 = load i16, ptr %121, align 4
  %123 = icmp ult i16 %122, -32767
  %124 = zext i16 %122 to i32
  %125 = add nsw i32 %124, -32768
  %126 = select i1 %123, i32 %124, i32 %125
  %127 = icmp ugt i32 %126, %113
  br i1 %127, label %128, label %145

128:                                              ; preds = %120, %112
  %129 = call fastcc i32 @ext4_split_extent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %2, i32 noundef 8, i32 noundef 264) #13
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %201, label %131

131:                                              ; preds = %128
  %132 = load i32, ptr %17, align 8
  %133 = call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %132, ptr noundef nonnull %8, i32 noundef 0) #13
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = ptrtoint ptr %133 to i32
  br label %201

137:                                              ; preds = %131
  %138 = load i16, ptr %44, align 2
  %139 = zext i16 %138 to i32
  %140 = getelementptr %struct.ext4_ext_path, ptr %133, i32 %139, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, ptr %17, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.convert_initialized_extent, i32 noundef 3814, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %144) #13
  br label %201

145:                                              ; preds = %137, %120
  %146 = phi ptr [ %133, %137 ], [ %39, %120 ]
  %147 = phi ptr [ %141, %137 ], [ %117, %120 ]
  %148 = phi i32 [ %139, %137 ], [ %115, %120 ]
  %149 = getelementptr %struct.ext4_ext_path, ptr %146, i32 %148, i32 6
  %150 = load ptr, ptr %149, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %145
  %153 = load ptr, ptr %13, align 4
  %154 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %153, ptr noundef nonnull %150, i32 noundef 1) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %201

156:                                              ; preds = %152
  %157 = load ptr, ptr %149, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %157) #13
  br label %158

158:                                              ; preds = %156, %145
  %159 = getelementptr inbounds %struct.ext4_extent, ptr %147, i32 0, i32 1
  %160 = load i16, ptr %159, align 4
  %161 = and i16 %160, 32767
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %164, !prof !8

163:                                              ; preds = %158
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

164:                                              ; preds = %158
  %165 = or i16 %160, -32768
  store i16 %165, ptr %159, align 4
  call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr noundef %146, ptr noundef %147) #13
  %166 = getelementptr inbounds %struct.ext4_ext_path, ptr %146, i32 0, i32 1
  %167 = load i16, ptr %166, align 8
  %168 = zext i16 %167 to i32
  %169 = getelementptr %struct.ext4_ext_path, ptr %146, i32 %168
  %170 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.convert_initialized_extent, i32 noundef 3831, ptr noundef %0, ptr noundef %1, ptr noundef %169) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %164
  %173 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %173, label %195, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %195

179:                                              ; preds = %174
  %180 = load ptr, ptr %0, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %195, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %180, align 8
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.transaction_s, ptr %180, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr i8, ptr %1, i32 520
  store i32 %189, ptr %190, align 8
  %191 = load ptr, ptr %0, align 4
  %192 = getelementptr inbounds %struct.transaction_s, ptr %191, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr i8, ptr %1, i32 524
  store i32 %193, ptr %194, align 4
  br label %195

195:                                              ; preds = %187, %182, %179, %174, %172
  %196 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %197 = load i32, ptr %196, align 8
  %198 = or i32 %197, 2048
  store i32 %198, ptr %196, align 8
  %199 = load i32, ptr %19, align 4
  %200 = call i32 @llvm.umin.i32(i32 %102, i32 %199)
  store i32 %200, ptr %19, align 4
  br label %201

201:                                              ; preds = %195, %164, %152, %143, %135, %128
  %202 = phi i32 [ %102, %128 ], [ %102, %135 ], [ %102, %143 ], [ %200, %195 ], [ %102, %164 ], [ %102, %152 ]
  %203 = phi i32 [ %129, %128 ], [ %136, %135 ], [ -117, %143 ], [ 0, %195 ], [ %170, %164 ], [ %154, %152 ]
  store i32 %203, ptr %11, align 4
  br label %1164

204:                                              ; preds = %98
  br i1 %104, label %211, label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %207 = load i32, ptr %206, align 8
  %208 = or i32 %207, 16
  store i32 %208, ptr %206, align 8
  store i64 %101, ptr %2, align 8
  %209 = load i32, ptr %19, align 4
  %210 = tail call i32 @llvm.umin.i32(i32 %102, i32 %209)
  store i32 %210, ptr %19, align 4
  br label %1164

211:                                              ; preds = %204
  %212 = or i32 %3, 32
  %213 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_handle_unwritten_extents, i32 0, i32 1), align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %211
  %216 = tail call ptr @llvm.thread.pointer() #13
  %217 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 2
  %218 = load i32, ptr %217, align 8
  %219 = lshr i32 %218, 5
  %220 = getelementptr i32, ptr @__cpu_online_mask, i32 %219
  %221 = load volatile i32, ptr %220, align 4
  %222 = and i32 %218, 31
  %223 = shl nuw i32 1, %222
  %224 = and i32 %223, %221
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %215
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  %227 = tail call i32 @__traceiter_ext4_ext_handle_unwritten_extents(ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %212, i32 noundef %102, i64 noundef %101) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !47
  br label %228

228:                                              ; preds = %226, %215, %211
  %229 = and i32 %3, 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %274, label %231

231:                                              ; preds = %228
  %232 = getelementptr i8, ptr %1, i32 -32
  %233 = load i64, ptr %232, align 8
  %234 = load ptr, ptr %13, align 4
  %235 = getelementptr inbounds %struct.super_block, ptr %234, i32 0, i32 3
  %236 = load i32, ptr %235, align 16
  %237 = zext i32 %236 to i64
  %238 = add i64 %233, -1
  %239 = add i64 %238, %237
  %240 = getelementptr inbounds %struct.super_block, ptr %234, i32 0, i32 2
  %241 = load i8, ptr %240, align 4
  %242 = zext i8 %241 to i64
  %243 = ashr i64 %239, %242
  %244 = trunc i64 %243 to i32
  %245 = load i32, ptr %17, align 8
  %246 = load i32, ptr %19, align 4
  %247 = add i32 %246, %245
  %248 = tail call i32 @llvm.umax.i32(i32 %247, i32 %244) #13
  %249 = load i16, ptr %44, align 2
  %250 = zext i16 %249 to i32
  %251 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %250, i32 3
  %252 = load ptr, ptr %251, align 4
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.ext4_extent, ptr %252, i32 0, i32 1
  %255 = load i16, ptr %254, align 4
  %256 = zext i16 %255 to i32
  %257 = icmp ult i16 %255, -32767
  %258 = add nsw i32 %256, -32768
  %259 = select i1 %257, i32 %256, i32 %258
  %260 = add i32 %259, %253
  %261 = icmp ule i32 %260, %248
  %262 = zext i1 %261 to i32
  %263 = or i32 %262, 20
  %264 = select i1 %106, i32 %263, i32 8
  %265 = or i32 %3, 56
  %266 = call fastcc i32 @ext4_split_extent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %2, i32 noundef %264, i32 noundef %265) #13
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %800, label %268

268:                                              ; preds = %231
  %269 = icmp eq i32 %266, 0
  br i1 %269, label %797, label %270, !prof !8

270:                                              ; preds = %268
  %271 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %272 = load i32, ptr %271, align 8
  %273 = or i32 %272, 2048
  br label %780

274:                                              ; preds = %228
  %275 = and i32 %3, 16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %377, label %277

277:                                              ; preds = %274
  %278 = load i16, ptr %44, align 2
  %279 = zext i16 %278 to i32
  %280 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %279, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds %struct.ext4_extent, ptr %281, i32 0, i32 1
  %284 = load i16, ptr %283, align 4
  %285 = zext i16 %284 to i32
  %286 = icmp ult i16 %284, -32767
  %287 = add nsw i32 %285, -32768
  %288 = select i1 %286, i32 %285, i32 %287
  %289 = load i32, ptr %17, align 8
  %290 = icmp ne i32 %282, %289
  %291 = load i32, ptr %19, align 4
  %292 = icmp ugt i32 %288, %291
  %293 = select i1 %290, i1 true, i1 %292
  br i1 %293, label %294, label %327

294:                                              ; preds = %277
  %295 = getelementptr i8, ptr %1, i32 -32
  %296 = load i64, ptr %295, align 8
  %297 = load ptr, ptr %13, align 4
  %298 = getelementptr inbounds %struct.super_block, ptr %297, i32 0, i32 3
  %299 = load i32, ptr %298, align 16
  %300 = zext i32 %299 to i64
  %301 = add i64 %296, -1
  %302 = add i64 %301, %300
  %303 = getelementptr inbounds %struct.super_block, ptr %297, i32 0, i32 2
  %304 = load i8, ptr %303, align 4
  %305 = zext i8 %304 to i64
  %306 = ashr i64 %302, %305
  %307 = trunc i64 %306 to i32
  %308 = add i32 %291, %289
  %309 = tail call i32 @llvm.umax.i32(i32 %308, i32 %307) #13
  %310 = add i32 %288, %282
  %311 = icmp ule i32 %310, %309
  %312 = zext i1 %311 to i32
  %313 = or i32 %312, 20
  %314 = call fastcc i32 @ext4_split_extent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %2, i32 noundef %313, i32 noundef 24) #13
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %800, label %316

316:                                              ; preds = %294
  %317 = load i32, ptr %17, align 8
  %318 = call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %317, ptr noundef nonnull %8, i32 noundef 0) #13
  %319 = icmp ugt ptr %318, inttoptr (i32 -4096 to ptr)
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = ptrtoint ptr %318 to i32
  br label %351

322:                                              ; preds = %316
  %323 = load i16, ptr %44, align 2
  %324 = zext i16 %323 to i32
  %325 = getelementptr %struct.ext4_ext_path, ptr %318, i32 %324, i32 3
  %326 = load ptr, ptr %325, align 4
  br label %327

327:                                              ; preds = %322, %277
  %328 = phi ptr [ %326, %322 ], [ %281, %277 ]
  %329 = phi ptr [ %318, %322 ], [ %39, %277 ]
  %330 = phi i32 [ %324, %322 ], [ %279, %277 ]
  %331 = getelementptr %struct.ext4_ext_path, ptr %329, i32 %330, i32 6
  %332 = load ptr, ptr %331, align 8
  %333 = icmp eq ptr %332, null
  br i1 %333, label %340, label %334

334:                                              ; preds = %327
  %335 = load ptr, ptr %13, align 4
  %336 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %335, ptr noundef nonnull %332, i32 noundef 1) #13
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %334
  %339 = load ptr, ptr %331, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %339) #13
  br label %340

340:                                              ; preds = %338, %327
  %341 = getelementptr inbounds %struct.ext4_extent, ptr %328, i32 0, i32 1
  %342 = load i16, ptr %341, align 4
  %343 = icmp ult i16 %342, -32767
  %344 = xor i16 %342, -32768
  %345 = select i1 %343, i16 %342, i16 %344
  store i16 %345, ptr %341, align 4
  call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr noundef %329, ptr noundef %328) #13
  %346 = getelementptr inbounds %struct.ext4_ext_path, ptr %329, i32 0, i32 1
  %347 = load i16, ptr %346, align 8
  %348 = zext i16 %347 to i32
  %349 = getelementptr %struct.ext4_ext_path, ptr %329, i32 %348
  %350 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_convert_unwritten_extents_endio, i32 noundef 3768, ptr noundef %0, ptr noundef %1, ptr noundef %349) #13
  br label %351

351:                                              ; preds = %340, %334, %320
  %352 = phi i32 [ %321, %320 ], [ %350, %340 ], [ %336, %334 ]
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %800, label %354

354:                                              ; preds = %351
  %355 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %355, label %785, label %356

356:                                              ; preds = %354
  %357 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %358 = load i32, ptr %357, align 4
  %359 = and i32 %358, 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %785

361:                                              ; preds = %356
  %362 = load ptr, ptr %0, align 4
  %363 = icmp eq ptr %362, null
  br i1 %363, label %785, label %364

364:                                              ; preds = %361
  %365 = load ptr, ptr %362, align 8
  %366 = load i32, ptr %365, align 8
  %367 = and i32 %366, 2
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %785

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.transaction_s, ptr %362, i32 0, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr i8, ptr %1, i32 520
  store i32 %371, ptr %372, align 8
  %373 = load ptr, ptr %0, align 4
  %374 = getelementptr inbounds %struct.transaction_s, ptr %373, i32 0, i32 1
  %375 = load i32, ptr %374, align 4
  %376 = getelementptr i8, ptr %1, i32 524
  store i32 %375, ptr %376, align 4
  br label %785

377:                                              ; preds = %274
  %378 = and i32 %3, 2
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %382 = load i32, ptr %381, align 8
  %383 = or i32 %382, 2048
  store i32 %383, ptr %381, align 8
  br label %785

384:                                              ; preds = %377
  %385 = and i32 %3, 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %389 = load i32, ptr %388, align 8
  %390 = or i32 %389, 2048
  store i32 %390, ptr %388, align 8
  store i64 %101, ptr %2, align 8
  %391 = load i32, ptr %19, align 4
  %392 = tail call i32 @llvm.umin.i32(i32 %391, i32 %102) #13
  store i32 %392, ptr %19, align 4
  br label %794

393:                                              ; preds = %384
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false) #13, !annotation !11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %394 = load i32, ptr %19, align 4
  %395 = load ptr, ptr %13, align 4
  %396 = getelementptr inbounds %struct.super_block, ptr %395, i32 0, i32 27
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr i8, ptr %1, i32 -32
  %399 = load i64, ptr %398, align 8
  %400 = getelementptr inbounds %struct.super_block, ptr %395, i32 0, i32 3
  %401 = load i32, ptr %400, align 16
  %402 = zext i32 %401 to i64
  %403 = add i64 %399, -1
  %404 = add i64 %403, %402
  %405 = getelementptr inbounds %struct.super_block, ptr %395, i32 0, i32 2
  %406 = load i8, ptr %405, align 4
  %407 = zext i8 %406 to i64
  %408 = ashr i64 %404, %407
  %409 = trunc i64 %408 to i32
  %410 = load i32, ptr %17, align 8
  %411 = add i32 %410, %394
  %412 = tail call i32 @llvm.umax.i32(i32 %411, i32 %409) #13
  %413 = load i16, ptr %44, align 2
  %414 = zext i16 %413 to i32
  %415 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %414
  %416 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %414, i32 5
  %417 = load ptr, ptr %416, align 4
  %418 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %414, i32 3
  %419 = load ptr, ptr %418, align 4
  %420 = load i32, ptr %419, align 4
  %421 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 1
  %422 = load i16, ptr %421, align 4
  %423 = zext i16 %422 to i32
  %424 = icmp ult i16 %422, -32767
  %425 = add nsw i32 %423, -32768
  %426 = select i1 %424, i32 %423, i32 %425
  %427 = getelementptr inbounds %struct.ext4_extent, ptr %7, i32 0, i32 1
  %428 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_convert_to_initialized_enter, i32 0, i32 1), align 4
  %429 = icmp sgt i32 %428, 0
  br i1 %429, label %430, label %444

430:                                              ; preds = %393
  %431 = tail call ptr @llvm.thread.pointer() #13
  %432 = getelementptr inbounds %struct.thread_info, ptr %431, i32 0, i32 2
  %433 = load i32, ptr %432, align 8
  %434 = lshr i32 %433, 5
  %435 = getelementptr i32, ptr @__cpu_online_mask, i32 %434
  %436 = load volatile i32, ptr %435, align 4
  %437 = and i32 %433, 31
  %438 = shl nuw i32 1, %437
  %439 = and i32 %438, %436
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %430
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  %442 = tail call i32 @__traceiter_ext4_ext_convert_to_initialized_enter(ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %419) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  %443 = load i16, ptr %421, align 4
  br label %444

444:                                              ; preds = %441, %430, %393
  %445 = phi i16 [ %422, %393 ], [ %422, %430 ], [ %443, %441 ]
  %446 = icmp ult i16 %445, -32767
  br i1 %446, label %447, label %448, !prof !8

447:                                              ; preds = %444
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3449, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

448:                                              ; preds = %444
  %449 = load i32, ptr %17, align 8
  %450 = icmp uge i32 %449, %420
  %451 = add i32 %426, %420
  %452 = add i32 %451, -1
  %453 = icmp ule i32 %449, %452
  %454 = select i1 %450, i1 %453, i1 false
  br i1 %454, label %456, label %455, !prof !10

455:                                              ; preds = %448
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3450, 0\0A.popsection", ""() #13, !srcloc !51
  unreachable

456:                                              ; preds = %448
  %457 = icmp eq i32 %449, %420
  %458 = icmp ugt i32 %426, %394
  %459 = select i1 %457, i1 %458, i1 false
  %460 = getelementptr i8, ptr %417, i32 12
  %461 = icmp ugt ptr %419, %460
  %462 = select i1 %459, i1 %461, i1 false
  br i1 %462, label %463, label %536

463:                                              ; preds = %456
  %464 = getelementptr %struct.ext4_extent, ptr %419, i32 -1
  %465 = load i32, ptr %464, align 4
  %466 = getelementptr %struct.ext4_extent, ptr %419, i32 -1, i32 1
  %467 = load i16, ptr %466, align 4
  %468 = zext i16 %467 to i32
  %469 = icmp ult i16 %467, -32767
  %470 = add nsw i32 %468, -32768
  %471 = select i1 %469, i32 %468, i32 %470
  %472 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 3
  %473 = load i32, ptr %472, align 4
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 2
  %476 = load i16, ptr %475, align 2
  %477 = zext i16 %476 to i64
  %478 = shl nuw nsw i64 %477, 32
  %479 = or i64 %478, %474
  %480 = add i32 %471, %465
  %481 = icmp eq i32 %480, %420
  %482 = select i1 %469, i1 %481, i1 false
  br i1 %482, label %483, label %615

483:                                              ; preds = %463
  %484 = getelementptr %struct.ext4_extent, ptr %419, i32 -1, i32 2
  %485 = load i16, ptr %484, align 2
  %486 = zext i16 %485 to i64
  %487 = shl nuw nsw i64 %486, 32
  %488 = getelementptr %struct.ext4_extent, ptr %419, i32 -1, i32 3
  %489 = load i32, ptr %488, align 4
  %490 = zext i32 %489 to i64
  %491 = or i64 %487, %490
  %492 = zext i32 %471 to i64
  %493 = add nuw nsw i64 %491, %492
  %494 = icmp eq i64 %493, %479
  %495 = sub i32 32768, %394
  %496 = icmp ult i32 %471, %495
  %497 = select i1 %494, i1 %496, i1 false
  br i1 %497, label %498, label %615

498:                                              ; preds = %483
  %499 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %414, i32 6
  %500 = load ptr, ptr %499, align 8
  %501 = icmp eq ptr %500, null
  br i1 %501, label %508, label %502

502:                                              ; preds = %498
  %503 = load ptr, ptr %13, align 4
  %504 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %503, ptr noundef nonnull %500, i32 noundef 1) #13
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %749

506:                                              ; preds = %502
  %507 = load ptr, ptr %499, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %507) #13
  br label %508

508:                                              ; preds = %506, %498
  %509 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_convert_to_initialized_fastpath, i32 0, i32 1), align 4
  %510 = icmp sgt i32 %509, 0
  br i1 %510, label %511, label %524

511:                                              ; preds = %508
  %512 = tail call ptr @llvm.thread.pointer() #13
  %513 = getelementptr inbounds %struct.thread_info, ptr %512, i32 0, i32 2
  %514 = load i32, ptr %513, align 8
  %515 = lshr i32 %514, 5
  %516 = getelementptr i32, ptr @__cpu_online_mask, i32 %515
  %517 = load volatile i32, ptr %516, align 4
  %518 = and i32 %514, 31
  %519 = shl nuw i32 1, %518
  %520 = and i32 %519, %517
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %524, label %522

522:                                              ; preds = %511
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  %523 = tail call i32 @__traceiter_ext4_ext_convert_to_initialized_fastpath(ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %419, ptr noundef %464) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !53
  br label %524

524:                                              ; preds = %522, %511, %508
  %525 = add i32 %420, %394
  store i32 %525, ptr %419, align 4
  %526 = zext i32 %394 to i64
  %527 = add nuw nsw i64 %479, %526
  %528 = trunc i64 %527 to i32
  store i32 %528, ptr %472, align 4
  %529 = lshr i64 %527, 32
  %530 = trunc i64 %529 to i16
  store i16 %530, ptr %475, align 2
  %531 = sub i32 %426, %394
  %532 = trunc i32 %531 to i16
  store i16 %532, ptr %421, align 4
  %533 = and i16 %532, 32767
  %534 = icmp eq i16 %533, 0
  br i1 %534, label %535, label %596, !prof !8

535:                                              ; preds = %524
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

536:                                              ; preds = %456
  %537 = add i32 %449, %394
  %538 = icmp eq i32 %537, %451
  %539 = and i1 %458, %538
  br i1 %539, label %540, label %609

540:                                              ; preds = %536
  %541 = getelementptr inbounds %struct.ext4_extent_header, ptr %417, i32 0, i32 1
  %542 = load i16, ptr %541, align 2
  %543 = zext i16 %542 to i32
  %544 = getelementptr %struct.ext4_extent, ptr %460, i32 %543
  %545 = getelementptr %struct.ext4_extent, ptr %544, i32 -1
  %546 = icmp ult ptr %419, %545
  br i1 %546, label %547, label %609

547:                                              ; preds = %540
  %548 = getelementptr %struct.ext4_extent, ptr %419, i32 1
  %549 = load i32, ptr %548, align 4
  %550 = getelementptr %struct.ext4_extent, ptr %419, i32 1, i32 1
  %551 = load i16, ptr %550, align 4
  %552 = zext i16 %551 to i32
  %553 = icmp ult i16 %551, -32767
  %554 = add nsw i32 %552, -32768
  %555 = select i1 %553, i32 %552, i32 %554
  %556 = getelementptr %struct.ext4_extent, ptr %419, i32 1, i32 3
  %557 = load i32, ptr %556, align 4
  %558 = zext i32 %557 to i64
  %559 = getelementptr %struct.ext4_extent, ptr %419, i32 1, i32 2
  %560 = load i16, ptr %559, align 2
  %561 = zext i16 %560 to i64
  %562 = shl nuw nsw i64 %561, 32
  %563 = or i64 %562, %558
  %564 = icmp eq i32 %451, %549
  %565 = select i1 %553, i1 %564, i1 false
  br i1 %565, label %566, label %609

566:                                              ; preds = %547
  %567 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 2
  %568 = load i16, ptr %567, align 2
  %569 = zext i16 %568 to i64
  %570 = shl nuw nsw i64 %569, 32
  %571 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 3
  %572 = load i32, ptr %571, align 4
  %573 = zext i32 %572 to i64
  %574 = or i64 %570, %573
  %575 = zext i32 %426 to i64
  %576 = add nuw nsw i64 %574, %575
  %577 = icmp eq i64 %576, %563
  %578 = sub i32 32768, %394
  %579 = icmp ult i32 %555, %578
  %580 = select i1 %577, i1 %579, i1 false
  br i1 %580, label %581, label %609

581:                                              ; preds = %566
  %582 = tail call fastcc i32 @ext4_ext_get_access(ptr noundef %0, ptr noundef %1, ptr noundef %415) #13
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %749

584:                                              ; preds = %581
  tail call fastcc void @trace_ext4_ext_convert_to_initialized_fastpath(ptr noundef %1, ptr noundef %2, ptr noundef %419, ptr noundef %548) #13
  %585 = sub i32 %451, %394
  store i32 %585, ptr %548, align 4
  %586 = zext i32 %394 to i64
  %587 = sub nsw i64 %563, %586
  %588 = trunc i64 %587 to i32
  store i32 %588, ptr %556, align 4
  %589 = lshr i64 %587, 32
  %590 = trunc i64 %589 to i16
  store i16 %590, ptr %559, align 2
  %591 = sub i32 %426, %394
  %592 = trunc i32 %591 to i16
  store i16 %592, ptr %421, align 4
  %593 = and i16 %592, 32767
  %594 = icmp eq i16 %593, 0
  br i1 %594, label %595, label %596, !prof !8

595:                                              ; preds = %584
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

596:                                              ; preds = %584, %524
  %597 = phi i16 [ %532, %524 ], [ %592, %584 ]
  %598 = phi i32 [ %471, %524 ], [ %555, %584 ]
  %599 = phi ptr [ %466, %524 ], [ %550, %584 ]
  %600 = phi ptr [ %464, %524 ], [ %548, %584 ]
  %601 = or i16 %597, -32768
  store i16 %601, ptr %421, align 4
  %602 = add i32 %598, %394
  %603 = trunc i32 %602 to i16
  store i16 %603, ptr %599, align 4
  %604 = icmp eq i32 %394, 0
  br i1 %604, label %605, label %607

605:                                              ; preds = %596
  %606 = load i32, ptr %17, align 8
  br label %609

607:                                              ; preds = %596
  %608 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_convert_to_initialized, i32 noundef 3562, ptr noundef %0, ptr noundef %1, ptr noundef %415) #13
  store ptr %600, ptr %418, align 4
  br label %710

609:                                              ; preds = %605, %566, %547, %540, %536
  %610 = phi i32 [ %606, %605 ], [ %449, %547 ], [ %449, %566 ], [ %449, %536 ], [ %449, %540 ]
  %611 = sub i32 %420, %610
  %612 = add i32 %611, %426
  %613 = icmp ugt i32 %420, %610
  br i1 %613, label %614, label %615, !prof !8

614:                                              ; preds = %609
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3570, i32 noundef 9, ptr noundef null) #13
  br label %615

615:                                              ; preds = %614, %609, %483, %463
  %616 = phi i32 [ %612, %614 ], [ %612, %609 ], [ %426, %463 ], [ %426, %483 ]
  %617 = icmp ugt i32 %451, %412
  %618 = xor i1 %617, true
  %619 = zext i1 %618 to i32
  %620 = or i32 %619, 16
  br i1 %617, label %630, label %621

621:                                              ; preds = %615
  %622 = getelementptr inbounds %struct.ext4_sb_info, ptr %397, i32 0, i32 109
  %623 = load i32, ptr %622, align 32
  %624 = load ptr, ptr %13, align 4
  %625 = getelementptr inbounds %struct.super_block, ptr %624, i32 0, i32 2
  %626 = load i8, ptr %625, align 4
  %627 = zext i8 %626 to i32
  %628 = add nsw i32 %627, -10
  %629 = lshr i32 %623, %628
  br label %630

630:                                              ; preds = %621, %615
  %631 = phi i32 [ %629, %621 ], [ 0, %615 ]
  %632 = load i32, ptr %17, align 8
  %633 = getelementptr inbounds %struct.ext4_map_blocks, ptr %6, i32 0, i32 1
  store i32 %632, ptr %633, align 8
  %634 = load i32, ptr %19, align 4
  %635 = getelementptr inbounds %struct.ext4_map_blocks, ptr %6, i32 0, i32 2
  store i32 %634, ptr %635, align 4
  %636 = icmp ne i32 %631, 0
  %637 = icmp ugt i32 %616, %634
  %638 = select i1 %636, i1 %637, i1 false
  br i1 %638, label %639, label %698

639:                                              ; preds = %630
  %640 = icmp sgt i32 %616, %631
  br i1 %640, label %670, label %641

641:                                              ; preds = %639
  %642 = add i32 %634, %632
  %643 = sub i32 %616, %634
  %644 = trunc i32 %643 to i16
  %645 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 3
  %646 = load i32, ptr %645, align 4
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 2
  %649 = load i16, ptr %648, align 2
  %650 = zext i16 %649 to i64
  %651 = shl nuw nsw i64 %650, 32
  %652 = or i64 %651, %647
  %653 = zext i32 %632 to i64
  %654 = zext i32 %634 to i64
  %655 = zext i32 %420 to i64
  %656 = sub nsw i64 %653, %655
  %657 = add nsw i64 %656, %654
  %658 = add nsw i64 %657, %652
  %659 = trunc i64 %658 to i32
  %660 = lshr i64 %658, 32
  %661 = trunc i64 %660 to i16
  %662 = and i32 %643, 65535
  %663 = icmp ult i16 %644, -32767
  %664 = add nsw i32 %662, -32768
  %665 = select i1 %663, i32 %662, i32 %664
  %666 = and i64 %658, 281474976710655
  %667 = tail call i32 @ext4_issue_zeroout(ptr noundef %1, i32 noundef %642, i64 noundef %666, i32 noundef %665) #13
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %698

669:                                              ; preds = %641
  store i32 %616, ptr %635, align 4
  br label %670

670:                                              ; preds = %669, %639
  %671 = phi i32 [ %634, %639 ], [ %616, %669 ]
  %672 = phi i32 [ 0, %639 ], [ %642, %669 ]
  %673 = phi i16 [ 0, %639 ], [ %644, %669 ]
  %674 = phi i16 [ 0, %639 ], [ %661, %669 ]
  %675 = phi i32 [ 0, %639 ], [ %659, %669 ]
  %676 = sub i32 %632, %420
  %677 = add i32 %671, %676
  %678 = icmp ult i32 %677, %631
  br i1 %678, label %679, label %698

679:                                              ; preds = %670
  %680 = icmp eq i32 %632, %420
  br i1 %680, label %692, label %681

681:                                              ; preds = %679
  %682 = load i32, ptr %419, align 4
  store i32 %682, ptr %7, align 4
  %683 = trunc i32 %676 to i16
  store i16 %683, ptr %427, align 4
  %684 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 3
  %685 = load i32, ptr %684, align 4
  %686 = getelementptr inbounds %struct.ext4_extent, ptr %419, i32 0, i32 2
  %687 = load i16, ptr %686, align 2
  %688 = getelementptr inbounds %struct.ext4_extent, ptr %7, i32 0, i32 3
  store i32 %685, ptr %688, align 4
  %689 = getelementptr inbounds %struct.ext4_extent, ptr %7, i32 0, i32 2
  store i16 %687, ptr %689, align 2
  %690 = call fastcc i32 @ext4_ext_zeroout(ptr noundef %1, ptr noundef nonnull %7) #13
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %698

692:                                              ; preds = %681, %679
  %693 = phi i32 [ %682, %681 ], [ 0, %679 ]
  %694 = phi i32 [ %685, %681 ], [ 0, %679 ]
  %695 = phi i16 [ %687, %681 ], [ 0, %679 ]
  %696 = phi i16 [ %683, %681 ], [ 0, %679 ]
  store i32 %677, ptr %635, align 4
  store i32 %420, ptr %633, align 8
  %697 = load i32, ptr %19, align 4
  br label %698

698:                                              ; preds = %692, %681, %670, %641, %630
  %699 = phi i32 [ %693, %692 ], [ %682, %681 ], [ 0, %670 ], [ 0, %641 ], [ 0, %630 ]
  %700 = phi i32 [ %694, %692 ], [ %685, %681 ], [ 0, %670 ], [ 0, %641 ], [ 0, %630 ]
  %701 = phi i16 [ %695, %692 ], [ %687, %681 ], [ 0, %670 ], [ 0, %641 ], [ 0, %630 ]
  %702 = phi i16 [ %696, %692 ], [ %683, %681 ], [ 0, %670 ], [ 0, %641 ], [ 0, %630 ]
  %703 = phi i32 [ %672, %692 ], [ %672, %681 ], [ %672, %670 ], [ %642, %641 ], [ 0, %630 ]
  %704 = phi i16 [ %673, %692 ], [ %673, %681 ], [ %673, %670 ], [ %644, %641 ], [ 0, %630 ]
  %705 = phi i16 [ %674, %692 ], [ %674, %681 ], [ %674, %670 ], [ %661, %641 ], [ 0, %630 ]
  %706 = phi i32 [ %675, %692 ], [ %675, %681 ], [ %675, %670 ], [ %659, %641 ], [ 0, %630 ]
  %707 = phi i32 [ %697, %692 ], [ %616, %681 ], [ %616, %670 ], [ %616, %641 ], [ %616, %630 ]
  %708 = call fastcc i32 @ext4_split_extent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef %620, i32 noundef %212) #13
  %709 = call i32 @llvm.smin.i32(i32 %708, i32 0) #13
  br label %710

710:                                              ; preds = %698, %607
  %711 = phi i32 [ %699, %698 ], [ 0, %607 ]
  %712 = phi i32 [ %700, %698 ], [ 0, %607 ]
  %713 = phi i16 [ %701, %698 ], [ 0, %607 ]
  %714 = phi i16 [ %702, %698 ], [ 0, %607 ]
  %715 = phi i32 [ %703, %698 ], [ 0, %607 ]
  %716 = phi i16 [ %704, %698 ], [ 0, %607 ]
  %717 = phi i16 [ %705, %698 ], [ 0, %607 ]
  %718 = phi i32 [ %706, %698 ], [ 0, %607 ]
  %719 = phi i32 [ %707, %698 ], [ %394, %607 ]
  %720 = phi i32 [ %709, %698 ], [ %608, %607 ]
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %749

722:                                              ; preds = %710
  %723 = zext i16 %716 to i32
  %724 = icmp ult i16 %716, -32767
  %725 = add nsw i32 %723, -32768
  %726 = select i1 %724, i32 %723, i32 %725
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %735, label %728

728:                                              ; preds = %722
  %729 = zext i16 %717 to i64
  %730 = shl nuw nsw i64 %729, 32
  %731 = zext i32 %718 to i64
  %732 = or i64 %730, %731
  %733 = call i32 @ext4_es_insert_extent(ptr noundef %1, i32 noundef %715, i32 noundef %726, i64 noundef %732, i32 noundef 1) #13
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %749

735:                                              ; preds = %728, %722
  %736 = zext i16 %714 to i32
  %737 = icmp ult i16 %714, -32767
  %738 = add nsw i32 %736, -32768
  %739 = select i1 %737, i32 %736, i32 %738
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %748, label %741

741:                                              ; preds = %735
  %742 = zext i16 %713 to i64
  %743 = shl nuw nsw i64 %742, 32
  %744 = zext i32 %712 to i64
  %745 = or i64 %743, %744
  %746 = call i32 @ext4_es_insert_extent(ptr noundef %1, i32 noundef %711, i32 noundef %739, i64 noundef %745, i32 noundef 1) #13
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %749

748:                                              ; preds = %741, %735
  br label %749

749:                                              ; preds = %748, %741, %728, %710, %581, %502
  %750 = phi i32 [ %719, %748 ], [ %746, %741 ], [ %733, %728 ], [ %720, %710 ], [ %582, %581 ], [ %504, %502 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %751 = icmp slt i32 %750, 0
  br i1 %751, label %800, label %752

752:                                              ; preds = %749
  %753 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %753, label %775, label %754

754:                                              ; preds = %752
  %755 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %756 = load i32, ptr %755, align 4
  %757 = and i32 %756, 8
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %775

759:                                              ; preds = %754
  %760 = load ptr, ptr %0, align 4
  %761 = icmp eq ptr %760, null
  br i1 %761, label %775, label %762

762:                                              ; preds = %759
  %763 = load ptr, ptr %760, align 8
  %764 = load i32, ptr %763, align 8
  %765 = and i32 %764, 2
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %775

767:                                              ; preds = %762
  %768 = getelementptr inbounds %struct.transaction_s, ptr %760, i32 0, i32 1
  %769 = load i32, ptr %768, align 4
  %770 = getelementptr i8, ptr %1, i32 520
  store i32 %769, ptr %770, align 8
  %771 = load ptr, ptr %0, align 4
  %772 = getelementptr inbounds %struct.transaction_s, ptr %771, i32 0, i32 1
  %773 = load i32, ptr %772, align 4
  %774 = getelementptr i8, ptr %1, i32 524
  store i32 %773, ptr %774, align 4
  br label %775

775:                                              ; preds = %767, %762, %759, %754, %752
  %776 = icmp eq i32 %750, 0
  br i1 %776, label %797, label %777, !prof !8

777:                                              ; preds = %775
  %778 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %779 = load i32, ptr %778, align 8
  br label %780

780:                                              ; preds = %777, %270
  %781 = phi i32 [ %273, %270 ], [ %779, %777 ]
  %782 = phi i32 [ %266, %270 ], [ %750, %777 ]
  %783 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %784 = or i32 %781, 32
  store i32 %784, ptr %783, align 8
  br label %785

785:                                              ; preds = %780, %380, %369, %364, %361, %356, %354
  %786 = phi i32 [ %782, %780 ], [ %102, %380 ], [ %102, %354 ], [ %102, %356 ], [ %102, %361 ], [ %102, %364 ], [ %102, %369 ]
  %787 = phi i32 [ 0, %780 ], [ 0, %380 ], [ %352, %354 ], [ %352, %356 ], [ %352, %361 ], [ %352, %364 ], [ %352, %369 ]
  %788 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %789 = load i32, ptr %788, align 8
  %790 = or i32 %789, 16
  store i32 %790, ptr %788, align 8
  store i64 %101, ptr %2, align 8
  %791 = load i32, ptr %19, align 4
  %792 = call i32 @llvm.umin.i32(i32 %786, i32 %791) #13
  store i32 %792, ptr %19, align 4
  %793 = icmp eq i32 %787, 0
  br i1 %793, label %794, label %1164

794:                                              ; preds = %785, %387
  %795 = phi i32 [ %392, %387 ], [ %792, %785 ]
  %796 = icmp slt i32 %795, 0
  br i1 %796, label %800, label %1164

797:                                              ; preds = %775, %268
  %798 = phi i32 [ 3884, %268 ], [ 3940, %775 ]
  %799 = load i32, ptr %19, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_handle_unwritten_extents, i32 noundef %798, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.37, i32 noundef %799) #13
  br label %800

800:                                              ; preds = %797, %794, %749, %351, %294, %231
  %801 = phi i32 [ %795, %794 ], [ %314, %294 ], [ %352, %351 ], [ %266, %231 ], [ %750, %749 ], [ -117, %797 ]
  store i32 %801, ptr %11, align 4
  br label %1164

802:                                              ; preds = %93, %90, %56
  %803 = and i32 %3, 1
  %804 = icmp eq i32 %803, 0
  %805 = load i32, ptr %17, align 8
  br i1 %804, label %806, label %907

806:                                              ; preds = %802
  %807 = load i16, ptr %44, align 2
  %808 = zext i16 %807 to i32
  %809 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %808, i32 3
  %810 = load ptr, ptr %809, align 4
  %811 = icmp eq ptr %810, null
  br i1 %811, label %881, label %812

812:                                              ; preds = %806
  %813 = load i32, ptr %810, align 4
  %814 = icmp ugt i32 %813, %805
  br i1 %814, label %815, label %817

815:                                              ; preds = %812
  %816 = sub i32 %813, %805
  br label %881

817:                                              ; preds = %812
  %818 = getelementptr inbounds %struct.ext4_extent, ptr %810, i32 0, i32 1
  %819 = load i16, ptr %818, align 4
  %820 = zext i16 %819 to i32
  %821 = icmp ult i16 %819, -32767
  %822 = add nsw i32 %820, -32768
  %823 = select i1 %821, i32 %820, i32 %822
  %824 = add i32 %823, %813
  %825 = icmp ult i32 %805, %824
  br i1 %825, label %880, label %826

826:                                              ; preds = %817
  %827 = icmp eq ptr %39, null
  br i1 %827, label %828, label %829, !prof !8

828:                                              ; preds = %826
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

829:                                              ; preds = %826
  %830 = getelementptr inbounds %struct.ext4_ext_path, ptr %39, i32 0, i32 1
  %831 = load i16, ptr %830, align 8
  %832 = zext i16 %831 to i32
  %833 = icmp eq i16 %831, 0
  br i1 %833, label %834, label %838

834:                                              ; preds = %829
  %835 = getelementptr inbounds %struct.ext4_ext_path, ptr %39, i32 0, i32 3
  %836 = load ptr, ptr %835, align 4
  %837 = icmp eq ptr %836, null
  br i1 %837, label %874, label %838

838:                                              ; preds = %834, %829
  %839 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %832, i32 3
  %840 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %832, i32 5
  br label %841

841:                                              ; preds = %868, %838
  %842 = phi i32 [ %832, %838 ], [ %869, %868 ]
  %843 = icmp eq i32 %842, %832
  br i1 %843, label %844, label %856

844:                                              ; preds = %841
  %845 = load ptr, ptr %839, align 4
  %846 = icmp eq ptr %845, null
  br i1 %846, label %868, label %847

847:                                              ; preds = %844
  %848 = load ptr, ptr %840, align 4
  %849 = getelementptr inbounds %struct.ext4_extent_header, ptr %848, i32 0, i32 1
  %850 = load i16, ptr %849, align 2
  %851 = zext i16 %850 to i32
  %852 = getelementptr %struct.ext4_extent, ptr %848, i32 %851
  %853 = icmp eq ptr %845, %852
  br i1 %853, label %868, label %854

854:                                              ; preds = %847
  %855 = getelementptr %struct.ext4_extent, ptr %845, i32 1
  br label %871

856:                                              ; preds = %841
  %857 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %842, i32 4
  %858 = load ptr, ptr %857, align 8
  %859 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %842, i32 5
  %860 = load ptr, ptr %859, align 4
  %861 = getelementptr inbounds %struct.ext4_extent_header, ptr %860, i32 0, i32 1
  %862 = load i16, ptr %861, align 2
  %863 = zext i16 %862 to i32
  %864 = getelementptr %struct.ext4_extent_idx, ptr %860, i32 %863
  %865 = icmp eq ptr %858, %864
  br i1 %865, label %868, label %866

866:                                              ; preds = %856
  %867 = getelementptr %struct.ext4_extent_idx, ptr %858, i32 1
  br label %871

868:                                              ; preds = %856, %847, %844
  %869 = add nsw i32 %842, -1
  %870 = icmp sgt i32 %842, 0
  br i1 %870, label %841, label %874

871:                                              ; preds = %866, %854
  %872 = phi ptr [ %867, %866 ], [ %855, %854 ]
  %873 = load i32, ptr %872, align 4
  br label %874

874:                                              ; preds = %871, %868, %834
  %875 = phi i32 [ -1, %834 ], [ %873, %871 ], [ -1, %868 ]
  %876 = icmp eq i32 %875, %824
  br i1 %876, label %877, label %878, !prof !8

877:                                              ; preds = %874
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2258, 0\0A.popsection", ""() #13, !srcloc !54
  unreachable

878:                                              ; preds = %874
  %879 = sub i32 %875, %824
  br label %881

880:                                              ; preds = %817
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2261, 0\0A.popsection", ""() #13, !srcloc !55
  unreachable

881:                                              ; preds = %878, %815, %806
  %882 = phi i32 [ %805, %815 ], [ %824, %878 ], [ 0, %806 ]
  %883 = phi i32 [ %816, %815 ], [ %879, %878 ], [ -1, %806 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #13, !annotation !11
  %884 = add i32 %882, -1
  %885 = add i32 %884, %883
  call void @ext4_es_find_extent_range(ptr noundef %1, ptr noundef nonnull @ext4_es_is_delayed, i32 noundef %882, i32 noundef %885, ptr noundef nonnull %5) #13
  %886 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 2
  %887 = load i32, ptr %886, align 8
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %896, label %889

889:                                              ; preds = %881
  %890 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 1
  %891 = load i32, ptr %890, align 4
  %892 = icmp ugt i32 %891, %882
  br i1 %892, label %893, label %899

893:                                              ; preds = %889
  %894 = sub i32 %891, %882
  %895 = call i32 @llvm.umin.i32(i32 %894, i32 %883) #13
  br label %896

896:                                              ; preds = %893, %881
  %897 = phi i32 [ %895, %893 ], [ %883, %881 ]
  %898 = call i32 @ext4_es_insert_extent(ptr noundef %1, i32 noundef %882, i32 noundef %897, i64 noundef -1, i32 noundef 8) #13
  br label %899

899:                                              ; preds = %896, %889
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  %900 = load i32, ptr %17, align 8
  %901 = icmp eq i32 %882, %900
  %902 = sub i32 %882, %900
  %903 = select i1 %901, i32 0, i32 %902
  %904 = add i32 %903, %883
  store i64 0, ptr %2, align 8
  %905 = load i32, ptr %19, align 4
  %906 = call i32 @llvm.umin.i32(i32 %905, i32 %904)
  store i32 %906, ptr %19, align 4
  br label %1164

907:                                              ; preds = %802
  store i32 %805, ptr %9, align 4
  %908 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 11
  %909 = load i32, ptr %908, align 4
  %910 = add i32 %909, -1
  %911 = and i32 %910, %805
  %912 = icmp ne i32 %911, 0
  %913 = select i1 %912, i1 %57, i1 false
  br i1 %913, label %914, label %924

914:                                              ; preds = %907
  %915 = load ptr, ptr %13, align 4
  %916 = tail call fastcc i32 @get_implied_cluster_alloc(ptr noundef %915, ptr noundef %2, ptr noundef nonnull %48, ptr noundef %39)
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %920

918:                                              ; preds = %914
  %919 = load i32, ptr %17, align 8
  br label %924

920:                                              ; preds = %914
  %921 = load i32, ptr %19, align 4
  %922 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 1
  store i32 %921, ptr %922, align 4
  %923 = load i64, ptr %2, align 8
  br label %1075

924:                                              ; preds = %918, %907
  %925 = phi i32 [ %919, %918 ], [ %805, %907 ]
  %926 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 3
  store i32 %925, ptr %926, align 4
  %927 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 6
  %928 = icmp eq ptr %39, null
  br i1 %928, label %929, label %930, !prof !8

929:                                              ; preds = %924
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_search_left, i32 noundef 1471, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %925) #13
  br label %991

930:                                              ; preds = %924
  %931 = getelementptr inbounds %struct.ext4_ext_path, ptr %39, i32 0, i32 1
  %932 = load i16, ptr %931, align 8
  %933 = zext i16 %932 to i32
  store i64 0, ptr %927, align 8
  %934 = icmp eq i16 %932, 0
  br i1 %934, label %935, label %939

935:                                              ; preds = %930
  %936 = getelementptr inbounds %struct.ext4_ext_path, ptr %39, i32 0, i32 3
  %937 = load ptr, ptr %936, align 4
  %938 = icmp eq ptr %937, null
  br i1 %938, label %992, label %939

939:                                              ; preds = %935, %930
  %940 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %933, i32 3
  %941 = load ptr, ptr %940, align 4
  %942 = getelementptr inbounds %struct.ext4_extent, ptr %941, i32 0, i32 1
  %943 = load i16, ptr %942, align 4
  %944 = zext i16 %943 to i32
  %945 = icmp ult i16 %943, -32767
  %946 = add nsw i32 %944, -32768
  %947 = select i1 %945, i32 %944, i32 %946
  %948 = load i32, ptr %941, align 4
  %949 = icmp ult i32 %925, %948
  br i1 %949, label %950, label %974

950:                                              ; preds = %939
  %951 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %933, i32 5
  %952 = load ptr, ptr %951, align 4
  %953 = getelementptr i8, ptr %952, i32 12
  %954 = icmp eq ptr %953, %941
  br i1 %954, label %956, label %955, !prof !10

955:                                              ; preds = %950
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_search_left, i32 noundef 1490, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef %925, i32 noundef %948) #13
  br label %991

956:                                              ; preds = %959, %950
  %957 = phi i32 [ %960, %959 ], [ %933, %950 ]
  %958 = icmp sgt i32 %957, 0
  br i1 %958, label %959, label %992

959:                                              ; preds = %956
  %960 = add nsw i32 %957, -1
  %961 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %960, i32 4
  %962 = load ptr, ptr %961, align 8
  %963 = getelementptr %struct.ext4_ext_path, ptr %39, i32 %960, i32 5
  %964 = load ptr, ptr %963, align 4
  %965 = getelementptr i8, ptr %964, i32 12
  %966 = icmp eq ptr %962, %965
  br i1 %966, label %956, label %967, !prof !10

967:                                              ; preds = %959
  %968 = icmp eq ptr %962, null
  br i1 %968, label %971, label %969

969:                                              ; preds = %967
  %970 = load i32, ptr %962, align 4
  br label %971

971:                                              ; preds = %969, %967
  %972 = phi i32 [ %970, %969 ], [ 0, %967 ]
  %973 = load i32, ptr %965, align 4
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_search_left, i32 noundef 1500, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %972, i32 noundef %973, i32 noundef %960) #13
  br label %991

974:                                              ; preds = %939
  %975 = add i32 %947, %948
  %976 = icmp ult i32 %925, %975
  br i1 %976, label %977, label %978, !prof !8

977:                                              ; preds = %974
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_search_left, i32 noundef 1510, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %925, i32 noundef %948, i32 noundef %947) #13
  br label %991

978:                                              ; preds = %974
  %979 = add i32 %975, -1
  store i32 %979, ptr %926, align 4
  %980 = getelementptr inbounds %struct.ext4_extent, ptr %941, i32 0, i32 3
  %981 = load i32, ptr %980, align 4
  %982 = zext i32 %981 to i64
  %983 = getelementptr inbounds %struct.ext4_extent, ptr %941, i32 0, i32 2
  %984 = load i16, ptr %983, align 2
  %985 = zext i16 %984 to i64
  %986 = shl nuw nsw i64 %985, 32
  %987 = or i64 %986, %982
  %988 = add nsw i32 %947, -1
  %989 = sext i32 %988 to i64
  %990 = add nsw i64 %987, %989
  store i64 %990, ptr %927, align 8
  br label %992

991:                                              ; preds = %977, %971, %955, %929
  store i32 -117, ptr %11, align 4
  br label %1164

992:                                              ; preds = %978, %956, %935
  %993 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 4
  store i32 %925, ptr %993, align 8
  %994 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 7
  %995 = call fastcc i32 @ext4_ext_search_right(ptr noundef %1, ptr noundef nonnull %39, ptr noundef %993, ptr noundef %994, ptr noundef nonnull %10)
  store i32 %995, ptr %11, align 4
  %996 = icmp slt i32 %995, 0
  br i1 %996, label %1164, label %997

997:                                              ; preds = %992
  %998 = load i32, ptr %908, align 4
  %999 = icmp ugt i32 %998, 1
  %1000 = icmp ne i32 %995, 0
  %1001 = select i1 %999, i1 %1000, i1 false
  br i1 %1001, label %1002, label %1010

1002:                                             ; preds = %997
  %1003 = load ptr, ptr %13, align 4
  %1004 = call fastcc i32 @get_implied_cluster_alloc(ptr noundef %1003, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %39)
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1010, label %1006

1006:                                             ; preds = %1002
  %1007 = load i32, ptr %19, align 4
  %1008 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 1
  store i32 %1007, ptr %1008, align 4
  %1009 = load i64, ptr %2, align 8
  br label %1075

1010:                                             ; preds = %1002, %997
  %1011 = load i32, ptr %19, align 4
  %1012 = icmp ugt i32 %1011, 32768
  %1013 = and i32 %3, 2
  %1014 = icmp eq i32 %1013, 0
  %1015 = and i1 %1014, %1012
  br i1 %1015, label %1019, label %1016

1016:                                             ; preds = %1010
  %1017 = icmp ult i32 %1011, 32768
  %1018 = or i1 %1014, %1017
  br i1 %1018, label %1021, label %1019

1019:                                             ; preds = %1016, %1010
  %1020 = phi i32 [ 32768, %1010 ], [ 32767, %1016 ]
  store i32 %1020, ptr %19, align 4
  br label %1021

1021:                                             ; preds = %1019, %1016
  %1022 = phi i32 [ %1011, %1016 ], [ %1020, %1019 ]
  %1023 = trunc i32 %1022 to i16
  %1024 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 1
  store i16 %1023, ptr %1024, align 4
  %1025 = call fastcc i32 @ext4_ext_check_overlap(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %39)
  store i32 %1025, ptr %11, align 4
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1033, label %1027

1027:                                             ; preds = %1021
  %1028 = load i16, ptr %1024, align 4
  %1029 = zext i16 %1028 to i32
  %1030 = icmp ult i16 %1028, -32767
  %1031 = add nsw i32 %1029, -32768
  %1032 = select i1 %1030, i32 %1029, i32 %1031
  br label %1035

1033:                                             ; preds = %1021
  %1034 = load i32, ptr %19, align 4
  br label %1035

1035:                                             ; preds = %1033, %1027
  %1036 = phi i32 [ %1034, %1033 ], [ %1032, %1027 ]
  store ptr %1, ptr %12, align 8
  %1037 = load i32, ptr %17, align 8
  %1038 = call fastcc i64 @ext4_ext_find_goal(ptr noundef %1, ptr noundef nonnull %39, i32 noundef %1037)
  %1039 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 5
  %1040 = load i32, ptr %17, align 8
  %1041 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 2
  %1042 = load i32, ptr %908, align 4
  %1043 = add i32 %1042, -1
  %1044 = and i32 %1043, %1040
  %1045 = add i32 %1043, %1036
  %1046 = add i32 %1045, %1044
  %1047 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 12
  %1048 = load i32, ptr %1047, align 16
  %1049 = lshr i32 %1046, %1048
  %1050 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 1
  store i32 %1049, ptr %1050, align 4
  %1051 = zext i32 %1044 to i64
  %1052 = sub i64 %1038, %1051
  store i64 %1052, ptr %1039, align 8
  %1053 = sub i32 %1040, %1044
  store i32 %1053, ptr %1041, align 8
  %1054 = load i16, ptr %1, align 8
  %1055 = and i16 %1054, -4096
  %1056 = icmp eq i16 %1055, -32768
  %1057 = select i1 %1056, i32 32, i32 0
  %1058 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 8
  %1059 = and i32 %3, 64
  %1060 = or i32 %1059, %1057
  %1061 = shl i32 %3, 8
  %1062 = and i32 %1061, 1024
  %1063 = or i32 %1062, %1060
  %1064 = shl i32 %3, 8
  %1065 = and i32 %1064, 8192
  %1066 = or i32 %1065, %1063
  store i32 %1066, ptr %1058, align 8
  %1067 = call i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %11) #13
  %1068 = icmp eq i64 %1067, 0
  br i1 %1068, label %1164, label %1069

1069:                                             ; preds = %1035
  %1070 = load i32, ptr %1050, align 4
  %1071 = load i32, ptr %1047, align 16
  %1072 = shl i32 %1070, %1071
  %1073 = sub i32 %1072, %1044
  %1074 = call i32 @llvm.umin.i32(i32 %1073, i32 %1036)
  store i32 %1074, ptr %1050, align 4
  br label %1075

1075:                                             ; preds = %1069, %1006, %920
  %1076 = phi i32 [ %1074, %1069 ], [ %1007, %1006 ], [ %921, %920 ]
  %1077 = phi i32 [ %1036, %1069 ], [ %1007, %1006 ], [ %921, %920 ]
  %1078 = phi i32 [ %1070, %1069 ], [ 0, %1006 ], [ 0, %920 ]
  %1079 = phi i32 [ %1044, %1069 ], [ 0, %1006 ], [ 0, %920 ]
  %1080 = phi i64 [ %1067, %1069 ], [ %1009, %1006 ], [ %923, %920 ]
  %1081 = zext i32 %1079 to i64
  %1082 = add i64 %1080, %1081
  %1083 = trunc i64 %1082 to i32
  %1084 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 3
  store i32 %1083, ptr %1084, align 4
  %1085 = lshr i64 %1082, 32
  %1086 = trunc i64 %1085 to i16
  %1087 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 2
  store i16 %1086, ptr %1087, align 2
  %1088 = getelementptr inbounds %struct.ext4_allocation_request, ptr %12, i32 0, i32 1
  %1089 = trunc i32 %1076 to i16
  %1090 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 1
  store i16 %1089, ptr %1090, align 4
  %1091 = and i32 %3, 2
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1102, label %1093

1093:                                             ; preds = %1075
  %1094 = and i16 %1089, 32767
  %1095 = icmp eq i16 %1094, 0
  br i1 %1095, label %1096, label %1097, !prof !8

1096:                                             ; preds = %1093
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

1097:                                             ; preds = %1093
  %1098 = or i16 %1089, -32768
  store i16 %1098, ptr %1090, align 4
  %1099 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %1100 = load i32, ptr %1099, align 8
  %1101 = or i32 %1100, 2048
  store i32 %1101, ptr %1099, align 8
  br label %1102

1102:                                             ; preds = %1097, %1075
  %1103 = call i32 @ext4_ext_insert_extent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %3)
  store i32 %1103, ptr %11, align 4
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1113, label %1105

1105:                                             ; preds = %1102
  %1106 = icmp eq i32 %1078, 0
  br i1 %1106, label %1164, label %1107

1107:                                             ; preds = %1105
  call void @ext4_discard_preallocations(ptr noundef %1, i32 noundef 0) #13
  %1108 = shl i32 %3, 1
  %1109 = and i32 %1108, 8
  %1110 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 12
  %1111 = load i32, ptr %1110, align 16
  %1112 = shl i32 %1078, %1111
  call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %1080, i32 noundef %1112, i32 noundef %1109) #13
  br label %1164

1113:                                             ; preds = %1102
  %1114 = load ptr, ptr %13, align 4
  %1115 = getelementptr inbounds %struct.super_block, ptr %1114, i32 0, i32 27
  %1116 = load ptr, ptr %1115, align 4
  %1117 = getelementptr inbounds %struct.ext4_sb_info, ptr %1116, i32 0, i32 17
  %1118 = load i32, ptr %1117, align 4
  %1119 = and i32 %1118, 134217728
  %1120 = icmp ne i32 %1119, 0
  %1121 = icmp ne i32 %1078, 0
  %1122 = select i1 %1120, i1 %1121, i1 false
  br i1 %1122, label %1123, label %1138

1123:                                             ; preds = %1113
  %1124 = and i32 %3, 4
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1127, label %1126

1126:                                             ; preds = %1123
  call void @ext4_da_update_reserve_space(ptr noundef %1, i32 noundef %1078, i32 noundef 1) #13
  br label %1138

1127:                                             ; preds = %1123
  %1128 = load i32, ptr %17, align 8
  %1129 = load i32, ptr %908, align 4
  %1130 = sub i32 0, %1129
  %1131 = and i32 %1128, %1130
  %1132 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 12
  %1133 = load i32, ptr %1132, align 16
  %1134 = shl i32 %1078, %1133
  %1135 = call i32 @ext4_es_delayed_clu(ptr noundef %1, i32 noundef %1131, i32 noundef %1134) #13
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1138, label %1137

1137:                                             ; preds = %1127
  call void @ext4_da_update_reserve_space(ptr noundef %1, i32 noundef %1135, i32 noundef 0) #13
  br label %1138

1138:                                             ; preds = %1137, %1127, %1126, %1113
  br i1 %1092, label %1139, label %1140

1139:                                             ; preds = %1138
  call fastcc void @ext4_update_inode_fsync_trans(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %1159

1140:                                             ; preds = %1138
  %1141 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %1141, label %1159, label %1142

1142:                                             ; preds = %1140
  %1143 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %1144 = load i32, ptr %1143, align 4
  %1145 = and i32 %1144, 8
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1147, label %1159

1147:                                             ; preds = %1142
  %1148 = load ptr, ptr %0, align 4
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1159, label %1150

1150:                                             ; preds = %1147
  %1151 = load ptr, ptr %1148, align 8
  %1152 = load i32, ptr %1151, align 8
  %1153 = and i32 %1152, 2
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1155, label %1159

1155:                                             ; preds = %1150
  %1156 = getelementptr inbounds %struct.transaction_s, ptr %1148, i32 0, i32 1
  %1157 = load i32, ptr %1156, align 4
  %1158 = getelementptr i8, ptr %1, i32 520
  store i32 %1157, ptr %1158, align 8
  br label %1159

1159:                                             ; preds = %1155, %1150, %1147, %1142, %1140, %1139
  %1160 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %1161 = load i32, ptr %1160, align 8
  %1162 = or i32 %1161, 48
  store i32 %1162, ptr %1160, align 8
  store i64 %1082, ptr %2, align 8
  %1163 = load i32, ptr %1088, align 4
  store i32 %1163, ptr %19, align 4
  br label %1164

1164:                                             ; preds = %1159, %1107, %1105, %1035, %992, %991, %899, %800, %794, %785, %205, %201, %52
  %1165 = phi i32 [ 0, %991 ], [ %1077, %1107 ], [ %1077, %1105 ], [ %1163, %1159 ], [ %1036, %1035 ], [ 0, %992 ], [ 0, %899 ], [ 0, %52 ], [ %795, %794 ], [ %202, %201 ], [ %102, %800 ], [ %210, %205 ], [ %787, %785 ]
  %1166 = load ptr, ptr %8, align 4
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1185, label %1168

1168:                                             ; preds = %1164
  %1169 = getelementptr inbounds %struct.ext4_ext_path, ptr %1166, i32 0, i32 1
  %1170 = load i16, ptr %1169, align 8
  %1171 = zext i16 %1170 to i32
  br label %1172

1172:                                             ; preds = %1179, %1168
  %1173 = phi i32 [ 0, %1168 ], [ %1180, %1179 ]
  %1174 = phi ptr [ %1166, %1168 ], [ %1181, %1179 ]
  %1175 = getelementptr inbounds %struct.ext4_ext_path, ptr %1174, i32 0, i32 6
  %1176 = load ptr, ptr %1175, align 8
  %1177 = icmp eq ptr %1176, null
  br i1 %1177, label %1179, label %1178

1178:                                             ; preds = %1172
  call void @__brelse(ptr noundef nonnull %1176) #13
  br label %1179

1179:                                             ; preds = %1178, %1172
  store ptr null, ptr %1175, align 8
  %1180 = add nuw nsw i32 %1173, 1
  %1181 = getelementptr %struct.ext4_ext_path, ptr %1174, i32 1
  %1182 = icmp eq i32 %1173, %1171
  br i1 %1182, label %1183, label %1172

1183:                                             ; preds = %1179
  %1184 = load ptr, ptr %8, align 4
  br label %1185

1185:                                             ; preds = %1183, %1164, %41
  %1186 = phi ptr [ null, %41 ], [ null, %1164 ], [ %1184, %1183 ]
  %1187 = phi i32 [ 0, %41 ], [ %1165, %1164 ], [ %1165, %1183 ]
  call void @kfree(ptr noundef %1186) #13
  %1188 = load i32, ptr %11, align 4
  %1189 = icmp eq i32 %1188, 0
  %1190 = select i1 %1189, i32 %1187, i32 %1188
  %1191 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_map_blocks_exit, i32 0, i32 1), align 4
  %1192 = icmp sgt i32 %1191, 0
  br i1 %1192, label %1193, label %1207

1193:                                             ; preds = %1185
  %1194 = tail call ptr @llvm.thread.pointer() #13
  %1195 = getelementptr inbounds %struct.thread_info, ptr %1194, i32 0, i32 2
  %1196 = load i32, ptr %1195, align 8
  %1197 = lshr i32 %1196, 5
  %1198 = getelementptr i32, ptr @__cpu_online_mask, i32 %1197
  %1199 = load volatile i32, ptr %1198, align 4
  %1200 = and i32 %1196, 31
  %1201 = shl nuw i32 1, %1200
  %1202 = and i32 %1201, %1199
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1207, label %1204

1204:                                             ; preds = %1193
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !56
  %1205 = call i32 @__traceiter_ext4_ext_map_blocks_exit(ptr noundef null, ptr noundef %1, i32 noundef %3, ptr noundef %2, i32 noundef %1190) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  %1206 = load i32, ptr %11, align 4
  br label %1207

1207:                                             ; preds = %1204, %1193, %1185
  %1208 = phi i32 [ %1188, %1185 ], [ %1188, %1193 ], [ %1206, %1204 ]
  %1209 = icmp eq i32 %1208, 0
  %1210 = select i1 %1209, i32 %1187, i32 %1208
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %1210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_implied_cluster_alloc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_map_blocks, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr inbounds %struct.ext4_extent, ptr %2, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = icmp ult i16 %11, -32767
  %14 = add nuw nsw i32 %12, 32768
  %15 = select i1 %13, i32 %12, i32 %14
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %17 = load i32, ptr %16, align 16
  %18 = and i32 %15, 65535
  %19 = add nsw i32 %18, -1
  %20 = add i32 %19, %9
  %21 = lshr i32 %20, %17
  %22 = lshr i32 %8, %17
  %23 = icmp eq i32 %22, %21
  %24 = lshr i32 %9, %17
  %25 = icmp eq i32 %22, %24
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %126

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.ext4_extent, ptr %2, i32 0, i32 2
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i64
  %31 = shl nuw nsw i64 %30, 32
  %32 = getelementptr inbounds %struct.ext4_extent, ptr %2, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = or i64 %31, %34
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  %39 = and i32 %38, %8
  %40 = select i1 %23, i32 %19, i32 0
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %35, %41
  %43 = zext i32 %37 to i64
  %44 = sub nsw i64 0, %43
  %45 = and i64 %42, %44
  %46 = zext i32 %39 to i64
  %47 = add nsw i64 %45, %46
  store i64 %47, ptr %1, align 8
  %48 = getelementptr inbounds %struct.ext4_map_blocks, ptr %1, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %36, align 4
  %51 = sub i32 %50, %39
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51)
  %53 = icmp ugt i32 %9, %8
  %54 = sub i32 %9, %8
  %55 = tail call i32 @llvm.umin.i32(i32 %52, i32 %54)
  %56 = select i1 %53, i32 %55, i32 %52
  store i32 %56, ptr %48, align 4
  %57 = icmp ult i32 %9, %8
  br i1 %57, label %58, label %110

58:                                               ; preds = %27
  %59 = icmp eq ptr %3, null
  br i1 %59, label %60, label %61, !prof !8

60:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ext4_ext_path, ptr %3, i32 0, i32 1
  %63 = load i16, ptr %62, align 8
  %64 = zext i16 %63 to i32
  %65 = icmp eq i16 %63, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ext4_ext_path, ptr %3, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %106, label %70

70:                                               ; preds = %66, %61
  %71 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %64, i32 3
  %72 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %64, i32 5
  br label %73

73:                                               ; preds = %100, %70
  %74 = phi i32 [ %64, %70 ], [ %101, %100 ]
  %75 = icmp eq i32 %74, %64
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load ptr, ptr %71, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %72, align 4
  %81 = getelementptr inbounds %struct.ext4_extent_header, ptr %80, i32 0, i32 1
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr %struct.ext4_extent, ptr %80, i32 %83
  %85 = icmp eq ptr %77, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %79
  %87 = getelementptr %struct.ext4_extent, ptr %77, i32 1
  br label %103

88:                                               ; preds = %73
  %89 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %74, i32 4
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %74, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ext4_extent_header, ptr %92, i32 0, i32 1
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = getelementptr %struct.ext4_extent_idx, ptr %92, i32 %95
  %97 = icmp eq ptr %90, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %88
  %99 = getelementptr %struct.ext4_extent_idx, ptr %90, i32 1
  br label %103

100:                                              ; preds = %88, %79, %76
  %101 = add nsw i32 %74, -1
  %102 = icmp sgt i32 %74, 0
  br i1 %102, label %73, label %106

103:                                              ; preds = %98, %86
  %104 = phi ptr [ %99, %98 ], [ %87, %86 ]
  %105 = load i32, ptr %104, align 4
  br label %106

106:                                              ; preds = %103, %100, %66
  %107 = phi i32 [ -1, %66 ], [ %105, %103 ], [ -1, %100 ]
  %108 = sub i32 %107, %8
  %109 = tail call i32 @llvm.umin.i32(i32 %56, i32 %108)
  store i32 %109, ptr %48, align 4
  br label %110

110:                                              ; preds = %106, %27
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_get_implied_cluster_alloc_exit, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %142

113:                                              ; preds = %110
  %114 = tail call ptr @llvm.thread.pointer() #13
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %125 = tail call i32 @__traceiter_ext4_get_implied_cluster_alloc_exit(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  br label %142

126:                                              ; preds = %4
  %127 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_get_implied_cluster_alloc_exit, i32 0, i32 1), align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = tail call ptr @llvm.thread.pointer() #13
  %131 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = lshr i32 %132, 5
  %134 = getelementptr i32, ptr @__cpu_online_mask, i32 %133
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %132, 31
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %129
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %141 = tail call i32 @__traceiter_ext4_get_implied_cluster_alloc_exit(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  br label %142

142:                                              ; preds = %140, %129, %126, %124, %113, %110
  %143 = phi i32 [ 1, %110 ], [ 1, %113 ], [ 1, %124 ], [ 0, %126 ], [ 0, %129 ], [ 0, %140 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_check_overlap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ext4_extent, ptr %2, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = icmp ult i16 %7, -32767
  %10 = add nsw i32 %8, -32768
  %11 = select i1 %9, i32 %8, i32 %10
  %12 = getelementptr i8, ptr %1, i32 -202
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %14, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %90, label %18

18:                                               ; preds = %4
  %19 = load i32, ptr %16, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 0, %21
  %23 = and i32 %19, %22
  %24 = icmp ult i32 %23, %5
  br i1 %24, label %25, label %76

25:                                               ; preds = %18
  %26 = icmp eq ptr %3, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ext4_ext_path, ptr %3, i32 0, i32 1
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i32
  %32 = icmp eq i16 %30, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ext4_ext_path, ptr %3, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %90, label %37

37:                                               ; preds = %33, %28
  %38 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %31, i32 3
  %39 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %31, i32 5
  br label %40

40:                                               ; preds = %67, %37
  %41 = phi i32 [ %31, %37 ], [ %68, %67 ]
  %42 = icmp eq i32 %41, %31
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load ptr, ptr %38, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %67, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %39, align 4
  %48 = getelementptr inbounds %struct.ext4_extent_header, ptr %47, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr %struct.ext4_extent, ptr %47, i32 %50
  %52 = icmp eq ptr %44, %51
  br i1 %52, label %67, label %53

53:                                               ; preds = %46
  %54 = getelementptr %struct.ext4_extent, ptr %44, i32 1
  br label %70

55:                                               ; preds = %40
  %56 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %41, i32 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr %struct.ext4_ext_path, ptr %3, i32 %41, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ext4_extent_header, ptr %59, i32 0, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = getelementptr %struct.ext4_extent_idx, ptr %59, i32 %62
  %64 = icmp eq ptr %57, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  %66 = getelementptr %struct.ext4_extent_idx, ptr %57, i32 1
  br label %70

67:                                               ; preds = %55, %46, %43
  %68 = add nsw i32 %41, -1
  %69 = icmp sgt i32 %41, 0
  br i1 %69, label %40, label %90

70:                                               ; preds = %65, %53
  %71 = phi ptr [ %66, %65 ], [ %54, %53 ]
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = and i32 %72, %22
  br label %76

76:                                               ; preds = %74, %18
  %77 = phi i32 [ %75, %74 ], [ %23, %18 ]
  %78 = xor i32 %5, -1
  %79 = icmp ugt i32 %11, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = trunc i32 %78 to i16
  store i16 %81, ptr %6, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %78, %80 ], [ %11, %76 ]
  %84 = phi i32 [ 1, %80 ], [ 0, %76 ]
  %85 = add i32 %83, %5
  %86 = icmp ugt i32 %85, %77
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = sub i32 %77, %5
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr %6, align 4
  br label %90

90:                                               ; preds = %87, %82, %70, %67, %33, %4
  %91 = phi i32 [ 0, %70 ], [ 1, %87 ], [ %84, %82 ], [ 0, %4 ], [ 0, %33 ], [ 0, %67 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @ext4_ext_find_goal(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ext4_ext_path, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %8, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ext4_extent, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ext4_extent, ptr %10, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i64
  %19 = shl nuw nsw i64 %18, 32
  %20 = or i64 %19, %15
  %21 = load i32, ptr %10, align 4
  %22 = icmp ult i32 %21, %2
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = sub i32 %2, %21
  %25 = zext i32 %24 to i64
  %26 = add nuw nsw i64 %20, %25
  br label %40

27:                                               ; preds = %12
  %28 = sub i32 %21, %2
  %29 = zext i32 %28 to i64
  %30 = sub nsw i64 %20, %29
  br label %40

31:                                               ; preds = %5
  %32 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %8, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 3
  %37 = load i64, ptr %36, align 8
  br label %40

38:                                               ; preds = %31, %3
  %39 = tail call i64 @ext4_inode_to_goal_block(ptr noundef %0) #13
  br label %40

40:                                               ; preds = %38, %35, %27, %23
  %41 = phi i64 [ %39, %38 ], [ %30, %27 ], [ %26, %23 ], [ %37, %35 ]
  ret i64 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_mb_new_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_da_update_reserve_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_delayed_clu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ext4_update_inode_fsync_trans(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.transaction_s, ptr %11, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %1, i32 520
  store i32 %20, ptr %21, align 8
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.transaction_s, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %1, i32 524
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %23, %18, %13, %10, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_truncate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 -32
  store i64 %6, ptr %7, align 8
  %8 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_truncate, i32 noundef 4397) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load i64, ptr %5, align 8
  %12 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 16
  %14 = zext i32 %13 to i64
  %15 = add i64 %11, -1
  %16 = add i64 %15, %14
  %17 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i64
  %20 = ashr i64 %16, %19
  %21 = trunc i64 %20 to i32
  %22 = xor i32 %21, -1
  br label %23

23:                                               ; preds = %32, %10
  %24 = tail call i32 @ext4_es_remove_extent(ptr noundef %1, i32 noundef %21, i32 noundef %22) #13
  switch i32 %24, label %43 [
    i32 -12, label %32
    i32 0, label %25
  ]

25:                                               ; preds = %23
  %26 = tail call i32 @ext4_ext_remove_space(ptr noundef %1, i32 noundef %21, i32 noundef -2)
  %27 = icmp eq i32 %26, -12
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = tail call ptr @llvm.thread.pointer() #13
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 4
  br label %38

32:                                               ; preds = %23
  %33 = tail call ptr @llvm.thread.pointer() #13
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  store volatile i32 2, ptr %34, align 8
  %35 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 4
  %36 = load volatile i32, ptr %35, align 4
  %37 = tail call i32 @io_schedule_timeout(i32 noundef 2) #13
  br label %23

38:                                               ; preds = %38, %28
  store volatile i32 2, ptr %30, align 8
  %39 = load volatile i32, ptr %31, align 4
  %40 = tail call i32 @io_schedule_timeout(i32 noundef 2) #13
  %41 = tail call i32 @ext4_ext_remove_space(ptr noundef %1, i32 noundef %21, i32 noundef -2)
  %42 = icmp eq i32 %41, -12
  br i1 %42, label %38, label %43

43:                                               ; preds = %38, %25, %23, %2
  %44 = phi i32 [ %8, %2 ], [ %26, %25 ], [ %41, %38 ], [ %24, %23 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_fallocate(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 19
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %1, 40
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %18, %16
  %20 = and i32 %1, -60
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %21, %19
  br i1 %22, label %23, label %409

23:                                               ; preds = %4
  %24 = and i32 %1, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @ext4_punch_hole(ptr noundef %9, i64 noundef %2, i64 noundef %3) #13
  br label %409

28:                                               ; preds = %23
  %29 = tail call i32 @ext4_convert_inline_data(ptr noundef %9) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %409

31:                                               ; preds = %28
  %32 = and i32 %1, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %173, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr i8, ptr %9, i32 -124
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 524288
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %409, label %43

43:                                               ; preds = %34
  %44 = or i64 %3, %2
  %45 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 3
  %46 = load i32, ptr %45, align 16
  %47 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 27
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 12
  %50 = load i32, ptr %49, align 16
  %51 = shl i32 %46, %50
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %52, -1
  %54 = and i64 %53, %44
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %409

56:                                               ; preds = %43
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_collapse_range, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = tail call ptr @llvm.thread.pointer() #13
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !60
  %71 = tail call i32 @__traceiter_ext4_collapse_range(ptr noundef null, ptr noundef %9, i64 noundef %2, i64 noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !61
  br label %72

72:                                               ; preds = %70, %59, %56
  %73 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 2
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i64
  %76 = ashr i64 %2, %75
  %77 = trunc i64 %76 to i32
  %78 = add i64 %3, %2
  %79 = ashr i64 %78, %75
  %80 = trunc i64 %79 to i32
  %81 = tail call i32 @ext4_inode_journal_mode(ptr noundef %9) #13
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %72
  %85 = load ptr, ptr %35, align 4
  %86 = tail call i32 @ext4_force_commit(ptr noundef %85) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %409

88:                                               ; preds = %84, %72
  %89 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  tail call void @down_write(ptr noundef %89) #13
  %90 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %91 = load i64, ptr %90, align 8
  %92 = icmp slt i64 %78, %91
  br i1 %92, label %93, label %171

93:                                               ; preds = %88
  %94 = load volatile i32, ptr %39, align 4
  %95 = and i32 %94, 524288
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %171, label %97

97:                                               ; preds = %93
  tail call void @inode_dio_wait(ptr noundef %9) #13
  %98 = getelementptr inbounds %struct.address_space, ptr %38, i32 0, i32 2
  tail call void @down_write(ptr noundef %98) #13
  %99 = tail call i32 @ext4_break_layouts(ptr noundef %9) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %169

101:                                              ; preds = %97
  %102 = and i64 %2, -4096
  %103 = tail call i32 @filemap_write_and_wait_range(ptr noundef %38, i64 noundef %102, i64 noundef %2) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %169

105:                                              ; preds = %101
  %106 = tail call i32 @filemap_write_and_wait_range(ptr noundef %38, i64 noundef %78, i64 noundef 9223372036854775807) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %169

108:                                              ; preds = %105
  tail call void @truncate_pagecache(ptr noundef %9, i64 noundef %102) #13
  %109 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %9) #13
  %110 = load ptr, ptr %35, align 4
  %111 = getelementptr inbounds %struct.super_block, ptr %110, i32 0, i32 27
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.ext4_sb_info, ptr %112, i32 0, i32 11
  %114 = load i32, ptr %113, align 4
  %115 = shl i32 %114, 3
  %116 = tail call ptr @__ext4_journal_start_sb(ptr noundef %110, i32 noundef 5332, i32 noundef 5, i32 noundef %109, i32 noundef 0, i32 noundef %115) #13
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = ptrtoint ptr %116 to i32
  br label %169

120:                                              ; preds = %108
  tail call void @ext4_fc_mark_ineligible(ptr noundef %36, i32 noundef 7, ptr noundef %116) #13
  %121 = getelementptr i8, ptr %9, i32 -24
  tail call void @down_write(ptr noundef %121) #13
  tail call void @ext4_discard_preallocations(ptr noundef %9, i32 noundef 0) #13
  %122 = xor i32 %77, -1
  %123 = tail call i32 @ext4_es_remove_extent(ptr noundef %9, i32 noundef %77, i32 noundef %122) #13
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  tail call void @up_write(ptr noundef %121) #13
  br label %166

126:                                              ; preds = %120
  %127 = add i32 %80, -1
  %128 = tail call i32 @ext4_ext_remove_space(ptr noundef %9, i32 noundef %77, i32 noundef %127) #13
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call void @up_write(ptr noundef %121) #13
  br label %166

131:                                              ; preds = %126
  tail call void @ext4_discard_preallocations(ptr noundef %9, i32 noundef 0) #13
  %132 = sub i32 %80, %77
  %133 = tail call fastcc i32 @ext4_ext_shift_extents(ptr noundef %9, ptr noundef %116, i32 noundef %80, i32 noundef %132, i32 noundef 0) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void @up_write(ptr noundef %121) #13
  br label %166

136:                                              ; preds = %131
  %137 = load i64, ptr %90, align 8
  %138 = sub i64 %137, %3
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !62
  %139 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 22
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !63
  store i64 %138, ptr %90, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !64
  %142 = load i32, ptr %139, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %139, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !65
  %144 = getelementptr i8, ptr %9, i32 -32
  store i64 %138, ptr %144, align 8
  tail call void @up_write(ptr noundef %121) #13
  %145 = load ptr, ptr %35, align 4
  %146 = getelementptr inbounds %struct.super_block, ptr %145, i32 0, i32 10
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %136
  %151 = load i32, ptr %13, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  %154 = icmp ult ptr %116, inttoptr (i32 4096 to ptr)
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %162, label %158

156:                                              ; preds = %136
  %157 = icmp ult ptr %116, inttoptr (i32 4096 to ptr)
  br i1 %157, label %162, label %158

158:                                              ; preds = %156, %150
  %159 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %116, i32 0, i32 7
  %160 = load i32, ptr %159, align 4
  %161 = or i32 %160, 1
  store i32 %161, ptr %159, align 4
  br label %162

162:                                              ; preds = %158, %156, %150
  %163 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 15
  %164 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %9) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %164, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %163, ptr noundef align 8 dereferenceable(16) %164, i32 16, i1 false) #13
  %165 = call i32 @__ext4_mark_inode_dirty(ptr noundef %116, ptr noundef %9, ptr noundef nonnull @__func__.ext4_collapse_range, i32 noundef 5371) #13
  call fastcc void @ext4_update_inode_fsync_trans(ptr noundef %116, ptr noundef %9, i32 noundef 1) #13
  br label %166

166:                                              ; preds = %162, %135, %130, %125
  %167 = phi i32 [ %123, %125 ], [ %128, %130 ], [ %133, %135 ], [ %165, %162 ]
  %168 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_collapse_range, i32 noundef 5375, ptr noundef %116) #13
  br label %169

169:                                              ; preds = %166, %118, %105, %101, %97
  %170 = phi i32 [ %99, %97 ], [ %103, %101 ], [ %106, %105 ], [ %119, %118 ], [ %167, %166 ]
  call void @up_write(ptr noundef %98) #13
  br label %171

171:                                              ; preds = %169, %93, %88
  %172 = phi i32 [ %170, %169 ], [ -22, %88 ], [ -95, %93 ]
  call void @up_write(ptr noundef %89) #13
  br label %409

173:                                              ; preds = %31
  %174 = and i32 %1, 32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %348, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %180 = load ptr, ptr %179, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !11
  %181 = getelementptr i8, ptr %9, i32 -124
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 524288
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %346, label %185

185:                                              ; preds = %176
  %186 = or i64 %3, %2
  %187 = getelementptr inbounds %struct.super_block, ptr %178, i32 0, i32 3
  %188 = load i32, ptr %187, align 16
  %189 = getelementptr inbounds %struct.super_block, ptr %178, i32 0, i32 27
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.ext4_sb_info, ptr %190, i32 0, i32 12
  %192 = load i32, ptr %191, align 16
  %193 = shl i32 %188, %192
  %194 = zext i32 %193 to i64
  %195 = add nsw i64 %194, -1
  %196 = and i64 %195, %186
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %346

198:                                              ; preds = %185
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_insert_range, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = tail call ptr @llvm.thread.pointer() #13
  %203 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 5
  %206 = getelementptr i32, ptr @__cpu_online_mask, i32 %205
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %204, 31
  %209 = shl nuw i32 1, %208
  %210 = and i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %201
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !66
  %213 = tail call i32 @__traceiter_ext4_insert_range(ptr noundef null, ptr noundef %9, i64 noundef %2, i64 noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !67
  br label %214

214:                                              ; preds = %212, %201, %198
  %215 = getelementptr inbounds %struct.super_block, ptr %178, i32 0, i32 2
  %216 = load i8, ptr %215, align 4
  %217 = zext i8 %216 to i64
  %218 = ashr i64 %2, %217
  %219 = trunc i64 %218 to i32
  %220 = ashr i64 %3, %217
  %221 = trunc i64 %220 to i32
  %222 = tail call i32 @ext4_inode_journal_mode(ptr noundef %9) #13
  %223 = and i32 %222, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %214
  %226 = load ptr, ptr %177, align 4
  %227 = tail call i32 @ext4_force_commit(ptr noundef %226) #13
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %346

229:                                              ; preds = %225, %214
  %230 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  tail call void @down_write(ptr noundef %230) #13
  %231 = load volatile i32, ptr %181, align 4
  %232 = and i32 %231, 524288
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %344, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %177, align 4
  %236 = getelementptr inbounds %struct.super_block, ptr %235, i32 0, i32 4
  %237 = load i64, ptr %236, align 8
  %238 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %239 = load i64, ptr %238, align 8
  %240 = sub i64 %237, %239
  %241 = icmp slt i64 %240, %3
  br i1 %241, label %344, label %242

242:                                              ; preds = %234
  %243 = icmp sgt i64 %239, %2
  br i1 %243, label %244, label %344

244:                                              ; preds = %242
  tail call void @inode_dio_wait(ptr noundef %9) #13
  %245 = getelementptr inbounds %struct.address_space, ptr %180, i32 0, i32 2
  tail call void @down_write(ptr noundef %245) #13
  %246 = tail call i32 @ext4_break_layouts(ptr noundef %9) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %342

248:                                              ; preds = %244
  %249 = and i64 %2, -4096
  %250 = load ptr, ptr %179, align 8
  %251 = tail call i32 @filemap_write_and_wait_range(ptr noundef %250, i64 noundef %249, i64 noundef 9223372036854775807) #13
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %342

253:                                              ; preds = %248
  tail call void @truncate_pagecache(ptr noundef %9, i64 noundef %249) #13
  %254 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %9) #13
  %255 = load ptr, ptr %177, align 4
  %256 = getelementptr inbounds %struct.super_block, ptr %255, i32 0, i32 27
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.ext4_sb_info, ptr %257, i32 0, i32 11
  %259 = load i32, ptr %258, align 4
  %260 = shl i32 %259, 3
  %261 = tail call ptr @__ext4_journal_start_sb(ptr noundef %255, i32 noundef 5472, i32 noundef 5, i32 noundef %254, i32 noundef 0, i32 noundef %260) #13
  %262 = icmp ugt ptr %261, inttoptr (i32 -4096 to ptr)
  br i1 %262, label %263, label %265

263:                                              ; preds = %253
  %264 = ptrtoint ptr %261 to i32
  br label %342

265:                                              ; preds = %253
  tail call void @ext4_fc_mark_ineligible(ptr noundef %178, i32 noundef 7, ptr noundef %261) #13
  %266 = load i64, ptr %238, align 8
  %267 = add i64 %266, %3
  store i64 %267, ptr %238, align 8
  %268 = getelementptr i8, ptr %9, i32 -32
  %269 = load i64, ptr %268, align 8
  %270 = add i64 %269, %3
  store i64 %270, ptr %268, align 8
  %271 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 15
  %272 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %9) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %272, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %271, ptr noundef align 8 dereferenceable(16) %272, i32 16, i1 false) #13
  %273 = call i32 @__ext4_mark_inode_dirty(ptr noundef %261, ptr noundef %9, ptr noundef nonnull @__func__.ext4_insert_range, i32 noundef 5483) #13
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %339

275:                                              ; preds = %265
  %276 = getelementptr i8, ptr %9, i32 -24
  call void @down_write(ptr noundef %276) #13
  call void @ext4_discard_preallocations(ptr noundef %9, i32 noundef 0) #13
  %277 = call ptr @ext4_find_extent(ptr noundef %9, i32 noundef %219, ptr noundef null, i32 noundef 0) #13
  store ptr %277, ptr %5, align 4
  %278 = icmp ugt ptr %277, inttoptr (i32 -4096 to ptr)
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  call void @up_write(ptr noundef %276) #13
  br label %339

280:                                              ; preds = %275
  %281 = getelementptr i8, ptr %9, i32 -202
  %282 = load i16, ptr %281, align 2
  %283 = zext i16 %282 to i32
  %284 = getelementptr %struct.ext4_ext_path, ptr %277, i32 %283, i32 3
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %309, label %287

287:                                              ; preds = %280
  %288 = load i32, ptr %285, align 4
  %289 = getelementptr inbounds %struct.ext4_extent, ptr %285, i32 0, i32 1
  %290 = load i16, ptr %289, align 4
  %291 = zext i16 %290 to i32
  %292 = icmp ult i16 %290, -32767
  %293 = add nsw i32 %291, -32768
  %294 = select i1 %292, i32 %291, i32 %293
  %295 = icmp ult i32 %288, %219
  %296 = add i32 %294, %288
  %297 = icmp ugt i32 %296, %219
  %298 = select i1 %295, i1 %297, i1 false
  br i1 %298, label %299, label %303

299:                                              ; preds = %287
  %300 = select i1 %292, i32 0, i32 6
  %301 = call fastcc i32 @ext4_split_extent_at(ptr noundef %261, ptr noundef %9, ptr noundef nonnull %5, i32 noundef %219, i32 noundef %300, i32 noundef 1073741864) #13
  %302 = load ptr, ptr %5, align 4
  br label %303

303:                                              ; preds = %299, %287
  %304 = phi ptr [ %302, %299 ], [ %277, %287 ]
  %305 = phi i32 [ %301, %299 ], [ 0, %287 ]
  call void @ext4_ext_drop_refs(ptr noundef %304) #13
  %306 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %306) #13
  %307 = icmp slt i32 %305, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  call void @up_write(ptr noundef %276) #13
  br label %339

309:                                              ; preds = %280
  call void @ext4_ext_drop_refs(ptr noundef %277) #13
  call void @kfree(ptr noundef %277) #13
  br label %310

310:                                              ; preds = %309, %303
  %311 = phi i32 [ %288, %303 ], [ 0, %309 ]
  %312 = xor i32 %219, -1
  %313 = call i32 @ext4_es_remove_extent(ptr noundef %9, i32 noundef %219, i32 noundef %312) #13
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %310
  call void @up_write(ptr noundef %276) #13
  br label %339

316:                                              ; preds = %310
  %317 = call i32 @llvm.umax.i32(i32 %311, i32 %219) #13
  %318 = call fastcc i32 @ext4_ext_shift_extents(ptr noundef %9, ptr noundef %261, i32 noundef %317, i32 noundef %221, i32 noundef 1) #13
  call void @up_write(ptr noundef %276) #13
  %319 = load ptr, ptr %177, align 4
  %320 = getelementptr inbounds %struct.super_block, ptr %319, i32 0, i32 10
  %321 = load i32, ptr %320, align 4
  %322 = and i32 %321, 16
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %316
  %325 = load i32, ptr %13, align 4
  %326 = and i32 %325, 1
  %327 = icmp eq i32 %326, 0
  %328 = icmp ult ptr %261, inttoptr (i32 4096 to ptr)
  %329 = select i1 %327, i1 true, i1 %328
  br i1 %329, label %336, label %332

330:                                              ; preds = %316
  %331 = icmp ult ptr %261, inttoptr (i32 4096 to ptr)
  br i1 %331, label %336, label %332

332:                                              ; preds = %330, %324
  %333 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %261, i32 0, i32 7
  %334 = load i32, ptr %333, align 4
  %335 = or i32 %334, 1
  store i32 %335, ptr %333, align 4
  br label %336

336:                                              ; preds = %332, %330, %324
  %337 = icmp sgt i32 %318, -1
  br i1 %337, label %338, label %339

338:                                              ; preds = %336
  call fastcc void @ext4_update_inode_fsync_trans(ptr noundef %261, ptr noundef %9, i32 noundef 1) #13
  br label %339

339:                                              ; preds = %338, %336, %315, %308, %279, %265
  %340 = phi i32 [ %273, %265 ], [ 0, %279 ], [ %305, %308 ], [ %313, %315 ], [ %318, %338 ], [ %318, %336 ]
  %341 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_insert_range, i32 noundef 5551, ptr noundef %261) #13
  br label %342

342:                                              ; preds = %339, %263, %248, %244
  %343 = phi i32 [ %246, %244 ], [ %251, %248 ], [ %264, %263 ], [ %340, %339 ]
  call void @up_write(ptr noundef %245) #13
  br label %344

344:                                              ; preds = %342, %242, %234, %229
  %345 = phi i32 [ %343, %342 ], [ -95, %229 ], [ -27, %234 ], [ -22, %242 ]
  call void @up_write(ptr noundef %230) #13
  br label %346

346:                                              ; preds = %344, %225, %185, %176
  %347 = phi i32 [ %345, %344 ], [ -95, %176 ], [ -22, %185 ], [ %227, %225 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %409

348:                                              ; preds = %173
  %349 = and i32 %1, 16
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %348
  %352 = tail call fastcc i32 @ext4_zero_range(ptr noundef %0, i64 noundef %2, i64 noundef %3, i32 noundef %1)
  br label %409

353:                                              ; preds = %348
  tail call fastcc void @trace_ext4_fallocate_enter(ptr noundef %9, i64 noundef %2, i64 noundef %3, i32 noundef %1)
  %354 = zext i8 %11 to i64
  %355 = ashr i64 %2, %354
  %356 = trunc i64 %355 to i32
  %357 = add i64 %3, %2
  %358 = shl nuw i32 1, %12
  %359 = sext i32 %358 to i64
  %360 = add i64 %357, -1
  %361 = add i64 %360, %359
  %362 = sub nsw i64 0, %359
  %363 = and i64 %361, %362
  %364 = ashr i64 %363, %354
  %365 = sub i64 %364, %355
  %366 = trunc i64 %365 to i32
  %367 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  tail call void @down_write(ptr noundef %367) #13
  %368 = getelementptr i8, ptr %9, i32 -124
  %369 = load volatile i32, ptr %368, align 4
  %370 = and i32 %369, 524288
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %407, label %372

372:                                              ; preds = %353
  %373 = and i32 %1, 1
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %386

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %377 = load i64, ptr %376, align 8
  %378 = icmp sgt i64 %357, %377
  br i1 %378, label %383, label %379

379:                                              ; preds = %375
  %380 = getelementptr i8, ptr %9, i32 -32
  %381 = load i64, ptr %380, align 8
  %382 = icmp sgt i64 %357, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %379, %375
  %384 = tail call i32 @inode_newsize_ok(ptr noundef %9, i64 noundef %357) #13
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %407

386:                                              ; preds = %383, %379, %372
  %387 = phi i64 [ 0, %372 ], [ %357, %383 ], [ 0, %379 ]
  tail call void @inode_dio_wait(ptr noundef %9) #13
  %388 = tail call fastcc i32 @ext4_alloc_file_blocks(ptr noundef %0, i32 noundef %356, i32 noundef %366, i64 noundef %387, i32 noundef 3)
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %407

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %392 = load i32, ptr %391, align 4
  %393 = and i32 %392, 1052672
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %407, label %395

395:                                              ; preds = %390
  %396 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.super_block, ptr %397, i32 0, i32 27
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr inbounds %struct.ext4_sb_info, ptr %399, i32 0, i32 47
  %401 = load ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %407, label %403

403:                                              ; preds = %395
  %404 = getelementptr i8, ptr %9, i32 520
  %405 = load i32, ptr %404, align 8
  %406 = tail call i32 @ext4_fc_commit(ptr noundef nonnull %401, i32 noundef %405) #13
  br label %407

407:                                              ; preds = %403, %395, %390, %386, %383, %353
  %408 = phi i32 [ %388, %386 ], [ %406, %403 ], [ 0, %395 ], [ 0, %390 ], [ %384, %383 ], [ -95, %353 ]
  tail call void @up_write(ptr noundef %367) #13
  tail call fastcc void @trace_ext4_fallocate_exit(ptr noundef %9, i64 noundef %2, i32 noundef %366, i32 noundef %408)
  br label %409

409:                                              ; preds = %407, %351, %346, %171, %84, %43, %34, %28, %26, %4
  %410 = phi i32 [ -95, %4 ], [ %27, %26 ], [ %29, %28 ], [ %347, %346 ], [ %352, %351 ], [ %408, %407 ], [ %172, %171 ], [ -95, %34 ], [ -22, %43 ], [ %86, %84 ]
  ret i32 %410
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_punch_hole(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_convert_inline_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_zero_range(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 19
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_zero_range, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %4
  %17 = tail call ptr @llvm.thread.pointer() #13
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !68
  %28 = tail call i32 @__traceiter_ext4_zero_range(ptr noundef null, ptr noundef %8, i64 noundef %1, i64 noundef %2, i32 noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  br label %29

29:                                               ; preds = %27, %16, %4
  %30 = tail call i32 @ext4_inode_journal_mode(ptr noundef %8) #13
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @ext4_force_commit(ptr noundef %35) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %177

38:                                               ; preds = %33, %29
  %39 = add i64 %1, -1
  %40 = shl nsw i32 -1, %13
  %41 = xor i32 %40, -1
  %42 = sext i32 %41 to i64
  %43 = or i64 %39, %42
  %44 = add i64 %43, 1
  %45 = add i64 %2, %1
  %46 = xor i64 %42, -1
  %47 = and i64 %45, %46
  %48 = icmp slt i64 %44, %1
  %49 = icmp sgt i64 %47, %45
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %177, label %51

51:                                               ; preds = %38
  %52 = zext i8 %12 to i64
  %53 = ashr i64 %44, %52
  %54 = trunc i64 %53 to i32
  %55 = ashr i64 %47, %52
  %56 = trunc i64 %55 to i32
  %57 = tail call i32 @llvm.usub.sat.i32(i32 %56, i32 %54)
  %58 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24
  tail call void @down_write(ptr noundef %58) #13
  %59 = getelementptr i8, ptr %8, i32 -124
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 524288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %175, label %63

63:                                               ; preds = %51
  %64 = and i32 %3, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %68 = load i64, ptr %67, align 8
  %69 = icmp sgt i64 %45, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %8, i32 -32
  %72 = load i64, ptr %71, align 8
  %73 = icmp sgt i64 %45, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %66
  %75 = tail call i32 @inode_newsize_ok(ptr noundef %8, i64 noundef %45) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %175

77:                                               ; preds = %74, %70, %63
  %78 = phi i64 [ 0, %63 ], [ %45, %74 ], [ 0, %70 ]
  tail call void @inode_dio_wait(ptr noundef %8) #13
  %79 = or i64 %45, %1
  %80 = trunc i64 %79 to i32
  %81 = and i32 %41, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = and i64 %46, %1
  %85 = ashr i64 %84, %52
  %86 = trunc i64 %85 to i32
  %87 = add i64 %45, -1
  %88 = or i64 %87, %42
  %89 = add i64 %88, 1
  %90 = sub i64 %89, %84
  %91 = ashr i64 %90, %52
  %92 = trunc i64 %91 to i32
  %93 = tail call fastcc i32 @ext4_alloc_file_blocks(ptr noundef %0, i32 noundef %86, i32 noundef %92, i64 noundef %78, i32 noundef 3)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %175

95:                                               ; preds = %77
  %96 = icmp ugt i32 %56, %54
  br i1 %96, label %99, label %175

97:                                               ; preds = %83
  %98 = icmp ugt i32 %56, %54
  br i1 %98, label %99, label %115

99:                                               ; preds = %97, %95
  %100 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 2
  tail call void @down_write(ptr noundef %100) #13
  %101 = tail call i32 @ext4_break_layouts(ptr noundef %8) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call void @up_write(ptr noundef %100) #13
  br label %175

104:                                              ; preds = %99
  %105 = tail call i32 @ext4_update_disksize_before_punch(ptr noundef %8, i64 noundef %1, i64 noundef %2) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  tail call void @up_write(ptr noundef %100) #13
  br label %175

108:                                              ; preds = %104
  %109 = add i64 %47, -1
  tail call void @truncate_pagecache_range(ptr noundef %8, i64 noundef %44, i64 noundef %109) #13
  %110 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 15
  %111 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %111, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %110, ptr noundef align 8 dereferenceable(16) %111, i32 16, i1 false)
  %112 = call fastcc i32 @ext4_alloc_file_blocks(ptr noundef %0, i32 noundef %54, i32 noundef %57, i64 noundef %78, i32 noundef 1073742083)
  call void @up_write(ptr noundef %100) #13
  %113 = icmp ne i32 %112, 0
  %114 = select i1 %113, i1 true, i1 %82
  br i1 %114, label %175, label %115

115:                                              ; preds = %108, %97
  %116 = load volatile i32, ptr %59, align 4
  %117 = and i32 %116, 268435456
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr i8, ptr %8, i32 478
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119, %115
  %124 = getelementptr i8, ptr %8, i32 -202
  %125 = load i16, ptr %124, align 2
  %126 = zext i16 %125 to i32
  %127 = mul nuw nsw i32 %126, 6
  br label %128

128:                                              ; preds = %123, %119
  %129 = phi i32 [ %127, %123 ], [ 2, %119 ]
  %130 = or i32 %129, 1
  %131 = call i32 @ext4_inode_journal_mode(ptr noundef %8) #13
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  %134 = add nuw nsw i32 %129, 3
  %135 = select i1 %133, i32 %130, i32 %134
  %136 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.super_block, ptr %137, i32 0, i32 27
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.ext4_sb_info, ptr %139, i32 0, i32 11
  %141 = load i32, ptr %140, align 4
  %142 = shl i32 %141, 3
  %143 = call ptr @__ext4_journal_start_sb(ptr noundef %137, i32 noundef 4632, i32 noundef 0, i32 noundef %135, i32 noundef 0, i32 noundef %142) #13
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %148

145:                                              ; preds = %128
  %146 = ptrtoint ptr %143 to i32
  %147 = load ptr, ptr %136, align 4
  call void @__ext4_std_error(ptr noundef %147, ptr noundef nonnull @__func__.ext4_zero_range, i32 noundef 4635, i32 noundef %146) #13
  br label %175

148:                                              ; preds = %128
  %149 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 15
  %150 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %150, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %149, ptr noundef align 8 dereferenceable(16) %150, i32 16, i1 false)
  %151 = icmp eq i64 %78, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call fastcc i32 @ext4_update_inode_size(ptr noundef %8, i64 noundef %78)
  br label %154

154:                                              ; preds = %152, %148
  %155 = call i32 @__ext4_mark_inode_dirty(ptr noundef %143, ptr noundef %8, ptr noundef nonnull @__func__.ext4_zero_range, i32 noundef 4642) #13
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %172, !prof !10

157:                                              ; preds = %154
  %158 = call i32 @ext4_zero_partial_blocks(ptr noundef %143, ptr noundef %8, i64 noundef %1, i64 noundef %2) #13
  %159 = icmp sgt i32 %158, -1
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  call fastcc void @ext4_update_inode_fsync_trans(ptr noundef %143, ptr noundef %8, i32 noundef 1)
  br label %161

161:                                              ; preds = %160, %157
  %162 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 1052672
  %165 = icmp eq i32 %164, 0
  %166 = icmp ult ptr %143, inttoptr (i32 4096 to ptr)
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %143, i32 0, i32 7
  %170 = load i32, ptr %169, align 4
  %171 = or i32 %170, 1
  store i32 %171, ptr %169, align 4
  br label %172

172:                                              ; preds = %168, %161, %154
  %173 = phi i32 [ %155, %154 ], [ %158, %161 ], [ %158, %168 ]
  %174 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_zero_range, i32 noundef 4654, ptr noundef %143) #13
  br label %175

175:                                              ; preds = %172, %145, %108, %107, %103, %95, %83, %74, %51
  %176 = phi i32 [ %93, %83 ], [ %101, %103 ], [ %105, %107 ], [ %112, %108 ], [ %146, %145 ], [ %173, %172 ], [ %75, %74 ], [ -95, %51 ], [ 0, %95 ]
  call void @up_write(ptr noundef %58) #13
  br label %177

177:                                              ; preds = %175, %38, %33
  %178 = phi i32 [ %176, %175 ], [ %36, %33 ], [ -22, %38 ]
  ret i32 %178
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fallocate_enter(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #8 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fallocate_enter, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
  %19 = tail call i32 @__traceiter_ext4_fallocate_enter(ptr noundef null, ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  br label %20

20:                                               ; preds = %18, %7, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_alloc_file_blocks(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_map_blocks, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !11
  %11 = getelementptr i8, ptr %10, i32 -124
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 524288
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4434, 0\0A.popsection", ""() #13, !srcloc !72
  unreachable

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.ext4_map_blocks, ptr %7, i32 0, i32 1
  store i32 %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ext4_map_blocks, ptr %7, i32 0, i32 2
  store i32 %2, ptr %18, align 4
  %19 = icmp ult i32 %2, 32768
  %20 = or i32 %4, 64
  %21 = select i1 %19, i32 %20, i32 %4
  %22 = tail call i32 @ext4_chunk_trans_blocks(ptr noundef %10, i32 noundef %2) #13
  %23 = getelementptr i8, ptr %10, i32 -202
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %27 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 19
  %28 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 16
  %29 = icmp eq i64 %3, 0
  %30 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 13
  %31 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 22
  %32 = getelementptr i8, ptr %10, i32 -32
  %33 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 24
  %34 = getelementptr i8, ptr %10, i32 -24
  %35 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 15
  %36 = getelementptr i8, ptr %10, i32 520
  %37 = getelementptr i8, ptr %10, i32 524
  br label %38

38:                                               ; preds = %152, %16
  %39 = phi i32 [ 0, %16 ], [ -28, %152 ]
  %40 = phi i32 [ %25, %16 ], [ %148, %152 ]
  %41 = phi i32 [ %22, %16 ], [ %149, %152 ]
  %42 = phi i32 [ %2, %16 ], [ %150, %152 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %146, label %44

44:                                               ; preds = %139, %38
  %45 = phi i32 [ %56, %139 ], [ %40, %38 ]
  %46 = phi i32 [ %57, %139 ], [ %41, %38 ]
  %47 = phi i32 [ %77, %139 ], [ %42, %38 ]
  %48 = load i16, ptr %23, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = call i32 @ext4_chunk_trans_blocks(ptr noundef %10, i32 noundef %47) #13
  %53 = load i16, ptr %23, align 2
  %54 = zext i16 %53 to i32
  br label %55

55:                                               ; preds = %51, %44
  %56 = phi i32 [ %54, %51 ], [ %45, %44 ]
  %57 = phi i32 [ %52, %51 ], [ %46, %44 ]
  %58 = load ptr, ptr %26, align 4
  %59 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 27
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  %63 = shl i32 %62, 3
  %64 = call ptr @__ext4_journal_start_sb(ptr noundef %58, i32 noundef 4462, i32 noundef 3, i32 noundef %57, i32 noundef 0, i32 noundef %63) #13
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = ptrtoint ptr %64 to i32
  br label %146

68:                                               ; preds = %55
  %69 = call i32 @ext4_map_blocks(ptr noundef %64, ptr noundef %10, ptr noundef nonnull %7, i32 noundef %21) #13
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = call i32 @__ext4_mark_inode_dirty(ptr noundef %64, ptr noundef %10, ptr noundef nonnull @__func__.ext4_alloc_file_blocks, i32 noundef 4473) #13
  %73 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_alloc_file_blocks, i32 noundef 4474, ptr noundef %64) #13
  br label %146

74:                                               ; preds = %68
  store i32 0, ptr %6, align 4
  %75 = load i32, ptr %17, align 8
  %76 = add i32 %75, %69
  store i32 %76, ptr %17, align 8
  %77 = sub i32 %47, %69
  store i32 %77, ptr %18, align 4
  %78 = load i8, ptr %27, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %8, ptr noundef %10) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  br i1 %29, label %117, label %79

79:                                               ; preds = %74
  %80 = zext i32 %76 to i64
  %81 = zext i8 %78 to i64
  %82 = shl i64 %80, %81
  %83 = call i64 @llvm.smin.i64(i64 %82, i64 %3)
  %84 = load i64, ptr %30, align 8
  %85 = icmp slt i64 %84, %83
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !62
  %87 = load i32, ptr %31, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %31, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !63
  store i64 %83, ptr %30, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !64
  %89 = load i32, ptr %31, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %31, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !65
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi i32 [ 1, %86 ], [ 0, %79 ]
  %93 = load i64, ptr %32, align 8
  %94 = icmp slt i64 %93, %83
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i16, ptr %10, align 8
  %97 = and i16 %96, -4096
  %98 = icmp eq i16 %97, -32768
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load volatile i32, ptr %33, align 4
  %101 = icmp eq i32 %100, 0
  %102 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %103 = xor i1 %102, true
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %106, !prof !8

105:                                              ; preds = %99
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3415, i32 noundef 9, ptr noundef null) #13
  br label %106

106:                                              ; preds = %105, %99, %95
  call void @down_write(ptr noundef %34) #13
  %107 = load i64, ptr %32, align 8
  %108 = icmp slt i64 %107, %83
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store volatile i64 %83, ptr %32, align 8
  br label %110

110:                                              ; preds = %109, %106
  call void @up_write(ptr noundef %34) #13
  %111 = or i32 %92, 2
  br label %112

112:                                              ; preds = %110, %91
  %113 = phi i32 [ %111, %110 ], [ %92, %91 ]
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef align 8 dereferenceable(16) %28, i32 16, i1 false)
  br label %117

117:                                              ; preds = %116, %112, %74
  %118 = call i32 @__ext4_mark_inode_dirty(ptr noundef %64, ptr noundef %10, ptr noundef nonnull @__func__.ext4_alloc_file_blocks, i32 noundef 4491) #13
  %119 = icmp ult ptr %64, inttoptr (i32 4096 to ptr)
  br i1 %119, label %139, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %64, i32 0, i32 7
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load ptr, ptr %64, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr %126, align 8
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.transaction_s, ptr %126, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  store i32 %135, ptr %36, align 8
  %136 = load ptr, ptr %64, align 4
  %137 = getelementptr inbounds %struct.transaction_s, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %37, align 4
  br label %139

139:                                              ; preds = %133, %128, %125, %120, %117
  %140 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_alloc_file_blocks, i32 noundef 4493, ptr noundef %64) #13
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 %118, i32 %140
  %143 = icmp eq i32 %142, 0
  %144 = icmp ne i32 %77, 0
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %44, label %158, !prof !73

146:                                              ; preds = %71, %66, %38
  %147 = phi i32 [ %67, %66 ], [ %69, %71 ], [ %39, %38 ]
  %148 = phi i32 [ %56, %66 ], [ %56, %71 ], [ %40, %38 ]
  %149 = phi i32 [ %57, %66 ], [ %57, %71 ], [ %41, %38 ]
  %150 = phi i32 [ %47, %66 ], [ %47, %71 ], [ 0, %38 ]
  %151 = icmp eq i32 %147, -28
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load ptr, ptr %26, align 4
  %154 = call i32 @ext4_should_retry_alloc(ptr noundef %153, ptr noundef nonnull %6) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %38

156:                                              ; preds = %146
  %157 = icmp sgt i32 %147, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %156, %139
  %159 = phi i32 [ 0, %156 ], [ %142, %139 ]
  br label %160

160:                                              ; preds = %158, %156, %152
  %161 = phi i32 [ %159, %158 ], [ %147, %156 ], [ -28, %152 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fc_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fallocate_exit(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fallocate_exit, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !74
  %19 = tail call i32 @__traceiter_ext4_fallocate_exit(ptr noundef null, ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  br label %20

20:                                               ; preds = %18, %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_convert_unwritten_extents(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !11
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = zext i8 %7 to i64
  %10 = ashr i64 %2, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 1
  store i32 %11, ptr %12, align 8
  %13 = sext i32 %3 to i64
  %14 = shl nuw i32 1, %8
  %15 = sext i32 %14 to i64
  %16 = add i64 %2, -1
  %17 = add i64 %16, %13
  %18 = add i64 %17, %15
  %19 = sub nsw i64 0, %15
  %20 = and i64 %18, %19
  %21 = ashr i64 %20, %9
  %22 = sub i64 %21, %10
  %23 = trunc i64 %22 to i32
  %24 = icmp eq ptr %0, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = tail call i32 @ext4_chunk_trans_blocks(ptr noundef %1, i32 noundef %23) #13
  br label %27

27:                                               ; preds = %25, %4
  %28 = phi i32 [ 0, %4 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 2
  %30 = icmp eq i32 %28, 0
  %31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  br label %33

33:                                               ; preds = %67, %27
  %34 = phi i32 [ %23, %27 ], [ %41, %67 ]
  %35 = phi i32 [ 0, %27 ], [ %55, %67 ]
  %36 = phi ptr [ %0, %27 ], [ %54, %67 ]
  %37 = icmp ugt i32 %34, %35
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = load i32, ptr %12, align 8
  %40 = add i32 %39, %35
  store i32 %40, ptr %12, align 8
  %41 = sub i32 %34, %35
  store i32 %41, ptr %29, align 4
  br i1 %30, label %53, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, 3
  %49 = call ptr @__ext4_journal_start_sb(ptr noundef %43, i32 noundef 4792, i32 noundef 3, i32 noundef %28, i32 noundef 0, i32 noundef %48) #13
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = ptrtoint ptr %49 to i32
  br label %70

53:                                               ; preds = %42, %38
  %54 = phi ptr [ %49, %42 ], [ %36, %38 ]
  %55 = call i32 @ext4_map_blocks(ptr noundef %54, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 19) #13
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load ptr, ptr %31, align 4
  %59 = load i32, ptr %32, align 4
  %60 = load i32, ptr %12, align 8
  %61 = load i32, ptr %29, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %58, ptr noundef nonnull @__func__.ext4_convert_unwritten_extents, i32 noundef 4805, ptr noundef nonnull @.str.5, i32 noundef %59, i32 noundef %60, i32 noundef %61, i32 noundef %55) #13
  br label %62

62:                                               ; preds = %57, %53
  %63 = call i32 @__ext4_mark_inode_dirty(ptr noundef %54, ptr noundef %1, ptr noundef nonnull @__func__.ext4_convert_unwritten_extents, i32 noundef 4806) #13
  br i1 %30, label %67, label %64

64:                                               ; preds = %62
  %65 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_unwritten_extents, i32 noundef 4808, ptr noundef %54) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70, !prof !10

67:                                               ; preds = %64, %62
  %68 = icmp ne i32 %63, 0
  %69 = select i1 %56, i1 true, i1 %68
  br i1 %69, label %70, label %33

70:                                               ; preds = %67, %64, %51, %33
  %71 = phi i32 [ %52, %51 ], [ %55, %64 ], [ %35, %33 ], [ %55, %67 ]
  %72 = phi i32 [ 0, %51 ], [ %65, %64 ], [ 0, %33 ], [ %63, %67 ]
  %73 = icmp sgt i32 %71, 0
  %74 = select i1 %73, i32 %72, i32 %71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_convert_unwritten_io_end_vec(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @__ext4_journal_start_reserved(ptr noundef nonnull %0, i32 noundef 4831, i32 noundef 11) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %34

9:                                                ; preds = %4, %2
  %10 = phi ptr [ %5, %4 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.ext4_io_end, ptr %1, i32 0, i32 6
  %12 = getelementptr inbounds %struct.ext4_io_end, ptr %1, i32 0, i32 2
  br label %13

13:                                               ; preds = %17, %9
  %14 = phi ptr [ %11, %9 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.ext4_io_end_vec, ptr %15, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ext4_io_end_vec, ptr %15, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = tail call i32 @ext4_convert_unwritten_extents(ptr noundef %10, ptr noundef %18, i64 noundef %20, i32 noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %13, label %25

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ 0, %13 ]
  %27 = icmp eq ptr %10, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_unwritten_io_end_vec, i32 noundef 4845, ptr noundef nonnull %10) #13
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %32 = icmp slt i32 %26, 0
  %33 = select i1 %32, i32 %26, i32 %31
  br label %34

34:                                               ; preds = %30, %7
  %35 = phi i32 [ %8, %7 ], [ %33, %30 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_reserved(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_fiemap(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @ext4_ext_precache(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4
  %13 = and i32 %12, -5
  store i32 %13, ptr %1, align 4
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ %13, %11 ], [ %5, %4 ]
  %16 = getelementptr i8, ptr %0, i32 -124
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 524288
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  br i1 %19, label %24, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 4
  br label %28

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 13
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi ptr [ %23, %22 ], [ %27, %24 ]
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %3, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = icmp ult i64 %30, %2
  br i1 %33, label %48, label %34

34:                                               ; preds = %32
  %35 = icmp ult i64 %30, %3
  %36 = sub i64 %30, %3
  %37 = icmp ult i64 %36, %2
  %38 = or i1 %35, %37
  %39 = sub i64 %30, %2
  %40 = select i1 %38, i64 %39, i64 %3
  %41 = and i32 %15, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = and i32 %15, -3
  store i32 %44, ptr %1, align 4
  br label %45

45:                                               ; preds = %43, %34
  %46 = phi ptr [ @ext4_iomap_xattr_ops, %43 ], [ @ext4_iomap_report_ops, %34 ]
  %47 = tail call i32 @iomap_fiemap(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %40, ptr noundef nonnull %46) #13
  br label %48

48:                                               ; preds = %45, %32, %28, %8
  %49 = phi i32 [ %9, %8 ], [ -22, %28 ], [ -27, %32 ], [ %47, %45 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_get_es_cache(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_status, align 8
  %7 = alloca i64, align 8
  store i64 %3, ptr %7, align 8
  %8 = getelementptr i8, ptr %0, i32 -124
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 268435456
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %0, i32 478
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -120
  tail call void @down_read(ptr noundef %17) #13
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @up_read(ptr noundef %17) #13
  br label %25

22:                                               ; preds = %16
  %23 = load i16, ptr %13, align 2
  %24 = icmp eq i16 %23, 0
  tail call void @up_read(ptr noundef %17) #13
  br i1 %24, label %25, label %124

25:                                               ; preds = %22, %21, %12, %4
  %26 = load i32, ptr %1, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @ext4_ext_precache(ptr noundef %0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %124

32:                                               ; preds = %29
  %33 = load i32, ptr %1, align 4
  %34 = and i32 %33, -5
  store i32 %34, ptr %1, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = call i32 @fiemap_prep(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %7, i32 noundef 0) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %124

38:                                               ; preds = %35
  %39 = load volatile i32, ptr %8, align 4
  %40 = and i32 %39, 524288
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  br i1 %41, label %46, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 4
  br label %50

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 13
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi ptr [ %45, %44 ], [ %49, %46 ]
  %52 = load i64, ptr %51, align 8
  %53 = load i64, ptr %7, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %124, label %55

55:                                               ; preds = %50
  %56 = icmp ult i64 %52, %2
  br i1 %56, label %124, label %57

57:                                               ; preds = %55
  %58 = icmp ult i64 %52, %53
  %59 = sub i64 %52, %53
  %60 = icmp ult i64 %59, %2
  %61 = or i1 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = sub i64 %52, %2
  store i64 %63, ptr %7, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i64 [ %53, %57 ], [ %63, %62 ]
  %66 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 2
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i64
  %69 = lshr i64 %2, %68
  %70 = trunc i64 %69 to i32
  %71 = add i64 %2, -1
  %72 = add i64 %71, %65
  %73 = lshr i64 %72, %68
  %74 = call i64 @llvm.umin.i64(i64 %73, i64 4294967294)
  %75 = trunc i64 %74 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false) #13, !annotation !11
  %76 = load i8, ptr %66, align 4
  %77 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 3
  %78 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 1
  %79 = zext i8 %76 to i64
  %80 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 2
  br label %81

81:                                               ; preds = %120, %64
  %82 = phi i32 [ %70, %64 ], [ %116, %120 ]
  %83 = icmp ugt i32 %82, %75
  br i1 %83, label %122, label %84

84:                                               ; preds = %81
  store i32 0, ptr %5, align 4
  %85 = call i32 @ext4_es_lookup_extent(ptr noundef %0, i32 noundef %82, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %122, label %87

87:                                               ; preds = %84
  %88 = load i64, ptr %77, align 8
  %89 = lshr i64 %88, 49
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 2048
  %92 = and i64 %88, 2305843009213693952
  %93 = icmp eq i64 %92, 0
  %94 = or i32 %91, 6
  %95 = select i1 %93, i32 %91, i32 %94
  %96 = lshr i64 %88, 35
  %97 = trunc i64 %96 to i32
  %98 = and i32 %97, 134217728
  %99 = or i32 %95, %98
  %100 = load i32, ptr %5, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = or i32 %99, %102
  %104 = and i32 %99, 134217732
  %105 = icmp eq i32 %104, 0
  %106 = and i64 %88, 576460752303423487
  %107 = select i1 %105, i64 %106, i64 0
  store i64 %107, ptr %77, align 8
  %108 = load i32, ptr %78, align 4
  %109 = zext i32 %108 to i64
  %110 = shl i64 %109, %79
  %111 = shl i64 %107, %79
  %112 = load i32, ptr %80, align 8
  %113 = zext i32 %112 to i64
  %114 = shl i64 %113, %79
  %115 = call i32 @fiemap_fill_next_extent(ptr noundef %1, i64 noundef %110, i64 noundef %111, i64 noundef %114, i32 noundef %103) #13
  %116 = load i32, ptr %5, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %87
  %119 = icmp slt i32 %115, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %118
  %121 = icmp eq i32 %115, 1
  br i1 %121, label %122, label %81

122:                                              ; preds = %120, %118, %87, %84, %81
  %123 = phi i32 [ %115, %118 ], [ 0, %120 ], [ 0, %87 ], [ 0, %84 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %124

124:                                              ; preds = %122, %55, %50, %35, %29, %22
  %125 = phi i32 [ %123, %122 ], [ 0, %22 ], [ %30, %29 ], [ %36, %35 ], [ -22, %50 ], [ -27, %55 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_prep(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_swap_extents(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store ptr null, ptr %10, align 4
  %11 = getelementptr i8, ptr %1, i32 -24
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5588, 0\0A.popsection", ""() #13, !srcloc !76
  unreachable

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %2, i32 -24
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5589, 0\0A.popsection", ""() #13, !srcloc !77
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5590, 0\0A.popsection", ""() #13, !srcloc !78
  unreachable

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 24
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5591, 0\0A.popsection", ""() #13, !srcloc !79
  unreachable

30:                                               ; preds = %25
  %31 = tail call i32 @ext4_es_remove_extent(ptr noundef %1, i32 noundef %3, i32 noundef %5) #13
  store i32 %31, ptr %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %393, !prof !10

33:                                               ; preds = %30
  %34 = tail call i32 @ext4_es_remove_extent(ptr noundef %2, i32 noundef %4, i32 noundef %5) #13
  store i32 %34, ptr %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = icmp eq i32 %5, 0
  %37 = or i1 %35, %36
  br i1 %37, label %393, label %38, !prof !80

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %40 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %41 = icmp eq i32 %6, 0
  br label %42

42:                                               ; preds = %390, %38
  %43 = phi i32 [ %3, %38 ], [ %367, %390 ]
  %44 = phi i32 [ %4, %38 ], [ %368, %390 ]
  %45 = phi i32 [ %5, %38 ], [ %369, %390 ]
  %46 = phi i32 [ 0, %38 ], [ %370, %390 ]
  %47 = call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %43, ptr noundef null, i32 noundef 1073741824)
  store ptr %47, ptr %9, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = ptrtoint ptr %47 to i32
  store i32 %50, ptr %7, align 4
  store ptr null, ptr %9, align 4
  br label %365

51:                                               ; preds = %42
  %52 = call ptr @ext4_find_extent(ptr noundef %2, i32 noundef %44, ptr noundef null, i32 noundef 1073741824)
  store ptr %52, ptr %10, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = ptrtoint ptr %52 to i32
  store i32 %55, ptr %7, align 4
  store ptr null, ptr %10, align 4
  br label %341

56:                                               ; preds = %51
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr inbounds %struct.ext4_ext_path, ptr %57, i32 0, i32 1
  %59 = load i16, ptr %58, align 8
  %60 = zext i16 %59 to i32
  %61 = getelementptr %struct.ext4_ext_path, ptr %57, i32 %60, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ext4_ext_path, ptr %52, i32 0, i32 1
  %64 = load i16, ptr %63, align 8
  %65 = zext i16 %64 to i32
  %66 = getelementptr %struct.ext4_ext_path, ptr %52, i32 %65, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %62, null
  %70 = select i1 %68, i1 true, i1 %69, !prof !8
  br i1 %70, label %341, label %71, !prof !8

71:                                               ; preds = %56
  %72 = load i32, ptr %62, align 4
  %73 = load i32, ptr %67, align 4
  %74 = getelementptr inbounds %struct.ext4_extent, ptr %62, i32 0, i32 1
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = icmp ult i16 %75, -32767
  %78 = add nsw i32 %76, -32768
  %79 = select i1 %77, i32 %76, i32 %78
  %80 = getelementptr inbounds %struct.ext4_extent, ptr %67, i32 0, i32 1
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = icmp ult i16 %81, -32767
  %84 = add nsw i32 %82, -32768
  %85 = select i1 %83, i32 %82, i32 %84
  %86 = icmp ult i32 %43, %72
  br i1 %86, label %97, label %87

87:                                               ; preds = %71
  %88 = add i32 %79, %72
  %89 = add i32 %88, -1
  %90 = icmp ugt i32 %43, %89
  %91 = icmp ult i32 %44, %73
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = add i32 %85, %73
  %95 = add i32 %94, -1
  %96 = icmp ugt i32 %44, %95
  br i1 %96, label %97, label %196

97:                                               ; preds = %93, %87, %71
  %98 = icmp eq ptr %57, null
  br i1 %98, label %99, label %100, !prof !8

99:                                               ; preds = %97
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

100:                                              ; preds = %97
  %101 = icmp eq i16 %59, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.ext4_ext_path, ptr %57, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %138, label %106

106:                                              ; preds = %102, %100
  %107 = getelementptr %struct.ext4_ext_path, ptr %57, i32 %60, i32 5
  br label %108

108:                                              ; preds = %132, %106
  %109 = phi i32 [ %60, %106 ], [ %133, %132 ]
  %110 = icmp eq i32 %109, %60
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load ptr, ptr %107, align 4
  %113 = getelementptr inbounds %struct.ext4_extent_header, ptr %112, i32 0, i32 1
  %114 = load i16, ptr %113, align 2
  %115 = zext i16 %114 to i32
  %116 = getelementptr %struct.ext4_extent, ptr %112, i32 %115
  %117 = icmp eq ptr %62, %116
  br i1 %117, label %132, label %118

118:                                              ; preds = %111
  %119 = getelementptr %struct.ext4_extent, ptr %62, i32 1
  br label %135

120:                                              ; preds = %108
  %121 = getelementptr %struct.ext4_ext_path, ptr %57, i32 %109, i32 4
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr %struct.ext4_ext_path, ptr %57, i32 %109, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.ext4_extent_header, ptr %124, i32 0, i32 1
  %126 = load i16, ptr %125, align 2
  %127 = zext i16 %126 to i32
  %128 = getelementptr %struct.ext4_extent_idx, ptr %124, i32 %127
  %129 = icmp eq ptr %122, %128
  br i1 %129, label %132, label %130

130:                                              ; preds = %120
  %131 = getelementptr %struct.ext4_extent_idx, ptr %122, i32 1
  br label %135

132:                                              ; preds = %120, %111
  %133 = add nsw i32 %109, -1
  %134 = icmp sgt i32 %109, 0
  br i1 %134, label %108, label %138

135:                                              ; preds = %130, %118
  %136 = phi ptr [ %131, %130 ], [ %119, %118 ]
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %135, %132, %102
  %139 = phi i32 [ -1, %102 ], [ %137, %135 ], [ -1, %132 ]
  %140 = icmp eq ptr %52, null
  br i1 %140, label %141, label %142, !prof !8

141:                                              ; preds = %138
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

142:                                              ; preds = %138
  %143 = icmp eq i16 %64, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.ext4_ext_path, ptr %52, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %180, label %148

148:                                              ; preds = %144, %142
  %149 = getelementptr %struct.ext4_ext_path, ptr %52, i32 %65, i32 5
  br label %150

150:                                              ; preds = %174, %148
  %151 = phi i32 [ %65, %148 ], [ %175, %174 ]
  %152 = icmp eq i32 %151, %65
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load ptr, ptr %149, align 4
  %155 = getelementptr inbounds %struct.ext4_extent_header, ptr %154, i32 0, i32 1
  %156 = load i16, ptr %155, align 2
  %157 = zext i16 %156 to i32
  %158 = getelementptr %struct.ext4_extent, ptr %154, i32 %157
  %159 = icmp eq ptr %67, %158
  br i1 %159, label %174, label %160

160:                                              ; preds = %153
  %161 = getelementptr %struct.ext4_extent, ptr %67, i32 1
  br label %177

162:                                              ; preds = %150
  %163 = getelementptr %struct.ext4_ext_path, ptr %52, i32 %151, i32 4
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr %struct.ext4_ext_path, ptr %52, i32 %151, i32 5
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ext4_extent_header, ptr %166, i32 0, i32 1
  %168 = load i16, ptr %167, align 2
  %169 = zext i16 %168 to i32
  %170 = getelementptr %struct.ext4_extent_idx, ptr %166, i32 %169
  %171 = icmp eq ptr %164, %170
  br i1 %171, label %174, label %172

172:                                              ; preds = %162
  %173 = getelementptr %struct.ext4_extent_idx, ptr %164, i32 1
  br label %177

174:                                              ; preds = %162, %153
  %175 = add nsw i32 %151, -1
  %176 = icmp sgt i32 %151, 0
  br i1 %176, label %150, label %180

177:                                              ; preds = %172, %160
  %178 = phi ptr [ %173, %172 ], [ %161, %160 ]
  %179 = load i32, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %174, %144
  %181 = phi i32 [ -1, %144 ], [ %179, %177 ], [ -1, %174 ]
  %182 = select i1 %86, i32 %72, i32 %139
  %183 = icmp ugt i32 %73, %44
  %184 = select i1 %183, i32 %73, i32 %181
  %185 = icmp eq i32 %182, -1
  %186 = icmp eq i32 %184, -1
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %341, label %188

188:                                              ; preds = %180
  %189 = sub i32 %182, %43
  %190 = sub i32 %184, %44
  %191 = call i32 @llvm.umax.i32(i32 %189, i32 %190)
  %192 = call i32 @llvm.umin.i32(i32 %191, i32 %45)
  %193 = add i32 %192, %43
  %194 = add i32 %192, %44
  %195 = sub i32 %45, %192
  br label %341

196:                                              ; preds = %93
  %197 = icmp ult i32 %72, %43
  br i1 %197, label %198, label %204

198:                                              ; preds = %196
  %199 = select i1 %77, i32 0, i32 6
  %200 = call fastcc i32 @ext4_split_extent_at(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef %43, i32 noundef %199, i32 noundef 1073741832) #13
  store i32 %200, ptr %7, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %341, !prof !10

202:                                              ; preds = %198
  %203 = icmp ult i32 %73, %44
  br i1 %203, label %206, label %341

204:                                              ; preds = %196
  %205 = icmp ult i32 %73, %44
  br i1 %205, label %206, label %220

206:                                              ; preds = %204, %202
  %207 = load ptr, ptr %10, align 4
  %208 = getelementptr inbounds %struct.ext4_ext_path, ptr %207, i32 0, i32 1
  %209 = load i16, ptr %208, align 8
  %210 = zext i16 %209 to i32
  %211 = getelementptr %struct.ext4_ext_path, ptr %207, i32 %210, i32 3
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.ext4_extent, ptr %212, i32 0, i32 1
  %214 = load i16, ptr %213, align 4
  %215 = icmp ult i16 %214, -32767
  %216 = select i1 %215, i32 0, i32 6
  %217 = call fastcc i32 @ext4_split_extent_at(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10, i32 noundef %44, i32 noundef %216, i32 noundef 1073741832) #13
  store i32 %217, ptr %7, align 4
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, i32 %45, i32 0, !prof !10
  br label %341

220:                                              ; preds = %204
  %221 = sub i32 %88, %43
  %222 = call i32 @llvm.umin.i32(i32 %45, i32 %221)
  %223 = sub i32 %94, %44
  %224 = call i32 @llvm.umin.i32(i32 %222, i32 %223)
  %225 = icmp eq i32 %224, %79
  br i1 %225, label %240, label %226

226:                                              ; preds = %220
  %227 = add i32 %224, %43
  %228 = load ptr, ptr %9, align 4
  %229 = getelementptr inbounds %struct.ext4_ext_path, ptr %228, i32 0, i32 1
  %230 = load i16, ptr %229, align 8
  %231 = zext i16 %230 to i32
  %232 = getelementptr %struct.ext4_ext_path, ptr %228, i32 %231, i32 3
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.ext4_extent, ptr %233, i32 0, i32 1
  %235 = load i16, ptr %234, align 4
  %236 = icmp ult i16 %235, -32767
  %237 = select i1 %236, i32 0, i32 6
  %238 = call fastcc i32 @ext4_split_extent_at(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef %227, i32 noundef %237, i32 noundef 1073741832) #13
  store i32 %238, ptr %7, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %341, !prof !10

240:                                              ; preds = %220
  %241 = icmp eq i32 %224, %85
  br i1 %241, label %259, label %244

242:                                              ; preds = %226
  %243 = icmp eq i32 %224, %85
  br i1 %243, label %341, label %244

244:                                              ; preds = %242, %240
  %245 = add i32 %224, %44
  %246 = load ptr, ptr %10, align 4
  %247 = getelementptr inbounds %struct.ext4_ext_path, ptr %246, i32 0, i32 1
  %248 = load i16, ptr %247, align 8
  %249 = zext i16 %248 to i32
  %250 = getelementptr %struct.ext4_ext_path, ptr %246, i32 %249, i32 3
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.ext4_extent, ptr %251, i32 0, i32 1
  %253 = load i16, ptr %252, align 4
  %254 = icmp ult i16 %253, -32767
  %255 = select i1 %254, i32 0, i32 6
  %256 = call fastcc i32 @ext4_split_extent_at(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %10, i32 noundef %245, i32 noundef %255, i32 noundef 1073741832) #13
  store i32 %256, ptr %7, align 4
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %257, i32 %45, i32 0
  br label %341

259:                                              ; preds = %240
  %260 = icmp eq i32 %85, %79
  br i1 %260, label %262, label %261, !prof !10

261:                                              ; preds = %259
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5705, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

262:                                              ; preds = %259
  %263 = load ptr, ptr %9, align 4
  %264 = getelementptr inbounds %struct.ext4_ext_path, ptr %263, i32 0, i32 1
  %265 = load i16, ptr %264, align 8
  %266 = zext i16 %265 to i32
  %267 = getelementptr %struct.ext4_ext_path, ptr %263, i32 %266, i32 6
  %268 = load ptr, ptr %267, align 8
  %269 = icmp eq ptr %268, null
  br i1 %269, label %277, label %270

270:                                              ; preds = %262
  %271 = load ptr, ptr %39, align 4
  %272 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %271, ptr noundef nonnull %268, i32 noundef 1) #13
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load ptr, ptr %267, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %275) #13
  br label %277

276:                                              ; preds = %270
  store i32 %272, ptr %7, align 4
  br label %341

277:                                              ; preds = %274, %262
  store i32 0, ptr %7, align 4
  %278 = load ptr, ptr %10, align 4
  %279 = getelementptr inbounds %struct.ext4_ext_path, ptr %278, i32 0, i32 1
  %280 = load i16, ptr %279, align 8
  %281 = zext i16 %280 to i32
  %282 = getelementptr %struct.ext4_ext_path, ptr %278, i32 %281, i32 6
  %283 = load ptr, ptr %282, align 8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %292, label %285

285:                                              ; preds = %277
  %286 = load ptr, ptr %40, align 4
  %287 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %286, ptr noundef nonnull %283, i32 noundef 1) #13
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = load ptr, ptr %282, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %290) #13
  br label %292

291:                                              ; preds = %285
  store i32 %287, ptr %7, align 4
  br label %341

292:                                              ; preds = %289, %277
  store i32 0, ptr %7, align 4
  %293 = load i16, ptr %74, align 4
  %294 = getelementptr inbounds i8, ptr %62, i32 6
  %295 = load i16, ptr %294, align 2
  %296 = getelementptr inbounds i8, ptr %62, i32 8
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr inbounds %struct.ext4_extent, ptr %67, i32 0, i32 3
  %299 = load i32, ptr %298, align 4
  %300 = getelementptr inbounds %struct.ext4_extent, ptr %67, i32 0, i32 2
  %301 = load i16, ptr %300, align 2
  store i32 %299, ptr %296, align 4
  store i16 %301, ptr %294, align 2
  store i32 %297, ptr %298, align 4
  store i16 %295, ptr %300, align 2
  %302 = trunc i32 %79 to i16
  store i16 %302, ptr %74, align 4
  store i16 %302, ptr %80, align 4
  br i1 %41, label %309, label %303

303:                                              ; preds = %292
  %304 = and i16 %302, 32767
  %305 = icmp eq i16 %304, 0
  br i1 %305, label %306, label %307, !prof !8

306:                                              ; preds = %303
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

307:                                              ; preds = %303
  %308 = or i16 %302, -32768
  store i16 %308, ptr %80, align 4
  br label %309

309:                                              ; preds = %307, %292
  %310 = icmp ult i16 %293, -32767
  br i1 %310, label %318, label %311

311:                                              ; preds = %309
  %312 = load i16, ptr %74, align 4
  %313 = and i16 %312, 32767
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %315, label %316, !prof !8

315:                                              ; preds = %311
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

316:                                              ; preds = %311
  %317 = or i16 %312, -32768
  store i16 %317, ptr %74, align 4
  br label %318

318:                                              ; preds = %316, %309
  %319 = load ptr, ptr %10, align 4
  call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %2, ptr noundef %319, ptr noundef nonnull %67)
  %320 = load ptr, ptr %9, align 4
  call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr noundef %320, ptr noundef nonnull %62)
  %321 = load ptr, ptr %10, align 4
  %322 = getelementptr inbounds %struct.ext4_ext_path, ptr %321, i32 0, i32 1
  %323 = load i16, ptr %322, align 8
  %324 = zext i16 %323 to i32
  %325 = getelementptr %struct.ext4_ext_path, ptr %321, i32 %324
  %326 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_swap_extents, i32 noundef 5727, ptr noundef %0, ptr noundef %2, ptr noundef %325)
  store i32 %326, ptr %7, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %341, !prof !10

328:                                              ; preds = %318
  %329 = load ptr, ptr %9, align 4
  %330 = getelementptr inbounds %struct.ext4_ext_path, ptr %329, i32 0, i32 1
  %331 = load i16, ptr %330, align 8
  %332 = zext i16 %331 to i32
  %333 = getelementptr %struct.ext4_ext_path, ptr %329, i32 %332
  %334 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_swap_extents, i32 noundef 5731, ptr noundef %0, ptr noundef %1, ptr noundef %333)
  store i32 %334, ptr %7, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %341, !prof !10

336:                                              ; preds = %328
  %337 = add i32 %79, %43
  %338 = add i32 %79, %44
  %339 = add i32 %79, %46
  %340 = sub i32 %45, %79
  br label %341

341:                                              ; preds = %336, %328, %318, %291, %276, %244, %242, %226, %206, %202, %198, %188, %180, %56, %54
  %342 = phi i32 [ %46, %180 ], [ %46, %54 ], [ %46, %56 ], [ %46, %198 ], [ %46, %226 ], [ %46, %318 ], [ %46, %328 ], [ %46, %276 ], [ %46, %291 ], [ %46, %188 ], [ %339, %336 ], [ %46, %206 ], [ %46, %244 ], [ %46, %202 ], [ %46, %242 ]
  %343 = phi i32 [ 0, %180 ], [ 0, %54 ], [ 0, %56 ], [ 0, %198 ], [ 0, %226 ], [ 0, %318 ], [ 0, %328 ], [ 0, %276 ], [ 0, %291 ], [ %195, %188 ], [ %340, %336 ], [ %219, %206 ], [ %258, %244 ], [ %45, %202 ], [ %45, %242 ]
  %344 = phi i32 [ %44, %180 ], [ %44, %54 ], [ %44, %56 ], [ %44, %198 ], [ %44, %226 ], [ %44, %318 ], [ %44, %328 ], [ %44, %276 ], [ %44, %291 ], [ %194, %188 ], [ %338, %336 ], [ %44, %206 ], [ %44, %244 ], [ %44, %202 ], [ %44, %242 ]
  %345 = phi i32 [ %43, %180 ], [ %43, %54 ], [ %43, %56 ], [ %43, %198 ], [ %43, %226 ], [ %43, %318 ], [ %43, %328 ], [ %43, %276 ], [ %43, %291 ], [ %193, %188 ], [ %337, %336 ], [ %43, %206 ], [ %43, %244 ], [ %43, %202 ], [ %43, %242 ]
  %346 = load ptr, ptr %9, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %365, label %348

348:                                              ; preds = %341
  %349 = getelementptr inbounds %struct.ext4_ext_path, ptr %346, i32 0, i32 1
  %350 = load i16, ptr %349, align 8
  %351 = zext i16 %350 to i32
  br label %352

352:                                              ; preds = %359, %348
  %353 = phi i32 [ 0, %348 ], [ %360, %359 ]
  %354 = phi ptr [ %346, %348 ], [ %361, %359 ]
  %355 = getelementptr inbounds %struct.ext4_ext_path, ptr %354, i32 0, i32 6
  %356 = load ptr, ptr %355, align 8
  %357 = icmp eq ptr %356, null
  br i1 %357, label %359, label %358

358:                                              ; preds = %352
  call void @__brelse(ptr noundef nonnull %356) #13
  br label %359

359:                                              ; preds = %358, %352
  store ptr null, ptr %355, align 8
  %360 = add nuw nsw i32 %353, 1
  %361 = getelementptr %struct.ext4_ext_path, ptr %354, i32 1
  %362 = icmp eq i32 %353, %351
  br i1 %362, label %363, label %352

363:                                              ; preds = %359
  %364 = load ptr, ptr %9, align 4
  br label %365

365:                                              ; preds = %363, %341, %49
  %366 = phi ptr [ null, %49 ], [ null, %341 ], [ %364, %363 ]
  %367 = phi i32 [ %43, %49 ], [ %345, %341 ], [ %345, %363 ]
  %368 = phi i32 [ %44, %49 ], [ %344, %341 ], [ %344, %363 ]
  %369 = phi i32 [ 0, %49 ], [ %343, %341 ], [ %343, %363 ]
  %370 = phi i32 [ %46, %49 ], [ %342, %341 ], [ %342, %363 ]
  call void @kfree(ptr noundef %366) #13
  %371 = load ptr, ptr %10, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %390, label %373

373:                                              ; preds = %365
  %374 = getelementptr inbounds %struct.ext4_ext_path, ptr %371, i32 0, i32 1
  %375 = load i16, ptr %374, align 8
  %376 = zext i16 %375 to i32
  br label %377

377:                                              ; preds = %384, %373
  %378 = phi i32 [ 0, %373 ], [ %385, %384 ]
  %379 = phi ptr [ %371, %373 ], [ %386, %384 ]
  %380 = getelementptr inbounds %struct.ext4_ext_path, ptr %379, i32 0, i32 6
  %381 = load ptr, ptr %380, align 8
  %382 = icmp eq ptr %381, null
  br i1 %382, label %384, label %383

383:                                              ; preds = %377
  call void @__brelse(ptr noundef nonnull %381) #13
  br label %384

384:                                              ; preds = %383, %377
  store ptr null, ptr %380, align 8
  %385 = add nuw nsw i32 %378, 1
  %386 = getelementptr %struct.ext4_ext_path, ptr %379, i32 1
  %387 = icmp eq i32 %378, %376
  br i1 %387, label %388, label %377

388:                                              ; preds = %384
  %389 = load ptr, ptr %10, align 4
  br label %390

390:                                              ; preds = %388, %365
  %391 = phi ptr [ %389, %388 ], [ null, %365 ]
  call void @kfree(ptr noundef %391) #13
  store ptr null, ptr %10, align 4
  store ptr null, ptr %9, align 4
  %392 = icmp eq i32 %369, 0
  br i1 %392, label %393, label %42

393:                                              ; preds = %390, %33, %30
  %394 = phi i32 [ 0, %30 ], [ 0, %33 ], [ %370, %390 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret i32 %394
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_clu_mapped(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %8 = load i32, ptr %7, align 16
  %9 = shl i32 %1, %8
  %10 = tail call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %9, ptr noundef null, i32 noundef 0)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = ptrtoint ptr %10 to i32
  br label %117

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 -202
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %17, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = icmp ne i16 %16, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %28, !prof !8

23:                                               ; preds = %14
  %24 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %17
  %25 = load i32, ptr %7, align 16
  %26 = shl i32 %1, %25
  %27 = load i64, ptr %24, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_clu_mapped, i32 noundef 5794, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %26, i32 noundef %17, i64 noundef %27) #13
  br label %98

28:                                               ; preds = %14
  br i1 %20, label %98, label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %19, align 4
  %31 = load i32, ptr %7, align 16
  %32 = lshr i32 %30, %31
  %33 = icmp ugt i32 %32, %1
  br i1 %33, label %98, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ext4_extent, ptr %19, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp ult i16 %36, -32767
  %39 = add nsw i32 %37, -32768
  %40 = select i1 %38, i32 %37, i32 %39
  %41 = add i32 %30, -1
  %42 = add i32 %41, %40
  %43 = lshr i32 %42, %31
  %44 = icmp ult i32 %43, %1
  br i1 %44, label %45, label %98

45:                                               ; preds = %34
  %46 = icmp eq ptr %10, null
  br i1 %46, label %47, label %48, !prof !8

47:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ext4_ext_path, ptr %10, i32 0, i32 1
  %50 = load i16, ptr %49, align 8
  %51 = zext i16 %50 to i32
  %52 = icmp eq i16 %50, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ext4_ext_path, ptr %10, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %93, label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %51, i32 3
  %59 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %51, i32 5
  br label %60

60:                                               ; preds = %87, %57
  %61 = phi i32 [ %51, %57 ], [ %88, %87 ]
  %62 = icmp eq i32 %61, %51
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load ptr, ptr %58, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %59, align 4
  %68 = getelementptr inbounds %struct.ext4_extent_header, ptr %67, i32 0, i32 1
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = getelementptr %struct.ext4_extent, ptr %67, i32 %70
  %72 = icmp eq ptr %64, %71
  br i1 %72, label %87, label %73

73:                                               ; preds = %66
  %74 = getelementptr %struct.ext4_extent, ptr %64, i32 1
  br label %90

75:                                               ; preds = %60
  %76 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %61, i32 4
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %61, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ext4_extent_header, ptr %79, i32 0, i32 1
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = getelementptr %struct.ext4_extent_idx, ptr %79, i32 %82
  %84 = icmp eq ptr %77, %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %75
  %86 = getelementptr %struct.ext4_extent_idx, ptr %77, i32 1
  br label %90

87:                                               ; preds = %75, %66, %63
  %88 = add nsw i32 %61, -1
  %89 = icmp sgt i32 %61, 0
  br i1 %89, label %60, label %93

90:                                               ; preds = %85, %73
  %91 = phi ptr [ %86, %85 ], [ %74, %73 ]
  %92 = load i32, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %87, %53
  %94 = phi i32 [ -1, %53 ], [ %92, %90 ], [ -1, %87 ]
  %95 = lshr i32 %94, %31
  %96 = icmp eq i32 %95, %1
  %97 = zext i1 %96 to i32
  br label %98

98:                                               ; preds = %93, %34, %29, %28, %23
  %99 = phi i32 [ 0, %23 ], [ 0, %28 ], [ 0, %29 ], [ 1, %34 ], [ %97, %93 ]
  %100 = phi i32 [ -117, %23 ], [ 0, %28 ], [ 0, %29 ], [ 0, %34 ], [ 0, %93 ]
  %101 = icmp eq ptr %10, null
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ext4_ext_path, ptr %10, i32 0, i32 1
  %104 = load i16, ptr %103, align 8
  %105 = zext i16 %104 to i32
  br label %106

106:                                              ; preds = %113, %102
  %107 = phi i32 [ 0, %102 ], [ %114, %113 ]
  %108 = phi ptr [ %10, %102 ], [ %115, %113 ]
  %109 = getelementptr inbounds %struct.ext4_ext_path, ptr %108, i32 0, i32 6
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  tail call void @__brelse(ptr noundef nonnull %110) #13
  br label %113

113:                                              ; preds = %112, %106
  store ptr null, ptr %109, align 8
  %114 = add nuw nsw i32 %107, 1
  %115 = getelementptr %struct.ext4_ext_path, ptr %108, i32 1
  %116 = icmp eq i32 %107, %105
  br i1 %116, label %117, label %106

117:                                              ; preds = %113, %98, %12
  %118 = phi i32 [ %13, %12 ], [ %100, %98 ], [ %100, %113 ]
  %119 = phi i32 [ 0, %12 ], [ %99, %98 ], [ %99, %113 ]
  %120 = phi ptr [ null, %12 ], [ null, %98 ], [ %10, %113 ]
  tail call void @kfree(ptr noundef %120) #13
  %121 = icmp eq i32 %118, 0
  %122 = select i1 %121, i32 %119, i32 %118
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_replay_update_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !11
  %7 = tail call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %134

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ext4_ext_path, ptr %7, i32 0, i32 1
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = getelementptr %struct.ext4_ext_path, ptr %7, i32 %14, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %113, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %16, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ext4_extent, ptr %16, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = icmp ult i16 %23, -32767
  %26 = add nsw i32 %24, -32768
  %27 = select i1 %25, i32 %24, i32 %26
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %84, label %29

29:                                               ; preds = %21, %18
  store ptr %7, ptr %6, align 4
  %30 = getelementptr i8, ptr %0, i32 -24
  tail call void @down_write(ptr noundef %30) #13
  %31 = load i16, ptr %12, align 8
  %32 = zext i16 %31 to i32
  %33 = getelementptr %struct.ext4_ext_path, ptr %7, i32 %32, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ext4_extent, ptr %34, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = icmp ult i16 %36, -32767
  %38 = select i1 %37, i32 0, i32 6
  %39 = call fastcc i32 @ext4_split_extent_at(ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i32 noundef %1, i32 noundef %38, i32 noundef 1342177320) #13
  call void @up_write(ptr noundef %30) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %113

41:                                               ; preds = %29
  call void @kfree(ptr noundef %7) #13
  %42 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0)
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %134, label %44

44:                                               ; preds = %41
  store ptr %42, ptr %6, align 4
  %45 = getelementptr inbounds %struct.ext4_ext_path, ptr %42, i32 0, i32 1
  %46 = load i16, ptr %45, align 8
  %47 = zext i16 %46 to i32
  %48 = getelementptr %struct.ext4_ext_path, ptr %42, i32 %47, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %44
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 5872, i32 noundef 9, ptr noundef null) #13
  br label %53

53:                                               ; preds = %52, %44
  %54 = getelementptr inbounds %struct.ext4_extent, ptr %49, i32 0, i32 1
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = icmp ult i16 %55, -32767
  %58 = add nsw i32 %56, -32768
  %59 = select i1 %57, i32 %56, i32 %58
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %84, label %61

61:                                               ; preds = %53
  call void @down_write(ptr noundef %30) #13
  %62 = add i32 %2, %1
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.ext4_ext_path, ptr %63, i32 0, i32 1
  %65 = load i16, ptr %64, align 8
  %66 = zext i16 %65 to i32
  %67 = getelementptr %struct.ext4_ext_path, ptr %63, i32 %66, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ext4_extent, ptr %68, i32 0, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = icmp ult i16 %70, -32767
  %72 = select i1 %71, i32 0, i32 6
  %73 = call fastcc i32 @ext4_split_extent_at(ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i32 noundef %62, i32 noundef %72, i32 noundef 1342177320) #13
  call void @up_write(ptr noundef %30) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %113

75:                                               ; preds = %61
  call void @kfree(ptr noundef %42) #13
  %76 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0)
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %134, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ext4_ext_path, ptr %76, i32 0, i32 1
  %80 = load i16, ptr %79, align 8
  %81 = zext i16 %80 to i32
  %82 = getelementptr %struct.ext4_ext_path, ptr %76, i32 %81, i32 3
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %78, %53, %21
  %85 = phi ptr [ %83, %78 ], [ %49, %53 ], [ %16, %21 ]
  %86 = phi ptr [ %76, %78 ], [ %42, %53 ], [ %7, %21 ]
  %87 = icmp eq i32 %3, 0
  %88 = getelementptr inbounds %struct.ext4_extent, ptr %85, i32 0, i32 1
  %89 = load i16, ptr %88, align 4
  br i1 %87, label %96, label %90

90:                                               ; preds = %84
  %91 = and i16 %89, 32767
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %94, !prof !8

93:                                               ; preds = %90
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

94:                                               ; preds = %90
  %95 = or i16 %89, -32768
  br label %100

96:                                               ; preds = %84
  %97 = icmp ult i16 %89, -32767
  %98 = xor i16 %89, -32768
  %99 = select i1 %97, i16 %89, i16 %98
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i16 [ %99, %96 ], [ %95, %94 ]
  store i16 %101, ptr %88, align 4
  %102 = trunc i64 %4 to i32
  %103 = getelementptr inbounds %struct.ext4_extent, ptr %85, i32 0, i32 3
  store i32 %102, ptr %103, align 4
  %104 = lshr i64 %4, 32
  %105 = trunc i64 %104 to i16
  %106 = getelementptr inbounds %struct.ext4_extent, ptr %85, i32 0, i32 2
  store i16 %105, ptr %106, align 2
  %107 = getelementptr i8, ptr %0, i32 -24
  call void @down_write(ptr noundef %107) #13
  %108 = getelementptr inbounds %struct.ext4_ext_path, ptr %86, i32 0, i32 1
  %109 = load i16, ptr %108, align 8
  %110 = zext i16 %109 to i32
  %111 = getelementptr %struct.ext4_ext_path, ptr %86, i32 %110
  %112 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_replay_update_ex, i32 noundef 5893, ptr noundef null, ptr noundef %0, ptr noundef %111)
  call void @up_write(ptr noundef %107) #13
  br label %113

113:                                              ; preds = %100, %61, %29, %11
  %114 = phi i32 [ %39, %29 ], [ %73, %61 ], [ %112, %100 ], [ -117, %11 ]
  %115 = phi ptr [ %7, %29 ], [ %42, %61 ], [ %86, %100 ], [ %7, %11 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %132, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ext4_ext_path, ptr %115, i32 0, i32 1
  %119 = load i16, ptr %118, align 8
  %120 = zext i16 %119 to i32
  br label %121

121:                                              ; preds = %128, %117
  %122 = phi i32 [ 0, %117 ], [ %129, %128 ]
  %123 = phi ptr [ %115, %117 ], [ %130, %128 ]
  %124 = getelementptr inbounds %struct.ext4_ext_path, ptr %123, i32 0, i32 6
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  call void @__brelse(ptr noundef nonnull %125) #13
  br label %128

128:                                              ; preds = %127, %121
  store ptr null, ptr %124, align 8
  %129 = add nuw nsw i32 %122, 1
  %130 = getelementptr %struct.ext4_ext_path, ptr %123, i32 1
  %131 = icmp eq i32 %122, %120
  br i1 %131, label %132, label %121

132:                                              ; preds = %128, %113
  call void @kfree(ptr noundef %115) #13
  %133 = call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_replay_update_ex, i32 noundef 5898) #13
  br label %134

134:                                              ; preds = %132, %75, %41, %9
  %135 = phi i32 [ %10, %9 ], [ %114, %132 ], [ -1, %41 ], [ -22, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_ext_replay_shrink_inode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %67, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -24
  br label %6

6:                                                ; preds = %65, %4
  %7 = phi i32 [ 0, %4 ], [ %44, %65 ]
  %8 = tail call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %7, ptr noundef null, i32 noundef 0)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %67, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ext4_ext_path, ptr %8, i32 0, i32 1
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %13, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = zext i16 %12 to i32
  %19 = icmp eq ptr %8, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %27, %17
  %21 = phi i32 [ %28, %27 ], [ 0, %17 ]
  %22 = phi ptr [ %29, %27 ], [ %8, %17 ]
  %23 = getelementptr inbounds %struct.ext4_ext_path, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @__brelse(ptr noundef nonnull %24) #13
  br label %27

27:                                               ; preds = %26, %20
  store ptr null, ptr %23, align 8
  %28 = add nuw nsw i32 %21, 1
  %29 = getelementptr %struct.ext4_ext_path, ptr %22, i32 1
  %30 = icmp eq i32 %21, %18
  br i1 %30, label %31, label %20

31:                                               ; preds = %27, %17
  tail call void @kfree(ptr noundef %8) #13
  %32 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_replay_shrink_inode, i32 noundef 5917) #13
  br label %67

33:                                               ; preds = %10
  %34 = load i32, ptr %15, align 4
  %35 = getelementptr inbounds %struct.ext4_extent, ptr %15, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp ult i16 %36, -32767
  %39 = add nsw i32 %37, -32768
  %40 = select i1 %38, i32 %37, i32 %39
  %41 = add i32 %40, %34
  %42 = icmp ugt i32 %41, %7
  %43 = add nuw i32 %7, 1
  %44 = select i1 %42, i32 %41, i32 %43
  tail call fastcc void @ext4_ext_try_to_merge(ptr noundef null, ptr noundef %0, ptr noundef %8, ptr noundef nonnull %15)
  tail call void @down_write(ptr noundef %5) #13
  %45 = load i16, ptr %11, align 8
  %46 = zext i16 %45 to i32
  %47 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %46
  %48 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_replay_shrink_inode, i32 noundef 5926, ptr noundef null, ptr noundef %0, ptr noundef %47)
  tail call void @up_write(ptr noundef %5) #13
  %49 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_replay_shrink_inode, i32 noundef 5928) #13
  %50 = icmp eq ptr %8, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %33
  %52 = load i16, ptr %11, align 8
  %53 = zext i16 %52 to i32
  br label %54

54:                                               ; preds = %61, %51
  %55 = phi i32 [ 0, %51 ], [ %62, %61 ]
  %56 = phi ptr [ %8, %51 ], [ %63, %61 ]
  %57 = getelementptr inbounds %struct.ext4_ext_path, ptr %56, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void @__brelse(ptr noundef nonnull %58) #13
  br label %61

61:                                               ; preds = %60, %54
  store ptr null, ptr %57, align 8
  %62 = add nuw nsw i32 %55, 1
  %63 = getelementptr %struct.ext4_ext_path, ptr %56, i32 1
  %64 = icmp eq i32 %55, %53
  br i1 %64, label %65, label %54

65:                                               ; preds = %61, %33
  tail call void @kfree(ptr noundef %8) #13
  %66 = icmp ult i32 %44, %1
  br i1 %66, label %6, label %67

67:                                               ; preds = %65, %31, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_replay_set_iblocks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ext4_map_blocks, align 8
  %3 = alloca %struct.ext4_map_blocks, align 8
  %4 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !11
  %5 = tail call ptr @ext4_find_extent(ptr noundef %0, i32 noundef -2, ptr noundef null, i32 noundef 1073741824)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %280

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ext4_ext_path, ptr %5, i32 0, i32 1
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.ext4_ext_path, ptr %5, i32 %12, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = icmp eq ptr %5, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %25, %16
  %19 = phi i32 [ %26, %25 ], [ 0, %16 ]
  %20 = phi ptr [ %27, %25 ], [ %5, %16 ]
  %21 = getelementptr inbounds %struct.ext4_ext_path, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @__brelse(ptr noundef nonnull %22) #13
  br label %25

25:                                               ; preds = %24, %18
  store ptr null, ptr %21, align 8
  %26 = add nuw nsw i32 %19, 1
  %27 = getelementptr %struct.ext4_ext_path, ptr %20, i32 1
  %28 = icmp eq i32 %19, %12
  br i1 %28, label %29, label %18

29:                                               ; preds = %25, %16
  tail call void @kfree(ptr noundef %5) #13
  br label %268

30:                                               ; preds = %9
  %31 = load i32, ptr %14, align 4
  %32 = getelementptr inbounds %struct.ext4_extent, ptr %14, i32 0, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp ult i16 %33, -32767
  %36 = add nsw i32 %34, -32768
  %37 = select i1 %35, i32 %34, i32 %36
  %38 = add i32 %37, %31
  %39 = icmp eq ptr %5, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %47, %30
  %41 = phi i32 [ %48, %47 ], [ 0, %30 ]
  %42 = phi ptr [ %49, %47 ], [ %5, %30 ]
  %43 = getelementptr inbounds %struct.ext4_ext_path, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call void @__brelse(ptr noundef nonnull %44) #13
  br label %47

47:                                               ; preds = %46, %40
  store ptr null, ptr %43, align 8
  %48 = add nuw nsw i32 %41, 1
  %49 = getelementptr %struct.ext4_ext_path, ptr %42, i32 1
  %50 = icmp eq i32 %41, %12
  br i1 %50, label %51, label %40

51:                                               ; preds = %47, %30
  tail call void @kfree(ptr noundef %5) #13
  %52 = getelementptr inbounds %struct.ext4_map_blocks, ptr %4, i32 0, i32 1
  %53 = icmp eq i32 %38, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ext4_map_blocks, ptr %4, i32 0, i32 2
  br label %56

56:                                               ; preds = %62, %54
  %57 = phi i32 [ 0, %54 ], [ %63, %62 ]
  %58 = phi i32 [ 0, %54 ], [ %65, %62 ]
  store i32 %58, ptr %52, align 8
  %59 = sub i32 %38, %58
  store i32 %59, ptr %55, align 4
  %60 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #13
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = add i32 %60, %57
  %64 = load i32, ptr %55, align 4
  %65 = add i32 %64, %58
  %66 = icmp ugt i32 %38, %65
  br i1 %66, label %56, label %67

67:                                               ; preds = %62, %56, %51
  %68 = phi i32 [ 0, %51 ], [ %57, %56 ], [ %63, %62 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %69 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 2
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i64
  %76 = ashr i64 %70, %75
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 2
  store i32 %77, ptr %78, align 4
  %79 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #13
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %67
  %82 = icmp eq i32 %79, 0
  %83 = load i32, ptr %78, align 4
  %84 = select i1 %82, i32 %83, i32 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %85 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %84, ptr noundef null, i32 noundef 0)
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %268, label %88

87:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %268

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.ext4_ext_path, ptr %85, i32 0, i32 1
  %90 = load i16, ptr %89, align 8
  %91 = zext i16 %90 to i32
  %92 = add i32 %68, %91
  %93 = icmp eq ptr %85, null
  br i1 %93, label %105, label %94

94:                                               ; preds = %101, %88
  %95 = phi i32 [ %102, %101 ], [ 0, %88 ]
  %96 = phi ptr [ %103, %101 ], [ %85, %88 ]
  %97 = getelementptr inbounds %struct.ext4_ext_path, ptr %96, i32 0, i32 6
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  call void @__brelse(ptr noundef nonnull %98) #13
  br label %101

101:                                              ; preds = %100, %94
  store ptr null, ptr %97, align 8
  %102 = add nuw nsw i32 %95, 1
  %103 = getelementptr %struct.ext4_ext_path, ptr %96, i32 1
  %104 = icmp eq i32 %95, %91
  br i1 %104, label %105, label %94

105:                                              ; preds = %101, %88
  call void @kfree(ptr noundef %85) #13
  %106 = icmp ult i32 %84, %38
  br i1 %106, label %107, label %268

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %109 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  br label %110

110:                                              ; preds = %266, %107
  %111 = phi i32 [ %92, %107 ], [ %234, %266 ]
  %112 = phi i32 [ %84, %107 ], [ %162, %266 ]
  %113 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %112, ptr noundef null, i32 noundef 0)
  %114 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %268, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.ext4_ext_path, ptr %113, i32 0, i32 1
  %117 = load i16, ptr %116, align 8
  %118 = zext i16 %117 to i32
  %119 = getelementptr %struct.ext4_ext_path, ptr %113, i32 %118, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %115
  %123 = zext i16 %117 to i32
  %124 = icmp eq ptr %113, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %132, %122
  %126 = phi i32 [ %133, %132 ], [ 0, %122 ]
  %127 = phi ptr [ %134, %132 ], [ %113, %122 ]
  %128 = getelementptr inbounds %struct.ext4_ext_path, ptr %127, i32 0, i32 6
  %129 = load ptr, ptr %128, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  call void @__brelse(ptr noundef nonnull %129) #13
  br label %132

132:                                              ; preds = %131, %125
  store ptr null, ptr %128, align 8
  %133 = add nuw nsw i32 %126, 1
  %134 = getelementptr %struct.ext4_ext_path, ptr %127, i32 1
  %135 = icmp eq i32 %126, %123
  br i1 %135, label %136, label %125

136:                                              ; preds = %132, %122
  call void @kfree(ptr noundef %113) #13
  br label %280

137:                                              ; preds = %115
  %138 = add nuw i32 %112, 1
  %139 = load i32, ptr %120, align 4
  %140 = getelementptr inbounds %struct.ext4_extent, ptr %120, i32 0, i32 1
  %141 = load i16, ptr %140, align 4
  %142 = zext i16 %141 to i32
  %143 = icmp ult i16 %141, -32767
  %144 = add nsw i32 %142, -32768
  %145 = select i1 %143, i32 %142, i32 %144
  %146 = add i32 %145, %139
  %147 = call i32 @llvm.umax.i32(i32 %138, i32 %146)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i32 24, i1 false) #13, !annotation !11
  store i32 %147, ptr %108, align 8
  %148 = load i64, ptr %69, align 8
  %149 = load ptr, ptr %71, align 4
  %150 = getelementptr inbounds %struct.super_block, ptr %149, i32 0, i32 2
  %151 = load i8, ptr %150, align 4
  %152 = zext i8 %151 to i64
  %153 = ashr i64 %148, %152
  %154 = trunc i64 %153 to i32
  %155 = sub i32 %154, %147
  store i32 %155, ptr %109, align 4
  %156 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #13
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %173, label %158

158:                                              ; preds = %137
  %159 = icmp eq i32 %156, 0
  %160 = load i32, ptr %109, align 4
  %161 = select i1 %159, i32 %160, i32 0
  %162 = add i32 %161, %147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  %163 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %162, ptr noundef null, i32 noundef 0)
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %190, label %165

165:                                              ; preds = %158
  %166 = load i16, ptr %116, align 8
  %167 = getelementptr inbounds %struct.ext4_ext_path, ptr %163, i32 0, i32 1
  %168 = load i16, ptr %167, align 8
  %169 = call i16 @llvm.umax.i16(i16 %166, i16 %168)
  %170 = zext i16 %169 to i32
  %171 = zext i16 %166 to i32
  %172 = zext i16 %168 to i32
  br label %207

173:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  %174 = icmp eq ptr %113, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %173
  %176 = load i16, ptr %116, align 8
  %177 = zext i16 %176 to i32
  br label %178

178:                                              ; preds = %185, %175
  %179 = phi i32 [ 0, %175 ], [ %186, %185 ]
  %180 = phi ptr [ %113, %175 ], [ %187, %185 ]
  %181 = getelementptr inbounds %struct.ext4_ext_path, ptr %180, i32 0, i32 6
  %182 = load ptr, ptr %181, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  call void @__brelse(ptr noundef nonnull %182) #13
  br label %185

185:                                              ; preds = %184, %178
  store ptr null, ptr %181, align 8
  %186 = add nuw nsw i32 %179, 1
  %187 = getelementptr %struct.ext4_ext_path, ptr %180, i32 1
  %188 = icmp eq i32 %179, %177
  br i1 %188, label %189, label %178

189:                                              ; preds = %185, %173
  call void @kfree(ptr noundef %113) #13
  br label %268

190:                                              ; preds = %158
  %191 = icmp eq ptr %113, null
  br i1 %191, label %206, label %192

192:                                              ; preds = %190
  %193 = load i16, ptr %116, align 8
  %194 = zext i16 %193 to i32
  br label %195

195:                                              ; preds = %202, %192
  %196 = phi i32 [ 0, %192 ], [ %203, %202 ]
  %197 = phi ptr [ %113, %192 ], [ %204, %202 ]
  %198 = getelementptr inbounds %struct.ext4_ext_path, ptr %197, i32 0, i32 6
  %199 = load ptr, ptr %198, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  call void @__brelse(ptr noundef nonnull %199) #13
  br label %202

202:                                              ; preds = %201, %195
  store ptr null, ptr %198, align 8
  %203 = add nuw nsw i32 %196, 1
  %204 = getelementptr %struct.ext4_ext_path, ptr %197, i32 1
  %205 = icmp eq i32 %196, %194
  br i1 %205, label %206, label %195

206:                                              ; preds = %202, %190
  call void @kfree(ptr noundef %113) #13
  br label %268

207:                                              ; preds = %228, %165
  %208 = phi i32 [ %111, %165 ], [ %234, %228 ]
  %209 = phi i32 [ 0, %165 ], [ %235, %228 ]
  %210 = icmp ugt i32 %209, %171
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = getelementptr %struct.ext4_ext_path, ptr %113, i32 %209, i32 6
  %213 = load ptr, ptr %212, align 8
  %214 = icmp eq ptr %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.buffer_head, ptr %213, i32 0, i32 3
  %217 = load i64, ptr %216, align 8
  br label %218

218:                                              ; preds = %215, %211, %207
  %219 = phi i64 [ 0, %207 ], [ %217, %215 ], [ 0, %211 ]
  %220 = icmp ugt i32 %209, %172
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = getelementptr %struct.ext4_ext_path, ptr %163, i32 %209, i32 6
  %223 = load ptr, ptr %222, align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.buffer_head, ptr %223, i32 0, i32 3
  %227 = load i64, ptr %226, align 8
  br label %228

228:                                              ; preds = %225, %221, %218
  %229 = phi i64 [ 0, %218 ], [ %227, %225 ], [ 0, %221 ]
  %230 = icmp ne i64 %219, %229
  %231 = icmp ne i64 %229, 0
  %232 = and i1 %230, %231
  %233 = zext i1 %232 to i32
  %234 = add i32 %208, %233
  %235 = add nuw nsw i32 %209, 1
  %236 = icmp eq i32 %209, %170
  br i1 %236, label %237, label %207

237:                                              ; preds = %228
  %238 = icmp eq ptr %113, null
  br i1 %238, label %250, label %239

239:                                              ; preds = %246, %237
  %240 = phi i32 [ %247, %246 ], [ 0, %237 ]
  %241 = phi ptr [ %248, %246 ], [ %113, %237 ]
  %242 = getelementptr inbounds %struct.ext4_ext_path, ptr %241, i32 0, i32 6
  %243 = load ptr, ptr %242, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %239
  call void @__brelse(ptr noundef nonnull %243) #13
  br label %246

246:                                              ; preds = %245, %239
  store ptr null, ptr %242, align 8
  %247 = add nuw nsw i32 %240, 1
  %248 = getelementptr %struct.ext4_ext_path, ptr %241, i32 1
  %249 = icmp eq i32 %240, %171
  br i1 %249, label %250, label %239

250:                                              ; preds = %246, %237
  %251 = icmp eq ptr %163, null
  br i1 %251, label %266, label %252

252:                                              ; preds = %250
  %253 = load i16, ptr %167, align 8
  %254 = zext i16 %253 to i32
  br label %255

255:                                              ; preds = %262, %252
  %256 = phi i32 [ 0, %252 ], [ %263, %262 ]
  %257 = phi ptr [ %163, %252 ], [ %264, %262 ]
  %258 = getelementptr inbounds %struct.ext4_ext_path, ptr %257, i32 0, i32 6
  %259 = load ptr, ptr %258, align 8
  %260 = icmp eq ptr %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %255
  call void @__brelse(ptr noundef nonnull %259) #13
  br label %262

262:                                              ; preds = %261, %255
  store ptr null, ptr %258, align 8
  %263 = add nuw nsw i32 %256, 1
  %264 = getelementptr %struct.ext4_ext_path, ptr %257, i32 1
  %265 = icmp eq i32 %256, %254
  br i1 %265, label %266, label %255

266:                                              ; preds = %262, %250
  call void @kfree(ptr noundef %113) #13
  call void @kfree(ptr noundef %163) #13
  %267 = icmp ult i32 %162, %38
  br i1 %267, label %110, label %268

268:                                              ; preds = %266, %206, %189, %110, %105, %87, %81, %29
  %269 = phi i32 [ %68, %87 ], [ %68, %81 ], [ %111, %189 ], [ %111, %206 ], [ 0, %29 ], [ %92, %105 ], [ %111, %110 ], [ %234, %266 ]
  %270 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.super_block, ptr %271, i32 0, i32 2
  %273 = load i8, ptr %272, align 4
  %274 = zext i8 %273 to i32
  %275 = add nsw i32 %274, -9
  %276 = shl i32 %269, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %277, ptr %278, align 8
  %279 = call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_replay_set_iblocks, i32 noundef 6050) #13
  br label %280

280:                                              ; preds = %268, %136, %7
  %281 = phi i32 [ %8, %7 ], [ 0, %268 ], [ 0, %136 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i32 %281
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_clear_bb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !11
  %3 = getelementptr i8, ptr %0, i32 -124
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 268435456
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %120

7:                                                ; preds = %1
  %8 = tail call ptr @ext4_find_extent(ptr noundef %0, i32 noundef -2, ptr noundef null, i32 noundef 1073741824)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %120

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ext4_ext_path, ptr %8, i32 0, i32 1
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.ext4_ext_path, ptr %8, i32 %15, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = icmp eq ptr %8, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %28, %19
  %22 = phi i32 [ %29, %28 ], [ 0, %19 ]
  %23 = phi ptr [ %30, %28 ], [ %8, %19 ]
  %24 = getelementptr inbounds %struct.ext4_ext_path, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void @__brelse(ptr noundef nonnull %25) #13
  br label %28

28:                                               ; preds = %27, %21
  store ptr null, ptr %24, align 8
  %29 = add nuw nsw i32 %22, 1
  %30 = getelementptr %struct.ext4_ext_path, ptr %23, i32 1
  %31 = icmp eq i32 %22, %15
  br i1 %31, label %32, label %21

32:                                               ; preds = %28, %19
  tail call void @kfree(ptr noundef %8) #13
  br label %120

33:                                               ; preds = %12
  %34 = load i32, ptr %17, align 4
  %35 = getelementptr inbounds %struct.ext4_extent, ptr %17, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp ult i16 %36, -32767
  %39 = add nsw i32 %37, -32768
  %40 = select i1 %38, i32 %37, i32 %39
  %41 = add i32 %40, %34
  %42 = icmp eq ptr %8, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %50, %33
  %44 = phi i32 [ %51, %50 ], [ 0, %33 ]
  %45 = phi ptr [ %52, %50 ], [ %8, %33 ]
  %46 = getelementptr inbounds %struct.ext4_ext_path, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void @__brelse(ptr noundef nonnull %47) #13
  br label %50

50:                                               ; preds = %49, %43
  store ptr null, ptr %46, align 8
  %51 = add nuw nsw i32 %44, 1
  %52 = getelementptr %struct.ext4_ext_path, ptr %45, i32 1
  %53 = icmp eq i32 %44, %15
  br i1 %53, label %54, label %43

54:                                               ; preds = %50, %33
  tail call void @kfree(ptr noundef %8) #13
  %55 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %56 = icmp eq i32 %41, 0
  br i1 %56, label %120, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  %59 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %60 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  br label %61

61:                                               ; preds = %116, %57
  %62 = phi i32 [ 0, %57 ], [ %118, %116 ]
  store i32 %62, ptr %55, align 8
  %63 = sub i32 %41, %62
  store i32 %63, ptr %58, align 4
  %64 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #13
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %120, label %66

66:                                               ; preds = %61
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %116, label %68

68:                                               ; preds = %66
  %69 = load i32, ptr %55, align 8
  %70 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %69, ptr noundef null, i32 noundef 0)
  %71 = icmp eq ptr %70, null
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  %73 = or i1 %71, %72
  br i1 %73, label %106, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ext4_ext_path, ptr %70, i32 0, i32 1
  %76 = load i16, ptr %75, align 8
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %78, %74
  %79 = phi i32 [ %87, %78 ], [ 0, %74 ]
  %80 = load ptr, ptr %59, align 4
  %81 = getelementptr %struct.ext4_ext_path, ptr %70, i32 %79
  %82 = load i64, ptr %81, align 8
  call void @ext4_mb_mark_bb(ptr noundef %80, i64 noundef %82, i32 noundef 1, i32 noundef 0) #13
  %83 = load ptr, ptr %59, align 4
  %84 = load i32, ptr %60, align 4
  %85 = load i64, ptr %81, align 8
  %86 = call i32 @ext4_fc_record_regions(ptr noundef %83, i32 noundef %84, i32 noundef 0, i64 noundef %85, i32 noundef 1, i32 noundef 1) #13
  %87 = add nuw nsw i32 %79, 1
  %88 = load i16, ptr %75, align 8
  %89 = zext i16 %88 to i32
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %78, label %91

91:                                               ; preds = %78, %74
  %92 = phi i16 [ 0, %74 ], [ %88, %78 ]
  %93 = zext i16 %92 to i32
  br label %94

94:                                               ; preds = %101, %91
  %95 = phi i32 [ %102, %101 ], [ 0, %91 ]
  %96 = phi ptr [ %103, %101 ], [ %70, %91 ]
  %97 = getelementptr inbounds %struct.ext4_ext_path, ptr %96, i32 0, i32 6
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  call void @__brelse(ptr noundef nonnull %98) #13
  br label %101

101:                                              ; preds = %100, %94
  store ptr null, ptr %97, align 8
  %102 = add nuw nsw i32 %95, 1
  %103 = getelementptr %struct.ext4_ext_path, ptr %96, i32 1
  %104 = icmp eq i32 %95, %93
  br i1 %104, label %105, label %94

105:                                              ; preds = %101
  call void @kfree(ptr noundef %70) #13
  br label %106

106:                                              ; preds = %105, %68
  %107 = load ptr, ptr %59, align 4
  %108 = load i64, ptr %2, align 8
  %109 = load i32, ptr %58, align 4
  call void @ext4_mb_mark_bb(ptr noundef %107, i64 noundef %108, i32 noundef %109, i32 noundef 0) #13
  %110 = load ptr, ptr %59, align 4
  %111 = load i32, ptr %60, align 4
  %112 = load i32, ptr %55, align 8
  %113 = load i64, ptr %2, align 8
  %114 = load i32, ptr %58, align 4
  %115 = call i32 @ext4_fc_record_regions(ptr noundef %110, i32 noundef %111, i32 noundef %112, i64 noundef %113, i32 noundef %114, i32 noundef 1) #13
  br label %116

116:                                              ; preds = %106, %66
  %117 = load i32, ptr %58, align 4
  %118 = add i32 %117, %62
  %119 = icmp ugt i32 %41, %118
  br i1 %119, label %61, label %120

120:                                              ; preds = %116, %61, %54, %32, %10, %1
  %121 = phi i32 [ %11, %10 ], [ 0, %32 ], [ 0, %1 ], [ 0, %54 ], [ 0, %116 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mb_mark_bb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fc_record_regions(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_block_valid(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_load_extent(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_es_cache_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_extent_block_csum_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.78, align 8
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
  br i1 %13, label %59, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 119
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %32, !prof !8

21:                                               ; preds = %14
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3289, i32 noundef 9, ptr noundef null) #13
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_super_block, ptr %24, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 119
  %31 = load ptr, ptr %30, align 8
  br label %32

32:                                               ; preds = %29, %14
  %33 = phi ptr [ %31, %29 ], [ %16, %14 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ext4_extent_header, ptr %1, i32 0, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = mul nuw nsw i32 %38, 12
  %40 = add nuw nsw i32 %39, 12
  %41 = getelementptr i8, ptr %1, i32 %40
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 27
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %0, i32 528
  %46 = load i32, ptr %45, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !11
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 119
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr %48, align 64
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %52, label %51, !prof !10

51:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

52:                                               ; preds = %35
  store ptr %48, ptr %3, align 8
  %53 = getelementptr inbounds %struct.anon.78, ptr %3, i32 0, i32 1
  store i32 %46, ptr %53, align 8
  %54 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %40) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !10

56:                                               ; preds = %52
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

57:                                               ; preds = %52
  %58 = load i32, ptr %53, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  store i32 %58, ptr %41, align 4
  br label %59

59:                                               ; preds = %57, %32, %21, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_insert_index(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %11, ptr noundef nonnull %7, i32 noundef 1) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %90

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %15) #13
  br label %16

16:                                               ; preds = %14, %5
  %17 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %16
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_insert_index, i32 noundef 980, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef %3) #13
  br label %90

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ext4_ext_path, ptr %2, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_extent_header, ptr %24, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr inbounds %struct.ext4_extent_header, ptr %24, i32 0, i32 2
  %28 = load i16, ptr %27, align 4
  %29 = icmp ult i16 %26, %28
  br i1 %29, label %33, label %30, !prof !10

30:                                               ; preds = %22
  %31 = zext i16 %28 to i32
  %32 = zext i16 %26 to i32
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_insert_index, i32 noundef 989, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %32, i32 noundef %31) #13
  br label %90

33:                                               ; preds = %22
  %34 = icmp ult i32 %19, %3
  %35 = zext i1 %34 to i32
  %36 = getelementptr %struct.ext4_extent_idx, ptr %18, i32 %35
  %37 = getelementptr i8, ptr %24, i32 12
  %38 = zext i16 %26 to i32
  %39 = getelementptr %struct.ext4_extent_idx, ptr %37, i32 %38
  %40 = getelementptr %struct.ext4_extent_idx, ptr %39, i32 -1
  %41 = ptrtoint ptr %40 to i32
  %42 = ptrtoint ptr %36 to i32
  %43 = sub i32 %41, %42
  %44 = icmp slt i32 %43, -12
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1006, 0\0A.popsection", ""() #13, !srcloc !82
  unreachable

46:                                               ; preds = %33
  %47 = icmp eq i32 %43, -12
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = getelementptr %struct.ext4_extent_idx, ptr %36, i32 1
  %50 = add i32 %43, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %49, ptr align 4 %36, i32 %50, i1 false)
  %51 = load ptr, ptr %23, align 4
  %52 = getelementptr inbounds %struct.ext4_extent_header, ptr %51, i32 0, i32 2
  %53 = load i16, ptr %52, align 4
  br label %54

54:                                               ; preds = %48, %46
  %55 = phi i16 [ %53, %48 ], [ %28, %46 ]
  %56 = phi ptr [ %51, %48 ], [ %24, %46 ]
  %57 = icmp eq i16 %55, 0
  %58 = zext i16 %55 to i32
  %59 = getelementptr i8, ptr %56, i32 12
  %60 = getelementptr %struct.ext4_extent_idx, ptr %59, i32 %58
  %61 = getelementptr %struct.ext4_extent_idx, ptr %60, i32 -1
  %62 = select i1 %57, ptr null, ptr %61
  %63 = icmp ugt ptr %36, %62
  br i1 %63, label %64, label %65, !prof !8

64:                                               ; preds = %54
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_insert_index, i32 noundef 1015, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.25) #13
  br label %90

65:                                               ; preds = %54
  store i32 %3, ptr %36, align 4
  %66 = trunc i64 %4 to i32
  %67 = getelementptr %struct.ext4_extent_idx, ptr %18, i32 %35, i32 1
  store i32 %66, ptr %67, align 4
  %68 = lshr i64 %4, 32
  %69 = trunc i64 %68 to i16
  %70 = getelementptr %struct.ext4_extent_idx, ptr %18, i32 %35, i32 2
  store i16 %69, ptr %70, align 4
  %71 = load ptr, ptr %23, align 4
  %72 = getelementptr inbounds %struct.ext4_extent_header, ptr %71, i32 0, i32 1
  %73 = load i16, ptr %72, align 2
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 2
  %75 = load ptr, ptr %23, align 4
  %76 = getelementptr i8, ptr %75, i32 12
  %77 = getelementptr inbounds %struct.ext4_extent_header, ptr %75, i32 0, i32 1
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  %80 = getelementptr %struct.ext4_extent_idx, ptr %76, i32 %79
  %81 = getelementptr %struct.ext4_extent_idx, ptr %80, i32 -1
  %82 = icmp ugt ptr %36, %81
  br i1 %82, label %83, label %84, !prof !8

83:                                               ; preds = %65
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_insert_index, i32 noundef 1024, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.26) #13
  br label %90

84:                                               ; preds = %65
  %85 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_insert_index, i32 noundef 1028, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  tail call void @__ext4_std_error(ptr noundef %89, ptr noundef nonnull @__func__.ext4_ext_insert_index, i32 noundef 1029, i32 noundef %85) #13
  br label %90

90:                                               ; preds = %87, %84, %83, %64, %30, %21, %9
  %91 = phi i32 [ -117, %21 ], [ -117, %30 ], [ -117, %64 ], [ -117, %83 ], [ %85, %87 ], [ 0, %84 ], [ %12, %9 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_new_meta_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_to_goal_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_try_to_merge_right(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -202
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.ext4_ext_path, ptr %1, i32 %6, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10, !prof !8

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %8, i32 12
  %12 = getelementptr inbounds %struct.ext4_extent_header, ptr %8, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr %struct.ext4_extent, ptr %11, i32 %14
  %16 = getelementptr %struct.ext4_extent, ptr %15, i32 -1
  %17 = icmp ugt ptr %16, %2
  br i1 %17, label %18, label %117

18:                                               ; preds = %10
  %19 = getelementptr %struct.ext4_extent, ptr %2, i32 1
  %20 = getelementptr inbounds %struct.ext4_extent, ptr %2, i32 0, i32 1
  %21 = getelementptr %struct.ext4_extent, ptr %2, i32 1, i32 1
  %22 = getelementptr inbounds %struct.ext4_extent, ptr %2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ext4_extent, ptr %2, i32 0, i32 2
  %24 = getelementptr %struct.ext4_extent, ptr %2, i32 1, i32 3
  %25 = getelementptr %struct.ext4_extent, ptr %2, i32 1, i32 2
  %26 = ptrtoint ptr %2 to i32
  %27 = sub i32 -12, %26
  %28 = getelementptr %struct.ext4_extent, ptr %2, i32 2
  %29 = load i16, ptr %20, align 4
  %30 = icmp ugt i16 %29, -32768
  %31 = load i16, ptr %21, align 4
  %32 = icmp ult i16 %31, -32767
  %33 = xor i1 %30, %32
  br i1 %33, label %41, label %117

34:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1802, 0\0A.popsection", ""() #13, !srcloc !83
  unreachable

35:                                               ; preds = %112
  %36 = load i16, ptr %20, align 4
  %37 = icmp ugt i16 %36, -32768
  %38 = load i16, ptr %21, align 4
  %39 = icmp ult i16 %38, -32767
  %40 = xor i1 %37, %39
  br i1 %40, label %41, label %117

41:                                               ; preds = %35, %18
  %42 = phi i1 [ %39, %35 ], [ %32, %18 ]
  %43 = phi i16 [ %38, %35 ], [ %31, %18 ]
  %44 = phi i1 [ %37, %35 ], [ %30, %18 ]
  %45 = phi i16 [ %36, %35 ], [ %29, %18 ]
  %46 = phi i32 [ 1, %35 ], [ 0, %18 ]
  %47 = zext i16 %45 to i32
  %48 = icmp ult i16 %45, -32767
  %49 = add nuw nsw i32 %47, 32768
  %50 = select i1 %48, i32 %47, i32 %49
  %51 = load i32, ptr %2, align 4
  %52 = and i32 %50, 65535
  %53 = add i32 %51, %52
  %54 = load i32, ptr %19, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %41
  %57 = zext i16 %43 to i32
  %58 = add nuw nsw i32 %57, 32768
  %59 = select i1 %42, i32 %57, i32 %58
  %60 = and i32 %59, 65535
  %61 = add nuw nsw i32 %60, %52
  %62 = icmp ugt i32 %61, 32768
  %63 = icmp ugt i32 %61, 32767
  %64 = select i1 %44, i1 %63, i1 false
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %117, label %66

66:                                               ; preds = %56
  %67 = load i32, ptr %22, align 4
  %68 = zext i32 %67 to i64
  %69 = load i16, ptr %23, align 2
  %70 = zext i16 %69 to i64
  %71 = shl nuw nsw i64 %70, 32
  %72 = or i64 %71, %68
  %73 = zext i32 %52 to i64
  %74 = add nuw nsw i64 %72, %73
  %75 = load i32, ptr %24, align 4
  %76 = zext i32 %75 to i64
  %77 = load i16, ptr %25, align 2
  %78 = zext i16 %77 to i64
  %79 = shl nuw nsw i64 %78, 32
  %80 = or i64 %79, %76
  %81 = icmp eq i64 %74, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %66
  %83 = xor i16 %45, -32768
  %84 = select i1 %48, i16 %45, i16 %83
  %85 = xor i16 %43, -32768
  %86 = select i1 %42, i16 %43, i16 %85
  %87 = add i16 %86, %84
  store i16 %87, ptr %20, align 4
  br i1 %44, label %88, label %94

88:                                               ; preds = %82
  %89 = and i16 %87, 32767
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %92, !prof !8

91:                                               ; preds = %88
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

92:                                               ; preds = %88
  %93 = or i16 %87, -32768
  store i16 %93, ptr %20, align 4
  br label %94

94:                                               ; preds = %92, %82
  %95 = load i16, ptr %12, align 2
  %96 = zext i16 %95 to i32
  %97 = getelementptr %struct.ext4_extent, ptr %8, i32 %96
  %98 = icmp ult ptr %19, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = ptrtoint ptr %97 to i32
  %101 = add i32 %27, %100
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %19, ptr align 4 %28, i32 %101, i1 false)
  %102 = load i16, ptr %12, align 2
  br label %103

103:                                              ; preds = %99, %94
  %104 = phi i16 [ %102, %99 ], [ %95, %94 ]
  %105 = add i16 %104, -1
  store i16 %105, ptr %12, align 2
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %112, !prof !8

107:                                              ; preds = %103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1822, i32 noundef 9, ptr noundef null) #13
  %108 = load i16, ptr %12, align 2
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_try_to_merge_right, i32 noundef 1824, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.27) #13
  %111 = load i16, ptr %12, align 2
  br label %112

112:                                              ; preds = %110, %107, %103
  %113 = phi i16 [ %105, %103 ], [ %111, %110 ], [ %108, %107 ]
  %114 = zext i16 %113 to i32
  %115 = getelementptr %struct.ext4_extent, ptr %8, i32 %114
  %116 = icmp ugt ptr %115, %2
  br i1 %116, label %35, label %117

117:                                              ; preds = %112, %66, %56, %41, %35, %18, %10
  %118 = phi i32 [ 0, %10 ], [ 0, %18 ], [ 1, %112 ], [ %46, %66 ], [ 1, %35 ], [ %46, %41 ], [ %46, %56 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_extend(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_remove_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_split_extent_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ext4_extent, align 4
  %8 = alloca %struct.ext4_extent, align 4
  %9 = alloca %struct.ext4_extent, align 4
  %10 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false), !annotation !11
  %11 = and i32 %4, 24
  %12 = icmp eq i32 %11, 24
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3187, 0\0A.popsection", ""() #13, !srcloc !84
  unreachable

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %1, i32 -202
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %17
  %19 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %17, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_extent, ptr %20, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = icmp ult i16 %23, -32767
  %26 = add nsw i32 %24, -32768
  %27 = select i1 %25, i32 %24, i32 %26
  %28 = sub i32 %3, %21
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ext4_extent, ptr %20, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ext4_extent, ptr %20, i32 0, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i64
  %36 = shl nuw nsw i64 %35, 32
  %37 = or i64 %36, %32
  %38 = add nuw nsw i64 %37, %29
  %39 = icmp ugt i32 %21, %3
  %40 = add i32 %27, %21
  %41 = icmp ule i32 %40, %3
  %42 = select i1 %39, i1 true, i1 %41, !prof !8
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3199, 0\0A.popsection", ""() #13, !srcloc !85
  unreachable

44:                                               ; preds = %14
  %45 = and i32 %4, 7
  %46 = icmp ne i32 %45, 0
  %47 = and i1 %46, %25
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3203, 0\0A.popsection", ""() #13, !srcloc !86
  unreachable

49:                                               ; preds = %44
  %50 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %17, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %0, ptr noundef %55, ptr noundef nonnull %51, i32 noundef 1) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %184

58:                                               ; preds = %53
  %59 = load ptr, ptr %50, align 8
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %59) #13
  br label %60

60:                                               ; preds = %58, %49
  %61 = icmp eq i32 %21, %3
  br i1 %61, label %62, label %87

62:                                               ; preds = %60
  %63 = and i32 %4, 4
  %64 = icmp eq i32 %63, 0
  %65 = load i16, ptr %22, align 4
  br i1 %64, label %72, label %66

66:                                               ; preds = %62
  %67 = and i16 %65, 32767
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %70, !prof !8

69:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

70:                                               ; preds = %66
  %71 = or i16 %65, -32768
  br label %76

72:                                               ; preds = %62
  %73 = icmp ult i16 %65, -32767
  %74 = xor i16 %65, -32768
  %75 = select i1 %73, i16 %65, i16 %74
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i16 [ %71, %70 ], [ %75, %72 ]
  store i16 %77, ptr %22, align 4
  %78 = and i32 %5, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr noundef %10, ptr noundef %20)
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.ext4_ext_path, ptr %10, i32 0, i32 1
  %83 = load i16, ptr %82, align 8
  %84 = zext i16 %83 to i32
  %85 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %84
  %86 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_split_extent_at, i32 noundef 3223, ptr noundef %0, ptr noundef %1, ptr noundef %85)
  br label %184

87:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef align 4 dereferenceable(12) %20, i32 12, i1 false)
  %88 = trunc i32 %28 to i16
  store i16 %88, ptr %22, align 4
  %89 = and i32 %4, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = and i16 %88, 32767
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %95, !prof !8

94:                                               ; preds = %91
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

95:                                               ; preds = %91
  %96 = or i16 %88, -32768
  store i16 %96, ptr %22, align 4
  br label %97

97:                                               ; preds = %95, %87
  %98 = tail call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_split_extent_at, i32 noundef 3237, ptr noundef %0, ptr noundef %1, ptr noundef %18)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %175

100:                                              ; preds = %97
  store i32 %3, ptr %7, align 4
  %101 = sub i32 %27, %28
  %102 = trunc i32 %101 to i16
  %103 = getelementptr inbounds %struct.ext4_extent, ptr %7, i32 0, i32 1
  store i16 %102, ptr %103, align 4
  %104 = trunc i64 %38 to i32
  %105 = getelementptr inbounds %struct.ext4_extent, ptr %7, i32 0, i32 3
  store i32 %104, ptr %105, align 4
  %106 = lshr i64 %38, 32
  %107 = trunc i64 %106 to i16
  %108 = getelementptr inbounds %struct.ext4_extent, ptr %7, i32 0, i32 2
  store i16 %107, ptr %108, align 2
  %109 = and i32 %4, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %100
  %112 = and i16 %102, 32767
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %115, !prof !8

114:                                              ; preds = %111
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

115:                                              ; preds = %111
  %116 = or i16 %102, -32768
  store i16 %116, ptr %103, align 4
  br label %117

117:                                              ; preds = %115, %100
  %118 = call i32 @ext4_ext_insert_extent(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef %5)
  switch i32 %118, label %184 [
    i32 -28, label %119
    i32 -122, label %119
  ]

119:                                              ; preds = %117, %117
  %120 = and i32 %4, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %175, label %122

122:                                              ; preds = %119
  %123 = icmp eq i32 %11, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %122
  %125 = and i32 %4, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %124
  %128 = call fastcc i32 @ext4_ext_zeroout(ptr noundef %1, ptr noundef nonnull %7)
  %129 = load i32, ptr %7, align 4
  store i32 %129, ptr %9, align 4
  %130 = load i16, ptr %103, align 4
  %131 = icmp ult i16 %130, -32767
  %132 = xor i16 %130, -32768
  %133 = select i1 %131, i16 %130, i16 %132
  %134 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 1
  store i16 %133, ptr %134, align 4
  %135 = load i32, ptr %105, align 4
  br label %157

136:                                              ; preds = %124
  %137 = call fastcc i32 @ext4_ext_zeroout(ptr noundef %1, ptr noundef %20)
  %138 = load i32, ptr %20, align 4
  store i32 %138, ptr %9, align 4
  %139 = load i16, ptr %22, align 4
  %140 = icmp ult i16 %139, -32767
  %141 = xor i16 %139, -32768
  %142 = select i1 %140, i16 %139, i16 %141
  %143 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 1
  store i16 %142, ptr %143, align 4
  %144 = load i32, ptr %30, align 4
  br label %157

145:                                              ; preds = %122
  %146 = call fastcc i32 @ext4_ext_zeroout(ptr noundef %1, ptr noundef nonnull %8)
  %147 = load i32, ptr %8, align 4
  store i32 %147, ptr %9, align 4
  %148 = getelementptr inbounds %struct.ext4_extent, ptr %8, i32 0, i32 1
  %149 = load i16, ptr %148, align 4
  %150 = icmp ult i16 %149, -32767
  %151 = xor i16 %149, -32768
  %152 = select i1 %150, i16 %149, i16 %151
  %153 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 1
  store i16 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.ext4_extent, ptr %8, i32 0, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.ext4_extent, ptr %8, i32 0, i32 2
  br label %157

157:                                              ; preds = %145, %136, %127
  %158 = phi ptr [ %108, %127 ], [ %33, %136 ], [ %156, %145 ]
  %159 = phi i32 [ %135, %127 ], [ %144, %136 ], [ %155, %145 ]
  %160 = phi i32 [ %128, %127 ], [ %137, %136 ], [ %146, %145 ]
  %161 = load i16, ptr %158, align 2
  %162 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 3
  store i32 %159, ptr %162, align 4
  %163 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 2
  store i16 %161, ptr %163, align 2
  %164 = icmp eq i32 %160, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %157
  %166 = trunc i32 %27 to i16
  store i16 %166, ptr %22, align 4
  call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr noundef %10, ptr noundef %20)
  %167 = getelementptr inbounds %struct.ext4_ext_path, ptr %10, i32 0, i32 1
  %168 = load i16, ptr %167, align 8
  %169 = zext i16 %168 to i32
  %170 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %169
  %171 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_split_extent_at, i32 noundef 3282, ptr noundef %0, ptr noundef %1, ptr noundef %170)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %165
  %174 = call fastcc i32 @ext4_zeroout_es(ptr noundef %1, ptr noundef nonnull %9)
  br label %184

175:                                              ; preds = %157, %119, %97
  %176 = phi i32 [ %98, %97 ], [ %160, %157 ], [ %118, %119 ]
  %177 = getelementptr inbounds %struct.ext4_extent, ptr %8, i32 0, i32 1
  %178 = load i16, ptr %177, align 4
  store i16 %178, ptr %22, align 4
  %179 = getelementptr inbounds %struct.ext4_ext_path, ptr %10, i32 0, i32 1
  %180 = load i16, ptr %179, align 8
  %181 = zext i16 %180 to i32
  %182 = getelementptr %struct.ext4_ext_path, ptr %10, i32 %181
  %183 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_split_extent_at, i32 noundef 3301, ptr noundef %0, ptr noundef %1, ptr noundef %182)
  br label %184

184:                                              ; preds = %175, %173, %165, %117, %81, %53
  %185 = phi i32 [ %176, %175 ], [ %86, %81 ], [ %118, %117 ], [ %171, %165 ], [ %174, %173 ], [ %56, %53 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_zeroout(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ext4_extent, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ult i16 %4, -32767
  %7 = add nsw i32 %5, -32768
  %8 = select i1 %6, i32 %5, i32 %7
  %9 = getelementptr inbounds %struct.ext4_extent, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ext4_extent, ptr %1, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i64
  %15 = shl nuw nsw i64 %14, 32
  %16 = or i64 %15, %11
  %17 = load i32, ptr %1, align 4
  %18 = tail call i32 @ext4_issue_zeroout(ptr noundef %0, i32 noundef %17, i64 noundef %16, i32 noundef %8) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_zeroout_es(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ext4_extent, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ult i16 %4, -32767
  %7 = add nsw i32 %5, -32768
  %8 = select i1 %6, i32 %5, i32 %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ext4_extent, ptr %1, i32 0, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i64
  %14 = shl nuw nsw i64 %13, 32
  %15 = getelementptr inbounds %struct.ext4_extent, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = or i64 %14, %17
  %19 = load i32, ptr %1, align 4
  %20 = tail call i32 @ext4_es_insert_extent(ptr noundef %0, i32 noundef %19, i32 noundef %8, i64 noundef %18, i32 noundef 1) #13
  br label %21

21:                                               ; preds = %10, %2
  %22 = phi i32 [ %20, %10 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_issue_zeroout(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_insert_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_rm_leaf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_remove_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_rm_idx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_remove_space_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_remove_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_map_blocks_enter(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_show_extent(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_split_extent(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %1, i32 -202
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.ext4_ext_path, ptr %7, i32 %12, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_extent, ptr %14, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp ult i16 %17, -32767
  %20 = add nsw i32 %18, -32768
  %21 = select i1 %19, i32 %18, i32 %20
  %22 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %9
  %25 = add i32 %21, %15
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = and i32 %4, 1
  %29 = or i32 %5, 8
  %30 = or i32 %28, 6
  %31 = select i1 %19, i32 %28, i32 %30
  %32 = lshr i32 %4, 1
  %33 = and i32 %32, 8
  %34 = or i32 %31, %33
  %35 = tail call fastcc i32 @ext4_split_extent_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %24, i32 noundef %34, i32 noundef %29)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %27
  %38 = load i32, ptr %22, align 8
  br label %42

39:                                               ; preds = %6
  %40 = sub i32 %15, %23
  %41 = add i32 %40, %21
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %23, %39 ]
  %44 = phi i32 [ %9, %37 ], [ %41, %39 ]
  %45 = tail call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %43, ptr noundef %2, i32 noundef %5)
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = ptrtoint ptr %45 to i32
  br label %70

49:                                               ; preds = %42
  %50 = load i16, ptr %10, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr %struct.ext4_ext_path, ptr %45, i32 %51, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = load i32, ptr %22, align 8
  br i1 %54, label %56, label %57

56:                                               ; preds = %49
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_split_extent, i32 noundef 3367, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %55) #13
  br label %70

57:                                               ; preds = %49
  %58 = icmp ult i32 %55, %15
  br i1 %58, label %69, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.ext4_extent, ptr %53, i32 0, i32 1
  %61 = load i16, ptr %60, align 4
  %62 = icmp ult i16 %61, -32767
  %63 = and i32 %4, 16
  %64 = and i32 %4, 21
  %65 = or i32 %64, 2
  %66 = select i1 %62, i32 %63, i32 %65
  %67 = tail call fastcc i32 @ext4_split_extent_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %55, i32 noundef %66, i32 noundef %5)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59, %57
  br label %70

70:                                               ; preds = %69, %59, %56, %47, %27
  %71 = phi i32 [ %48, %47 ], [ -117, %56 ], [ %44, %69 ], [ %67, %59 ], [ %35, %27 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_handle_unwritten_extents(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_ext_convert_to_initialized_fastpath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #8 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ext_convert_to_initialized_fastpath, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  %19 = tail call i32 @__traceiter_ext4_ext_convert_to_initialized_fastpath(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !53
  br label %20

20:                                               ; preds = %18, %7, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_convert_to_initialized_enter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_convert_to_initialized_fastpath(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_es_find_extent_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ext4_es_is_delayed(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.extent_status, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = lshr i64 %3, 61
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_get_implied_cluster_alloc_exit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ext_map_blocks_exit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_force_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_break_layouts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_update_disksize_before_punch(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_update_inode_size(ptr noundef %0, i64 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %4 = load i64, ptr %3, align 8
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !62
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !63
  store i64 %1, ptr %3, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !64
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !65
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 1, %6 ], [ 0, %2 ]
  %14 = getelementptr i8, ptr %0, i32 -32
  %15 = load i64, ptr %14, align 8
  %16 = icmp slt i64 %15, %1
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i16, ptr %0, align 8
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, -32768
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %21
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3415, i32 noundef 9, ptr noundef null) #13
  br label %29

29:                                               ; preds = %28, %21, %17
  %30 = getelementptr i8, ptr %0, i32 -24
  tail call void @down_write(ptr noundef %30) #13
  %31 = load i64, ptr %14, align 8
  %32 = icmp slt i64 %31, %1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store volatile i64 %1, ptr %14, align 8
  br label %34

34:                                               ; preds = %33, %29
  tail call void @up_write(ptr noundef %30) #13
  %35 = or i32 %13, 2
  br label %36

36:                                               ; preds = %34, %12
  %37 = phi i32 [ %35, %34 ], [ %13, %12 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_zero_partial_blocks(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_zero_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fallocate_enter(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fallocate_exit(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_iomap_xattr_begin(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca %struct.ext4_iloc, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -128
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false) #13, !annotation !11
  %17 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = zext i8 %11 to i64
  %24 = shl i64 %22, %23
  %25 = getelementptr i8, ptr %0, i32 476
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %27, 128
  %29 = zext i32 %28 to i64
  %30 = add i64 %24, %29
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 29
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %35, %28
  %37 = sext i32 %36 to i64
  %38 = icmp eq ptr %20, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %19
  call void @__brelse(ptr noundef nonnull %20) #13
  br label %40

40:                                               ; preds = %39, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  br label %52

41:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  br label %62

42:                                               ; preds = %6
  %43 = getelementptr i8, ptr %0, i32 -144
  %44 = load i64, ptr %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = zext i8 %11 to i64
  %48 = shl i64 %44, %47
  %49 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %50 = load i32, ptr %49, align 16
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %46, %40
  %53 = phi i16 [ 2, %46 ], [ 4, %40 ]
  %54 = phi i64 [ %51, %46 ], [ %37, %40 ]
  %55 = phi i64 [ %48, %46 ], [ %30, %40 ]
  store i64 %55, ptr %4, align 8
  %56 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 1
  store i64 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 2
  store i64 %54, ptr %57, align 8
  %58 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 3
  store i16 %53, ptr %58, align 8
  %59 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 4
  store i16 0, ptr %59, align 2
  %60 = icmp ugt i64 %54, %1
  %61 = select i1 %60, i32 0, i32 -2
  br label %62

62:                                               ; preds = %52, %42, %41
  %63 = phi i32 [ %61, %52 ], [ -2, %42 ], [ %17, %41 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_lookup_extent(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_fill_next_extent(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_writepage_trans_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_mark_ineligible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_shift_extents(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store i32 %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !11
  %9 = tail call ptr @ext4_find_extent(ptr noundef %0, i32 noundef -2, ptr noundef null, i32 noundef 1073741824)
  store ptr %9, ptr %7, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  br label %354

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ext4_ext_path, ptr %9, i32 0, i32 1
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = getelementptr %struct.ext4_ext_path, ptr %9, i32 %16, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %331, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %18, align 4
  store i32 %21, ptr %8, align 4
  %22 = icmp eq i32 %4, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = add i32 %2, -1
  %25 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %24, ptr noundef nonnull %7, i32 noundef 1073741824)
  store ptr %25, ptr %7, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %25 to i32
  br label %354

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ext4_ext_path, ptr %25, i32 0, i32 1
  %31 = load i16, ptr %30, align 8
  %32 = zext i16 %31 to i32
  %33 = getelementptr %struct.ext4_ext_path, ptr %25, i32 %32, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %34, align 4
  %38 = getelementptr inbounds %struct.ext4_extent, ptr %34, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = icmp ult i16 %39, -32767
  %42 = add nsw i32 %40, -32768
  %43 = select i1 %41, i32 %40, i32 %42
  %44 = add i32 %43, %37
  br label %45

45:                                               ; preds = %36, %29
  %46 = phi i32 [ %37, %36 ], [ 0, %29 ]
  %47 = phi i32 [ %44, %36 ], [ 0, %29 ]
  %48 = load i32, ptr %6, align 4
  %49 = icmp eq i32 %48, %46
  %50 = icmp ult i32 %46, %3
  %51 = and i1 %50, %49
  %52 = sub i32 %48, %47
  %53 = icmp ult i32 %52, %3
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %331, label %65

55:                                               ; preds = %20
  %56 = getelementptr inbounds %struct.ext4_extent, ptr %18, i32 0, i32 1
  %57 = load i16, ptr %56, align 4
  %58 = zext i16 %57 to i32
  %59 = icmp ult i16 %57, -32767
  %60 = add nsw i32 %58, -32768
  %61 = select i1 %59, i32 %58, i32 %60
  %62 = add i32 %61, %21
  %63 = xor i32 %62, -1
  %64 = icmp ult i32 %63, %3
  br i1 %64, label %331, label %65

65:                                               ; preds = %55, %45
  %66 = phi ptr [ %6, %45 ], [ %8, %55 ]
  %67 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %68 = sub i32 0, %3
  %69 = select i1 %22, i32 %68, i32 %3
  %70 = getelementptr i8, ptr %0, i32 -24
  %71 = icmp ult ptr %1, inttoptr (i32 4096 to ptr)
  br label %72

72:                                               ; preds = %249, %65
  %73 = phi i32 [ 0, %65 ], [ %250, %249 ]
  %74 = phi i32 [ -1, %65 ], [ %201, %249 ]
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 %74, ptr %66, align 4
  br label %77

77:                                               ; preds = %76, %72
  br label %78

78:                                               ; preds = %329, %77
  %79 = phi i32 [ %330, %329 ], [ %73, %77 ]
  %80 = phi ptr [ %202, %329 ], [ %66, %77 ]
  %81 = icmp ne ptr %80, null
  %82 = load i32, ptr %6, align 4
  %83 = load i32, ptr %8, align 4
  %84 = icmp ule i32 %82, %83
  %85 = select i1 %81, i1 %84, i1 false
  br i1 %85, label %86, label %331

86:                                               ; preds = %78
  %87 = load i32, ptr %80, align 4
  br label %88

88:                                               ; preds = %156, %86
  %89 = phi i32 [ %87, %86 ], [ %157, %156 ]
  %90 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %89, ptr noundef nonnull %7, i32 noundef 1073741824)
  store ptr %90, ptr %7, align 4
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = ptrtoint ptr %90 to i32
  br label %354

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ext4_ext_path, ptr %90, i32 0, i32 1
  %96 = load i16, ptr %95, align 8
  %97 = zext i16 %96 to i32
  %98 = getelementptr %struct.ext4_ext_path, ptr %90, i32 %97, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, ptr %80, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_ext_shift_extents, i32 noundef 5195, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %102) #13
  br label %354

103:                                              ; preds = %94
  br i1 %22, label %104, label %179

104:                                              ; preds = %103
  %105 = load i32, ptr %80, align 4
  %106 = load i32, ptr %99, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %161

108:                                              ; preds = %104
  %109 = getelementptr %struct.ext4_ext_path, ptr %90, i32 %97, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.ext4_extent_header, ptr %110, i32 0, i32 1
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = getelementptr %struct.ext4_extent, ptr %110, i32 %113
  %115 = icmp ult ptr %99, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = getelementptr %struct.ext4_extent, ptr %99, i32 1
  store ptr %117, ptr %98, align 4
  %118 = load i32, ptr %80, align 4
  %119 = load ptr, ptr %7, align 4
  br label %161

120:                                              ; preds = %108
  %121 = icmp eq ptr %90, null
  br i1 %121, label %122, label %123, !prof !8

122:                                              ; preds = %120
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

123:                                              ; preds = %120
  %124 = icmp eq i16 %96, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.ext4_ext_path, ptr %90, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %156, label %129

129:                                              ; preds = %125, %123
  %130 = getelementptr %struct.ext4_extent, ptr %110, i32 %113
  %131 = icmp eq ptr %99, %130
  br label %132

132:                                              ; preds = %150, %129
  %133 = phi i32 [ %97, %129 ], [ %151, %150 ]
  %134 = icmp eq i32 %133, %97
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  br i1 %131, label %150, label %136

136:                                              ; preds = %135
  %137 = getelementptr %struct.ext4_extent, ptr %99, i32 1
  br label %153

138:                                              ; preds = %132
  %139 = getelementptr %struct.ext4_ext_path, ptr %90, i32 %133, i32 4
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr %struct.ext4_ext_path, ptr %90, i32 %133, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.ext4_extent_header, ptr %142, i32 0, i32 1
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  %146 = getelementptr %struct.ext4_extent_idx, ptr %142, i32 %145
  %147 = icmp eq ptr %140, %146
  br i1 %147, label %150, label %148

148:                                              ; preds = %138
  %149 = getelementptr %struct.ext4_extent_idx, ptr %140, i32 1
  br label %153

150:                                              ; preds = %138, %135
  %151 = add nsw i32 %133, -1
  %152 = icmp sgt i32 %133, 0
  br i1 %152, label %132, label %156

153:                                              ; preds = %148, %136
  %154 = phi ptr [ %149, %148 ], [ %137, %136 ]
  %155 = load i32, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %150, %125
  %157 = phi i32 [ -1, %125 ], [ %155, %153 ], [ -1, %150 ]
  store i32 %157, ptr %80, align 4
  %158 = load i32, ptr %6, align 4
  %159 = load i32, ptr %8, align 4
  %160 = icmp ugt i32 %158, %159
  br i1 %160, label %331, label %88

161:                                              ; preds = %116, %104
  %162 = phi ptr [ %119, %116 ], [ %90, %104 ]
  %163 = phi i32 [ %118, %116 ], [ %105, %104 ]
  %164 = zext i16 %96 to i32
  %165 = getelementptr %struct.ext4_ext_path, ptr %162, i32 %164, i32 5
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ext4_extent_header, ptr %166, i32 0, i32 1
  %168 = load i16, ptr %167, align 2
  %169 = zext i16 %168 to i32
  %170 = getelementptr %struct.ext4_extent, ptr %166, i32 %169
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr %struct.ext4_extent, ptr %166, i32 %169, i32 1
  %173 = load i16, ptr %172, align 4
  %174 = zext i16 %173 to i32
  %175 = icmp ult i16 %173, -32767
  %176 = add nsw i32 %174, -32768
  %177 = select i1 %175, i32 %174, i32 %176
  %178 = add i32 %177, %171
  store i32 %178, ptr %80, align 4
  br label %200

179:                                              ; preds = %103
  %180 = zext i16 %96 to i32
  %181 = load i32, ptr %80, align 4
  %182 = getelementptr %struct.ext4_ext_path, ptr %90, i32 %180, i32 5
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i8, ptr %183, i32 12
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %179
  %188 = add i32 %185, -1
  store i32 %188, ptr %80, align 4
  br label %189

189:                                              ; preds = %187, %179
  %190 = phi ptr [ %80, %187 ], [ null, %179 ]
  %191 = load i32, ptr %6, align 4
  br label %192

192:                                              ; preds = %192, %189
  %193 = phi ptr [ %184, %189 ], [ %196, %192 ]
  %194 = load i32, ptr %193, align 4
  %195 = icmp ult i32 %194, %191
  %196 = getelementptr %struct.ext4_extent, ptr %193, i32 1
  br i1 %195, label %192, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %7, align 4
  %199 = getelementptr %struct.ext4_ext_path, ptr %198, i32 %180, i32 3
  store ptr %193, ptr %199, align 4
  br label %200

200:                                              ; preds = %197, %161
  %201 = phi i32 [ %163, %161 ], [ %181, %197 ]
  %202 = phi ptr [ %80, %161 ], [ %190, %197 ]
  %203 = load ptr, ptr %7, align 4
  %204 = getelementptr inbounds %struct.ext4_ext_path, ptr %203, i32 0, i32 1
  %205 = load i16, ptr %204, align 8
  %206 = zext i16 %205 to i32
  br label %210

207:                                              ; preds = %321
  %208 = add nsw i32 %302, -1
  %209 = load i16, ptr %204, align 8
  br label %210

210:                                              ; preds = %207, %200
  %211 = phi i16 [ %205, %200 ], [ %209, %207 ]
  %212 = phi i1 [ false, %200 ], [ %303, %207 ]
  %213 = phi i32 [ %206, %200 ], [ %208, %207 ]
  %214 = zext i16 %211 to i32
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %301

216:                                              ; preds = %210
  %217 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %213
  %218 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %213, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %331, label %221

221:                                              ; preds = %216
  %222 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %213, i32 5
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr i8, ptr %223, i32 12
  %225 = getelementptr inbounds %struct.ext4_extent_header, ptr %223, i32 0, i32 1
  %226 = load i16, ptr %225, align 2
  %227 = zext i16 %226 to i32
  %228 = getelementptr %struct.ext4_extent, ptr %223, i32 %227
  %229 = icmp eq ptr %219, %224
  %230 = add nuw i32 %213, 2
  %231 = select i1 %229, i1 true, i1 %212
  %232 = select i1 %229, i32 %230, i32 3
  %233 = call i32 @ext4_writepage_trans_blocks(ptr noundef %0) #13
  %234 = call i32 @__ext4_journal_ensure_credits(ptr noundef %1, i32 noundef %232, i32 noundef %233, i32 noundef 0) #13
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %251, label %236

236:                                              ; preds = %221
  %237 = load ptr, ptr %67, align 4
  %238 = getelementptr inbounds %struct.super_block, ptr %237, i32 0, i32 27
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.ext4_sb_info, ptr %239, i32 0, i32 47
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %244, !prof !8

243:                                              ; preds = %236
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

244:                                              ; preds = %236
  call void @ext4_discard_preallocations(ptr noundef %0, i32 noundef 0) #13
  call void @up_write(ptr noundef %70) #13
  br i1 %71, label %248, label %245

245:                                              ; preds = %244
  %246 = call i32 @jbd2__journal_restart(ptr noundef %1, i32 noundef %233, i32 noundef 0, i32 noundef 3136) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245, %244
  call void @down_write(ptr noundef %70) #13
  br label %249

249:                                              ; preds = %329, %253, %248
  %250 = phi i32 [ -11, %248 ], [ %330, %329 ], [ -11, %253 ]
  br label %72

251:                                              ; preds = %221
  %252 = icmp eq i32 %234, 0
  br i1 %252, label %255, label %329

253:                                              ; preds = %245
  call void @down_write(ptr noundef %70) #13
  %254 = icmp sgt i32 %246, 0
  br i1 %254, label %249, label %329

255:                                              ; preds = %251
  %256 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %213, i32 6
  %257 = load ptr, ptr %256, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %265, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr %67, align 4
  %261 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %1, ptr noundef %260, ptr noundef nonnull %257, i32 noundef 1) #13
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %329

263:                                              ; preds = %259
  %264 = load ptr, ptr %256, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %264) #13
  br label %265

265:                                              ; preds = %263, %255
  %266 = icmp ugt ptr %219, %228
  br i1 %266, label %293, label %267

267:                                              ; preds = %289, %265
  %268 = phi ptr [ %291, %289 ], [ %228, %265 ]
  %269 = phi ptr [ %290, %289 ], [ %219, %265 ]
  br i1 %22, label %270, label %284

270:                                              ; preds = %267
  %271 = load i32, ptr %269, align 4
  %272 = sub i32 %271, %3
  store i32 %272, ptr %269, align 4
  %273 = load ptr, ptr %222, align 4
  %274 = getelementptr i8, ptr %273, i32 12
  %275 = icmp ugt ptr %269, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %270
  %277 = getelementptr %struct.ext4_extent, ptr %269, i32 -1
  %278 = call fastcc i32 @ext4_ext_try_to_merge_right(ptr noundef %0, ptr noundef %203, ptr noundef %277) #13
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %276
  %281 = getelementptr %struct.ext4_extent, ptr %268, i32 -1
  br label %289

282:                                              ; preds = %276, %270
  %283 = getelementptr %struct.ext4_extent, ptr %269, i32 1
  br label %289

284:                                              ; preds = %267
  %285 = load i32, ptr %268, align 4
  %286 = add i32 %285, %3
  store i32 %286, ptr %268, align 4
  %287 = call fastcc i32 @ext4_ext_try_to_merge_right(ptr noundef %0, ptr noundef %203, ptr noundef %268) #13
  %288 = getelementptr %struct.ext4_extent, ptr %268, i32 -1
  br label %289

289:                                              ; preds = %284, %282, %280
  %290 = phi ptr [ %269, %280 ], [ %283, %282 ], [ %269, %284 ]
  %291 = phi ptr [ %281, %280 ], [ %268, %282 ], [ %288, %284 ]
  %292 = icmp ugt ptr %290, %291
  br i1 %292, label %293, label %267

293:                                              ; preds = %289, %265
  %294 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_shift_path_extents, i32 noundef 5070, ptr noundef %1, ptr noundef %0, ptr noundef %217) #13
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %329

296:                                              ; preds = %293
  %297 = add i32 %213, -1
  %298 = icmp slt i32 %297, 0
  %299 = xor i1 %231, true
  %300 = select i1 %298, i1 true, i1 %299
  br i1 %300, label %329, label %301

301:                                              ; preds = %296, %210
  %302 = phi i32 [ %213, %210 ], [ %297, %296 ]
  %303 = phi i1 [ %212, %210 ], [ %231, %296 ]
  %304 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %302
  %305 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %302, i32 6
  %306 = load ptr, ptr %305, align 8
  %307 = icmp eq ptr %306, null
  br i1 %307, label %314, label %308

308:                                              ; preds = %301
  %309 = load ptr, ptr %67, align 4
  %310 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 145, ptr noundef %1, ptr noundef %309, ptr noundef nonnull %306, i32 noundef 1) #13
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %329

312:                                              ; preds = %308
  %313 = load ptr, ptr %305, align 8
  call void @_clear_bit(i32 noundef 24, ptr noundef %313) #13
  br label %314

314:                                              ; preds = %312, %301
  %315 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %302, i32 4
  %316 = load ptr, ptr %315, align 8
  %317 = load i32, ptr %316, align 4
  %318 = add i32 %317, %69
  store i32 %318, ptr %316, align 4
  %319 = call fastcc i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_shift_path_extents, i32 noundef 5087, ptr noundef %1, ptr noundef %0, ptr noundef %304) #13
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %314
  %322 = load ptr, ptr %315, align 8
  %323 = getelementptr %struct.ext4_ext_path, ptr %203, i32 %302, i32 5
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr i8, ptr %324, i32 12
  %326 = icmp eq ptr %322, %325
  %327 = icmp sgt i32 %302, 0
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %207, label %329

329:                                              ; preds = %321, %314, %308, %296, %293, %259, %253, %251
  %330 = phi i32 [ %246, %253 ], [ %234, %251 ], [ %294, %293 ], [ 0, %296 ], [ %319, %314 ], [ 0, %321 ], [ %310, %308 ], [ %261, %259 ]
  switch i32 %330, label %331 [
    i32 -11, label %249
    i32 0, label %78
  ]

331:                                              ; preds = %329, %216, %156, %78, %55, %45, %13
  %332 = phi i32 [ 0, %13 ], [ -22, %45 ], [ -22, %55 ], [ -117, %216 ], [ %79, %156 ], [ %79, %78 ], [ %330, %329 ]
  %333 = load ptr, ptr %7, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %352, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.ext4_ext_path, ptr %333, i32 0, i32 1
  %337 = load i16, ptr %336, align 8
  %338 = zext i16 %337 to i32
  br label %339

339:                                              ; preds = %346, %335
  %340 = phi i32 [ 0, %335 ], [ %347, %346 ]
  %341 = phi ptr [ %333, %335 ], [ %348, %346 ]
  %342 = getelementptr inbounds %struct.ext4_ext_path, ptr %341, i32 0, i32 6
  %343 = load ptr, ptr %342, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %346, label %345

345:                                              ; preds = %339
  call void @__brelse(ptr noundef nonnull %343) #13
  br label %346

346:                                              ; preds = %345, %339
  store ptr null, ptr %342, align 8
  %347 = add nuw nsw i32 %340, 1
  %348 = getelementptr %struct.ext4_ext_path, ptr %341, i32 1
  %349 = icmp eq i32 %340, %338
  br i1 %349, label %350, label %339

350:                                              ; preds = %346
  %351 = load ptr, ptr %7, align 4
  br label %352

352:                                              ; preds = %350, %331
  %353 = phi ptr [ %351, %350 ], [ null, %331 ]
  call void @kfree(ptr noundef %353) #13
  br label %354

354:                                              ; preds = %352, %101, %92, %27, %11
  %355 = phi i32 [ %12, %11 ], [ %28, %27 ], [ %332, %352 ], [ %93, %92 ], [ -117, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret i32 %355
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_collapse_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_insert_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2156275160, i64 2156275642, i64 2156275197, i64 2156275253, i64 2156275287, i64 2156275311, i64 2156275352, i64 2156275373, i64 2156275401, i64 2156275435}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{i64 2153968679, i64 2153969159, i64 2153968716, i64 2153968772, i64 2153968806, i64 2153968830, i64 2153968871, i64 2153968892, i64 2153968920, i64 2153968954}
!13 = !{i64 2153969757, i64 2153970237, i64 2153969794, i64 2153969850, i64 2153969884, i64 2153969908, i64 2153969949, i64 2153969970, i64 2153969998, i64 2153970032}
!14 = !{i64 2155373626}
!15 = !{i64 2155373812}
!16 = !{i64 2152729812}
!17 = !{i64 994831, i64 2148484802, i64 2148484828, i64 2148484875, i64 2148484897, i64 2148484925, i64 2148484945}
!18 = !{i64 2148498574, i64 2148498600, i64 2148498629, i64 2148498663, i64 2148498694, i64 2148498717}
!19 = !{i64 2156326695, i64 2156327178, i64 2156326732, i64 2156326788, i64 2156326822, i64 2156326846, i64 2156326887, i64 2156326908, i64 2156326936, i64 2156326970}
!20 = !{i64 2154014762, i64 2154015249, i64 2154014799, i64 2154014855, i64 2154014889, i64 2154014913, i64 2154014954, i64 2154014975, i64 2154015003, i64 2154015037}
!21 = !{i64 2156328426, i64 2156328909, i64 2156328463, i64 2156328519, i64 2156328553, i64 2156328577, i64 2156328618, i64 2156328639, i64 2156328667, i64 2156328701}
!22 = !{i64 2156341941, i64 2156342424, i64 2156341978, i64 2156342034, i64 2156342068, i64 2156342092, i64 2156342133, i64 2156342154, i64 2156342182, i64 2156342216}
!23 = !{i64 2148504679, i64 2148504711, i64 2148504740, i64 2148504774, i64 2148504805, i64 2148504828}
!24 = !{i64 2148606019}
!25 = !{i64 2156346995, i64 2156347478, i64 2156347032, i64 2156347088, i64 2156347122, i64 2156347146, i64 2156347187, i64 2156347208, i64 2156347236, i64 2156347270}
!26 = !{i64 2156333897, i64 2156334380, i64 2156333934, i64 2156333990, i64 2156334024, i64 2156334048, i64 2156334089, i64 2156334110, i64 2156334138, i64 2156334172}
!27 = !{i64 2155596458}
!28 = !{i64 2155596660}
!29 = !{i64 2155563009}
!30 = !{i64 2155563193}
!31 = !{i64 2155541397}
!32 = !{i64 2155541591}
!33 = !{i64 2149163435}
!34 = !{i64 2149159259}
!35 = !{i64 2149159334, i64 2149159361, i64 2149159408, i64 2149159430, i64 2149159458, i64 2149159478}
!36 = !{i64 2149186438}
!37 = !{i64 2156364159, i64 2156364642, i64 2156364196, i64 2156364252, i64 2156364286, i64 2156364310, i64 2156364351, i64 2156364372, i64 2156364400, i64 2156364434}
!38 = !{i64 2155614933}
!39 = !{i64 2155615177}
!40 = !{i64 2155579465}
!41 = !{i64 2155579629}
!42 = !{i64 2155294570}
!43 = !{i64 2155294778}
!44 = !{i64 2155523485}
!45 = !{i64 2155523681}
!46 = !{i64 2155482594}
!47 = !{i64 2155482848}
!48 = !{i64 2155256525}
!49 = !{i64 2155256739}
!50 = !{i64 2156378765, i64 2156379248, i64 2156378802, i64 2156378858, i64 2156378892, i64 2156378916, i64 2156378957, i64 2156378978, i64 2156379006, i64 2156379040}
!51 = !{i64 2156380024, i64 2156380507, i64 2156380061, i64 2156380117, i64 2156380151, i64 2156380175, i64 2156380216, i64 2156380237, i64 2156380265, i64 2156380299}
!52 = !{i64 2155275892}
!53 = !{i64 2155276120}
!54 = !{i64 2156351199, i64 2156351682, i64 2156351236, i64 2156351292, i64 2156351326, i64 2156351350, i64 2156351391, i64 2156351412, i64 2156351440, i64 2156351474}
!55 = !{i64 2156352110, i64 2156352593, i64 2156352147, i64 2156352203, i64 2156352237, i64 2156352261, i64 2156352302, i64 2156352323, i64 2156352351, i64 2156352385}
!56 = !{i64 2155334368}
!57 = !{i64 2155334572}
!58 = !{i64 2155505276}
!59 = !{i64 2155505482}
!60 = !{i64 2155821945}
!61 = !{i64 2155822131}
!62 = !{i64 2151449254}
!63 = !{i64 2149642158}
!64 = !{i64 2149642459}
!65 = !{i64 2151456812}
!66 = !{i64 2155838698}
!67 = !{i64 2155838880}
!68 = !{i64 2155148268}
!69 = !{i64 2155148458}
!70 = !{i64 2155114552}
!71 = !{i64 2155114752}
!72 = !{i64 2156401886, i64 2156402369, i64 2156401923, i64 2156401979, i64 2156402013, i64 2156402037, i64 2156402078, i64 2156402099, i64 2156402127, i64 2156402161}
!73 = !{!"branch_weights", i32 2000, i32 2002}
!74 = !{i64 2155165407}
!75 = !{i64 2155165617}
!76 = !{i64 2156448084, i64 2156448567, i64 2156448121, i64 2156448177, i64 2156448211, i64 2156448235, i64 2156448276, i64 2156448297, i64 2156448325, i64 2156448359}
!77 = !{i64 2156451253, i64 2156451736, i64 2156451290, i64 2156451346, i64 2156451380, i64 2156451404, i64 2156451445, i64 2156451466, i64 2156451494, i64 2156451528}
!78 = !{i64 2156452290, i64 2156452773, i64 2156452327, i64 2156452383, i64 2156452417, i64 2156452441, i64 2156452482, i64 2156452503, i64 2156452531, i64 2156452565}
!79 = !{i64 2156453327, i64 2156453810, i64 2156453364, i64 2156453420, i64 2156453454, i64 2156453478, i64 2156453519, i64 2156453540, i64 2156453568, i64 2156453602}
!80 = !{!"branch_weights", i32 2002, i32 2000}
!81 = !{i64 2156454914, i64 2156455397, i64 2156454951, i64 2156455007, i64 2156455041, i64 2156455065, i64 2156455106, i64 2156455127, i64 2156455155, i64 2156455189}
!82 = !{i64 2156300057, i64 2156300540, i64 2156300094, i64 2156300150, i64 2156300184, i64 2156300208, i64 2156300249, i64 2156300270, i64 2156300298, i64 2156300332}
!83 = !{i64 2156330796, i64 2156331279, i64 2156330833, i64 2156330889, i64 2156330923, i64 2156330947, i64 2156330988, i64 2156331009, i64 2156331037, i64 2156331071}
!84 = !{i64 2156371657, i64 2156372140, i64 2156371694, i64 2156371750, i64 2156371784, i64 2156371808, i64 2156371849, i64 2156371870, i64 2156371898, i64 2156371932}
!85 = !{i64 2156373291, i64 2156373774, i64 2156373328, i64 2156373384, i64 2156373418, i64 2156373442, i64 2156373483, i64 2156373504, i64 2156373532, i64 2156373566}
!86 = !{i64 2156374432, i64 2156374915, i64 2156374469, i64 2156374525, i64 2156374559, i64 2156374583, i64 2156374624, i64 2156374645, i64 2156374673, i64 2156374707}
