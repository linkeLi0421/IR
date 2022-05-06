; ModuleID = '/llk/IR/fs/ext4/sysfs.c_pt.bc'
source_filename = "../fs/ext4/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.sysfs_ops = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ext4_attr = type { %struct.attribute, i16, i16, i16, %union.anon.72 }
%struct.attribute = type { ptr, i16 }
%union.anon.72 = type { i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.66 = type { %struct.callback_head }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.68 = type { ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"errors_count\00", align 1
@ext4_sb_ktype = internal global %struct.kobj_type { ptr @ext4_sb_release, ptr @ext4_attr_ops, ptr null, ptr @ext4_groups, ptr null, ptr null, ptr null }, align 4
@ext4_root = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ext4_proc_root = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"es_shrinker_info\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fc_info\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"mb_groups\00", align 1
@ext4_mb_seq_groups_ops = external dso_local constant %struct.seq_operations, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"mb_stats\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"mb_structs_summary\00", align 1
@ext4_mb_seq_structs_summary_ops = external dso_local constant %struct.seq_operations, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"ext4\00", align 1
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@ext4_feat = internal unnamed_addr global ptr null, align 4
@ext4_feat_ktype = internal global %struct.kobj_type { ptr @kfree, ptr @ext4_attr_ops, ptr null, ptr @ext4_feat_groups, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@proc_dirname = internal constant [8 x i8] c"fs/ext4\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@ext4_attr_ops = internal constant %struct.sysfs_ops { ptr @ext4_attr_show, ptr @ext4_attr_store }, align 4
@ext4_groups = internal global [2 x ptr] [ptr @ext4_group, ptr null], align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"supported\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"<none>\0A\00", align 1
@__func__.trigger_test_error = private unnamed_addr constant [19 x i8] c"trigger_test_error\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@ext4_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ext4_attrs, ptr null }, align 4
@ext4_attrs = internal global [44 x ptr] [ptr @ext4_attr_delayed_allocation_blocks, ptr @ext4_attr_session_write_kbytes, ptr @ext4_attr_lifetime_write_kbytes, ptr @ext4_attr_reserved_clusters, ptr @ext4_attr_sra_exceeded_retry_limit, ptr @ext4_attr_inode_readahead_blks, ptr @ext4_attr_inode_goal, ptr @ext4_attr_mb_stats, ptr @ext4_attr_mb_max_to_scan, ptr @ext4_attr_mb_min_to_scan, ptr @ext4_attr_mb_order2_req, ptr @ext4_attr_mb_stream_req, ptr @ext4_attr_mb_group_prealloc, ptr @ext4_attr_mb_max_inode_prealloc, ptr @ext4_attr_mb_max_linear_groups, ptr @ext4_attr_max_writeback_mb_bump, ptr @ext4_attr_extent_max_zeroout_kb, ptr @ext4_attr_trigger_fs_error, ptr @ext4_attr_err_ratelimit_interval_ms, ptr @ext4_attr_err_ratelimit_burst, ptr @ext4_attr_warning_ratelimit_interval_ms, ptr @ext4_attr_warning_ratelimit_burst, ptr @ext4_attr_msg_ratelimit_interval_ms, ptr @ext4_attr_msg_ratelimit_burst, ptr @ext4_attr_errors_count, ptr @ext4_attr_warning_count, ptr @ext4_attr_msg_count, ptr @ext4_attr_first_error_ino, ptr @ext4_attr_last_error_ino, ptr @ext4_attr_first_error_block, ptr @ext4_attr_last_error_block, ptr @ext4_attr_first_error_line, ptr @ext4_attr_last_error_line, ptr @ext4_attr_first_error_func, ptr @ext4_attr_last_error_func, ptr @ext4_attr_first_error_errcode, ptr @ext4_attr_last_error_errcode, ptr @ext4_attr_first_error_time, ptr @ext4_attr_last_error_time, ptr @ext4_attr_journal_task, ptr @ext4_attr_mb_prefetch, ptr @ext4_attr_mb_prefetch_limit, ptr @ext4_attr_last_trim_minblks, ptr null], align 4
@ext4_attr_delayed_allocation_blocks = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.20, i16 292 }, i16 1, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_session_write_kbytes = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.21, i16 292 }, i16 2, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_lifetime_write_kbytes = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.22, i16 292 }, i16 3, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_reserved_clusters = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.23, i16 420 }, i16 4, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_sra_exceeded_retry_limit = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.24, i16 292 }, i16 5, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_inode_readahead_blks = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.25, i16 420 }, i16 6, i16 1, i16 0, %union.anon.72 { i32 140 } }, align 4
@ext4_attr_inode_goal = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.26, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 144 } }, align 4
@ext4_attr_mb_stats = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.6, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 576 } }, align 4
@ext4_attr_mb_max_to_scan = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.27, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 568 } }, align 4
@ext4_attr_mb_min_to_scan = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.28, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 572 } }, align 4
@ext4_attr_mb_order2_req = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.29, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 580 } }, align 4
@ext4_attr_mb_stream_req = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.30, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 564 } }, align 4
@ext4_attr_mb_group_prealloc = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.31, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 584 } }, align 4
@ext4_attr_mb_max_inode_prealloc = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.32, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 588 } }, align 4
@ext4_attr_mb_max_linear_groups = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.33, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 560 } }, align 4
@ext4_attr_extent_max_zeroout_kb = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.36, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 800 } }, align 4
@ext4_attr_trigger_fs_error = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.37, i16 128 }, i16 7, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_err_ratelimit_interval_ms = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.38, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 1108 } }, align 4
@ext4_attr_err_ratelimit_burst = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.39, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 1112 } }, align 4
@ext4_attr_warning_ratelimit_interval_ms = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.40, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 1136 } }, align 4
@ext4_attr_warning_ratelimit_burst = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.41, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 1140 } }, align 4
@ext4_attr_msg_ratelimit_interval_ms = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.42, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 1164 } }, align 4
@ext4_attr_msg_ratelimit_burst = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.43, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 1168 } }, align 4
@ext4_attr_errors_count = internal global %struct.ext4_attr { %struct.attribute { ptr @.str, i16 292 }, i16 11, i16 2, i16 0, %union.anon.72 { i32 404 } }, align 4
@ext4_attr_warning_count = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.44, i16 292 }, i16 16, i16 1, i16 0, %union.anon.72 { i32 1188 } }, align 4
@ext4_attr_msg_count = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.45, i16 292 }, i16 16, i16 1, i16 0, %union.anon.72 { i32 1192 } }, align 4
@ext4_attr_first_error_ino = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.46, i16 292 }, i16 11, i16 2, i16 0, %union.anon.72 { i32 412 } }, align 4
@ext4_attr_last_error_ino = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.47, i16 292 }, i16 11, i16 2, i16 0, %union.anon.72 { i32 464 } }, align 4
@ext4_attr_first_error_block = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.48, i16 292 }, i16 13, i16 2, i16 0, %union.anon.72 { i32 416 } }, align 4
@ext4_attr_last_error_block = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.49, i16 292 }, i16 13, i16 2, i16 0, %union.anon.72 { i32 472 } }, align 4
@ext4_attr_first_error_line = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.50, i16 292 }, i16 11, i16 2, i16 0, %union.anon.72 { i32 456 } }, align 4
@ext4_attr_last_error_line = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.51, i16 292 }, i16 11, i16 2, i16 0, %union.anon.72 { i32 468 } }, align 4
@ext4_attr_first_error_func = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.52, i16 292 }, i16 15, i16 2, i16 32, %union.anon.72 { i32 424 } }, align 4
@ext4_attr_last_error_func = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.53, i16 292 }, i16 15, i16 2, i16 32, %union.anon.72 { i32 480 } }, align 4
@ext4_attr_first_error_errcode = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.54, i16 292 }, i16 14, i16 2, i16 0, %union.anon.72 { i32 634 } }, align 4
@ext4_attr_last_error_errcode = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.55, i16 292 }, i16 14, i16 2, i16 0, %union.anon.72 { i32 635 } }, align 4
@ext4_attr_first_error_time = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.56, i16 292 }, i16 8, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_last_error_time = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.57, i16 292 }, i16 9, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_journal_task = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.58, i16 292 }, i16 17, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_mb_prefetch = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.59, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 604 } }, align 4
@ext4_attr_mb_prefetch_limit = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.60, i16 420 }, i16 11, i16 1, i16 0, %union.anon.72 { i32 608 } }, align 4
@ext4_attr_last_trim_minblks = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.61, i16 420 }, i16 12, i16 1, i16 0, %union.anon.72 { i32 852 } }, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"delayed_allocation_blocks\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"session_write_kbytes\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"lifetime_write_kbytes\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"reserved_clusters\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"sra_exceeded_retry_limit\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"inode_readahead_blks\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"inode_goal\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"mb_max_to_scan\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"mb_min_to_scan\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"mb_order2_req\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"mb_stream_req\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"mb_group_prealloc\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"mb_max_inode_prealloc\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"mb_max_linear_groups\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"max_writeback_mb_bump\00", align 1
@old_bump_val = internal global i32 128, align 4
@ext4_attr_max_writeback_mb_bump = internal global { %struct.attribute, i16, i16, i16, { ptr } } { %struct.attribute { ptr @.str.34, i16 292 }, i16 11, i16 0, i16 0, { ptr } { ptr @old_bump_val } }, align 4
@.str.36 = private unnamed_addr constant [22 x i8] c"extent_max_zeroout_kb\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"trigger_fs_error\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"err_ratelimit_interval_ms\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"err_ratelimit_burst\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"warning_ratelimit_interval_ms\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"warning_ratelimit_burst\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"msg_ratelimit_interval_ms\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"msg_ratelimit_burst\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"warning_count\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"msg_count\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"first_error_ino\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"last_error_ino\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"first_error_block\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"last_error_block\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"first_error_line\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"last_error_line\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"first_error_func\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"last_error_func\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"first_error_errcode\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"last_error_errcode\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"first_error_time\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"last_error_time\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"journal_task\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"mb_prefetch\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"mb_prefetch_limit\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"last_trim_minblks\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ext4_feat_groups = internal global [2 x ptr] [ptr @ext4_feat_group, ptr null], align 4
@ext4_feat_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ext4_feat_attrs, ptr null }, align 4
@ext4_feat_attrs = internal global [6 x ptr] [ptr @ext4_attr_lazy_itable_init, ptr @ext4_attr_batched_discard, ptr @ext4_attr_meta_bg_resize, ptr @ext4_attr_metadata_csum_seed, ptr @ext4_attr_fast_commit, ptr null], align 4
@ext4_attr_lazy_itable_init = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.62, i16 292 }, i16 10, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_batched_discard = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.63, i16 292 }, i16 10, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_meta_bg_resize = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.64, i16 292 }, i16 10, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_metadata_csum_seed = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.65, i16 292 }, i16 10, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@ext4_attr_fast_commit = internal global %struct.ext4_attr { %struct.attribute { ptr @.str.66, i16 292 }, i16 10, i16 0, i16 0, %union.anon.72 zeroinitializer }, align 4
@.str.62 = private unnamed_addr constant [17 x i8] c"lazy_itable_init\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"batched_discard\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"meta_bg_resize\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"metadata_csum_seed\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"fast_commit\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_notify_error_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 43
  tail call void @sysfs_notify(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_register_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 44
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 44, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #7
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 43
  %7 = load ptr, ptr @ext4_root, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 33
  %9 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %6, ptr noundef nonnull @ext4_sb_ktype, ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %8) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @kobject_put(ptr noundef %6) #7
  tail call void @wait_for_completion(ptr noundef %4) #7
  br label %37

12:                                               ; preds = %1
  %13 = load ptr, ptr @ext4_proc_root, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 42
  %17 = load ptr, ptr %16, align 4
  br label %21

18:                                               ; preds = %12
  %19 = tail call ptr @proc_mkdir(ptr noundef %8, ptr noundef nonnull %13) #7
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 42
  store ptr %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %19, %18 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 42
  %26 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef nonnull %22, ptr noundef nonnull @ext4_seq_options_show, ptr noundef %0) #7
  %27 = load ptr, ptr %25, align 4
  %28 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %27, ptr noundef nonnull @ext4_seq_es_shrinker_info_show, ptr noundef %0) #7
  %29 = load ptr, ptr %25, align 4
  %30 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %29, ptr noundef nonnull @ext4_fc_info_show, ptr noundef %0) #7
  %31 = load ptr, ptr %25, align 4
  %32 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %31, ptr noundef nonnull @ext4_mb_seq_groups_ops, i32 noundef 0, ptr noundef %0) #7
  %33 = load ptr, ptr %25, align 4
  %34 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %33, ptr noundef nonnull @ext4_seq_mb_stats_show, ptr noundef %0) #7
  %35 = load ptr, ptr %25, align 4
  %36 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %35, ptr noundef nonnull @ext4_mb_seq_structs_summary_ops, i32 noundef 0, ptr noundef %0) #7
  br label %37

37:                                               ; preds = %24, %21, %11
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_seq_options_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_seq_es_shrinker_info_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fc_info_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_seq_mb_stats_show(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_unregister_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 42
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 33
  %9 = load ptr, ptr @ext4_proc_root, align 4
  %10 = tail call i32 @remove_proc_subtree(ptr noundef %8, ptr noundef %9) #7
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 43
  tail call void @kobject_del(ptr noundef %12) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_init_sysfs() local_unnamed_addr #3 section ".init.text" {
  %1 = load ptr, ptr @fs_kobj, align 4
  %2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.8, ptr noundef %1) #7
  store ptr %2, ptr @ext4_root, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #8
  store ptr %6, ptr @ext4_feat, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @ext4_root, align 4
  %10 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %6, ptr noundef nonnull @ext4_feat_ktype, ptr noundef %9, ptr noundef nonnull @.str.9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @proc_mkdir(ptr noundef nonnull @proc_dirname, ptr noundef null) #7
  store ptr %13, ptr @ext4_proc_root, align 4
  br label %19

14:                                               ; preds = %8
  %15 = load ptr, ptr @ext4_feat, align 4
  tail call void @kobject_put(ptr noundef %15) #7
  store ptr null, ptr @ext4_feat, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i32 [ %10, %14 ], [ -12, %4 ]
  %18 = load ptr, ptr @ext4_root, align 4
  tail call void @kobject_put(ptr noundef %18) #7
  store ptr null, ptr @ext4_root, align 4
  br label %19

19:                                               ; preds = %16, %12, %0
  %20 = phi i32 [ %17, %16 ], [ 0, %12 ], [ -12, %0 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_exit_sysfs() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ext4_feat, align 4
  tail call void @kobject_put(ptr noundef %1) #7
  store ptr null, ptr @ext4_feat, align 4
  %2 = load ptr, ptr @ext4_root, align 4
  tail call void @kobject_put(ptr noundef %2) #7
  store ptr null, ptr @ext4_root, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @proc_dirname, ptr noundef null) #7
  store ptr null, ptr @ext4_proc_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_sb_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 36
  tail call void @complete(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 2
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  switch i32 %6, label %21 [
    i32 0, label %7
    i32 1, label %10
    i32 2, label %15
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  br label %21

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -344
  %12 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  br label %21

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %0, i32 -276
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  br label %21

21:                                               ; preds = %15, %10, %7, %3
  %22 = phi ptr [ %20, %15 ], [ %14, %10 ], [ %9, %7 ], [ null, %3 ]
  %23 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = sext i16 %24 to i32
  switch i32 %25, label %184 [
    i32 1, label %26
    i32 2, label %34
    i32 3, label %67
    i32 4, label %106
    i32 5, label %110
    i32 6, label %114
    i32 11, label %114
    i32 12, label %119
    i32 14, label %124
    i32 13, label %130
    i32 15, label %135
    i32 16, label %142
    i32 10, label %147
    i32 8, label %149
    i32 9, label %161
    i32 17, label %173
  ]

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 -72
  %28 = tail call i64 @__percpu_counter_sum(ptr noundef %27) #7
  %29 = getelementptr i8, ptr %0, i32 -296
  %30 = load i32, ptr %29, align 16
  %31 = zext i32 %30 to i64
  %32 = shl i64 %28, %31
  %33 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.11, i64 noundef %32) #7
  br label %184

34:                                               ; preds = %21
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %37 = icmp ult i32 %36, %35
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 136
  %40 = load ptr, ptr %39, align 32
  %41 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 20
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.block_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = ptrtoint ptr %46 to i32
  br label %48

48:                                               ; preds = %48, %38
  %49 = phi i32 [ %36, %38 ], [ %58, %48 ]
  %50 = phi i32 [ 0, %38 ], [ %57, %48 ]
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %47
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr %struct.disk_stats, ptr %54, i32 0, i32 1, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %50
  %58 = tail call i32 @cpumask_next(i32 noundef %49, ptr noundef nonnull @__cpu_possible_mask) #9
  %59 = icmp ult i32 %58, %35
  br i1 %59, label %48, label %60

60:                                               ; preds = %48, %34
  %61 = phi i32 [ 0, %34 ], [ %57, %48 ]
  %62 = getelementptr i8, ptr %0, i32 444
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %61, %63
  %65 = lshr i32 %64, 1
  %66 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %65) #7
  br label %184

67:                                               ; preds = %21
  %68 = getelementptr i8, ptr %0, i32 136
  %69 = load ptr, ptr %68, align 32
  %70 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %0, i32 448
  %73 = load i64, ptr %72, align 8
  %74 = load i32, ptr @nr_cpu_ids, align 4
  %75 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %76 = icmp ult i32 %75, %74
  br i1 %76, label %77, label %95

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 20
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.block_device, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = ptrtoint ptr %81 to i32
  br label %83

83:                                               ; preds = %83, %77
  %84 = phi i32 [ %75, %77 ], [ %93, %83 ]
  %85 = phi i32 [ 0, %77 ], [ %92, %83 ]
  %86 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %82
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr %struct.disk_stats, ptr %89, i32 0, i32 1, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %85
  %93 = tail call i32 @cpumask_next(i32 noundef %84, ptr noundef nonnull @__cpu_possible_mask) #9
  %94 = icmp ult i32 %93, %74
  br i1 %94, label %83, label %95

95:                                               ; preds = %83, %67
  %96 = phi i32 [ 0, %67 ], [ %92, %83 ]
  %97 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 27
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.ext4_sb_info, ptr %98, i32 0, i32 107
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 %96, %100
  %102 = lshr i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = add i64 %73, %103
  %105 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.11, i64 noundef %104) #7
  br label %184

106:                                              ; preds = %21
  %107 = getelementptr i8, ptr %0, i32 -240
  %108 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %107, ptr elementtype(i64) %107) #7, !srcloc !8
  %109 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.11, i64 noundef %108) #7
  br label %184

110:                                              ; preds = %21
  %111 = getelementptr i8, ptr %0, i32 -40
  %112 = tail call i64 @__percpu_counter_sum(ptr noundef %111) #7
  %113 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.11, i64 noundef %112) #7
  br label %184

114:                                              ; preds = %21, %21
  %115 = icmp eq ptr %22, null
  br i1 %115, label %184, label %116

116:                                              ; preds = %114
  %117 = load i32, ptr %22, align 4
  %118 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %117) #7
  br label %184

119:                                              ; preds = %21
  %120 = icmp eq ptr %22, null
  br i1 %120, label %184, label %121

121:                                              ; preds = %119
  %122 = load i32, ptr %22, align 4
  %123 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %122) #7
  br label %184

124:                                              ; preds = %21
  %125 = icmp eq ptr %22, null
  br i1 %125, label %184, label %126

126:                                              ; preds = %124
  %127 = load i8, ptr %22, align 1
  %128 = zext i8 %127 to i32
  %129 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %128) #7
  br label %184

130:                                              ; preds = %21
  %131 = icmp eq ptr %22, null
  br i1 %131, label %184, label %132

132:                                              ; preds = %130
  %133 = load i64, ptr %22, align 8
  %134 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.11, i64 noundef %133) #7
  br label %184

135:                                              ; preds = %21
  %136 = icmp eq ptr %22, null
  br i1 %136, label %184, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 3
  %139 = load i16, ptr %138, align 4
  %140 = zext i16 %139 to i32
  %141 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %140, ptr noundef nonnull %22) #7
  br label %184

142:                                              ; preds = %21
  %143 = icmp eq ptr %22, null
  br i1 %143, label %184, label %144

144:                                              ; preds = %142
  %145 = load volatile i32, ptr %22, align 4
  %146 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %145) #7
  br label %184

147:                                              ; preds = %21
  %148 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.16) #7
  br label %184

149:                                              ; preds = %21
  %150 = getelementptr i8, ptr %0, i32 -276
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.ext4_super_block, ptr %151, i32 0, i32 70
  %153 = load i32, ptr %152, align 8
  %154 = getelementptr inbounds %struct.ext4_super_block, ptr %151, i32 0, i32 94
  %155 = load i8, ptr %154, align 8
  %156 = zext i8 %155 to i64
  %157 = shl nuw nsw i64 %156, 32
  %158 = zext i32 %153 to i64
  %159 = or i64 %157, %158
  %160 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17, i64 noundef %159) #7
  br label %184

161:                                              ; preds = %21
  %162 = getelementptr i8, ptr %0, i32 -276
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.ext4_super_block, ptr %163, i32 0, i32 75
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ext4_super_block, ptr %163, i32 0, i32 95
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i64
  %169 = shl nuw nsw i64 %168, 32
  %170 = zext i32 %165 to i64
  %171 = or i64 %169, %170
  %172 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17, i64 noundef %171) #7
  br label %184

173:                                              ; preds = %21
  %174 = getelementptr i8, ptr %0, i32 60
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18) #7
  br label %184

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.journal_s, ptr %175, i32 0, i32 46
  %181 = load ptr, ptr %180, align 4
  %182 = tail call i32 @__task_pid_nr_ns(ptr noundef %181, i32 noundef 0, ptr noundef null) #7
  %183 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %182) #7
  br label %184

184:                                              ; preds = %179, %177, %161, %149, %147, %144, %142, %137, %135, %132, %130, %126, %124, %121, %119, %116, %114, %110, %106, %95, %60, %26, %21
  %185 = phi i32 [ %172, %161 ], [ %160, %149 ], [ %148, %147 ], [ %146, %144 ], [ %141, %137 ], [ %129, %126 ], [ %123, %121 ], [ %113, %110 ], [ %109, %106 ], [ %105, %95 ], [ %66, %60 ], [ %33, %26 ], [ 0, %114 ], [ 0, %119 ], [ 0, %124 ], [ 0, %130 ], [ 0, %135 ], [ 0, %142 ], [ 0, %21 ], [ %183, %179 ], [ %178, %177 ], [ %118, %116 ], [ %134, %132 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = sext i16 %9 to i32
  switch i32 %10, label %25 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %19
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  br label %25

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %0, i32 -344
  %16 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  br label %25

19:                                               ; preds = %4
  %20 = getelementptr i8, ptr %0, i32 -276
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 %23
  br label %25

25:                                               ; preds = %19, %14, %11, %4
  %26 = phi ptr [ %24, %19 ], [ %18, %14 ], [ %13, %11 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  %27 = getelementptr inbounds %struct.ext4_attr, ptr %1, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = sext i16 %28 to i32
  switch i32 %29, label %110 [
    i32 4, label %30
    i32 11, label %63
    i32 12, label %71
    i32 6, label %79
    i32 7, label %95
  ]

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !9
  %31 = getelementptr i8, ptr %0, i32 -276
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ext4_super_block, ptr %32, i32 0, i32 29
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ext4_super_block, ptr %32, i32 0, i32 50
  %39 = load i32, ptr %38, align 8
  %40 = zext i32 %39 to i64
  %41 = shl nuw i64 %40, 32
  br label %42

42:                                               ; preds = %37, %30
  %43 = phi i64 [ %41, %37 ], [ 0, %30 ]
  %44 = getelementptr inbounds %struct.ext4_super_block, ptr %32, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 -296
  %47 = load i32, ptr %46, align 16
  %48 = tail call ptr @skip_spaces(ptr noundef %2) #7
  %49 = call i32 @kstrtoull(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %6) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = zext i32 %45 to i64
  %53 = or i64 %43, %52
  %54 = zext i32 %47 to i64
  %55 = lshr i64 %53, %54
  %56 = load i64, ptr %6, align 8
  %57 = icmp ult i64 %56, %55
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = getelementptr i8, ptr %0, i32 -240
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #7, !srcloc !10
  %60 = call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %59, ptr %59, i64 %56) #7, !srcloc !11
  br label %61

61:                                               ; preds = %58, %51, %42
  %62 = phi i32 [ %3, %58 ], [ -22, %51 ], [ -22, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %110

63:                                               ; preds = %25
  %64 = icmp eq ptr %26, null
  br i1 %64, label %110, label %65

65:                                               ; preds = %63
  %66 = tail call ptr @skip_spaces(ptr noundef %2) #7
  %67 = call i32 @_kstrtoul(ptr noundef %66, i32 noundef 0, ptr noundef nonnull %7) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %65
  %70 = load i32, ptr %7, align 4
  store i32 %70, ptr %26, align 4
  br label %110

71:                                               ; preds = %25
  %72 = icmp eq ptr %26, null
  br i1 %72, label %110, label %73

73:                                               ; preds = %71
  %74 = tail call ptr @skip_spaces(ptr noundef %2) #7
  %75 = call i32 @_kstrtoul(ptr noundef %74, i32 noundef 0, ptr noundef nonnull %7) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %73
  %78 = load i32, ptr %7, align 4
  store i32 %78, ptr %26, align 4
  br label %110

79:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %80 = tail call ptr @skip_spaces(ptr noundef %2) #7
  %81 = call i32 @_kstrtoul(ptr noundef %80, i32 noundef 0, ptr noundef nonnull %5) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, ptr %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = call i32 @llvm.ctpop.i32(i32 %84) #7, !range !12
  %88 = icmp ugt i32 %87, 1
  %89 = icmp ugt i32 %84, 1073741824
  %90 = or i1 %89, %88
  br i1 %90, label %93, label %91

91:                                               ; preds = %86, %83
  %92 = getelementptr i8, ptr %0, i32 -204
  store i32 %84, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %86, %79
  %94 = phi i32 [ %3, %91 ], [ %81, %79 ], [ -22, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %110

95:                                               ; preds = %25
  %96 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %96, label %97, label %110

97:                                               ; preds = %95
  %98 = icmp eq i32 %3, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %97
  %100 = add i32 %3, -1
  %101 = getelementptr i8, ptr %2, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 10
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = icmp eq i32 %100, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %104, %99
  %107 = phi i32 [ %100, %104 ], [ %3, %99 ]
  %108 = getelementptr i8, ptr %0, i32 52
  %109 = load ptr, ptr %108, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %109, ptr noundef nonnull @__func__.trigger_test_error, i32 noundef 126, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %107, ptr noundef %2) #7
  br label %110

110:                                              ; preds = %106, %104, %97, %95, %93, %77, %73, %71, %69, %65, %63, %61, %25
  %111 = phi i32 [ %94, %93 ], [ %3, %77 ], [ %3, %69 ], [ %62, %61 ], [ 0, %63 ], [ %67, %65 ], [ 0, %71 ], [ %75, %73 ], [ 0, %25 ], [ -1, %95 ], [ %3, %106 ], [ 1, %104 ], [ 0, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readonly willreturn }

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
!8 = !{i64 405957, i64 405978}
!9 = !{!"auto-init"}
!10 = !{i64 416343, i64 2147906314, i64 2147906340, i64 2147906387, i64 2147906409, i64 2147906437, i64 2147906457}
!11 = !{i64 406202, i64 406222, i64 406250, i64 406280, i64 406296}
!12 = !{i32 0, i32 33}
