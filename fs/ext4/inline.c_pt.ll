; ModuleID = '/llk/IR/fs/ext4/inline.c_pt.bc'
source_filename = "../fs/ext4/inline.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ext4_xattr_ibody_find = type { %struct.ext4_xattr_search, %struct.ext4_iloc }
%struct.ext4_xattr_search = type { ptr, ptr, ptr, ptr, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.ext4_xattr_info = type { ptr, ptr, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i8, i8, i16, i32, i32, i32, [0 x i8] }
%struct.page = type { i32, %union.anon.4, %union.anon.38, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.38 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43 }
%struct.llist_node = type { ptr }
%union.anon.43 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ext4_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.77, [15 x i32], i32, i32, i32, i32, %union.anon.81, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i32 }
%union.anon.81 = type { %struct.anon.83 }
%struct.anon.83 = type { i16, i16, i16, i16, i32 }
%struct.ext4_dir_entry_2 = type { i32, i16, i8, i8, [255 x i8] }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dx_hash_info = type { i32, i32, i32, ptr }
%struct.ext4_dir_entry_hash = type { i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.jbd2_journal_handle = type { %union.anon.85, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.85 = type { ptr }

@__func__.ext4_get_max_inline_size = private unnamed_addr constant [25 x i8] c"ext4_get_max_inline_size\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"can't get inode location %lu\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@__func__.ext4_find_inline_data_nolock = private unnamed_addr constant [29 x i8] c"ext4_find_inline_data_nolock\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"inline data xattr refers to an external xattr inode\00", align 1
@__func__.ext4_try_to_write_inline_data = private unnamed_addr constant [30 x i8] c"ext4_try_to_write_inline_data\00", align 1
@__func__.ext4_write_inline_data_end = private unnamed_addr constant [27 x i8] c"ext4_write_inline_data_end\00", align 1
@__func__.ext4_journalled_write_inline_data = private unnamed_addr constant [34 x i8] c"ext4_journalled_write_inline_data\00", align 1
@__func__.ext4_da_write_inline_data_begin = private unnamed_addr constant [32 x i8] c"ext4_da_write_inline_data_begin\00", align 1
@__func__.ext4_try_add_inline_entry = private unnamed_addr constant [26 x i8] c"ext4_try_add_inline_entry\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@__func__.ext4_inlinedir_to_tree = private unnamed_addr constant [23 x i8] c"ext4_inlinedir_to_tree\00", align 1
@__func__.ext4_read_inline_dir = private unnamed_addr constant [21 x i8] c"ext4_read_inline_dir\00", align 1
@__func__.ext4_delete_inline_entry = private unnamed_addr constant [25 x i8] c"ext4_delete_inline_entry\00", align 1
@__func__.empty_inline_dir = private unnamed_addr constant [17 x i8] c"empty_inline_dir\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"error %d getting inode %lu block\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"bad inline directory (dir #%lu) - no `..'\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"bad inline directory (dir #%lu) - inode %u, rec_len %u, name_len %dinline size %d\00", align 1
@__func__.ext4_inline_data_truncate = private unnamed_addr constant [26 x i8] c"ext4_inline_data_truncate\00", align 1
@__func__.ext4_convert_inline_data = private unnamed_addr constant [25 x i8] c"ext4_convert_inline_data\00", align 1
@__func__.ext4_update_inline_data = private unnamed_addr constant [24 x i8] c"ext4_update_inline_data\00", align 1
@__const.ext4_create_inline_data.is = private unnamed_addr constant %struct.ext4_xattr_ibody_find { %struct.ext4_xattr_search { ptr null, ptr null, ptr null, ptr null, i32 -61 }, %struct.ext4_iloc zeroinitializer }, align 4
@__func__.ext4_create_inline_data = private unnamed_addr constant [24 x i8] c"ext4_create_inline_data\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.ext4_convert_inline_data_to_extent = private unnamed_addr constant [35 x i8] c"ext4_convert_inline_data_to_extent\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__func__.ext4_add_dirent_to_inline = private unnamed_addr constant [26 x i8] c"ext4_add_dirent_to_inline\00", align 1
@ext4_update_dx_flag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_convert_inline_data_nolock = private unnamed_addr constant [32 x i8] c"ext4_convert_inline_data_nolock\00", align 1
@__func__.ext4_finish_convert_inline_dir = private unnamed_addr constant [31 x i8] c"ext4_finish_convert_inline_dir\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"error restoring inline_data for inode -- potential data loss! (inode %lu, error %d)\00", align 1
@ext4_filetype_table = internal unnamed_addr constant [8 x i8] c"\00\08\04\02\06\01\0C\0A", align 1
@__const.ext4_destroy_inline_data_nolock.i = private unnamed_addr constant %struct.ext4_xattr_info { ptr @.str.1, ptr null, i32 0, i32 7, i32 0 }, align 4
@__func__.ext4_destroy_inline_data_nolock = private unnamed_addr constant [32 x i8] c"ext4_destroy_inline_data_nolock\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_get_max_inline_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = getelementptr i8, ptr %0, i32 476
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %102, label %6

6:                                                ; preds = %1
  %7 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %2) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = sub i32 0, %7
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_max_inline_size, i32 noundef 102, i64 noundef 0, i32 noundef %10, ptr noundef nonnull @.str, i32 noundef %12) #9
  br label %102

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 -120
  call void @down_read(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 29
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -128
  %22 = load i16, ptr %3, align 4
  %23 = zext i16 %22 to i32
  %24 = sub i32 %21, %23
  %25 = getelementptr i8, ptr %0, i32 -128
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = add i32 %24, -28
  %31 = and i32 %30, -4
  br label %93

32:                                               ; preds = %13
  %33 = add i32 %24, -4
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ext4_iloc, ptr %2, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = getelementptr i8, ptr %39, i32 128
  %41 = getelementptr i8, ptr %40, i32 %23
  %42 = getelementptr %struct.ext4_xattr_ibody_header, ptr %41, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %61, %32
  %46 = phi i32 [ %67, %61 ], [ %43, %32 ]
  %47 = phi i32 [ %62, %61 ], [ %33, %32 ]
  %48 = phi ptr [ %66, %61 ], [ %42, %32 ]
  %49 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %48, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %48, i32 0, i32 2
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = call i32 @llvm.umin.i32(i32 %47, i32 %59) #9
  br label %61

61:                                               ; preds = %56, %52, %45
  %62 = phi i32 [ %47, %45 ], [ %60, %56 ], [ %47, %52 ]
  %63 = and i32 %46, 255
  %64 = add nuw nsw i32 %63, 19
  %65 = and i32 %64, 508
  %66 = getelementptr i8, ptr %48, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %45

69:                                               ; preds = %61, %32
  %70 = phi ptr [ %42, %32 ], [ %66, %61 ]
  %71 = phi i32 [ %33, %32 ], [ %62, %61 ]
  %72 = ptrtoint ptr %70 to i32
  %73 = ptrtoint ptr %42 to i32
  %74 = sub i32 %73, %72
  %75 = add i32 %74, %71
  %76 = getelementptr i8, ptr %0, i32 478
  %77 = load i16, ptr %76, align 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %69
  %80 = add i32 %75, -4
  %81 = zext i16 %77 to i32
  %82 = getelementptr i8, ptr %39, i32 %81
  %83 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %82, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 3
  %86 = and i32 %85, -4
  %87 = add i32 %80, %86
  br label %93

88:                                               ; preds = %69
  %89 = add i32 %75, -24
  %90 = icmp sgt i32 %89, 3
  %91 = and i32 %89, -4
  %92 = select i1 %90, i32 %91, i32 0
  br label %93

93:                                               ; preds = %88, %79, %29
  %94 = phi i32 [ %31, %29 ], [ %87, %79 ], [ %92, %88 ]
  call void @up_read(ptr noundef %14) #9
  %95 = load ptr, ptr %2, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  call void @__brelse(ptr noundef nonnull %95) #9
  br label %98

98:                                               ; preds = %97, %93
  %99 = icmp eq i32 %94, 0
  %100 = add i32 %94, 60
  %101 = select i1 %99, i32 0, i32 %100
  br label %102

102:                                              ; preds = %98, %9, %1
  %103 = phi i32 [ 0, %9 ], [ 0, %1 ], [ %101, %98 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret i32 %103
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_find_inline_data_nolock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ext4_xattr_ibody_find, align 4
  %3 = alloca %struct.ext4_xattr_info, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.ext4_create_inline_data.is, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @__const.ext4_destroy_inline_data_nolock.i, i32 20, i1 false)
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %2, i32 0, i32 1
  %9 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = call i32 @ext4_xattr_ibody_find(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #9
  %13 = icmp ne i32 %12, 0
  %14 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %43, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ext4_xattr_search, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_find_inline_data_nolock, i32 noundef 150, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2) #9
  br label %43

25:                                               ; preds = %18
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %2, i32 0, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = ptrtoint ptr %20 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = trunc i32 %34 to i16
  %36 = getelementptr i8, ptr %0, i32 478
  store i16 %35, ptr %36, align 2
  %37 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %20, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %38 to i16
  %40 = add i16 %39, 60
  %41 = getelementptr i8, ptr %0, i32 480
  store i16 %40, ptr %41, align 8
  %42 = getelementptr i8, ptr %0, i32 -128
  call void @_set_bit(i32 noundef 7, ptr noundef %42) #9
  br label %43

43:                                               ; preds = %25, %24, %11
  %44 = phi i32 [ %12, %11 ], [ -117, %24 ], [ 0, %25 ]
  %45 = load ptr, ptr %8, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @__brelse(ptr noundef nonnull %45) #9
  br label %48

48:                                               ; preds = %47, %43, %7, %1
  %49 = phi i32 [ 0, %1 ], [ %9, %7 ], [ %44, %43 ], [ %44, %47 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %49
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_ibody_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_readpage_inline(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -120
  tail call void @down_read(ptr noundef %3) #9
  %4 = getelementptr i8, ptr %0, i32 -124
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 478
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  tail call void @up_read(ptr noundef %3) #9
  br label %39

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @ext4_read_inline_page(ptr noundef %0, ptr noundef %1)
  br label %36

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !9

24:                                               ; preds = %19
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %19
  %27 = ptrtoint ptr %1 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  br label %36

35:                                               ; preds = %28
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #9
  br label %36

36:                                               ; preds = %35, %34, %17
  %37 = phi i32 [ 0, %34 ], [ 0, %35 ], [ %18, %17 ]
  tail call void @up_read(ptr noundef %3) #9
  tail call void @unlock_page(ptr noundef %1) #9
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %36, %12
  %40 = phi i32 [ %38, %36 ], [ -11, %12 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_read_inline_page(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %1 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !12

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 475, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %0, i32 -124
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 268435456
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 478
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %29, !prof !12

28:                                               ; preds = %24, %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 476, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !9

33:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

34:                                               ; preds = %29
  %35 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %3) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %34
  %38 = load i16, ptr %25, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %0, i32 480
  %42 = load i16, ptr %41, align 8
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i32 [ %43, %40 ], [ 0, %37 ]
  %46 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %47 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %48

48:                                               ; preds = %56, %44
  %49 = load volatile i32, ptr %46, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %52, %48
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !17
  %53 = load volatile i32, ptr %46, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %52

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %49, %48 ], [ %53, %52 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %58 = load i64, ptr %47, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %59 = load volatile i32, ptr %46, align 4
  %60 = icmp eq i32 %59, %57
  br i1 %60, label %61, label %48

61:                                               ; preds = %56
  %62 = trunc i64 %58 to i32
  %63 = call i32 @llvm.umin.i32(i32 %45, i32 %62)
  %64 = load i32, ptr @pgprot_kernel, align 4
  %65 = or i32 %64, 512
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %66 = tail call ptr @llvm.thread.pointer() #9
  %67 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 149
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %70 = call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %65) #9
  %71 = icmp eq i32 %63, 0
  br i1 %71, label %108, label %72

72:                                               ; preds = %61
  %73 = getelementptr i8, ptr %0, i32 480
  %74 = load i16, ptr %73, align 8
  %75 = zext i16 %74 to i32
  %76 = icmp ugt i32 %63, %75
  br i1 %76, label %77, label %78, !prof !12

77:                                               ; preds = %72
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

78:                                               ; preds = %72
  %79 = call i32 @llvm.umin.i32(i32 %63, i32 60) #9
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.buffer_head, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ext4_iloc, ptr %3, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = getelementptr inbounds %struct.ext4_inode, ptr %85, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr align 1 %86, i32 %79, i1 false) #9
  %87 = icmp ult i32 %63, 61
  br i1 %87, label %108, label %88

88:                                               ; preds = %78
  %89 = sub nuw nsw i32 %63, %79
  %90 = getelementptr i8, ptr %70, i32 %79
  %91 = getelementptr i8, ptr %85, i32 128
  %92 = getelementptr i8, ptr %0, i32 476
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = getelementptr i8, ptr %91, i32 %94
  %96 = load i16, ptr %25, align 2
  %97 = zext i16 %96 to i32
  %98 = getelementptr i8, ptr %85, i32 %97
  %99 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %98, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = call i32 @llvm.umin.i32(i32 %89, i32 %100) #9
  %102 = getelementptr %struct.ext4_xattr_ibody_header, ptr %95, i32 1
  %103 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %98, i32 0, i32 2
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  %106 = getelementptr i8, ptr %102, i32 %105
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %90, ptr align 1 %106, i32 %101, i1 false) #9
  %107 = add i32 %101, %79
  br label %108

108:                                              ; preds = %88, %78, %61
  %109 = phi i32 [ 0, %61 ], [ %107, %88 ], [ %79, %78 ]
  call void @flush_dcache_page(ptr noundef %1) #9
  call void @kunmap_local_indexed(ptr noundef %70) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %110 = load i32, ptr %67, align 8
  %111 = add i32 %110, -1
  store i32 %111, ptr %67, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  call void @zero_user_segments(ptr noundef %1, i32 noundef %63, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  call void @_set_bit(i32 noundef 2, ptr noundef %1) #9
  %112 = load ptr, ptr %3, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  call void @__brelse(ptr noundef nonnull %112) #9
  br label %115

115:                                              ; preds = %114, %108, %34
  %116 = phi i32 [ %35, %34 ], [ %109, %108 ], [ %109, %114 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_try_to_write_inline_data(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_iloc, align 4
  %9 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false), !annotation !8
  %10 = zext i32 %3 to i64
  %11 = add i64 %10, %2
  %12 = tail call i32 @ext4_get_max_inline_size(ptr noundef %1)
  %13 = sext i32 %12 to i64
  %14 = icmp sgt i64 %11, %13
  br i1 %14, label %94, label %15

15:                                               ; preds = %6
  %16 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %9) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %288

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 3
  %26 = call ptr @__ext4_journal_start_sb(ptr noundef %20, i32 noundef 671, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %25) #9
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = ptrtoint ptr %26 to i32
  br label %89

30:                                               ; preds = %18
  %31 = trunc i64 %11 to i32
  %32 = call fastcc i32 @ext4_prepare_inline_data(ptr noundef %26, ptr noundef %1, i32 noundef %31)
  switch i32 %32, label %81 [
    i32 -28, label %33
    i32 0, label %38
  ]

33:                                               ; preds = %30
  %34 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_try_to_write_inline_data, i32 noundef 684, ptr noundef %26) #9
  %35 = load ptr, ptr %9, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %94, label %37

37:                                               ; preds = %33
  call void @__brelse(ptr noundef nonnull %35) #9
  br label %94

38:                                               ; preds = %30
  %39 = load ptr, ptr %19, align 4
  %40 = load ptr, ptr %9, align 4
  %41 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_try_to_write_inline_data, i32 noundef 690, ptr noundef %26, ptr noundef %39, ptr noundef %40, i32 noundef 1) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = or i32 %4, 2
  %45 = call ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef 0, i32 noundef %44) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %81, label %47

47:                                               ; preds = %43
  store ptr %45, ptr %5, align 4
  %48 = getelementptr i8, ptr %1, i32 -120
  call void @down_read(ptr noundef %48) #9
  %49 = getelementptr i8, ptr %1, i32 -124
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 268435456
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = getelementptr i8, ptr %1, i32 478
  %55 = load i16, ptr %54, align 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %47
  call void @unlock_page(ptr noundef nonnull %45) #9
  call fastcc void @put_page(ptr noundef nonnull %45)
  br label %78

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !9

63:                                               ; preds = %58
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %58
  %66 = ptrtoint ptr %45 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  br label %78

74:                                               ; preds = %67
  %75 = call fastcc i32 @ext4_read_inline_page(ptr noundef %1, ptr noundef nonnull %45)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  call void @unlock_page(ptr noundef nonnull %45) #9
  call fastcc void @put_page(ptr noundef nonnull %45)
  br label %78

78:                                               ; preds = %77, %74, %73, %57
  %79 = phi i32 [ %75, %77 ], [ 0, %57 ], [ 1, %74 ], [ 1, %73 ]
  %80 = phi ptr [ %26, %77 ], [ %26, %57 ], [ null, %74 ], [ null, %73 ]
  call void @up_read(ptr noundef %48) #9
  br label %81

81:                                               ; preds = %78, %43, %38, %30
  %82 = phi i32 [ %32, %30 ], [ %41, %38 ], [ %79, %78 ], [ -12, %43 ]
  %83 = phi ptr [ %26, %30 ], [ %26, %38 ], [ %80, %78 ], [ %26, %43 ]
  %84 = icmp ne ptr %83, null
  %85 = icmp ne i32 %82, 1
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_try_to_write_inline_data, i32 noundef 726, ptr noundef nonnull %83) #9
  br label %89

89:                                               ; preds = %87, %81, %28
  %90 = phi i32 [ %29, %28 ], [ %82, %87 ], [ %82, %81 ]
  %91 = load ptr, ptr %9, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %288, label %93

93:                                               ; preds = %89
  call void @__brelse(ptr noundef nonnull %91) #9
  br label %288

94:                                               ; preds = %37, %33, %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false) #9, !annotation !8
  %95 = getelementptr i8, ptr %1, i32 -124
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, 268435456
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = getelementptr i8, ptr %1, i32 478
  %101 = load i16, ptr %100, align 2
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %94
  %104 = getelementptr i8, ptr %1, i32 -128
  call void @_clear_bit(i32 noundef 7, ptr noundef %104) #9
  br label %286

105:                                              ; preds = %99
  %106 = call i32 @ext4_writepage_trans_blocks(ptr noundef %1) #9
  %107 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %8) #9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %286

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %111 = or i32 %4, 2
  %112 = getelementptr i8, ptr %1, i32 -120
  %113 = getelementptr i8, ptr %1, i32 -128
  %114 = getelementptr i8, ptr %1, i32 480
  %115 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %116 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %117 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  br label %118

118:                                              ; preds = %247, %109
  %119 = load ptr, ptr %110, align 4
  %120 = getelementptr inbounds %struct.super_block, ptr %119, i32 0, i32 27
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ext4_sb_info, ptr %121, i32 0, i32 11
  %123 = load i32, ptr %122, align 4
  %124 = shl i32 %123, 3
  %125 = call ptr @__ext4_journal_start_sb(ptr noundef %119, i32 noundef 556, i32 noundef 2, i32 noundef %106, i32 noundef 0, i32 noundef %124) #9
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = ptrtoint ptr %125 to i32
  br label %281

129:                                              ; preds = %118
  %130 = call ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef 0, i32 noundef %111) #9
  %131 = icmp eq ptr %130, null
  br i1 %131, label %276, label %132

132:                                              ; preds = %129
  call void @down_write(ptr noundef %112) #9
  %133 = load volatile i32, ptr %113, align 4
  %134 = lshr i32 %133, 3
  %135 = and i32 %134, 1
  call void @_set_bit(i32 noundef 3, ptr noundef %113) #9
  %136 = load volatile i32, ptr %95, align 4
  %137 = and i32 %136, 268435456
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %254, label %139

139:                                              ; preds = %132
  %140 = load i16, ptr %100, align 2
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %254, label %142

142:                                              ; preds = %139
  %143 = load i16, ptr %114, align 8
  %144 = zext i16 %143 to i32
  %145 = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 1
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !9

149:                                              ; preds = %142
  %150 = add i32 %146, -1
  br label %153

151:                                              ; preds = %142
  %152 = ptrtoint ptr %130 to i32
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = inttoptr i32 %154 to ptr
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %156, 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  br label %163

160:                                              ; preds = %153
  %161 = call fastcc i32 @ext4_read_inline_page(ptr noundef %1, ptr noundef nonnull %130) #9
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %254, label %163

163:                                              ; preds = %160, %159
  %164 = call fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %125, ptr noundef %1) #9
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %254

166:                                              ; preds = %163
  %167 = load ptr, ptr %110, align 4
  %168 = getelementptr inbounds %struct.super_block, ptr %167, i32 0, i32 27
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.ext4_sb_info, ptr %169, i32 0, i32 17
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, 4194304
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %166
  %175 = load i16, ptr %1, align 8
  %176 = and i16 %175, -4096
  %177 = icmp eq i16 %176, -32768
  br i1 %177, label %178, label %194

178:                                              ; preds = %174
  %179 = load volatile i32, ptr %95, align 4
  %180 = and i32 %179, 524288
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %178
  %183 = call i32 @ext4_inode_journal_mode(ptr noundef %1) #9
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = load ptr, ptr %110, align 4
  %188 = getelementptr inbounds %struct.super_block, ptr %187, i32 0, i32 27
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.ext4_sb_info, ptr %189, i32 0, i32 17
  %191 = load i32, ptr %190, align 4
  %192 = and i32 %191, 134217728
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186, %182, %178, %174, %166
  br label %195

195:                                              ; preds = %194, %186
  %196 = phi ptr [ @ext4_get_block, %194 ], [ @ext4_get_block_unwritten, %186 ]
  %197 = call i32 @__block_write_begin(ptr noundef nonnull %130, i64 noundef 0, i32 noundef %144, ptr noundef nonnull %196) #9
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %195
  %200 = call i32 @ext4_inode_journal_mode(ptr noundef %1) #9
  %201 = and i32 %200, 1
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %251, label %203

203:                                              ; preds = %199
  %204 = load volatile i32, ptr %130, align 4
  %205 = and i32 %204, 8192
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208, !prof !12

207:                                              ; preds = %203
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #9, !srcloc !25
  unreachable

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 1, i32 0, i32 3
  %210 = load i32, ptr %209, align 4
  %211 = inttoptr i32 %210 to ptr
  %212 = call i32 @ext4_walk_page_buffers(ptr noundef %125, ptr noundef %1, ptr noundef %211, i32 noundef 0, i32 noundef %144, ptr noundef null, ptr noundef nonnull @do_journal_get_write_access) #9
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %251, label %214

214:                                              ; preds = %208, %195
  %215 = phi i32 [ %212, %208 ], [ %197, %195 ]
  call void @unlock_page(ptr noundef nonnull %130) #9
  %216 = load volatile i32, ptr %145, align 4
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219, !prof !9

219:                                              ; preds = %214
  %220 = add i32 %216, -1
  br label %223

221:                                              ; preds = %214
  %222 = ptrtoint ptr %130 to i32
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i32 [ %220, %219 ], [ %222, %221 ]
  %225 = inttoptr i32 %224 to ptr
  %226 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %226) #9, !srcloc !27
  %227 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %226, ptr %226, i32 1, ptr elementtype(i32) %226) #9, !srcloc !28
  %228 = extractvalue { i32, i32 } %227, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  call void @__put_page(ptr noundef %225) #9
  br label %231

231:                                              ; preds = %230, %223
  %232 = call i32 @ext4_orphan_add(ptr noundef %125, ptr noundef %1) #9
  %233 = icmp eq i32 %135, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  call void @_clear_bit(i32 noundef 3, ptr noundef %113) #9
  br label %235

235:                                              ; preds = %234, %231
  call void @up_write(ptr noundef %112) #9
  %236 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_inline_data_to_extent, i32 noundef 612, ptr noundef %125) #9
  %237 = load ptr, ptr %115, align 8
  %238 = getelementptr inbounds %struct.address_space, ptr %237, i32 0, i32 2
  call void @down_write(ptr noundef %238) #9
  %239 = load i64, ptr %116, align 8
  call void @truncate_inode_pages(ptr noundef %237, i64 noundef %239) #9
  %240 = call i32 @ext4_truncate(ptr noundef %1) #9
  call void @up_write(ptr noundef %238) #9
  %241 = load i32, ptr %117, align 8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %235
  %244 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %1) #9
  br label %245

245:                                              ; preds = %243, %235
  %246 = icmp eq i32 %215, -28
  br i1 %246, label %247, label %281

247:                                              ; preds = %245
  %248 = load ptr, ptr %110, align 4
  %249 = call i32 @ext4_should_retry_alloc(ptr noundef %248, ptr noundef nonnull %7) #9
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %281, label %118

251:                                              ; preds = %208, %199
  %252 = zext i16 %143 to i32
  %253 = call i32 @block_commit_write(ptr noundef nonnull %130, i32 noundef 0, i32 noundef %252) #9
  br label %254

254:                                              ; preds = %251, %163, %160, %139, %132
  %255 = phi i32 [ 0, %251 ], [ 0, %139 ], [ %161, %160 ], [ %164, %163 ], [ 0, %132 ]
  call void @unlock_page(ptr noundef nonnull %130) #9
  %256 = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 1
  %257 = load volatile i32, ptr %256, align 4
  %258 = and i32 %257, 1
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260, !prof !9

260:                                              ; preds = %254
  %261 = add i32 %257, -1
  br label %264

262:                                              ; preds = %254
  %263 = ptrtoint ptr %130 to i32
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = inttoptr i32 %265 to ptr
  %267 = getelementptr inbounds %struct.page, ptr %266, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %267) #9, !srcloc !27
  %268 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %267, ptr %267, i32 1, ptr elementtype(i32) %267) #9, !srcloc !28
  %269 = extractvalue { i32, i32 } %268, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %264
  call void @__put_page(ptr noundef %266) #9
  br label %272

272:                                              ; preds = %271, %264
  %273 = icmp eq i32 %135, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %272
  call void @_clear_bit(i32 noundef 3, ptr noundef %113) #9
  br label %275

275:                                              ; preds = %274, %272
  call void @up_write(ptr noundef %112) #9
  br label %276

276:                                              ; preds = %275, %129
  %277 = phi i32 [ %255, %275 ], [ -12, %129 ]
  %278 = icmp eq ptr %125, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %276
  %280 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_inline_data_to_extent, i32 noundef 638, ptr noundef nonnull %125) #9
  br label %281

281:                                              ; preds = %279, %276, %247, %245, %127
  %282 = phi i32 [ %277, %279 ], [ %277, %276 ], [ %128, %127 ], [ %215, %245 ], [ -28, %247 ]
  %283 = load ptr, ptr %8, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  call void @__brelse(ptr noundef nonnull %283) #9
  br label %286

286:                                              ; preds = %285, %281, %105, %103
  %287 = phi i32 [ 0, %103 ], [ %107, %105 ], [ %282, %281 ], [ %282, %285 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %288

288:                                              ; preds = %286, %93, %89, %15
  %289 = phi i32 [ %287, %286 ], [ %16, %15 ], [ %90, %89 ], [ %90, %93 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  ret i32 %289
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_prepare_inline_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 -128
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @ext4_get_max_inline_size(ptr noundef %1)
  %10 = icmp ult i32 %9, %2
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %1, i32 -120
  tail call void @down_write(ptr noundef %12) #9
  %13 = load volatile i32, ptr %4, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %4) #9
  %14 = getelementptr i8, ptr %1, i32 478
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @ext4_update_inline_data(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %21

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @ext4_create_inline_data(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = and i32 %13, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %4) #9
  br label %26

26:                                               ; preds = %25, %21
  tail call void @up_write(ptr noundef %12) #9
  br label %27

27:                                               ; preds = %26, %8, %3
  %28 = phi i32 [ %22, %26 ], [ -28, %3 ], [ -28, %8 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #5 {
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
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !27
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !28
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #9
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_write_inline_data_end(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ext4_iloc, align 4
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 113
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  %10 = icmp ult i32 %3, %2
  br i1 %10, label %11, label %28, !prof !12

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %4 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %209, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %27 = icmp eq i32 %3, 0
  br i1 %27, label %209, label %30, !prof !30

28:                                               ; preds = %5
  %29 = icmp eq i32 %3, 0
  br i1 %29, label %209, label %30, !prof !12

30:                                               ; preds = %28, %26
  %31 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %6) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %30
  call void @unlock_page(ptr noundef %4) #9
  %34 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !9

38:                                               ; preds = %33
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %33
  %41 = ptrtoint ptr %4 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #9, !srcloc !27
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #9, !srcloc !28
  %47 = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  call void @__put_page(ptr noundef %44) #9
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  call void @__ext4_std_error(ptr noundef %52, ptr noundef nonnull @__func__.ext4_write_inline_data_end, i32 noundef 751, i32 noundef %31) #9
  br label %210

53:                                               ; preds = %30
  %54 = getelementptr i8, ptr %0, i32 -120
  call void @down_write(ptr noundef %54) #9
  %55 = getelementptr i8, ptr %0, i32 -128
  %56 = load volatile i32, ptr %55, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %55) #9
  %57 = getelementptr i8, ptr %0, i32 -124
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 268435456
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %53
  %62 = getelementptr i8, ptr %0, i32 478
  %63 = load i16, ptr %62, align 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %66, !prof !12

65:                                               ; preds = %61, %53
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #9, !srcloc !31
  unreachable

66:                                               ; preds = %61
  %67 = call i32 @ext4_find_inline_data_nolock(ptr noundef %0)
  %68 = load i32, ptr @pgprot_kernel, align 4
  %69 = or i32 %68, 512
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %70 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 149
  %71 = load i32, ptr %70, align 8
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %73 = call ptr @__kmap_local_page_prot(ptr noundef %4, i32 noundef %69) #9
  %74 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 27
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 48
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %137, !prof !9

82:                                               ; preds = %66
  %83 = load i16, ptr %62, align 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %86, !prof !12

85:                                               ; preds = %82
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

86:                                               ; preds = %82
  %87 = zext i32 %3 to i64
  %88 = add i64 %87, %1
  %89 = getelementptr i8, ptr %0, i32 480
  %90 = load i16, ptr %89, align 8
  %91 = zext i16 %90 to i64
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %94, !prof !12

93:                                               ; preds = %86
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #9, !srcloc !33
  unreachable

94:                                               ; preds = %86
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr inbounds %struct.buffer_head, ptr %95, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ext4_iloc, ptr %6, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = trunc i64 %1 to i32
  %102 = getelementptr i8, ptr %73, i32 %101
  %103 = icmp slt i64 %1, 60
  br i1 %103, label %104, label %118

104:                                              ; preds = %94
  %105 = icmp sgt i64 %88, 60
  %106 = sub i64 60, %1
  %107 = select i1 %105, i64 %106, i64 %87
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.ext4_inode, ptr %100, i32 0, i32 12
  %110 = getelementptr i8, ptr %109, i32 %101
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %110, ptr align 1 %102, i32 %108, i1 false) #9
  %111 = sub i32 %3, %108
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %104
  %114 = add i64 %107, %1
  %115 = trunc i64 %114 to i32
  %116 = getelementptr i8, ptr %102, i32 %108
  %117 = load i16, ptr %62, align 2
  br label %118

118:                                              ; preds = %113, %94
  %119 = phi i16 [ %117, %113 ], [ %83, %94 ]
  %120 = phi i32 [ %111, %113 ], [ %3, %94 ]
  %121 = phi i32 [ %115, %113 ], [ %101, %94 ]
  %122 = phi ptr [ %116, %113 ], [ %102, %94 ]
  %123 = getelementptr i8, ptr %100, i32 128
  %124 = getelementptr i8, ptr %0, i32 476
  %125 = load i16, ptr %124, align 4
  %126 = zext i16 %125 to i32
  %127 = getelementptr i8, ptr %123, i32 %126
  %128 = zext i16 %119 to i32
  %129 = getelementptr i8, ptr %100, i32 %128
  %130 = getelementptr %struct.ext4_xattr_ibody_header, ptr %127, i32 1
  %131 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %129, i32 0, i32 2
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = getelementptr i8, ptr %130, i32 %133
  %135 = add i32 %121, -60
  %136 = getelementptr i8, ptr %134, i32 %135
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %136, ptr align 1 %122, i32 %120, i1 false) #9
  br label %137

137:                                              ; preds = %118, %104, %66
  call void @kunmap_local_indexed(ptr noundef %73) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %138 = load i32, ptr %70, align 8
  %139 = add i32 %138, -1
  store i32 %139, ptr %70, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  call void @_set_bit(i32 noundef 2, ptr noundef %4) #9
  %140 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144, !prof !9

144:                                              ; preds = %137
  %145 = add i32 %141, -1
  br label %148

146:                                              ; preds = %137
  %147 = ptrtoint ptr %4 to i32
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = inttoptr i32 %149 to ptr
  call void @_clear_bit(i32 noundef 3, ptr noundef %150) #9
  %151 = and i32 %56, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  call void @_clear_bit(i32 noundef 3, ptr noundef %55) #9
  br label %154

154:                                              ; preds = %153, %148
  call void @up_write(ptr noundef %54) #9
  %155 = load ptr, ptr %6, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  call void @__brelse(ptr noundef nonnull %155) #9
  br label %158

158:                                              ; preds = %157, %154
  %159 = zext i32 %3 to i64
  %160 = add i64 %159, %1
  %161 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %162 = load i64, ptr %161, align 8
  %163 = icmp slt i64 %162, %160
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %165 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !35
  store i64 %160, ptr %161, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !36
  %168 = load i32, ptr %165, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr %165, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %170

170:                                              ; preds = %164, %158
  %171 = getelementptr i8, ptr %0, i32 -32
  %172 = load i64, ptr %171, align 8
  %173 = icmp slt i64 %172, %160
  br i1 %173, label %174, label %192

174:                                              ; preds = %170
  %175 = load i16, ptr %0, align 8
  %176 = and i16 %175, -4096
  %177 = icmp eq i16 %176, -32768
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  %180 = load volatile i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  %182 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %183 = xor i1 %182, true
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %185, label %186, !prof !12

185:                                              ; preds = %178
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 3415, i32 noundef 9, ptr noundef null) #9
  br label %186

186:                                              ; preds = %185, %178, %174
  %187 = getelementptr i8, ptr %0, i32 -24
  call void @down_write(ptr noundef %187) #9
  %188 = load i64, ptr %171, align 8
  %189 = icmp slt i64 %188, %160
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store volatile i64 %160, ptr %171, align 8
  br label %191

191:                                              ; preds = %190, %186
  call void @up_write(ptr noundef %187) #9
  br label %192

192:                                              ; preds = %191, %170
  call void @unlock_page(ptr noundef %4) #9
  %193 = load volatile i32, ptr %140, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196, !prof !9

196:                                              ; preds = %192
  %197 = add i32 %193, -1
  br label %200

198:                                              ; preds = %192
  %199 = ptrtoint ptr %4 to i32
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = inttoptr i32 %201 to ptr
  %203 = getelementptr inbounds %struct.page, ptr %202, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %203) #9, !srcloc !27
  %204 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %203, ptr %203, i32 1, ptr elementtype(i32) %203) #9, !srcloc !28
  %205 = extractvalue { i32, i32 } %204, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  call void @__put_page(ptr noundef %202) #9
  br label %208

208:                                              ; preds = %207, %200
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #9
  br label %210

209:                                              ; preds = %28, %26, %20
  tail call void @unlock_page(ptr noundef %4) #9
  tail call fastcc void @put_page(ptr noundef %4)
  br label %210

210:                                              ; preds = %209, %208, %50
  %211 = phi i32 [ %3, %50 ], [ %3, %208 ], [ 0, %209 ]
  %212 = phi i32 [ %31, %50 ], [ 0, %208 ], [ 0, %209 ]
  %213 = zext i32 %2 to i64
  %214 = add i64 %213, %1
  %215 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %216 = load i64, ptr %215, align 8
  %217 = icmp sgt i64 %214, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %210
  %219 = call i32 @ext4_can_truncate(ptr noundef %0) #9
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = call i32 @ext4_orphan_add(ptr noundef %9, ptr noundef %0) #9
  br label %223

223:                                              ; preds = %221, %218, %210
  %224 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_write_inline_data_end, i32 noundef 800, ptr noundef %9) #9
  %225 = load i64, ptr %215, align 8
  %226 = icmp sgt i64 %214, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr inbounds %struct.address_space, ptr %229, i32 0, i32 2
  call void @down_write(ptr noundef %230) #9
  %231 = load i64, ptr %215, align 8
  call void @truncate_inode_pages(ptr noundef %229, i64 noundef %231) #9
  %232 = call i32 @ext4_truncate(ptr noundef %0) #9
  call void @up_write(ptr noundef %230) #9
  %233 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %234 = load i32, ptr %233, align 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %227
  %237 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %0) #9
  br label %238

238:                                              ; preds = %236, %227, %223
  %239 = icmp eq i32 %212, 0
  %240 = select i1 %239, i32 %224, i32 %212
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, i32 %211, i32 %240
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  ret i32 %242
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_can_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_journalled_write_inline_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  call void @__ext4_std_error(ptr noundef %9, ptr noundef nonnull @__func__.ext4_journalled_write_inline_data, i32 noundef 827, i32 noundef %5) #9
  br label %76

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -120
  call void @down_write(ptr noundef %11) #9
  %12 = getelementptr i8, ptr %0, i32 -128
  %13 = load volatile i32, ptr %12, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %12) #9
  %14 = load i32, ptr @pgprot_kernel, align 4
  %15 = or i32 %14, 512
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %16 = tail call ptr @llvm.thread.pointer() #9
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 149
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %20 = call ptr @__kmap_local_page_prot(ptr noundef %2, i32 noundef %15) #9
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 48
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %68, !prof !9

29:                                               ; preds = %10
  %30 = getelementptr i8, ptr %0, i32 478
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %34, !prof !12

33:                                               ; preds = %29
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %0, i32 480
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = icmp ult i32 %37, %1
  br i1 %38, label %39, label %40, !prof !12

39:                                               ; preds = %34
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #9, !srcloc !33
  unreachable

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ext4_iloc, ptr %4, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = call i32 @llvm.umin.i32(i32 %1, i32 60)
  %48 = getelementptr inbounds %struct.ext4_inode, ptr %46, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %48, ptr align 1 %20, i32 %47, i1 false) #9
  %49 = icmp ult i32 %1, 61
  br i1 %49, label %68, label %50

50:                                               ; preds = %40
  %51 = sub nuw i32 %1, %47
  %52 = getelementptr i8, ptr %20, i32 %47
  %53 = getelementptr i8, ptr %46, i32 128
  %54 = getelementptr i8, ptr %0, i32 476
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = load i16, ptr %30, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %46, i32 %59
  %61 = getelementptr %struct.ext4_xattr_ibody_header, ptr %57, i32 1
  %62 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %60, i32 0, i32 2
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %61, i32 %64
  %66 = add nsw i32 %47, -60
  %67 = getelementptr i8, ptr %65, i32 %66
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %67, ptr align 1 %52, i32 %51, i1 false) #9
  br label %68

68:                                               ; preds = %50, %40, %10
  call void @kunmap_local_indexed(ptr noundef %20) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %69 = load i32, ptr %17, align 8
  %70 = add i32 %69, -1
  store i32 %70, ptr %17, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %71 = and i32 %13, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  call void @_clear_bit(i32 noundef 3, ptr noundef %12) #9
  br label %74

74:                                               ; preds = %73, %68
  call void @up_write(ptr noundef %11) #9
  %75 = load ptr, ptr %4, align 4
  br label %76

76:                                               ; preds = %74, %7
  %77 = phi ptr [ null, %7 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_da_write_inline_data_begin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ext4_iloc, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4
  %10 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %8) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %195

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = trunc i64 %2 to i32
  %15 = add i32 %14, %3
  %16 = or i32 %4, 2
  %17 = getelementptr i8, ptr %1, i32 -120
  %18 = getelementptr i8, ptr %1, i32 -124
  %19 = getelementptr i8, ptr %1, i32 478
  %20 = getelementptr i8, ptr %1, i32 480
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %23 = getelementptr i8, ptr %1, i32 -128
  br label %24

24:                                               ; preds = %126, %12
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 3
  %31 = call ptr @__ext4_journal_start_sb(ptr noundef %25, i32 noundef 925, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %30) #9
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = ptrtoint ptr %31 to i32
  br label %188

35:                                               ; preds = %24
  %36 = call fastcc i32 @ext4_prepare_inline_data(ptr noundef %31, ptr noundef %1, i32 noundef %15)
  switch i32 %36, label %185 [
    i32 -28, label %37
    i32 0, label %130
  ]

37:                                               ; preds = %35
  %38 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_da_write_inline_data_begin, i32 noundef 942, ptr noundef %31) #9
  %39 = call ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef 0, i32 noundef %16) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %188, label %41

41:                                               ; preds = %37
  call void @down_read(ptr noundef %17) #9
  %42 = load volatile i32, ptr %18, align 4
  %43 = and i32 %42, 268435456
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i16, ptr %19, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %41
  call void @_clear_bit(i32 noundef 7, ptr noundef %23) #9
  br label %105

49:                                               ; preds = %45
  %50 = load i16, ptr %20, align 8
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !9

56:                                               ; preds = %49
  %57 = add i32 %53, -1
  br label %60

58:                                               ; preds = %49
  %59 = ptrtoint ptr %39 to i32
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = inttoptr i32 %61 to ptr
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  br label %70

67:                                               ; preds = %60
  %68 = call fastcc i32 @ext4_read_inline_page(ptr noundef %1, ptr noundef nonnull %39) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %67, %66
  %71 = call i32 @__block_write_begin(ptr noundef nonnull %39, i64 noundef 0, i32 noundef %51, ptr noundef nonnull @ext4_da_get_block_prep) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %70
  call void @up_read(ptr noundef %17) #9
  call void @unlock_page(ptr noundef nonnull %39) #9
  %74 = load volatile i32, ptr %52, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !9

77:                                               ; preds = %73
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %73
  %80 = ptrtoint ptr %39 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.page, ptr %83, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #9, !srcloc !27
  %85 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #9, !srcloc !28
  %86 = extractvalue { i32, i32 } %85, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  call void @__put_page(ptr noundef %83) #9
  br label %89

89:                                               ; preds = %88, %81
  %90 = load ptr, ptr %21, align 8
  %91 = getelementptr inbounds %struct.address_space, ptr %90, i32 0, i32 2
  call void @down_write(ptr noundef %91) #9
  %92 = load i64, ptr %22, align 8
  call void @truncate_inode_pages(ptr noundef %90, i64 noundef %92) #9
  %93 = call i32 @ext4_truncate(ptr noundef %1) #9
  call void @up_write(ptr noundef %91) #9
  br label %123

94:                                               ; preds = %70
  %95 = load volatile i32, ptr %52, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !9

98:                                               ; preds = %94
  %99 = add i32 %95, -1
  br label %102

100:                                              ; preds = %94
  %101 = ptrtoint ptr %39 to i32
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = inttoptr i32 %103 to ptr
  call void @_set_bit(i32 noundef 3, ptr noundef %104) #9
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !11
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %39) #9
  call void @_clear_bit(i32 noundef 7, ptr noundef %23) #9
  store ptr inttoptr (i32 2 to ptr), ptr %6, align 4
  br label %105

105:                                              ; preds = %102, %67, %48
  %106 = phi i32 [ 0, %102 ], [ %68, %67 ], [ 0, %48 ]
  call void @up_read(ptr noundef %17) #9
  call void @unlock_page(ptr noundef nonnull %39) #9
  %107 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !9

111:                                              ; preds = %105
  %112 = add i32 %108, -1
  br label %115

113:                                              ; preds = %105
  %114 = ptrtoint ptr %39 to i32
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = inttoptr i32 %116 to ptr
  %118 = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #9, !srcloc !27
  %119 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #9, !srcloc !28
  %120 = extractvalue { i32, i32 } %119, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  call void @__put_page(ptr noundef %117) #9
  br label %123

123:                                              ; preds = %122, %115, %89
  %124 = phi i32 [ %71, %89 ], [ %106, %115 ], [ %106, %122 ]
  %125 = icmp eq i32 %124, -28
  br i1 %125, label %126, label %188

126:                                              ; preds = %123
  %127 = load ptr, ptr %13, align 4
  %128 = call i32 @ext4_should_retry_alloc(ptr noundef %127, ptr noundef nonnull %9) #9
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %188, label %24

130:                                              ; preds = %35
  %131 = call ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef 0, i32 noundef %16) #9
  %132 = icmp eq ptr %131, null
  br i1 %132, label %185, label %133

133:                                              ; preds = %130
  call void @down_read(ptr noundef %17) #9
  %134 = load volatile i32, ptr %18, align 4
  %135 = and i32 %134, 268435456
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %167, label %137

137:                                              ; preds = %133
  %138 = load i16, ptr %19, align 2
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %167, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.page, ptr %131, i32 0, i32 1
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145, !prof !9

145:                                              ; preds = %140
  %146 = add i32 %142, -1
  br label %149

147:                                              ; preds = %140
  %148 = ptrtoint ptr %131 to i32
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = inttoptr i32 %150 to ptr
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %152, 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  br label %159

156:                                              ; preds = %149
  %157 = call fastcc i32 @ext4_read_inline_page(ptr noundef %1, ptr noundef nonnull %131)
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %156, %155
  %160 = load ptr, ptr %13, align 4
  %161 = load ptr, ptr %8, align 4
  %162 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_da_write_inline_data_begin, i32 noundef 971, ptr noundef %31, ptr noundef %160, ptr noundef %161, i32 noundef 1) #9
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  call void @up_read(ptr noundef %17) #9
  store ptr %131, ptr %5, align 4
  %165 = load ptr, ptr %8, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %195, label %192

167:                                              ; preds = %159, %156, %137, %133
  %168 = phi i32 [ %162, %159 ], [ %157, %156 ], [ 0, %137 ], [ 0, %133 ]
  call void @up_read(ptr noundef %17) #9
  call void @unlock_page(ptr noundef nonnull %131) #9
  %169 = getelementptr inbounds %struct.page, ptr %131, i32 0, i32 1
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173, !prof !9

173:                                              ; preds = %167
  %174 = add i32 %170, -1
  br label %177

175:                                              ; preds = %167
  %176 = ptrtoint ptr %131 to i32
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = inttoptr i32 %178 to ptr
  %180 = getelementptr inbounds %struct.page, ptr %179, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %180) #9, !srcloc !27
  %181 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %180, ptr %180, i32 1, ptr elementtype(i32) %180) #9, !srcloc !28
  %182 = extractvalue { i32, i32 } %181, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  call void @__put_page(ptr noundef %179) #9
  br label %185

185:                                              ; preds = %184, %177, %130, %35
  %186 = phi i32 [ -12, %130 ], [ %168, %177 ], [ %168, %184 ], [ %36, %35 ]
  %187 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_da_write_inline_data_begin, i32 noundef 984, ptr noundef %31) #9
  br label %188

188:                                              ; preds = %185, %126, %123, %37, %33
  %189 = phi i32 [ %34, %33 ], [ %186, %185 ], [ -12, %37 ], [ %124, %123 ], [ -28, %126 ]
  %190 = load ptr, ptr %8, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %188, %164
  %193 = phi ptr [ %165, %164 ], [ %190, %188 ]
  %194 = phi i32 [ 1, %164 ], [ %189, %188 ]
  call void @__brelse(ptr noundef nonnull %193) #9
  br label %195

195:                                              ; preds = %192, %188, %164, %7
  %196 = phi i32 [ %10, %7 ], [ 1, %164 ], [ %189, %188 ], [ %194, %192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  ret i32 %196
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_try_add_inline_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = call i32 @ext4_get_inode_loc(ptr noundef %2, ptr noundef nonnull %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %205

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %2, i32 -120
  call void @down_write(ptr noundef %9) #9
  %10 = getelementptr i8, ptr %2, i32 -128
  %11 = load volatile i32, ptr %10, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %10) #9
  %12 = getelementptr i8, ptr %2, i32 -124
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %189, label %16

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %2, i32 478
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %189, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_iloc, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = getelementptr %struct.ext4_inode, ptr %26, i32 0, i32 12, i32 1
  %28 = call fastcc i32 @ext4_add_dirent_to_inline(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %27, i32 noundef 56)
  %29 = icmp eq i32 %28, -28
  br i1 %29, label %30, label %189

30:                                               ; preds = %20
  %31 = getelementptr i8, ptr %2, i32 480
  %32 = load i16, ptr %31, align 8
  %33 = zext i16 %32 to i32
  %34 = add nsw i32 %33, -60
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %160

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 27
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 29
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -128
  %44 = getelementptr i8, ptr %2, i32 476
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = sub i32 %43, %46
  %48 = load volatile i32, ptr %10, align 4
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = add i32 %47, -28
  %53 = and i32 %52, -4
  br label %112

54:                                               ; preds = %36
  %55 = add i32 %47, -4
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %24, align 4
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = getelementptr i8, ptr %60, i32 128
  %62 = getelementptr i8, ptr %61, i32 %46
  %63 = getelementptr %struct.ext4_xattr_ibody_header, ptr %62, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %82, %54
  %67 = phi i32 [ %88, %82 ], [ %64, %54 ]
  %68 = phi i32 [ %83, %82 ], [ %55, %54 ]
  %69 = phi ptr [ %87, %82 ], [ %63, %54 ]
  %70 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %69, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %69, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %69, i32 0, i32 2
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = call i32 @llvm.umin.i32(i32 %68, i32 %80) #9
  br label %82

82:                                               ; preds = %77, %73, %66
  %83 = phi i32 [ %68, %66 ], [ %81, %77 ], [ %68, %73 ]
  %84 = and i32 %67, 255
  %85 = add nuw nsw i32 %84, 19
  %86 = and i32 %85, 508
  %87 = getelementptr i8, ptr %69, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %66

90:                                               ; preds = %82, %54
  %91 = phi ptr [ %63, %54 ], [ %87, %82 ]
  %92 = phi i32 [ %55, %54 ], [ %83, %82 ]
  %93 = ptrtoint ptr %91 to i32
  %94 = ptrtoint ptr %63 to i32
  %95 = sub i32 %94, %93
  %96 = add i32 %95, %92
  %97 = load i16, ptr %17, align 2
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = add i32 %96, -4
  %101 = zext i16 %97 to i32
  %102 = getelementptr i8, ptr %60, i32 %101
  %103 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %102, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, 3
  %106 = and i32 %105, -4
  %107 = add i32 %100, %106
  br label %112

108:                                              ; preds = %90
  %109 = add i32 %96, -24
  %110 = icmp sgt i32 %109, 3
  %111 = and i32 %109, -4
  br i1 %110, label %112, label %156

112:                                              ; preds = %108, %99, %51
  %113 = phi i32 [ %53, %51 ], [ %107, %99 ], [ %111, %108 ]
  %114 = icmp ugt i32 %113, 12
  br i1 %114, label %115, label %156

115:                                              ; preds = %112
  %116 = add i32 %113, 60
  %117 = call fastcc i32 @ext4_update_inline_data(ptr noundef %0, ptr noundef %2, i32 noundef %116) #9
  switch i32 %117, label %189 [
    i32 0, label %120
    i32 -28, label %118
  ]

118:                                              ; preds = %115
  %119 = load i16, ptr %31, align 8
  br label %156

120:                                              ; preds = %115
  %121 = load i16, ptr %17, align 2
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %124, !prof !12

123:                                              ; preds = %120
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

124:                                              ; preds = %120
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr inbounds %struct.buffer_head, ptr %125, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = load i32, ptr %24, align 4
  %129 = getelementptr i8, ptr %127, i32 %128
  %130 = getelementptr i8, ptr %129, i32 128
  %131 = load i16, ptr %44, align 4
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %130, i32 %132
  %134 = zext i16 %121 to i32
  %135 = getelementptr i8, ptr %129, i32 %134
  %136 = getelementptr %struct.ext4_xattr_ibody_header, ptr %133, i32 1
  %137 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %135, i32 0, i32 2
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  %140 = getelementptr i8, ptr %136, i32 %139
  %141 = load i16, ptr %31, align 8
  %142 = zext i16 %141 to i32
  %143 = add nsw i32 %142, -60
  store i32 0, ptr %140, align 4
  %144 = icmp ugt i32 %143, 262144
  %145 = and i32 %142, 3
  %146 = icmp ne i32 %145, 0
  %147 = or i1 %144, %146
  br i1 %147, label %148, label %149, !prof !39

148:                                              ; preds = %124
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

149:                                              ; preds = %124
  %150 = trunc i32 %143 to i16
  %151 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %140, i32 0, i32 1
  store i16 %150, ptr %151, align 4
  %152 = load i16, ptr %31, align 8
  %153 = zext i16 %152 to i64
  %154 = getelementptr i8, ptr %2, i32 -32
  store i64 %153, ptr %154, align 8
  %155 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 13
  store i64 %153, ptr %155, align 8
  br label %156

156:                                              ; preds = %149, %118, %112, %108
  %157 = phi i16 [ %119, %118 ], [ %32, %112 ], [ %152, %149 ], [ %32, %108 ]
  %158 = zext i16 %157 to i32
  %159 = add nsw i32 %158, -60
  br label %160

160:                                              ; preds = %156, %30
  %161 = phi i32 [ %34, %30 ], [ %159, %156 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %187, label %163

163:                                              ; preds = %160
  %164 = load i16, ptr %17, align 2
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %167, !prof !12

166:                                              ; preds = %163
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

167:                                              ; preds = %163
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr inbounds %struct.buffer_head, ptr %168, i32 0, i32 5
  %170 = load ptr, ptr %169, align 4
  %171 = load i32, ptr %24, align 4
  %172 = getelementptr i8, ptr %170, i32 %171
  %173 = getelementptr i8, ptr %172, i32 128
  %174 = getelementptr i8, ptr %2, i32 476
  %175 = load i16, ptr %174, align 4
  %176 = zext i16 %175 to i32
  %177 = getelementptr i8, ptr %173, i32 %176
  %178 = zext i16 %164 to i32
  %179 = getelementptr i8, ptr %172, i32 %178
  %180 = getelementptr %struct.ext4_xattr_ibody_header, ptr %177, i32 1
  %181 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %179, i32 0, i32 2
  %182 = load i16, ptr %181, align 2
  %183 = zext i16 %182 to i32
  %184 = getelementptr i8, ptr %180, i32 %183
  %185 = call fastcc i32 @ext4_add_dirent_to_inline(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %184, i32 noundef %161)
  %186 = icmp eq i32 %185, -28
  br i1 %186, label %187, label %189

187:                                              ; preds = %167, %160
  %188 = call fastcc i32 @ext4_convert_inline_data_nolock(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5)
  br label %189

189:                                              ; preds = %187, %167, %115, %20, %16, %8
  %190 = phi i32 [ %28, %20 ], [ %185, %167 ], [ %188, %187 ], [ 0, %16 ], [ 0, %8 ], [ %117, %115 ]
  %191 = and i32 %11, 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  call void @_clear_bit(i32 noundef 3, ptr noundef %10) #9
  br label %194

194:                                              ; preds = %193, %189
  call void @up_write(ptr noundef %9) #9
  %195 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @__func__.ext4_try_add_inline_entry, i32 noundef 1335) #9
  %196 = icmp ne i32 %195, 0
  %197 = icmp eq i32 %190, 0
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %199, label %200, !prof !12

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %199, %194
  %201 = phi i32 [ %195, %199 ], [ %190, %194 ]
  %202 = load ptr, ptr %5, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  call void @__brelse(ptr noundef nonnull %202) #9
  br label %205

205:                                              ; preds = %204, %200, %4
  %206 = phi i32 [ %6, %4 ], [ %201, %200 ], [ %201, %204 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_add_dirent_to_inline(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 4
  %9 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store ptr null, ptr %8, align 4, !annotation !8
  %10 = load ptr, ptr %4, align 4
  %11 = call i32 @ext4_find_dest_de(ptr noundef %2, ptr noundef %3, ptr noundef %10, ptr noundef %5, i32 noundef %6, ptr noundef %1, ptr noundef nonnull %8) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_add_dirent_to_inline, i32 noundef 1040, ptr noundef %0, ptr noundef %15, ptr noundef %16, i32 noundef 1) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %13
  %20 = load ptr, ptr %8, align 4
  call void @ext4_insert_dentry(ptr noundef %2, ptr noundef %3, ptr noundef %20, i32 noundef %6, ptr noundef %1) #9
  %21 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 15
  %22 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %9, ptr noundef %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %21, ptr noundef align 8 dereferenceable(16) %22, i32 16, i1 false)
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_super_block, ptr %27, i32 0, i32 28
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %19
  %33 = getelementptr i8, ptr %2, i32 -124
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 4096
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ext4_super_block, ptr %27, i32 0, i32 30
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1024
  %41 = icmp ne i32 %40, 0
  %42 = load i1, ptr @ext4_update_dx_flag.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !12

45:                                               ; preds = %37
  store i1 true, ptr @ext4_update_dx_flag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2858, i32 noundef 9, ptr noundef null) #9
  br label %46

46:                                               ; preds = %45, %37
  call void @_clear_bit(i32 noundef 12, ptr noundef %33) #9
  br label %47

47:                                               ; preds = %46, %32, %19
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !41
  %48 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 33
  %49 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %48, ptr elementtype(i64) %48) #9, !srcloc !42
  br label %50

50:                                               ; preds = %58, %47
  %51 = phi i64 [ %49, %47 ], [ %59, %58 ]
  %52 = add i64 %51, 2
  %53 = and i64 %52, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #9, !srcloc !27
  br label %54

54:                                               ; preds = %54, %50
  %55 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %48, ptr %48, i64 %51, i64 %53, ptr elementtype(i64) %48) #9, !srcloc !44
  %56 = extractvalue { i32, i64 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %54

58:                                               ; preds = %54
  %59 = extractvalue { i32, i64 } %55, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !45
  %60 = icmp eq i64 %59, %51
  br i1 %60, label %61, label %50, !prof !9

61:                                               ; preds = %58, %13, %7
  %62 = phi i32 [ %11, %7 ], [ %17, %13 ], [ 1, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_convert_inline_data_nolock(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !8
  %5 = getelementptr i8, ptr %1, i32 478
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 480
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ 0, %3 ]
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3136) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %175, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %1, i32 480
  %20 = load i16, ptr %19, align 8
  %21 = zext i16 %20 to i32
  %22 = icmp ugt i32 %13, %21
  br i1 %22, label %23, label %24, !prof !12

23:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

24:                                               ; preds = %18
  %25 = tail call i32 @llvm.umin.i32(i32 %13, i32 60) #9
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_iloc, ptr %2, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = getelementptr inbounds %struct.ext4_inode, ptr %31, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %14, ptr align 1 %32, i32 %25, i1 false) #9
  %33 = icmp ult i32 %13, 61
  br i1 %33, label %53, label %34

34:                                               ; preds = %24
  %35 = sub nuw nsw i32 %13, %25
  %36 = getelementptr i8, ptr %14, i32 %25
  %37 = getelementptr i8, ptr %31, i32 128
  %38 = getelementptr i8, ptr %1, i32 476
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %37, i32 %40
  %42 = load i16, ptr %5, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %31, i32 %43
  %45 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %35, i32 %46) #9
  %48 = getelementptr %struct.ext4_xattr_ibody_header, ptr %41, i32 1
  %49 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %44, i32 0, i32 2
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %48, i32 %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %52, i32 %47, i1 false) #9
  br label %53

53:                                               ; preds = %34, %24, %16
  %54 = load i16, ptr %1, align 8
  %55 = and i16 %54, -4096
  %56 = icmp eq i16 %55, 16384
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr i8, ptr %14, i32 4
  %60 = add nsw i32 %13, -4
  %61 = tail call i32 @ext4_check_all_de(ptr noundef %1, ptr noundef %58, ptr noundef %59, i32 noundef %60) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %175

63:                                               ; preds = %57, %53
  %64 = tail call fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %0, ptr noundef %1)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %175

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ext4_map_blocks, ptr %4, i32 0, i32 1
  store i32 0, ptr %67, align 8
  %68 = getelementptr inbounds %struct.ext4_map_blocks, ptr %4, i32 0, i32 2
  store i32 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ext4_map_blocks, ptr %4, i32 0, i32 3
  store i32 0, ptr %69, align 8
  %70 = call i32 @ext4_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #9
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %113, label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %69, align 8
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %113, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = load i64, ptr %4, align 8
  %80 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 20
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 3
  %83 = load i32, ptr %82, align 16
  %84 = call ptr @__getblk_gfp(ptr noundef %81, i64 noundef %79, i32 noundef %83, i32 noundef 8) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %113, label %86

86:                                               ; preds = %76
  call fastcc void @lock_buffer(ptr noundef nonnull %84)
  %87 = load ptr, ptr %77, align 4
  %88 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_convert_inline_data_nolock, i32 noundef 1244, ptr noundef %0, ptr noundef %87, ptr noundef nonnull %84, i32 noundef 1) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void @unlock_buffer(ptr noundef nonnull %84) #9
  br label %113

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %77, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 3
  %96 = load i32, ptr %95, align 16
  call void @llvm.memset.p0.i32(ptr align 1 %93, i8 0, i32 %96, i1 false)
  %97 = load i16, ptr %1, align 8
  %98 = and i16 %97, -4096
  %99 = icmp eq i16 %98, 16384
  br i1 %99, label %108, label %100

100:                                              ; preds = %91
  %101 = load ptr, ptr %92, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %101, ptr nonnull align 64 %14, i32 %13, i1 false)
  %102 = load volatile i32, ptr %84, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %84) #9
  br label %106

106:                                              ; preds = %105, %100
  %107 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_convert_inline_data_nolock, i32 noundef 1256, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %84) #9
  br label %110

108:                                              ; preds = %91
  %109 = call fastcc i32 @ext4_finish_convert_inline_dir(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %84, ptr noundef nonnull %14, i32 noundef %13)
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %109, %108 ], [ %107, %106 ]
  call void @unlock_buffer(ptr noundef nonnull %84) #9
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %172, label %113

113:                                              ; preds = %110, %90, %76, %72, %66
  %114 = phi ptr [ %84, %110 ], [ null, %76 ], [ null, %72 ], [ %84, %90 ], [ null, %66 ]
  %115 = phi i32 [ %111, %110 ], [ -12, %76 ], [ -5, %72 ], [ -5, %90 ], [ %70, %66 ]
  %116 = call fastcc i32 @ext4_create_inline_data(ptr noundef %0, ptr noundef %1, i32 noundef %13) #9
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %119 = load ptr, ptr %118, align 4
  br i1 %117, label %123, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %122 = load i32, ptr %121, align 4
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %119, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %122, i32 noundef %116) #9
  br label %170

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.super_block, ptr %119, i32 0, i32 27
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %125, i32 0, i32 48
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %168, !prof !9

130:                                              ; preds = %123
  %131 = load i16, ptr %5, align 2
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %134, !prof !12

133:                                              ; preds = %130
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %1, i32 480
  %136 = load i16, ptr %135, align 8
  %137 = zext i16 %136 to i32
  %138 = icmp ugt i32 %13, %137
  br i1 %138, label %139, label %140, !prof !12

139:                                              ; preds = %134
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #9, !srcloc !33
  unreachable

140:                                              ; preds = %134
  %141 = load ptr, ptr %2, align 4
  %142 = getelementptr inbounds %struct.buffer_head, ptr %141, i32 0, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ext4_iloc, ptr %2, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr i8, ptr %143, i32 %145
  %147 = call i32 @llvm.umin.i32(i32 %13, i32 60) #9
  %148 = getelementptr inbounds %struct.ext4_inode, ptr %146, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %148, ptr nonnull align 64 %14, i32 %147, i1 false) #9
  %149 = icmp ult i32 %13, 61
  br i1 %149, label %168, label %150

150:                                              ; preds = %140
  %151 = sub nuw nsw i32 %13, %147
  %152 = getelementptr i8, ptr %14, i32 %147
  %153 = getelementptr i8, ptr %146, i32 128
  %154 = getelementptr i8, ptr %1, i32 476
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = getelementptr i8, ptr %153, i32 %156
  %158 = load i16, ptr %5, align 2
  %159 = zext i16 %158 to i32
  %160 = getelementptr i8, ptr %146, i32 %159
  %161 = getelementptr %struct.ext4_xattr_ibody_header, ptr %157, i32 1
  %162 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %160, i32 0, i32 2
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = getelementptr i8, ptr %161, i32 %164
  %166 = add nsw i32 %147, -60
  %167 = getelementptr i8, ptr %165, i32 %166
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %167, ptr align 1 %152, i32 %151, i1 false) #9
  br label %168

168:                                              ; preds = %150, %140, %123
  %169 = getelementptr i8, ptr %1, i32 -128
  call void @_set_bit(i32 noundef 7, ptr noundef %169) #9
  br label %170

170:                                              ; preds = %168, %120
  %171 = icmp eq ptr %114, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %170, %110
  %173 = phi ptr [ %114, %170 ], [ %84, %110 ]
  %174 = phi i32 [ %115, %170 ], [ 0, %110 ]
  call void @__brelse(ptr noundef nonnull %173) #9
  br label %175

175:                                              ; preds = %172, %170, %63, %57, %12
  %176 = phi i32 [ %115, %170 ], [ %174, %172 ], [ -12, %12 ], [ %64, %63 ], [ %61, %57 ]
  %177 = phi ptr [ %14, %170 ], [ %14, %172 ], [ null, %12 ], [ %14, %63 ], [ %14, %57 ]
  call void @kfree(ptr noundef %177) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret i32 %176
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_inlinedir_to_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ext4_iloc, align 4
  %9 = alloca %struct.ext4_dir_entry_2, align 4
  %10 = alloca %struct.fscrypt_str, align 8
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(264) %9, i8 0, i32 264, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store i64 0, ptr %10, align 8, !annotation !8
  %13 = call i32 @ext4_get_inode_loc(ptr noundef %12, ptr noundef nonnull %8) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %181

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %12, i32 -120
  call void @down_read(ptr noundef %16) #9
  %17 = getelementptr i8, ptr %12, i32 -124
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %12, i32 478
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %15
  call void @up_read(ptr noundef %16) #9
  store i32 0, ptr %6, align 4
  br label %175

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %12, i32 480
  %28 = load i16, ptr %27, align 8
  %29 = zext i16 %28 to i32
  %30 = call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3136) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call void @up_read(ptr noundef %16) #9
  br label %175

33:                                               ; preds = %26
  %34 = icmp eq i16 %28, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %33
  %36 = getelementptr i8, ptr %12, i32 480
  %37 = load i16, ptr %36, align 8
  %38 = icmp ugt i16 %28, %37
  br i1 %38, label %39, label %40, !prof !12

39:                                               ; preds = %35
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

40:                                               ; preds = %35
  %41 = call i32 @llvm.umin.i32(i32 %29, i32 60) #9
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ext4_iloc, ptr %8, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = getelementptr inbounds %struct.ext4_inode, ptr %47, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %30, ptr align 1 %48, i32 %41, i1 false) #9
  %49 = icmp ult i16 %28, 61
  br i1 %49, label %70, label %50

50:                                               ; preds = %40
  %51 = sub nuw nsw i32 %29, %41
  %52 = getelementptr i8, ptr %30, i32 %41
  %53 = getelementptr i8, ptr %47, i32 128
  %54 = getelementptr i8, ptr %12, i32 476
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = load i16, ptr %22, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %47, i32 %59
  %61 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %60, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = call i32 @llvm.umin.i32(i32 %51, i32 %62) #9
  %64 = getelementptr %struct.ext4_xattr_ibody_header, ptr %57, i32 1
  %65 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %60, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %64, i32 %67
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 1 %68, i32 %63, i1 false) #9
  br label %70

69:                                               ; preds = %33
  call void @up_read(ptr noundef %16) #9
  br label %175

70:                                               ; preds = %50, %40
  call void @up_read(ptr noundef %16) #9
  %71 = load i32, ptr %30, align 64
  %72 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %9, i32 0, i32 2
  %73 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %9, i32 0, i32 4
  %74 = icmp ult i16 %28, 12
  %75 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %9, i32 0, i32 1
  %76 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %77 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %9, i32 0, i32 3
  %78 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %79 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %80 = getelementptr inbounds %struct.dx_hash_info, ptr %3, i32 0, i32 1
  %81 = getelementptr inbounds %struct.fscrypt_str, ptr %10, i32 0, i32 1
  br label %82

82:                                               ; preds = %172, %70
  %83 = phi i32 [ 0, %70 ], [ %124, %172 ]
  %84 = phi i32 [ 0, %70 ], [ %173, %172 ]
  br label %85

85:                                               ; preds = %159, %82
  %86 = phi i32 [ %83, %82 ], [ %124, %159 ]
  switch i32 %86, label %112 [
    i32 0, label %87
    i32 2, label %100
  ]

87:                                               ; preds = %85
  %88 = load i32, ptr %78, align 4
  store i32 %88, ptr %9, align 4
  store i8 1, ptr %72, align 2
  store i16 46, ptr %73, align 4
  br i1 %74, label %89, label %90, !prof !39

89:                                               ; preds = %87
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

90:                                               ; preds = %87
  store i16 12, ptr %75, align 4
  %91 = load ptr, ptr %76, align 4
  %92 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 27
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %93, i32 0, i32 15
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ext4_super_block, ptr %95, i32 0, i32 29
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %121

100:                                              ; preds = %85
  store i32 %71, ptr %9, align 4
  store i8 2, ptr %72, align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %73, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i32 3, i1 false)
  br i1 %74, label %101, label %102, !prof !39

101:                                              ; preds = %100
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

102:                                              ; preds = %100
  store i16 12, ptr %75, align 4
  %103 = load ptr, ptr %76, align 4
  %104 = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 27
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 15
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ext4_super_block, ptr %107, i32 0, i32 29
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %123, label %121

112:                                              ; preds = %85
  %113 = getelementptr i8, ptr %30, i32 %86
  %114 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %113, i32 0, i32 1
  %115 = load i16, ptr %114, align 4
  %116 = zext i16 %115 to i32
  %117 = add i32 %86, %116
  %118 = load ptr, ptr %8, align 4
  %119 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_inlinedir_to_tree, i32 noundef 1421, ptr noundef %12, ptr noundef %0, ptr noundef %113, ptr noundef %118, ptr noundef nonnull %30, i32 noundef %29, i32 noundef %117) #9
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %175, !prof !9

121:                                              ; preds = %102, %90
  %122 = phi i32 [ 2, %90 ], [ 4, %102 ]
  store i8 2, ptr %77, align 1
  br label %123

123:                                              ; preds = %121, %112, %102, %90
  %124 = phi i32 [ %117, %112 ], [ 2, %90 ], [ 4, %102 ], [ %122, %121 ]
  %125 = phi ptr [ %113, %112 ], [ %9, %90 ], [ %9, %102 ], [ %9, %121 ]
  %126 = load i32, ptr %79, align 4
  %127 = and i32 %126, 49152
  %128 = icmp eq i32 %127, 49152
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %125, i32 0, i32 2
  %131 = load i8, ptr %130, align 2
  %132 = zext i8 %131 to i32
  %133 = add nuw nsw i32 %132, 11
  %134 = and i32 %133, 508
  %135 = getelementptr i8, ptr %125, i32 %134
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %3, align 4
  %137 = load i8, ptr %130, align 2
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %138, 11
  %140 = and i32 %139, 508
  %141 = getelementptr i8, ptr %125, i32 %140
  %142 = getelementptr inbounds %struct.ext4_dir_entry_hash, ptr %141, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %80, align 4
  br label %151

144:                                              ; preds = %123
  %145 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %125, i32 0, i32 4
  %146 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %125, i32 0, i32 2
  %147 = load i8, ptr %146, align 2
  %148 = zext i8 %147 to i32
  %149 = call i32 @ext4fs_dirhash(ptr noundef %1, ptr noundef %145, i32 noundef %148, ptr noundef %3) #9
  %150 = load i32, ptr %3, align 4
  br label %151

151:                                              ; preds = %144, %129
  %152 = phi i32 [ %150, %144 ], [ %136, %129 ]
  %153 = icmp ult i32 %152, %4
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = icmp eq i32 %152, %4
  br i1 %155, label %156, label %161

156:                                              ; preds = %154
  %157 = load i32, ptr %80, align 4
  %158 = icmp ult i32 %157, %5
  br i1 %158, label %159, label %161

159:                                              ; preds = %161, %156, %151
  %160 = icmp slt i32 %124, %29
  br i1 %160, label %85, label %175

161:                                              ; preds = %156, %154
  %162 = load i32, ptr %125, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %159, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %125, i32 0, i32 4
  store ptr %165, ptr %10, align 8
  %166 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %125, i32 0, i32 2
  %167 = load i8, ptr %166, align 2
  %168 = zext i8 %167 to i32
  store i32 %168, ptr %81, align 4
  %169 = load i32, ptr %80, align 4
  %170 = call i32 @ext4_htree_store_dirent(ptr noundef %0, i32 noundef %152, i32 noundef %169, ptr noundef %125, ptr noundef nonnull %10) #9
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = add i32 %84, 1
  %174 = icmp slt i32 %124, %29
  br i1 %174, label %82, label %175

175:                                              ; preds = %172, %164, %159, %112, %69, %32, %25
  %176 = phi i32 [ -12, %32 ], [ 0, %25 ], [ 0, %69 ], [ %84, %159 ], [ %84, %112 ], [ %173, %172 ], [ %170, %164 ]
  %177 = phi ptr [ null, %32 ], [ null, %25 ], [ %30, %69 ], [ %30, %159 ], [ %30, %112 ], [ %30, %164 ], [ %30, %172 ]
  call void @kfree(ptr noundef %177) #9
  %178 = load ptr, ptr %8, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  call void @__brelse(ptr noundef nonnull %178) #9
  br label %181

181:                                              ; preds = %180, %175, %7
  %182 = phi i32 [ %13, %7 ], [ %176, %175 ], [ %176, %180 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_check_dir_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4fs_dirhash(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_htree_store_dirent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_read_inline_dir(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %7 = call i32 @ext4_get_inode_loc(ptr noundef %6, ptr noundef nonnull %4) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %190

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %6, i32 -120
  call void @down_read(ptr noundef %10) #9
  %11 = getelementptr i8, ptr %6, i32 -124
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 268435456
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %6, i32 478
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %9
  call void @up_read(ptr noundef %10) #9
  store i32 0, ptr %2, align 4
  br label %184

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %6, i32 480
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3136) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @up_read(ptr noundef %10) #9
  br label %184

27:                                               ; preds = %20
  %28 = icmp eq i16 %22, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %6, i32 480
  %31 = load i16, ptr %30, align 8
  %32 = icmp ugt i16 %22, %31
  br i1 %32, label %33, label %34, !prof !12

33:                                               ; preds = %29
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

34:                                               ; preds = %29
  %35 = call i32 @llvm.umin.i32(i32 %23, i32 60) #9
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ext4_iloc, ptr %4, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = getelementptr inbounds %struct.ext4_inode, ptr %41, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %24, ptr align 1 %42, i32 %35, i1 false) #9
  %43 = icmp ult i16 %22, 61
  br i1 %43, label %63, label %44

44:                                               ; preds = %34
  %45 = sub nuw nsw i32 %23, %35
  %46 = getelementptr i8, ptr %24, i32 %35
  %47 = getelementptr i8, ptr %41, i32 128
  %48 = getelementptr i8, ptr %6, i32 476
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %47, i32 %50
  %52 = load i16, ptr %16, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %41, i32 %53
  %55 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = call i32 @llvm.umin.i32(i32 %45, i32 %56) #9
  %58 = getelementptr %struct.ext4_xattr_ibody_header, ptr %51, i32 1
  %59 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %54, i32 0, i32 2
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %58, i32 %61
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr align 1 %62, i32 %57, i1 false) #9
  br label %63

63:                                               ; preds = %44, %34, %27
  call void @up_read(ptr noundef %10) #9
  %64 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %24, align 64
  %67 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = add nuw nsw i32 %23, 20
  %71 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 33
  %74 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %73, ptr elementtype(i64) %73) #9, !srcloc !42
  %75 = lshr i64 %74, 1
  %76 = icmp eq i64 %75, %72
  br i1 %76, label %117, label %77

77:                                               ; preds = %63
  %78 = icmp eq i32 %69, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %77
  %80 = getelementptr i8, ptr %24, i32 -20
  br label %82

81:                                               ; preds = %82
  br label %92

82:                                               ; preds = %92, %79
  %83 = phi i32 [ %93, %92 ], [ 0, %79 ]
  switch i32 %83, label %84 [
    i32 0, label %92
    i32 12, label %81
  ]

84:                                               ; preds = %82
  %85 = getelementptr i8, ptr %80, i32 %83
  %86 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %85, i32 0, i32 1
  %87 = load i16, ptr %86, align 4
  %88 = icmp ult i16 %87, 12
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = zext i16 %87 to i32
  %91 = add i32 %83, %90
  br label %92

92:                                               ; preds = %89, %82, %81
  %93 = phi i32 [ %91, %89 ], [ 12, %82 ], [ 24, %81 ]
  %94 = icmp slt i32 %93, %70
  %95 = icmp ult i32 %93, %69
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %82, label %97

97:                                               ; preds = %92, %84, %77
  %98 = phi i32 [ 0, %77 ], [ %83, %84 ], [ %93, %92 ]
  %99 = zext i32 %98 to i64
  store i64 %99, ptr %67, align 8
  %100 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %73, ptr elementtype(i64) %73) #9, !srcloc !42
  br label %101

101:                                              ; preds = %112, %97
  %102 = phi i64 [ %100, %97 ], [ %113, %112 ]
  %103 = and i64 %102, 1
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !46
  br label %115

106:                                              ; preds = %101
  %107 = or i64 %102, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #9, !srcloc !27
  br label %108

108:                                              ; preds = %108, %106
  %109 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %73, ptr %73, i64 %102, i64 %107, ptr elementtype(i64) %73) #9, !srcloc !44
  %110 = extractvalue { i32, i64 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %108

112:                                              ; preds = %108
  %113 = extractvalue { i32, i64 } %109, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !45
  %114 = icmp eq i64 %113, %102
  br i1 %114, label %115, label %101, !prof !9

115:                                              ; preds = %112, %105
  %116 = lshr i64 %102, 1
  store i64 %116, ptr %71, align 8
  br label %117

117:                                              ; preds = %115, %63
  %118 = load i64, ptr %67, align 8
  %119 = zext i32 %66 to i64
  %120 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %121 = zext i32 %70 to i64
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %123, label %184

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 27
  %125 = getelementptr i8, ptr %24, i32 -20
  br label %126

126:                                              ; preds = %134, %123
  %127 = phi i64 [ %118, %123 ], [ %135, %134 ]
  switch i64 %127, label %141 [
    i64 0, label %128
    i64 12, label %137
  ]

128:                                              ; preds = %126
  %129 = load i32, ptr %120, align 4
  %130 = zext i32 %129 to i64
  %131 = load ptr, ptr %1, align 8
  %132 = call i32 %131(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %130, i32 noundef 4) #9
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %184

134:                                              ; preds = %178, %137, %128
  %135 = phi i64 [ %183, %178 ], [ 24, %137 ], [ 12, %128 ]
  store i64 %135, ptr %67, align 8
  %136 = icmp slt i64 %135, %121
  br i1 %136, label %126, label %184

137:                                              ; preds = %126
  %138 = load ptr, ptr %1, align 8
  %139 = call i32 %138(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 12, i64 noundef %119, i32 noundef 4) #9
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %134, label %184

141:                                              ; preds = %126
  %142 = trunc i64 %127 to i32
  %143 = getelementptr i8, ptr %125, i32 %142
  %144 = load ptr, ptr %4, align 4
  %145 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_read_inline_dir, i32 noundef 1578, ptr noundef %6, ptr noundef %0, ptr noundef %143, ptr noundef %144, ptr noundef nonnull %24, i32 noundef %70, i32 noundef %142) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %184, !prof !9

147:                                              ; preds = %141
  %148 = load i32, ptr %143, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %178, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %143, i32 0, i32 4
  %152 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %143, i32 0, i32 2
  %153 = load i8, ptr %152, align 2
  %154 = zext i8 %153 to i32
  %155 = zext i32 %148 to i64
  %156 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %143, i32 0, i32 3
  %157 = load i8, ptr %156, align 1
  %158 = load ptr, ptr %124, align 4
  %159 = getelementptr inbounds %struct.ext4_sb_info, ptr %158, i32 0, i32 15
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.ext4_super_block, ptr %160, i32 0, i32 29
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 2
  %164 = icmp ne i32 %163, 0
  %165 = icmp ult i8 %157, 8
  %166 = and i1 %165, %164
  br i1 %166, label %167, label %171

167:                                              ; preds = %150
  %168 = zext i8 %157 to i32
  %169 = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %168
  %170 = load i8, ptr %169, align 1
  br label %171

171:                                              ; preds = %167, %150
  %172 = phi i8 [ %170, %167 ], [ 0, %150 ]
  %173 = zext i8 %172 to i32
  %174 = load ptr, ptr %1, align 8
  %175 = load i64, ptr %67, align 8
  %176 = call i32 %174(ptr noundef %1, ptr noundef %151, i32 noundef %154, i64 noundef %175, i64 noundef %155, i32 noundef %173) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171, %147
  %179 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %143, i32 0, i32 1
  %180 = load i16, ptr %179, align 4
  %181 = zext i16 %180 to i64
  %182 = load i64, ptr %67, align 8
  %183 = add i64 %182, %181
  br label %134

184:                                              ; preds = %171, %141, %137, %134, %128, %117, %26, %19
  %185 = phi i32 [ -12, %26 ], [ 0, %19 ], [ 0, %117 ], [ 0, %134 ], [ 0, %171 ], [ 0, %141 ], [ 0, %137 ], [ 0, %128 ]
  %186 = phi ptr [ null, %26 ], [ null, %19 ], [ %24, %117 ], [ %24, %134 ], [ %24, %171 ], [ %24, %141 ], [ %24, %137 ], [ %24, %128 ]
  call void @kfree(ptr noundef %186) #9
  %187 = load ptr, ptr %4, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  call void @__brelse(ptr noundef nonnull %187) #9
  br label %190

190:                                              ; preds = %189, %184, %3
  %191 = phi i32 [ %7, %3 ], [ %185, %184 ], [ %185, %189 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_get_first_inline_block(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %4) #9
  store i32 %5, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_iloc, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr inbounds %struct.ext4_inode, ptr %13, i32 0, i32 12
  store ptr %14, ptr %1, align 4
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_try_create_inline_dir(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = call i32 @ext4_get_inode_loc(ptr noundef %2, ptr noundef nonnull %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = call fastcc i32 @ext4_prepare_inline_data(ptr noundef %0, ptr noundef %2, i32 noundef 60)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_iloc, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds %struct.ext4_inode, ptr %16, i32 0, i32 12
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %17, align 4
  %20 = getelementptr %struct.ext4_inode, ptr %16, i32 0, i32 12, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr %struct.ext4_inode, ptr %16, i32 0, i32 12, i32 2
  store i16 56, ptr %21, align 4
  call void @set_nlink(ptr noundef %2, i32 noundef 2) #9
  %22 = getelementptr i8, ptr %2, i32 -32
  store i64 60, ptr %22, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 13
  store i64 60, ptr %23, align 8
  br label %24

24:                                               ; preds = %10, %7
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @__brelse(ptr noundef nonnull %25) #9
  br label %28

28:                                               ; preds = %27, %24, %3
  %29 = phi i32 [ %5, %3 ], [ %8, %24 ], [ %8, %27 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_find_inline_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -120
  call void @down_read(ptr noundef %9) #9
  %10 = getelementptr i8, ptr %0, i32 -124
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 268435456
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %0, i32 478
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %8
  store i32 0, ptr %3, align 4
  br label %61

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_iloc, ptr %5, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = getelementptr %struct.ext4_inode, ptr %25, i32 0, i32 12, i32 1
  %27 = call i32 @ext4_search_dir(ptr noundef %20, ptr noundef %26, i32 noundef 56, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2) #9
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %66, label %29

29:                                               ; preds = %19
  %30 = icmp slt i32 %27, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %29
  %32 = load i16, ptr %15, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %0, i32 480
  %36 = load i16, ptr %35, align 8
  %37 = icmp eq i16 %36, 60
  br i1 %37, label %61, label %39

38:                                               ; preds = %31
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %23, align 4
  %44 = getelementptr i8, ptr %42, i32 %43
  %45 = getelementptr i8, ptr %44, i32 128
  %46 = getelementptr i8, ptr %0, i32 476
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = zext i16 %32 to i32
  %51 = getelementptr i8, ptr %44, i32 %50
  %52 = getelementptr %struct.ext4_xattr_ibody_header, ptr %49, i32 1
  %53 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %51, i32 0, i32 2
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = zext i16 %36 to i32
  %58 = add nsw i32 %57, -60
  %59 = call i32 @ext4_search_dir(ptr noundef %40, ptr noundef %56, i32 noundef %58, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2) #9
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %66, label %61

61:                                               ; preds = %39, %34, %29, %18
  %62 = load ptr, ptr %5, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void @__brelse(ptr noundef nonnull %62) #9
  br label %65

65:                                               ; preds = %64, %61
  store ptr null, ptr %5, align 4
  br label %66

66:                                               ; preds = %65, %39, %19
  call void @up_read(ptr noundef %9) #9
  %67 = load ptr, ptr %5, align 4
  br label %68

68:                                               ; preds = %66, %4
  %69 = phi ptr [ %67, %66 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret ptr %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_search_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_delete_inline_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef nonnull %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 -120
  call void @down_write(ptr noundef %10) #9
  %11 = getelementptr i8, ptr %1, i32 -128
  %12 = load volatile i32, ptr %11, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %11) #9
  %13 = getelementptr i8, ptr %1, i32 -124
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %1, i32 478
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %9
  store i32 0, ptr %4, align 4
  br label %62

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_iloc, ptr %6, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = getelementptr inbounds %struct.ext4_inode, ptr %28, i32 0, i32 12
  %30 = ptrtoint ptr %2 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = icmp ult i32 %32, 60
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = getelementptr %struct.ext4_inode, ptr %28, i32 0, i32 12, i32 1
  br label %53

36:                                               ; preds = %22
  %37 = getelementptr i8, ptr %28, i32 128
  %38 = getelementptr i8, ptr %1, i32 476
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %37, i32 %40
  %42 = zext i16 %19 to i32
  %43 = getelementptr i8, ptr %28, i32 %42
  %44 = getelementptr %struct.ext4_xattr_ibody_header, ptr %41, i32 1
  %45 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %43, i32 0, i32 2
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = getelementptr i8, ptr %1, i32 480
  %50 = load i16, ptr %49, align 8
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %51, -60
  br label %53

53:                                               ; preds = %36, %34
  %54 = phi i32 [ 56, %34 ], [ %52, %36 ]
  %55 = phi ptr [ %35, %34 ], [ %48, %36 ]
  %56 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_delete_inline_entry, i32 noundef 1729, ptr noundef %0, ptr noundef %57, ptr noundef %3, i32 noundef 1) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @ext4_generic_delete_entry(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %55, i32 noundef %54, i32 noundef 0) #9
  br label %62

62:                                               ; preds = %60, %53, %21
  %63 = phi i32 [ %58, %53 ], [ %61, %60 ], [ 0, %21 ]
  %64 = and i32 %12, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  call void @_clear_bit(i32 noundef 3, ptr noundef %11) #9
  br label %67

67:                                               ; preds = %66, %62
  call void @up_write(ptr noundef %10) #9
  %68 = icmp eq i32 %63, 0
  br i1 %68, label %69, label %71, !prof !9

69:                                               ; preds = %67
  %70 = call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_delete_inline_entry, i32 noundef 1742) #9
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %70, %69 ], [ %63, %67 ]
  %73 = load ptr, ptr %6, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void @__brelse(ptr noundef nonnull %73) #9
  br label %76

76:                                               ; preds = %75, %71
  switch i32 %72, label %77 [
    i32 -2, label %80
    i32 0, label %80
  ]

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  call void @__ext4_std_error(ptr noundef %79, ptr noundef nonnull @__func__.ext4_delete_inline_entry, i32 noundef 1745, i32 noundef %72) #9
  br label %80

80:                                               ; preds = %77, %76, %76, %5
  %81 = phi i32 [ %7, %5 ], [ %72, %76 ], [ %72, %76 ], [ %72, %77 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_generic_delete_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @empty_inline_dir(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = sub i32 0, %4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1792, i64 noundef 0, i32 noundef %7, ptr noundef nonnull @.str.5, i32 noundef %4, i32 noundef %9) #9
  br label %123

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 -120
  call void @down_read(ptr noundef %11) #9
  %12 = getelementptr i8, ptr %0, i32 -124
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 478
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %10
  store i32 0, ptr %1, align 4
  br label %118

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_iloc, ptr %3, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = getelementptr inbounds %struct.ext4_inode, ptr %27, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %33, ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1806, ptr noundef nonnull @.str.6, i32 noundef %35) #9
  br label %118

36:                                               ; preds = %21
  %37 = getelementptr i8, ptr %0, i32 480
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = icmp ugt i16 %38, 4
  br i1 %40, label %41, label %118

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 480
  %43 = getelementptr i8, ptr %0, i32 476
  br label %44

44:                                               ; preds = %116, %41
  %45 = phi i16 [ %18, %41 ], [ %117, %116 ]
  %46 = phi i32 [ 4, %41 ], [ %114, %116 ]
  %47 = icmp eq i16 %45, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i16, ptr %42, align 8
  %50 = zext i16 %49 to i32
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i32 [ %50, %48 ], [ 0, %44 ]
  %53 = icmp ult i32 %52, %46
  br i1 %53, label %54, label %55, !prof !12

54:                                               ; preds = %51
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1761, 0\0A.popsection", ""() #9, !srcloc !47
  unreachable

55:                                               ; preds = %51
  %56 = icmp ult i32 %46, 60
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %25, align 4
  %62 = getelementptr i8, ptr %60, i32 %61
  %63 = getelementptr inbounds %struct.ext4_inode, ptr %62, i32 0, i32 12
  br label %87

64:                                               ; preds = %55
  br i1 %47, label %65, label %66, !prof !12

65:                                               ; preds = %64
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1070, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

66:                                               ; preds = %64
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %25, align 4
  %71 = getelementptr i8, ptr %69, i32 %70
  %72 = getelementptr i8, ptr %71, i32 128
  %73 = load i16, ptr %43, align 4
  %74 = zext i16 %73 to i32
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = zext i16 %45 to i32
  %77 = getelementptr i8, ptr %71, i32 %76
  %78 = getelementptr %struct.ext4_xattr_ibody_header, ptr %75, i32 1
  %79 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %77, i32 0, i32 2
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = add i32 %46, -60
  %84 = load i16, ptr %42, align 8
  %85 = zext i16 %84 to i32
  %86 = add nsw i32 %85, -60
  br label %87

87:                                               ; preds = %66, %57
  %88 = phi ptr [ %67, %66 ], [ %58, %57 ]
  %89 = phi i32 [ %86, %66 ], [ 60, %57 ]
  %90 = phi i32 [ %83, %66 ], [ %46, %57 ]
  %91 = phi ptr [ %82, %66 ], [ %63, %57 ]
  %92 = getelementptr i8, ptr %91, i32 %90
  %93 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1818, ptr noundef %0, ptr noundef null, ptr noundef %92, ptr noundef %88, ptr noundef %91, i32 noundef %89, i32 noundef %46) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95, !prof !9

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %92, align 4
  %101 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %92, i32 0, i32 1
  %102 = load i16, ptr %101, align 4
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %92, i32 0, i32 2
  %105 = load i8, ptr %104, align 2
  %106 = zext i8 %105 to i32
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %97, ptr noundef nonnull @__func__.empty_inline_dir, i32 noundef 1825, ptr noundef nonnull @.str.7, i32 noundef %99, i32 noundef %100, i32 noundef %103, i32 noundef %106, i32 noundef %89) #9
  br label %118

107:                                              ; preds = %87
  %108 = load i32, ptr %92, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %92, i32 0, i32 1
  %112 = load i16, ptr %111, align 4
  %113 = zext i16 %112 to i32
  %114 = add i32 %46, %113
  %115 = icmp ult i32 %114, %39
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i16, ptr %17, align 2
  br label %44

118:                                              ; preds = %110, %107, %95, %36, %31, %20
  %119 = phi i1 [ true, %95 ], [ true, %31 ], [ true, %20 ], [ true, %36 ], [ %109, %107 ], [ %109, %110 ]
  call void @up_read(ptr noundef %11) #9
  %120 = load ptr, ptr %3, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  call void @__brelse(ptr noundef nonnull %120) #9
  br label %123

123:                                              ; preds = %122, %118, %6
  %124 = phi i1 [ true, %6 ], [ %119, %118 ], [ %119, %122 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i1 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_destroy_inline_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 -120
  tail call void @down_write(ptr noundef %3) #9
  %4 = getelementptr i8, ptr %1, i32 -128
  %5 = load volatile i32, ptr %4, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %4) #9
  %6 = tail call fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %0, ptr noundef %1)
  %7 = and i32 %5, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %4) #9
  br label %10

10:                                               ; preds = %9, %2
  tail call void @up_write(ptr noundef %3) #9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_destroy_inline_data_nolock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ext4_xattr_ibody_find, align 4
  %4 = alloca %struct.ext4_xattr_info, align 4
  %5 = getelementptr i8, ptr %1, i32 -208
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @__const.ext4_destroy_inline_data_nolock.i, i32 20, i1 false)
  %6 = getelementptr i8, ptr %1, i32 478
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %3, i32 0, i32 1
  %11 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %9
  %14 = call i32 @ext4_xattr_ibody_find(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_destroy_inline_data_nolock, i32 noundef 434, ptr noundef %0, ptr noundef %18, ptr noundef %19, i32 noundef 1) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = call i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %3, i32 0, i32 1, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = getelementptr inbounds %struct.ext4_inode, ptr %31, i32 0, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %32, i8 0, i32 60, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(60) %5, i8 0, i32 60, i1 false)
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 27
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ext4_super_block, ptr %37, i32 0, i32 29
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %25
  %43 = load i16, ptr %1, align 8
  %44 = and i16 %43, -4096
  switch i16 %44, label %47 [
    i16 16384, label %45
    i16 -32768, label %45
    i16 -24576, label %45
  ]

45:                                               ; preds = %42, %42, %42
  %46 = getelementptr i8, ptr %1, i32 -124
  call void @_set_bit(i32 noundef 19, ptr noundef %46) #9
  call void @ext4_ext_tree_init(ptr noundef %0, ptr noundef %1) #9
  br label %47

47:                                               ; preds = %45, %42, %25
  %48 = getelementptr i8, ptr %1, i32 -124
  call void @_clear_bit(i32 noundef 28, ptr noundef %48) #9
  %49 = load ptr, ptr %10, align 4
  %50 = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #9, !srcloc !27
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #9, !srcloc !48
  %52 = call i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr noundef %10) #9
  store i16 0, ptr %6, align 2
  %53 = getelementptr i8, ptr %1, i32 480
  store i16 0, ptr %53, align 8
  %54 = getelementptr i8, ptr %1, i32 -128
  call void @_clear_bit(i32 noundef 7, ptr noundef %54) #9
  br label %55

55:                                               ; preds = %47, %22, %16, %13
  %56 = phi i32 [ %14, %13 ], [ %20, %16 ], [ %23, %22 ], [ %52, %47 ]
  %57 = load ptr, ptr %10, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call void @__brelse(ptr noundef nonnull %57) #9
  br label %60

60:                                               ; preds = %59, %55
  %61 = icmp eq i32 %56, -61
  %62 = select i1 %61, i32 0, i32 %56
  br label %63

63:                                               ; preds = %60, %9, %2
  %64 = phi i32 [ %62, %60 ], [ 0, %2 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_inline_data_iomap(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -120
  tail call void @down_read(ptr noundef %4) #9
  %5 = getelementptr i8, ptr %0, i32 -124
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %64, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 478
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %64, label %13

13:                                               ; preds = %9
  %14 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %3) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i64
  %25 = shl i64 %19, %24
  %26 = getelementptr inbounds %struct.ext4_iloc, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, 40
  %30 = add i64 %29, %25
  %31 = icmp eq ptr %17, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  call void @__brelse(ptr noundef nonnull %17) #9
  br label %33

33:                                               ; preds = %32, %16
  store i64 %30, ptr %1, align 8
  %34 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 1
  store i64 0, ptr %34, align 8
  %35 = load i16, ptr %10, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %0, i32 480
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %40, %37 ], [ 0, %33 ]
  %43 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %44 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %45

45:                                               ; preds = %53, %41
  %46 = load volatile i32, ptr %43, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %49, %45
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !17
  %50 = load volatile i32, ptr %43, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %49

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %46, %45 ], [ %50, %49 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %55 = load i64, ptr %44, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %56 = load volatile i32, ptr %43, align 4
  %57 = icmp eq i32 %56, %54
  br i1 %57, label %58, label %45

58:                                               ; preds = %53
  %59 = zext i32 %42 to i64
  %60 = call i64 @llvm.smin.i64(i64 %55, i64 %59)
  %61 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 2
  store i64 %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 3
  store i16 4, ptr %62, align 8
  %63 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 4
  store i16 0, ptr %63, align 2
  br label %64

64:                                               ; preds = %58, %13, %9, %2
  %65 = phi i32 [ %14, %13 ], [ 0, %58 ], [ -11, %9 ], [ -11, %2 ]
  call void @up_read(ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_inline_data_truncate(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ext4_xattr_ibody_find, align 4
  %4 = alloca %struct.ext4_xattr_info, align 4
  %5 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.ext4_create_inline_data.is, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @__const.ext4_destroy_inline_data_nolock.i, i32 20, i1 false)
  %6 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 3
  %14 = tail call ptr @__ext4_journal_start_sb(ptr noundef %8, i32 noundef 1901, i32 noundef 1, i32 noundef %6, i32 noundef 0, i32 noundef %13) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = ptrtoint ptr %14 to i32
  br label %164

18:                                               ; preds = %2
  %19 = getelementptr i8, ptr %0, i32 -120
  tail call void @down_write(ptr noundef %19) #9
  %20 = getelementptr i8, ptr %0, i32 -128
  %21 = load volatile i32, ptr %20, align 4
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %20) #9
  %24 = getelementptr i8, ptr %0, i32 -124
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 268435456
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %0, i32 478
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %18
  %33 = icmp eq i32 %23, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %20) #9
  br label %35

35:                                               ; preds = %34, %32
  tail call void @up_write(ptr noundef %19) #9
  store i32 0, ptr %1, align 4
  %36 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_inline_data_truncate, i32 noundef 1909, ptr noundef %14) #9
  br label %164

37:                                               ; preds = %28
  %38 = tail call i32 @ext4_orphan_add(ptr noundef %14, ptr noundef %0) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %121

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %3, i32 0, i32 1
  %42 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef %41) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %121

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %0, i32 -24
  call void @down_write(ptr noundef %45) #9
  %46 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i16, ptr %29, align 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = and i64 %47, 4294967295
  %53 = getelementptr i8, ptr %0, i32 -32
  store i64 %52, ptr %53, align 8
  br label %118

54:                                               ; preds = %44
  %55 = getelementptr i8, ptr %0, i32 480
  %56 = load i16, ptr %55, align 8
  %57 = zext i16 %56 to i32
  %58 = and i64 %47, 4294967295
  %59 = getelementptr i8, ptr %0, i32 -32
  store i64 %58, ptr %59, align 8
  %60 = icmp ugt i32 %57, %48
  br i1 %60, label %61, label %118

61:                                               ; preds = %54
  %62 = load volatile i32, ptr %20, align 4
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %67, %61
  %66 = call i32 @ext4_es_remove_extent(ptr noundef %0, i32 noundef 0, i32 noundef -1) #9
  switch i32 %66, label %118 [
    i32 -12, label %67
    i32 0, label %73
  ]

67:                                               ; preds = %65
  %68 = tail call ptr @llvm.thread.pointer() #9
  %69 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 1
  store volatile i32 2, ptr %69, align 8
  %70 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 4
  %71 = load volatile i32, ptr %70, align 4
  %72 = call i32 @io_schedule_timeout(i32 noundef 2) #9
  br label %65

73:                                               ; preds = %65, %61
  %74 = icmp ugt i16 %56, 60
  br i1 %74, label %75, label %102

75:                                               ; preds = %73
  %76 = call i32 @ext4_xattr_ibody_find(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ext4_xattr_search, ptr %3, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82, !prof !9

82:                                               ; preds = %78
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1947, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ext4_xattr_search, ptr %3, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %85, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = call noalias align 64 ptr @__kmalloc(i32 noundef %87, i32 noundef 3136) #10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %118, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.ext4_xattr_info, ptr %4, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = load ptr, ptr %4, align 4
  %94 = call i32 @ext4_xattr_ibody_get(ptr noundef %0, i32 noundef %92, ptr noundef %93, ptr noundef nonnull %88, i32 noundef %87) #9
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %118, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ext4_xattr_info, ptr %4, i32 0, i32 1
  store ptr %88, ptr %97, align 4
  %98 = call i32 @llvm.usub.sat.i32(i32 %48, i32 60)
  %99 = getelementptr inbounds %struct.ext4_xattr_info, ptr %4, i32 0, i32 2
  store i32 %98, ptr %99, align 4
  %100 = call i32 @ext4_xattr_ibody_set(ptr noundef %14, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %96, %73
  %103 = phi ptr [ %88, %96 ], [ null, %73 ]
  %104 = icmp ult i32 %48, 60
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load ptr, ptr %41, align 4
  %107 = getelementptr inbounds %struct.buffer_head, ptr %106, i32 0, i32 5
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %3, i32 0, i32 1, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = getelementptr inbounds %struct.ext4_inode, ptr %111, i32 0, i32 12
  %113 = getelementptr i8, ptr %112, i32 %48
  %114 = sub nuw nsw i32 60, %48
  call void @llvm.memset.p0.i32(ptr align 1 %113, i8 0, i32 %114, i1 false)
  br label %115

115:                                              ; preds = %105, %102
  %116 = call i32 @llvm.umax.i32(i32 %48, i32 60)
  %117 = trunc i32 %116 to i16
  store i16 %117, ptr %55, align 8
  br label %118

118:                                              ; preds = %115, %96, %90, %83, %75, %65, %54, %51
  %119 = phi i32 [ %76, %75 ], [ %94, %90 ], [ %100, %96 ], [ 0, %115 ], [ 0, %54 ], [ -12, %83 ], [ 0, %51 ], [ %66, %65 ]
  %120 = phi ptr [ null, %75 ], [ %88, %90 ], [ %88, %96 ], [ %103, %115 ], [ null, %54 ], [ null, %83 ], [ null, %51 ], [ null, %65 ]
  call void @up_write(ptr noundef %45) #9
  br label %121

121:                                              ; preds = %118, %40, %37
  %122 = phi i32 [ %38, %37 ], [ %42, %40 ], [ %119, %118 ]
  %123 = phi ptr [ null, %37 ], [ null, %40 ], [ %120, %118 ]
  %124 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %3, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  call void @__brelse(ptr noundef nonnull %125) #9
  br label %128

128:                                              ; preds = %127, %121
  %129 = icmp eq i32 %23, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %128
  call void @_clear_bit(i32 noundef 3, ptr noundef %20) #9
  br label %131

131:                                              ; preds = %130, %128
  call void @up_write(ptr noundef %19) #9
  call void @kfree(ptr noundef %123) #9
  %132 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = call i32 @ext4_orphan_del(ptr noundef %14, ptr noundef %0) #9
  br label %137

137:                                              ; preds = %135, %131
  %138 = icmp eq i32 %122, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %141 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %0) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %141, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %140, ptr noundef align 8 dereferenceable(16) %141, i32 16, i1 false)
  %142 = call i32 @__ext4_mark_inode_dirty(ptr noundef %14, ptr noundef %0, ptr noundef nonnull @__func__.ext4_inline_data_truncate, i32 noundef 1992) #9
  %143 = load ptr, ptr %7, align 4
  %144 = getelementptr inbounds %struct.super_block, ptr %143, i32 0, i32 10
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 16
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  %153 = icmp ult ptr %14, inttoptr (i32 4096 to ptr)
  %154 = select i1 %152, i1 true, i1 %153
  br i1 %154, label %161, label %157

155:                                              ; preds = %139
  %156 = icmp ult ptr %14, inttoptr (i32 4096 to ptr)
  br i1 %156, label %161, label %157

157:                                              ; preds = %155, %148
  %158 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %14, i32 0, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = or i32 %159, 1
  store i32 %160, ptr %158, align 4
  br label %161

161:                                              ; preds = %157, %155, %148, %137
  %162 = phi i32 [ %142, %148 ], [ %122, %137 ], [ %142, %155 ], [ %142, %157 ]
  %163 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_inline_data_truncate, i32 noundef 1996, ptr noundef %14) #9
  br label %164

164:                                              ; preds = %161, %35, %16
  %165 = phi i32 [ %17, %16 ], [ %162, %161 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_writepage_trans_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_ibody_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_ibody_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_convert_inline_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  store i64 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -124
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 478
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %0, i32 -128
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %13) #9
  br label %54

14:                                               ; preds = %8
  %15 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %0) #9
  store ptr null, ptr %2, align 4
  %16 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %2) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 3
  %26 = call ptr @__ext4_journal_start_sb(ptr noundef %20, i32 noundef 2018, i32 noundef 2, i32 noundef %15, i32 noundef 0, i32 noundef %25) #9
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = ptrtoint ptr %26 to i32
  br label %49

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %0, i32 -120
  call void @down_write(ptr noundef %31) #9
  %32 = getelementptr i8, ptr %0, i32 -128
  %33 = load volatile i32, ptr %32, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %32) #9
  %34 = load volatile i32, ptr %4, align 4
  %35 = and i32 %34, 268435456
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i16, ptr %9, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call fastcc i32 @ext4_convert_inline_data_nolock(ptr noundef %26, ptr noundef %0, ptr noundef nonnull %2)
  br label %42

42:                                               ; preds = %40, %37, %30
  %43 = phi i32 [ %41, %40 ], [ 0, %37 ], [ 0, %30 ]
  %44 = and i32 %33, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @_clear_bit(i32 noundef 3, ptr noundef %32) #9
  br label %47

47:                                               ; preds = %46, %42
  call void @up_write(ptr noundef %31) #9
  %48 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_inline_data, i32 noundef 2028, ptr noundef %26) #9
  br label %49

49:                                               ; preds = %47, %28
  %50 = phi i32 [ %29, %28 ], [ %43, %47 ]
  %51 = load ptr, ptr %2, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @__brelse(ptr noundef nonnull %51) #9
  br label %54

54:                                               ; preds = %53, %49, %14, %12
  %55 = phi i32 [ 0, %12 ], [ %16, %14 ], [ %50, %49 ], [ %50, %53 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_update_inline_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ext4_xattr_ibody_find, align 4
  %5 = alloca %struct.ext4_xattr_info, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) @__const.ext4_create_inline_data.is, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @__const.ext4_destroy_inline_data_nolock.i, i32 20, i1 false)
  %6 = getelementptr i8, ptr %1, i32 480
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = icmp ult i32 %8, %2
  br i1 %9, label %10, label %72

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %4, i32 0, i32 1
  %12 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef %11) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = call i32 @ext4_xattr_ibody_find(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ext4_xattr_search, ptr %4, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !9

21:                                               ; preds = %17
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #9, !srcloc !50
  unreachable

22:                                               ; preds = %17
  %23 = add i32 %2, -60
  %24 = call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3392) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = call i32 @ext4_xattr_ibody_get(ptr noundef %1, i32 noundef %28, ptr noundef %29, ptr noundef nonnull %24, i32 noundef %23) #9
  %31 = icmp eq i32 %30, -61
  br i1 %31, label %66, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %11, align 4
  %36 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_update_inline_data, i32 noundef 356, ptr noundef %0, ptr noundef %34, ptr noundef %35, i32 noundef 1) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 1
  store ptr %24, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 2
  store i32 %23, ptr %40, align 4
  %41 = call i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ext4_xattr_search, ptr %4, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %4, i32 0, i32 1, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %48, i32 %50
  %52 = ptrtoint ptr %45 to i32
  %53 = ptrtoint ptr %51 to i32
  %54 = sub i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = getelementptr i8, ptr %1, i32 478
  store i16 %55, ptr %56, align 2
  %57 = getelementptr inbounds %struct.ext4_xattr_entry, ptr %45, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i16
  %60 = add i16 %59, 60
  store i16 %60, ptr %6, align 8
  %61 = getelementptr i8, ptr %1, i32 -128
  call void @_set_bit(i32 noundef 7, ptr noundef %61) #9
  %62 = load ptr, ptr %11, align 4
  %63 = getelementptr inbounds %struct.buffer_head, ptr %62, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #9, !srcloc !27
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #9, !srcloc !48
  %65 = call i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr noundef %11) #9
  br label %66

66:                                               ; preds = %43, %38, %32, %26, %22, %14
  %67 = phi i32 [ %15, %14 ], [ -61, %26 ], [ %36, %32 ], [ %41, %38 ], [ %65, %43 ], [ -12, %22 ]
  %68 = phi ptr [ null, %14 ], [ %24, %26 ], [ %24, %32 ], [ %24, %38 ], [ %24, %43 ], [ null, %22 ]
  call void @kfree(ptr noundef %68) #9
  %69 = load ptr, ptr %11, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call void @__brelse(ptr noundef nonnull %69) #9
  br label %72

72:                                               ; preds = %71, %66, %10, %3
  %73 = phi i32 [ 0, %3 ], [ %12, %10 ], [ %67, %66 ], [ %67, %71 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_create_inline_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ext4_xattr_ibody_find, align 4
  %5 = alloca %struct.ext4_xattr_info, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) @__const.ext4_create_inline_data.is, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @__const.ext4_destroy_inline_data_nolock.i, i32 20, i1 false)
  %6 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %4, i32 0, i32 1
  %7 = call i32 @ext4_get_inode_loc(ptr noundef %1, ptr noundef %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_create_inline_data, i32 noundef 269, ptr noundef %0, ptr noundef %11, ptr noundef %12, i32 noundef 1) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = icmp ugt i32 %2, 60
  %17 = call i32 @llvm.usub.sat.i32(i32 %2, i32 60)
  %18 = select i1 %16, ptr inttoptr (i32 -1 to ptr), ptr @.str.9
  %19 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ext4_xattr_info, ptr %5, i32 0, i32 2
  store i32 %17, ptr %20, align 4
  %21 = call i32 @ext4_xattr_ibody_find(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ext4_xattr_search, ptr %4, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !12

27:                                               ; preds = %23
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 289, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

28:                                               ; preds = %23
  %29 = call i32 @ext4_xattr_ibody_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  switch i32 %29, label %57 [
    i32 0, label %32
    i32 -28, label %30
  ]

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %1, i32 -128
  call void @_clear_bit(i32 noundef 7, ptr noundef %31) #9
  br label %57

32:                                               ; preds = %28
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ext4_xattr_ibody_find, ptr %4, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.ext4_inode, ptr %38, i32 0, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %39, i8 0, i32 60, i1 false)
  %40 = getelementptr inbounds %struct.ext4_xattr_search, ptr %4, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr i8, ptr %42, i32 %37
  %44 = ptrtoint ptr %41 to i32
  %45 = ptrtoint ptr %43 to i32
  %46 = sub i32 %44, %45
  %47 = trunc i32 %46 to i16
  %48 = getelementptr i8, ptr %1, i32 478
  store i16 %47, ptr %48, align 2
  %49 = trunc i32 %17 to i16
  %50 = add i16 %49, 60
  %51 = getelementptr i8, ptr %1, i32 480
  store i16 %50, ptr %51, align 8
  %52 = getelementptr i8, ptr %1, i32 -124
  call void @_clear_bit(i32 noundef 19, ptr noundef %52) #9
  call void @_set_bit(i32 noundef 28, ptr noundef %52) #9
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #9, !srcloc !27
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #9, !srcloc !48
  %56 = call i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr noundef %6) #9
  br label %57

57:                                               ; preds = %32, %30, %28, %15, %9
  %58 = phi i32 [ %13, %9 ], [ %21, %15 ], [ -28, %30 ], [ %56, %32 ], [ %29, %28 ]
  %59 = load ptr, ptr %6, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call void @__brelse(ptr noundef nonnull %59) #9
  br label %62

62:                                               ; preds = %61, %57, %3
  %63 = phi i32 [ %7, %3 ], [ %58, %57 ], [ %58, %61 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block_unwritten(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_walk_page_buffers(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_journal_get_write_access(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_da_get_block_prep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_find_dest_de(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_insert_dentry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_check_all_de(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %0) unnamed_addr #5 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !27
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #9, !srcloc !52
  %7 = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !53
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void @__lock_buffer(ptr noundef %0) #9
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_finish_convert_inline_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 16
  %12 = load i32, ptr %3, align 4
  %13 = tail call ptr @ext4_init_dot_dotdot(ptr noundef %1, ptr noundef %7, i32 noundef %11, i32 noundef 0, i32 noundef %12, i32 noundef 1) #9
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %7 to i32
  %16 = sub i32 %14, %15
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = add i32 %4, -4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %17, i32 %18, i1 false)
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 119
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %46, !prof !12

35:                                               ; preds = %28
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %36 = load ptr, ptr %20, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 30
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 119
  %45 = load ptr, ptr %44, align 8
  br label %46

46:                                               ; preds = %43, %28
  %47 = phi ptr [ %45, %43 ], [ %30, %28 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %35, %5
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i1 [ true, %49 ], [ false, %46 ]
  %52 = phi i32 [ 0, %49 ], [ -12, %46 ]
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 16
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  store i64 %56, ptr %57, align 8
  %58 = load i32, ptr %54, align 16
  %59 = zext i32 %58 to i64
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %60 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !35
  store i64 %59, ptr %57, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !36
  %63 = load i32, ptr %60, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 3
  %67 = load i32, ptr %66, align 16
  %68 = zext i32 %67 to i64
  %69 = getelementptr i8, ptr %1, i32 -32
  store i64 %68, ptr %69, align 8
  %70 = load ptr, ptr %6, align 4
  %71 = add i32 %16, %18
  %72 = load i32, ptr %66, align 16
  %73 = add i32 %72, %52
  %74 = icmp eq i32 %71, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %50
  %76 = getelementptr i8, ptr %70, i32 %71
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi ptr [ %70, %75 ], [ %82, %77 ]
  %79 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %78, i32 0, i32 1
  %80 = load i16, ptr %79, align 4
  %81 = zext i16 %80 to i32
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = icmp ult ptr %82, %76
  br i1 %83, label %77, label %84

84:                                               ; preds = %77
  %85 = zext i16 %80 to i32
  %86 = sub i32 %73, %71
  %87 = add i32 %86, %85
  %88 = icmp ugt i32 %87, %73
  %89 = icmp ugt i32 %73, 262144
  %90 = or i1 %89, %88
  %91 = and i32 %87, 3
  %92 = icmp ne i32 %91, 0
  %93 = or i1 %92, %90
  br i1 %93, label %94, label %95, !prof !39

94:                                               ; preds = %84
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %78, i32 0, i32 1
  %97 = trunc i32 %87 to i16
  store i16 %97, ptr %96, align 4
  br label %107

98:                                               ; preds = %50
  store i32 0, ptr %70, align 4
  %99 = icmp ugt i32 %73, 262144
  %100 = and i32 %73, 3
  %101 = icmp ne i32 %100, 0
  %102 = or i1 %99, %101
  br i1 %102, label %103, label %104, !prof !39

103:                                              ; preds = %98
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2402, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

104:                                              ; preds = %98
  %105 = trunc i32 %73 to i16
  %106 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %70, i32 0, i32 1
  store i16 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %95
  br i1 %51, label %112, label %108

108:                                              ; preds = %107
  %109 = load ptr, ptr %8, align 4
  %110 = getelementptr inbounds %struct.super_block, ptr %109, i32 0, i32 3
  %111 = load i32, ptr %110, align 16
  tail call void @ext4_initialize_dirent_tail(ptr noundef %2, i32 noundef %111) #9
  br label %112

112:                                              ; preds = %108, %107
  %113 = load volatile i32, ptr %2, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  tail call void @_set_bit(i32 noundef 0, ptr noundef %2) #9
  br label %117

117:                                              ; preds = %116, %112
  %118 = tail call i32 @ext4_handle_dirty_dirblock(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load volatile i32, ptr %2, align 4
  %122 = and i32 %121, 16777216
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  tail call void @_set_bit(i32 noundef 24, ptr noundef %2) #9
  br label %125

125:                                              ; preds = %124, %120
  %126 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_finish_convert_inline_dir, i32 noundef 1185) #9
  br label %127

127:                                              ; preds = %125, %117
  %128 = phi i32 [ %126, %125 ], [ %118, %117 ]
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_init_dot_dotdot(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_initialize_dirent_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_handle_dirty_dirblock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!10 = !{i64 2150258098}
!11 = !{i64 2150259119}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153933890, i64 2153934371, i64 2153933927, i64 2153933983, i64 2153934017, i64 2153934041, i64 2153934082, i64 2153934103, i64 2153934131, i64 2153934165}
!14 = !{i64 2153934929, i64 2153935410, i64 2153934966, i64 2153935022, i64 2153935056, i64 2153935080, i64 2153935121, i64 2153935142, i64 2153935170, i64 2153935204}
!15 = !{i64 2153935934, i64 2153936415, i64 2153935971, i64 2153936027, i64 2153936061, i64 2153936085, i64 2153936126, i64 2153936147, i64 2153936175, i64 2153936209}
!16 = !{i64 2151375328}
!17 = !{i64 2151375170}
!18 = !{i64 2151375472}
!19 = !{i64 2149569715}
!20 = !{i64 2152451703}
!21 = !{i64 2151058852}
!22 = !{i64 2153922902, i64 2153923383, i64 2153922939, i64 2153922995, i64 2153923029, i64 2153923053, i64 2153923094, i64 2153923115, i64 2153923143, i64 2153923177}
!23 = !{i64 2151059059}
!24 = !{i64 2152454328}
!25 = !{i64 2153941356, i64 2153941837, i64 2153941393, i64 2153941449, i64 2153941483, i64 2153941507, i64 2153941548, i64 2153941569, i64 2153941597, i64 2153941631}
!26 = !{i64 2147983967}
!27 = !{i64 308045, i64 2147809611, i64 2147809637, i64 2147809684, i64 2147809706, i64 2147809734, i64 2147809754}
!28 = !{i64 2147886353, i64 2147886385, i64 2147886414, i64 2147886448, i64 2147886479, i64 2147886502}
!29 = !{i64 2147984170}
!30 = !{!"branch_weights", i32 2002, i32 2000}
!31 = !{i64 2153943243, i64 2153943724, i64 2153943280, i64 2153943336, i64 2153943370, i64 2153943394, i64 2153943435, i64 2153943456, i64 2153943484, i64 2153943518}
!32 = !{i64 2153927126, i64 2153927607, i64 2153927163, i64 2153927219, i64 2153927253, i64 2153927277, i64 2153927318, i64 2153927339, i64 2153927367, i64 2153927401}
!33 = !{i64 2153928189, i64 2153928670, i64 2153928226, i64 2153928282, i64 2153928316, i64 2153928340, i64 2153928381, i64 2153928402, i64 2153928430, i64 2153928464}
!34 = !{i64 2151377110}
!35 = !{i64 2149570014}
!36 = !{i64 2149570315}
!37 = !{i64 2151384668}
!38 = !{i64 2153948551, i64 2153949033, i64 2153948588, i64 2153948644, i64 2153948678, i64 2153948702, i64 2153948743, i64 2153948764, i64 2153948792, i64 2153948826}
!39 = !{!"branch_weights", i32 6003000, i32 -294967296}
!40 = !{i64 2153847349, i64 2153847829, i64 2153847386, i64 2153847442, i64 2153847476, i64 2153847500, i64 2153847541, i64 2153847562, i64 2153847590, i64 2153847624}
!41 = !{i64 2153057487}
!42 = !{i64 260748, i64 260769}
!43 = !{i64 2148037636}
!44 = !{i64 264363, i64 264389, i64 264417, i64 264435, i64 264453, i64 264475}
!45 = !{i64 2148037838}
!46 = !{i64 2153058714}
!47 = !{i64 2153955449, i64 2153955931, i64 2153955486, i64 2153955542, i64 2153955576, i64 2153955600, i64 2153955641, i64 2153955662, i64 2153955690, i64 2153955724}
!48 = !{i64 2147883312, i64 2147883338, i64 2147883367, i64 2147883401, i64 2147883432, i64 2147883455}
!49 = !{i64 2153960848, i64 2153961330, i64 2153960885, i64 2153960941, i64 2153960975, i64 2153960999, i64 2153961040, i64 2153961061, i64 2153961089, i64 2153961123}
!50 = !{i64 2153931654, i64 2153932135, i64 2153931691, i64 2153931747, i64 2153931781, i64 2153931805, i64 2153931846, i64 2153931867, i64 2153931895, i64 2153931929}
!51 = !{i64 2153930376, i64 2153930857, i64 2153930413, i64 2153930469, i64 2153930503, i64 2153930527, i64 2153930568, i64 2153930589, i64 2153930617, i64 2153930651}
!52 = !{i64 2147891774, i64 2147891806, i64 2147891835, i64 2147891869, i64 2147891900, i64 2147891923}
!53 = !{i64 2147993090}
