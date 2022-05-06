; ModuleID = '/llk/IR/fs/ext4/mballoc.c_pt.bc'
source_filename = "../fs/ext4/mballoc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.41, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.42, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.43, ptr, %struct.address_space, %struct.list_head, %union.anon.44, i32, i32, ptr, ptr }
%union.anon.41 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.42 = type { %struct.callback_head }
%union.anon.43 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.44 = type { ptr }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ext4_buddy = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.sg = type { %struct.ext4_group_info, [18 x i32] }
%struct.ext4_group_info = type { i32, %struct.rb_root, i32, i32, i32, i32, i32, %struct.list_head, %struct.rw_semaphore, %struct.rb_node, %struct.list_head, [0 x i32] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext4_locality_group = type { %struct.mutex, [10 x %struct.list_head], %struct.spinlock }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.ext4_free_data = type { %struct.list_head, %struct.rb_node, i32, i32, i32, i32 }
%struct.bgl_lock = type { %struct.spinlock, [60 x i8] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ext4_prealloc_space = type { %struct.list_head, %struct.list_head, %union.anon.78, %struct.spinlock, %struct.atomic_t, i32, i64, i32, i32, i32, i16, ptr, ptr }
%union.anon.78 = type { %struct.list_head }
%struct.ext4_allocation_request = type { ptr, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.ext4_allocation_context = type { ptr, ptr, %struct.ext4_free_extent, %struct.ext4_free_extent, %struct.ext4_free_extent, %struct.ext4_free_extent, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.ext4_free_extent = type { i32, i32, i32, i32 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.51 }
%struct.llist_node = type { ptr }
%union.anon.51 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.71 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ext4_mb_seq_groups_ops = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @ext4_mb_seq_groups_start, ptr @ext4_mb_seq_groups_stop, ptr @ext4_mb_seq_groups_next, ptr @ext4_mb_seq_groups_show }, align 4
@.str = private unnamed_addr constant [10 x i8] c"mballoc:\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\09mb stats collection turned off.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\09To enable, please write \221\22 to sysfs file mb_stats.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09reqs: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\09success: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09groups_scanned: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\09cr0_stats:\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\09\09hits: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\09\09groups_considered: %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09\09useless_loops: %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09\09bad_suggestions: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\09cr1_stats:\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09cr2_stats:\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\09cr3_stats:\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\09extents_scanned: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\09\09goal_hits: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"\09\092^n_hits: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\09\09breaks: %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"\09\09lost: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"\09buddies_generated: %u/%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\09buddies_time_used: %llu\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"\09preallocated: %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"\09discarded: %u\0A\00", align 1
@ext4_mb_seq_structs_summary_ops = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @ext4_mb_seq_structs_summary_start, ptr @ext4_mb_seq_structs_summary_stop, ptr @ext4_mb_seq_structs_summary_next, ptr @ext4_mb_seq_structs_summary_show }, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"can't allocate buddy meta group\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"can't allocate mem for a buddy group\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"can't allocate buddy mem\00", align 1
@ext4_mb_add_groupinfo.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"&meta_group_info[i]->alloc_sem\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@ext4_mb_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"&lg->lg_mutex\00", align 1
@ext4_mb_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"fs/ext4/mballoc.c\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"mballoc: %u blocks %u reqs (%u success)\00", align 1
@.str.32 = private unnamed_addr constant [94 x i8] c"mballoc: %u extents scanned, %u groups scanned, %u goal hits, %u 2^N hits, %u breaks, %u lost\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"mballoc: %u generated and it took %llu\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"mballoc: %u preallocated, %u discarded\00", align 1
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@ext4_free_data_cachep = internal unnamed_addr global ptr null, align 4
@.str.35 = private unnamed_addr constant [20 x i8] c"ext4_prealloc_space\00", align 1
@ext4_pspace_cachep = internal unnamed_addr global ptr null, align 4
@.str.36 = private unnamed_addr constant [24 x i8] c"ext4_allocation_context\00", align 1
@ext4_ac_cachep = internal unnamed_addr global ptr null, align 4
@.str.37 = private unnamed_addr constant [15 x i8] c"ext4_free_data\00", align 1
@__func__.ext4_mb_mark_bb = private unnamed_addr constant [16 x i8] c"ext4_mb_mark_bb\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"uh-oh! used pa while discarding\00", align 1
@__func__.ext4_discard_preallocations = private unnamed_addr constant [28 x i8] c"ext4_discard_preallocations\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"Error %d loading buddy information for %u\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"Error %d reading block bitmap for %u\00", align 1
@discard_pa_seq = internal global i64 0, section ".data..percpu", align 8
@__func__.ext4_free_blocks = private unnamed_addr constant [17 x i8] c"ext4_free_blocks\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"Freeing blocks not in datazone - block = %llu, count = %lu\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"Freeing blocks in system zone - Block = %llu, count = %lu\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.44 = private unnamed_addr constant [62 x i8] c"discard request in group:%d block:%d count:%lu failed with %d\00", align 1
@__func__.ext4_group_add_blocks = private unnamed_addr constant [22 x i8] c"ext4_group_add_blocks\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"too many blocks added to group %u\00", align 1
@.str.46 = private unnamed_addr constant [58 x i8] c"Adding blocks in system zones - Block = %llu, count = %lu\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"bit already cleared for block %llu\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__tracepoint_ext4_mb_buddy_bitmap_load = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.ext4_mb_generate_buddy = private unnamed_addr constant [23 x i8] c"ext4_mb_generate_buddy\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"block bitmap and bg descriptor inconsistent: %u vs %u free clusters\00", align 1
@__tracepoint_ext4_mb_bitmap_load = external dso_local global %struct.tracepoint, align 4
@.str.51 = private unnamed_addr constant [115 x i8] c"#group: free  frags first [ 2^0   2^1   2^2   2^3   2^4   2^5   2^6   2^7   2^8   2^9   2^10  2^11  2^12  2^13  ]\0A\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"#%-5u: I/O error\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"#%-5u: %-5u %-5u %-5u [\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c" %-5u\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"fragment_size_tree:\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"\09tree_min: 0\0A\09tree_max: 0\0A\09tree_nodes: 0\0A\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"\09tree_min: %u\0A\09tree_max: %u\0A\09tree_nodes: %u\0A\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"optimize_scan: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"max_free_order_lists:\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"\09list_order_%u_groups: %u\0A\00", align 1
@ext4_groupinfo_caches = internal unnamed_addr global [8 x ptr] zeroinitializer, align 4
@ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex, i64 12), ptr getelementptr (i8, ptr @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex, i64 12) } }, align 4
@ext4_groupinfo_slab_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], align 4
@.str.62 = private unnamed_addr constant [47 x i8] c"\010EXT4-fs: no memory for groupinfo slab cache\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"ext4_groupinfo_1k\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"ext4_groupinfo_2k\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"ext4_groupinfo_4k\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"ext4_groupinfo_8k\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"ext4_groupinfo_16k\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"ext4_groupinfo_32k\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"ext4_groupinfo_64k\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"ext4_groupinfo_128k\00", align 1
@__tracepoint_ext4_trim_extent = external dso_local global %struct.tracepoint, align 4
@.str.71 = private unnamed_addr constant [20 x i8] c"can't get new inode\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"can't read descriptor %u\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"too many log groups per flexible block group\00", align 1
@__tracepoint_ext4_discard_preallocations = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_mb_mark_pa_deleted = private unnamed_addr constant [24 x i8] c"ext4_mb_mark_pa_deleted\00", align 1
@.str.74 = private unnamed_addr constant [49 x i8] c"deleted pa, type:%d, pblk:%llu, lblk:%u, len:%d\0A\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\012\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"pa %p: logic %lu, phys. %lu, len %d\00", align 1
@__func__.ext4_mb_release_inode_pa = private unnamed_addr constant [25 x i8] c"ext4_mb_release_inode_pa\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"free %u, pa_free %u\00", align 1
@__tracepoint_ext4_mballoc_discard = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_mb_release_inode_pa = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_request_blocks = external dso_local global %struct.tracepoint, align 4
@.str.78 = private unnamed_addr constant [36 x i8] c"start %lu, size %lu, fe_logical %lu\00", align 1
@__func__.mb_find_extent = private unnamed_addr constant [15 x i8] c"mb_find_extent\00", align 1
@.str.79 = private unnamed_addr constant [80 x i8] c"corruption or bug in mb_find_extent block=%d, order=%d needed=%d ex=%u/%d/%d@%u\00", align 1
@__tracepoint_ext4_mb_new_group_pa = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_mb_new_inode_pa = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_mb_simple_scan_group = private unnamed_addr constant [26 x i8] c"ext4_mb_simple_scan_group\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"%d free clusters of order %d. But found 0\00", align 1
@__func__.ext4_mb_complex_scan_group = private unnamed_addr constant [27 x i8] c"ext4_mb_complex_scan_group\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"%d free clusters as per group info. But bitmap says 0\00", align 1
@.str.82 = private unnamed_addr constant [54 x i8] c"%d free clusters as per group info. But got %d blocks\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"mb_load_buddy failed (%d)\00", align 1
@__func__.ext4_mb_mark_diskspace_used = private unnamed_addr constant [28 x i8] c"ext4_mb_mark_diskspace_used\00", align 1
@.str.84 = private unnamed_addr constant [54 x i8] c"Allocating blocks %llu-%llu which overlap fs metadata\00", align 1
@__tracepoint_ext4_mb_discard_preallocations = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_mb_discard_group_preallocations = private unnamed_addr constant [37 x i8] c"ext4_mb_discard_group_preallocations\00", align 1
@__tracepoint_ext4_mb_release_group_pa = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_mb_discard_lg_preallocations = private unnamed_addr constant [34 x i8] c"ext4_mb_discard_lg_preallocations\00", align 1
@__tracepoint_ext4_mballoc_alloc = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_mballoc_prealloc = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_allocate_blocks = external dso_local global %struct.tracepoint, align 4
@.str.85 = private unnamed_addr constant [31 x i8] c"\014Failed to read block bitmap\0A\00", align 1
@__func__.ext4_free_blocks_simple = private unnamed_addr constant [24 x i8] c"ext4_free_blocks_simple\00", align 1
@__tracepoint_ext4_free_blocks = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_mballoc_free = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_mb_free_metadata = private unnamed_addr constant [22 x i8] c"ext4_mb_free_metadata\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"Block already on to-be-freed list\00", align 1
@__tracepoint_ext4_discard_blocks = external dso_local global %struct.tracepoint, align 4
@__func__.mb_free_blocks = private unnamed_addr constant [15 x i8] c"mb_free_blocks\00", align 1
@.str.87 = private unnamed_addr constant [60 x i8] c"freeing already freed block (bit %u); block bitmap corrupt.\00", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__func__.ext4_trim_all_free = private unnamed_addr constant [19 x i8] c"ext4_trim_all_free\00", align 1
@__tracepoint_ext4_trim_all_free = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_set_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, %1
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i32
  %8 = shl i32 %7, 3
  %9 = and i32 %8, 24
  %10 = and i32 %7, -4
  %11 = inttoptr i32 %10 to ptr
  br label %12

12:                                               ; preds = %22, %6
  %13 = phi i32 [ %1, %6 ], [ %24, %22 ]
  %14 = and i32 %13, 31
  %15 = icmp eq i32 %14, 0
  %16 = sub i32 %4, %13
  %17 = icmp sgt i32 %16, 31
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = ashr i32 %13, 3
  %21 = getelementptr i8, ptr %0, i32 %20
  store i32 -1, ptr %21, align 4
  br label %22

22:                                               ; preds = %26, %19
  %23 = phi i32 [ 32, %19 ], [ 1, %26 ]
  %24 = add i32 %13, %23
  %25 = icmp sgt i32 %4, %24
  br i1 %25, label %12, label %34

26:                                               ; preds = %12
  %27 = add i32 %13, %9
  %28 = and i32 %27, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %27, 5
  %31 = getelementptr i32, ptr %11, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, ptr %31, align 4
  br label %22

34:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mb_prefetch(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.blk_plug, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  call void @blk_start_plug(ptr noundef nonnull %5) #17
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %103, label %11

11:                                               ; preds = %4
  %12 = icmp ne ptr %3, null
  br label %13

13:                                               ; preds = %98, %11
  %14 = phi i32 [ %2, %11 ], [ %16, %98 ]
  %15 = phi i32 [ %1, %11 ], [ %101, %98 ]
  %16 = add i32 %14, -1
  %17 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %15, ptr noundef null) #17
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 8
  %20 = load i32, ptr %19, align 32
  %21 = icmp ugt i32 %20, %15
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %13
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 28
  %25 = load i32, ptr %24, align 64
  %26 = lshr i32 %15, %25
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = and i32 %29, %15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 58
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr ptr, ptr %33, i32 %26
  %35 = load ptr, ptr %34, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %36 = getelementptr ptr, ptr %35, i32 %30
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %37) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %23
  %41 = load volatile i32, ptr %37, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %98, label %44

44:                                               ; preds = %40
  %45 = call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef %17) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %98, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ext4_super_block, ptr %50, i32 0, i32 30
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %47
  %56 = and i32 %52, 1024
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 119
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  %62 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %76, !prof !15

65:                                               ; preds = %58
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 3289, i32 noundef 9, ptr noundef null) #17
  %66 = load ptr, ptr %6, align 4
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 15
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ext4_super_block, ptr %68, i32 0, i32 30
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 119
  %75 = load ptr, ptr %74, align 8
  br label %76

76:                                               ; preds = %73, %58
  %77 = phi ptr [ %75, %73 ], [ %60, %58 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %76, %47
  %80 = getelementptr inbounds %struct.ext4_group_desc, ptr %17, i32 0, i32 6
  %81 = load i16, ptr %80, align 2
  %82 = and i16 %81, 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %79, %76, %65, %55
  %85 = call ptr @ext4_read_block_bitmap_nowait(ptr noundef %0, i32 noundef %15, i1 noundef zeroext true) #17
  %86 = icmp eq ptr %85, null
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  %88 = or i1 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = load volatile i32, ptr %85, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  %93 = and i1 %12, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, ptr %3, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %3, align 4
  br label %97

97:                                               ; preds = %94, %89
  call void @__brelse(ptr noundef nonnull %85) #17
  br label %98

98:                                               ; preds = %97, %84, %79, %44, %40, %23
  %99 = add nuw i32 %15, 1
  %100 = icmp ult i32 %99, %9
  %101 = select i1 %100, i32 %99, i32 0
  %102 = icmp eq i32 %16, 0
  br i1 %102, label %103, label %13

103:                                              ; preds = %98, %4
  %104 = phi i32 [ %1, %4 ], [ %101, %98 ]
  call void @blk_finish_plug(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret i32 %104
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_group_clusters(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_group_desc_csum(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 119
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %31, !prof !15

20:                                               ; preds = %13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 3289, i32 noundef 9, ptr noundef null) #17
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 119
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %28, %13
  %32 = phi ptr [ %30, %28 ], [ %15, %13 ]
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %31, %20, %10, %1
  %36 = phi i32 [ 1, %1 ], [ 0, %20 ], [ %34, %31 ], [ 0, %10 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_read_block_bitmap_nowait(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_mb_prefetch_fini(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %105, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %1, ptr noundef null) #17
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 32
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %13, label %12, !prof !11

12:                                               ; preds = %99, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

13:                                               ; preds = %99, %5
  %14 = phi ptr [ %100, %99 ], [ %7, %5 ]
  %15 = phi i32 [ %17, %99 ], [ %2, %5 ]
  %16 = phi i32 [ %28, %99 ], [ %1, %5 ]
  %17 = add i32 %15, -1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 58
  %20 = load volatile ptr, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 8
  %25 = load i32, ptr %24, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  br label %26

26:                                               ; preds = %22, %13
  %27 = phi i32 [ %16, %13 ], [ %25, %22 ]
  %28 = add i32 %27, -1
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 8
  %31 = load i32, ptr %30, align 32
  %32 = icmp ugt i32 %31, %28
  br i1 %32, label %34, label %33, !prof !11

33:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 28
  %36 = load i32, ptr %35, align 64
  %37 = lshr i32 %28, %36
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  %41 = and i32 %40, %28
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 58
  %44 = load volatile ptr, ptr %43, align 4
  %45 = getelementptr ptr, ptr %44, i32 %37
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %47 = getelementptr ptr, ptr %46, i32 %41
  %48 = load ptr, ptr %47, align 4
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %97, label %52

52:                                               ; preds = %34
  %53 = tail call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef %14) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %97, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ext4_super_block, ptr %58, i32 0, i32 30
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %55
  %64 = and i32 %60, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 119
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  %70 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %71 = xor i1 %70, true
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %84, !prof !15

73:                                               ; preds = %66
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 3289, i32 noundef 9, ptr noundef null) #17
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 30
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1024
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 119
  %83 = load ptr, ptr %82, align 8
  br label %84

84:                                               ; preds = %81, %66
  %85 = phi ptr [ %83, %81 ], [ %68, %66 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84, %55
  %88 = getelementptr inbounds %struct.ext4_group_desc, ptr %14, i32 0, i32 6
  %89 = load i16, ptr %88, align 2
  %90 = and i16 %89, 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87, %84, %73, %63
  %93 = tail call fastcc i32 @ext4_mb_init_group(ptr noundef %0, i32 noundef %28, i32 noundef 3136)
  %94 = icmp ne i32 %93, 0
  %95 = icmp eq i32 %17, 0
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %105, label %99

97:                                               ; preds = %87, %52, %34
  %98 = icmp eq i32 %17, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %97, %92
  %100 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %28, ptr noundef null) #17
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr inbounds %struct.ext4_sb_info, ptr %101, i32 0, i32 8
  %103 = load i32, ptr %102, align 32
  %104 = icmp ugt i32 %103, %28
  br i1 %104, label %13, label %12, !prof !11

105:                                              ; preds = %97, %92, %3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_mb_init_group(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 28
  %12 = load i32, ptr %11, align 64
  %13 = lshr i32 %1, %12
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = and i32 %16, %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 58
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr ptr, ptr %20, i32 %13
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %23 = getelementptr ptr, ptr %22, i32 %17
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 59
  %27 = load ptr, ptr %26, align 32
  %28 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 16
  %30 = udiv i32 4096, %29
  %31 = shl i32 %1, 1
  %32 = freeze i32 %30
  %33 = sdiv i32 %31, %32
  %34 = mul i32 %33, %32
  %35 = sub i32 %31, %34
  %36 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 9
  %37 = load ptr, ptr %36, align 8
  %38 = tail call ptr @pagecache_get_page(ptr noundef %37, i32 noundef %33, i32 noundef 7, i32 noundef %2) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %146, label %40

40:                                               ; preds = %10
  %41 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %36, align 8
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %46, label %45, !prof !11

45:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1373, 0\0A.popsection", ""() #17, !srcloc !16
  unreachable

46:                                               ; preds = %40
  %47 = tail call ptr @page_address(ptr noundef nonnull %38) #17
  %48 = load i32, ptr %28, align 16
  %49 = mul i32 %48, %35
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = icmp ult i32 %29, 2049
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = or i32 %31, 1
  %54 = sdiv i32 %53, %30
  %55 = load ptr, ptr %36, align 8
  %56 = tail call ptr @pagecache_get_page(ptr noundef %55, i32 noundef %54, i32 noundef 7, i32 noundef %2) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %108, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %36, align 8
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %64, label %63, !prof !11

63:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1387, 0\0A.popsection", ""() #17, !srcloc !17
  unreachable

64:                                               ; preds = %58, %46
  %65 = phi ptr [ %56, %58 ], [ null, %46 ]
  %66 = load volatile i32, ptr %24, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %108, label %69

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @ext4_mb_init_cache(ptr noundef nonnull %38, ptr noundef null, i32 noundef %2)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !11

77:                                               ; preds = %72
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %72
  %80 = ptrtoint ptr %38 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %88 = icmp eq ptr %65, null
  br i1 %88, label %108, label %89

89:                                               ; preds = %87
  %90 = tail call fastcc i32 @ext4_mb_init_cache(ptr noundef nonnull %65, ptr noundef %50, i32 noundef %2)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97, !prof !11

97:                                               ; preds = %92
  %98 = add i32 %94, -1
  br label %101

99:                                               ; preds = %92
  %100 = ptrtoint ptr %65 to i32
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = inttoptr i32 %102 to ptr
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  br label %108

108:                                              ; preds = %107, %101, %89, %87, %81, %69, %64, %52
  %109 = phi ptr [ null, %52 ], [ null, %87 ], [ %65, %64 ], [ %65, %89 ], [ %65, %69 ], [ %65, %81 ], [ %65, %101 ], [ %65, %107 ]
  %110 = phi i32 [ -12, %52 ], [ 0, %87 ], [ 0, %64 ], [ %90, %89 ], [ %70, %69 ], [ -5, %81 ], [ -5, %101 ], [ 0, %107 ]
  tail call void @unlock_page(ptr noundef nonnull %38) #17
  %111 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115, !prof !11

115:                                              ; preds = %108
  %116 = add i32 %112, -1
  br label %119

117:                                              ; preds = %108
  %118 = ptrtoint ptr %38 to i32
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = inttoptr i32 %120 to ptr
  %122 = getelementptr inbounds %struct.page, ptr %121, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #17, !srcloc !20
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #17, !srcloc !21
  %124 = extractvalue { i32, i32 } %123, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  tail call void @__put_page(ptr noundef %121) #17
  br label %127

127:                                              ; preds = %126, %119
  %128 = icmp eq ptr %109, null
  br i1 %128, label %146, label %129

129:                                              ; preds = %127
  tail call void @unlock_page(ptr noundef nonnull %109) #17
  %130 = getelementptr inbounds %struct.page, ptr %109, i32 0, i32 1
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134, !prof !11

134:                                              ; preds = %129
  %135 = add i32 %131, -1
  br label %138

136:                                              ; preds = %129
  %137 = ptrtoint ptr %109 to i32
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = inttoptr i32 %139 to ptr
  %141 = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #17, !srcloc !20
  %142 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #17, !srcloc !21
  %143 = extractvalue { i32, i32 } %142, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  tail call void @__put_page(ptr noundef %140) #17
  br label %146

146:                                              ; preds = %145, %138, %127, %10
  %147 = phi i32 [ %110, %127 ], [ %110, %138 ], [ %110, %145 ], [ -12, %10 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ext4_mb_seq_groups_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 8
  %15 = load i32, ptr %14, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %3, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i64, ptr %1, align 8
  %20 = trunc i64 %19 to i32
  %21 = add i32 %20, 1
  %22 = inttoptr i32 %21 to ptr
  br label %23

23:                                               ; preds = %18, %5, %2
  %24 = phi ptr [ %22, %18 ], [ null, %5 ], [ null, %2 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ext4_mb_seq_groups_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ext4_mb_seq_groups_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = load i64, ptr %2, align 8
  %11 = add i64 %10, 1
  store i64 %11, ptr %2, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %11, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i64, ptr %2, align 8
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, 1
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %20, %13, %3
  %26 = phi ptr [ %24, %20 ], [ null, %13 ], [ null, %3 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_mb_seq_groups_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.ext4_buddy, align 4
  %4 = alloca %struct.sg, align 4
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !10
  %12 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = tail call i8 @llvm.umin.i8(i8 %13, i8 16)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(152) %4, i8 0, i32 152, i1 false)
  %15 = add i32 %11, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.51) #17
  br label %18

18:                                               ; preds = %17, %2
  %19 = shl nuw nsw i8 %14, 2
  %20 = add nuw i8 %19, 88
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 8
  %25 = load i32, ptr %24, align 32
  %26 = icmp ugt i32 %25, %15
  br i1 %26, label %28, label %27, !prof !11

27:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 28
  %30 = load i32, ptr %29, align 64
  %31 = lshr i32 %15, %30
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = and i32 %34, %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 58
  %38 = load volatile ptr, ptr %37, align 4
  %39 = getelementptr ptr, ptr %38, i32 %31
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %41 = getelementptr ptr, ptr %40, i32 %35
  %42 = load ptr, ptr %41, align 4
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %71, label %46, !prof !11

46:                                               ; preds = %28
  %47 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %10, i32 noundef %15, ptr noundef nonnull %3, i32 noundef 3136) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %15) #17
  br label %164

50:                                               ; preds = %46
  %51 = load ptr, ptr %22, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 8
  %53 = load i32, ptr %52, align 32
  %54 = icmp ugt i32 %53, %15
  br i1 %54, label %56, label %55, !prof !11

55:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 28
  %58 = load i32, ptr %57, align 64
  %59 = lshr i32 %15, %58
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1
  %63 = and i32 %62, %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %64 = load ptr, ptr %22, align 4
  %65 = getelementptr inbounds %struct.ext4_sb_info, ptr %64, i32 0, i32 58
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr ptr, ptr %66, i32 %59
  %68 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %69 = getelementptr ptr, ptr %68, i32 %63
  %70 = load ptr, ptr %69, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %4, ptr noundef align 4 %70, i32 %21, i1 false)
  call fastcc void @ext4_mb_unload_buddy(ptr noundef nonnull %3)
  br label %92

71:                                               ; preds = %28
  %72 = load ptr, ptr %22, align 4
  %73 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 8
  %74 = load i32, ptr %73, align 32
  %75 = icmp ugt i32 %74, %15
  br i1 %75, label %77, label %76, !prof !11

76:                                               ; preds = %71
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 28
  %79 = load i32, ptr %78, align 64
  %80 = lshr i32 %15, %79
  %81 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  %84 = and i32 %83, %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %85 = load ptr, ptr %22, align 4
  %86 = getelementptr inbounds %struct.ext4_sb_info, ptr %85, i32 0, i32 58
  %87 = load volatile ptr, ptr %86, align 4
  %88 = getelementptr ptr, ptr %87, i32 %80
  %89 = load ptr, ptr %88, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %90 = getelementptr ptr, ptr %89, i32 %84
  %91 = load ptr, ptr %90, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %4, ptr noundef align 4 %91, i32 %21, i1 false)
  br label %92

92:                                               ; preds = %77, %56
  %93 = getelementptr inbounds i8, ptr %4, i32 12
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds i8, ptr %4, i32 16
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds i8, ptr %4, i32 8
  %98 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %15, i32 noundef %94, i32 noundef %96, i32 noundef %98) #17
  %99 = getelementptr inbounds i8, ptr %4, i32 80
  %100 = load i32, ptr %99, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %100) #17
  %101 = getelementptr inbounds i8, ptr %4, i32 84
  %102 = load i32, ptr %101, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %102) #17
  %103 = icmp eq i8 %14, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %109

105:                                              ; preds = %92
  %106 = getelementptr inbounds i8, ptr %4, i32 88
  %107 = load i32, ptr %106, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %107) #17
  %108 = icmp eq i8 %14, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %104
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %114

110:                                              ; preds = %105
  %111 = getelementptr inbounds i8, ptr %4, i32 92
  %112 = load i32, ptr %111, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %112) #17
  %113 = icmp ult i8 %14, 3
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %109
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %119

115:                                              ; preds = %110
  %116 = getelementptr inbounds i8, ptr %4, i32 96
  %117 = load i32, ptr %116, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %117) #17
  %118 = icmp eq i8 %14, 3
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %114
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %124

120:                                              ; preds = %115
  %121 = getelementptr inbounds i8, ptr %4, i32 100
  %122 = load i32, ptr %121, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %122) #17
  %123 = icmp ult i8 %14, 5
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %119
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %129

125:                                              ; preds = %120
  %126 = getelementptr inbounds i8, ptr %4, i32 104
  %127 = load i32, ptr %126, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %127) #17
  %128 = icmp eq i8 %14, 5
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %124
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %134

130:                                              ; preds = %125
  %131 = getelementptr inbounds i8, ptr %4, i32 108
  %132 = load i32, ptr %131, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %132) #17
  %133 = icmp ult i8 %14, 7
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %129
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %139

135:                                              ; preds = %130
  %136 = getelementptr inbounds i8, ptr %4, i32 112
  %137 = load i32, ptr %136, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %137) #17
  %138 = icmp eq i8 %14, 7
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %134
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %144

140:                                              ; preds = %135
  %141 = getelementptr inbounds i8, ptr %4, i32 116
  %142 = load i32, ptr %141, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %142) #17
  %143 = icmp ult i8 %14, 9
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %139
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %149

145:                                              ; preds = %140
  %146 = getelementptr inbounds i8, ptr %4, i32 120
  %147 = load i32, ptr %146, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %147) #17
  %148 = icmp eq i8 %14, 9
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %144
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %154

150:                                              ; preds = %145
  %151 = getelementptr inbounds i8, ptr %4, i32 124
  %152 = load i32, ptr %151, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %152) #17
  %153 = icmp ult i8 %14, 11
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %149
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0) #17
  br label %162

155:                                              ; preds = %150
  %156 = getelementptr inbounds i8, ptr %4, i32 128
  %157 = load i32, ptr %156, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %157) #17
  %158 = icmp eq i8 %14, 11
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds i8, ptr %4, i32 132
  %161 = load i32, ptr %160, align 4
  br label %162

162:                                              ; preds = %159, %155, %154
  %163 = phi i32 [ %161, %159 ], [ 0, %155 ], [ 0, %154 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %163) #17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.55) #17
  br label %164

164:                                              ; preds = %162, %49
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_seq_mb_stats_show(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #17
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 78
  %8 = load i32, ptr %7, align 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #17
  br label %67

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 87
  %13 = load volatile i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %13) #17
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 88
  %15 = load volatile i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %15) #17
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 91
  %17 = load volatile i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %17) #17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #17
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 98
  %19 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %18, ptr elementtype(i64) %18) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %19) #17
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 97
  %21 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %20, ptr elementtype(i64) %20) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %21) #17
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 99
  %23 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %22, ptr elementtype(i64) %22) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %23) #17
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 95
  %25 = load volatile i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %25) #17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #17
  %26 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 98, i32 1
  %27 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %26, ptr elementtype(i64) %26) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %27) #17
  %28 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 97, i32 1
  %29 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %28, ptr elementtype(i64) %28) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %29) #17
  %30 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 99, i32 1
  %31 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %30, ptr elementtype(i64) %30) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %31) #17
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 96
  %33 = load volatile i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %33) #17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #17
  %34 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 98, i32 2
  %35 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %34, ptr elementtype(i64) %34) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %35) #17
  %36 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 97, i32 2
  %37 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %36, ptr elementtype(i64) %36) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %37) #17
  %38 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 99, i32 2
  %39 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %38, ptr elementtype(i64) %38) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %39) #17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #17
  %40 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 98, i32 3
  %41 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %40, ptr elementtype(i64) %40) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %41) #17
  %42 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 97, i32 3
  %43 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %42, ptr elementtype(i64) %42) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %43) #17
  %44 = getelementptr %struct.ext4_sb_info, ptr %6, i32 0, i32 99, i32 3
  %45 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %44, ptr elementtype(i64) %44) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %45) #17
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 90
  %47 = load volatile i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %47) #17
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 92
  %49 = load volatile i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %49) #17
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 94
  %51 = load volatile i32, ptr %50, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %51) #17
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 93
  %53 = load volatile i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %53) #17
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 102
  %55 = load volatile i32, ptr %54, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %55) #17
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 100
  %57 = load volatile i32, ptr %56, align 4
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr inbounds %struct.ext4_sb_info, ptr %58, i32 0, i32 8
  %60 = load i32, ptr %59, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %57, i32 noundef %60) #17
  %61 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 101
  %62 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %61, ptr elementtype(i64) %61) #17, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef %62) #17
  %63 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 103
  %64 = load volatile i32, ptr %63, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %64) #17
  %65 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 104
  %66 = load volatile i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %66) #17
  br label %67

67:                                               ; preds = %11, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ext4_mb_seq_structs_summary_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 70
  tail call void @_raw_read_lock(ptr noundef %11) #17
  %12 = load i64, ptr %1, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %12, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = trunc i64 %12 to i32
  %23 = add i32 %22, 1
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %21, %14, %2
  %26 = phi ptr [ %24, %21 ], [ null, %14 ], [ null, %2 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_mb_seq_structs_summary_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #17, !srcloc !20
  %12 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %11) #17, !srcloc !25
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  br label %16

16:                                               ; preds = %15, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @ext4_mb_seq_structs_summary_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #8 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = load i64, ptr %2, align 8
  %11 = add i64 %10, 1
  store i64 %11, ptr %2, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %16, 3
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %11, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = trunc i64 %10 to i32
  %22 = add i32 %21, 2
  %23 = inttoptr i32 %22 to ptr
  br label %24

24:                                               ; preds = %20, %13, %3
  %25 = phi ptr [ %23, %20 ], [ null, %13 ], [ null, %3 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_mb_seq_structs_summary_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %1 to i32
  %12 = add i32 %11, -1
  %13 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 2
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %54, label %18

18:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.56) #17
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 69
  %20 = tail call ptr @rb_first(ptr noundef %19) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.57) #17
  br label %72

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %20, i32 -44
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %20, i32 -48
  %29 = load i32, ptr %28, align 4
  %30 = sdiv i32 %29, %25
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %30, %27 ], [ 0, %23 ]
  %33 = tail call ptr @rb_next(ptr noundef nonnull %20) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %39, %35 ], [ %20, %31 ]
  %37 = phi i32 [ %38, %35 ], [ 1, %31 ]
  %38 = add i32 %37, 1
  %39 = tail call ptr @rb_next(ptr noundef %36) #17
  %40 = tail call ptr @rb_next(ptr noundef %39) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35

42:                                               ; preds = %35, %31
  %43 = phi i32 [ 1, %31 ], [ %38, %35 ]
  %44 = phi ptr [ %20, %31 ], [ %39, %35 ]
  %45 = getelementptr i8, ptr %44, i32 -44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %44, i32 -48
  %50 = load i32, ptr %49, align 4
  %51 = sdiv i32 %50, %46
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i32 [ %51, %48 ], [ 0, %42 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %32, i32 noundef %53, i32 noundef %43) #17
  br label %72

54:                                               ; preds = %2
  %55 = icmp eq i32 %12, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 18
  %58 = load i32, ptr %57, align 16
  %59 = lshr i32 %58, 7
  %60 = and i32 %59, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %60) #17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.60) #17
  br label %61

61:                                               ; preds = %56, %54
  %62 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 71
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr %struct.list_head, ptr %63, i32 %12
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i32 [ 0, %61 ], [ %70, %65 ]
  %67 = phi ptr [ %64, %61 ], [ %68, %65 ]
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %64
  %70 = add i32 %66, 1
  br i1 %69, label %71, label %65

71:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %12, i32 noundef %66) #17
  br label %72

72:                                               ; preds = %71, %52, %22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mb_alloc_groupinfo(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %1, -1
  %8 = add i32 %7, %6
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 28
  %10 = load i32, ptr %9, align 64
  %11 = lshr i32 %8, %10
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 63
  %13 = load i32, ptr %12, align 16
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = shl i32 %11, 2
  %17 = add i32 %16, -1
  %18 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 true) #17, !range !29
  %19 = sub nuw nsw i32 32, %18
  %20 = shl nuw i32 1, %19
  %21 = tail call noalias ptr @kvmalloc_node(i32 noundef %20, i32 noundef 3520, i32 noundef -1) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #17
  br label %34

24:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 58
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %12, align 16
  %30 = shl i32 %29, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %21, ptr nonnull align 4 %26, i32 %30, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  store volatile ptr %21, ptr %25, align 4
  %31 = lshr i32 %20, 2
  store i32 %31, ptr %12, align 16
  tail call void @ext4_kvfree_array_rcu(ptr noundef nonnull %26) #17
  br label %34

32:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  store volatile ptr %21, ptr %25, align 4
  %33 = lshr i32 %20, 2
  store i32 %33, ptr %12, align 16
  br label %34

34:                                               ; preds = %32, %28, %23, %2
  %35 = phi i32 [ -12, %23 ], [ 0, %2 ], [ 0, %32 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_kvfree_array_rcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mb_add_groupinfo(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 28
  %7 = load i32, ptr %6, align 64
  %8 = lshr i32 %1, %7
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, -10
  %13 = getelementptr [8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !15

16:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3078, 0\0A.popsection", ""() #17, !srcloc !31
  unreachable

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = urem i32 %1, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = shl i32 4, %7
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3136) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25) #17
  br label %116

27:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 58
  %29 = load volatile ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 %8
  store ptr %24, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %31

31:                                               ; preds = %27, %17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 58
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr ptr, ptr %33, i32 %8
  %35 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  %40 = and i32 %39, %1
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %14, i32 noundef 3392) #17
  %42 = getelementptr ptr, ptr %35, i32 %40
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26) #17
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = urem i32 %1, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %112, label %116

50:                                               ; preds = %31
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %41) #17
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 30
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = and i32 %55, 1024
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 119
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  %65 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %79, !prof !15

68:                                               ; preds = %61
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 3289, i32 noundef 9, ptr noundef null) #17
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_super_block, ptr %71, i32 0, i32 30
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 119
  %78 = load ptr, ptr %77, align 8
  br label %79

79:                                               ; preds = %76, %61
  %80 = phi ptr [ %78, %76 ], [ %63, %61 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %79, %50
  %83 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 6
  %84 = load i16, ptr %83, align 2
  %85 = and i16 %84, 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = tail call i32 @ext4_free_clusters_after_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #17
  br label %91

89:                                               ; preds = %82, %79, %68, %58
  %90 = tail call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef %2) #17
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %90, %89 ], [ %88, %87 ]
  %93 = load ptr, ptr %42, align 4
  %94 = getelementptr inbounds %struct.ext4_group_info, ptr %93, i32 0, i32 3
  store i32 %92, ptr %94, align 4
  %95 = load ptr, ptr %42, align 4
  %96 = getelementptr inbounds %struct.ext4_group_info, ptr %95, i32 0, i32 7
  store volatile ptr %96, ptr %96, align 4
  %97 = getelementptr inbounds %struct.ext4_group_info, ptr %95, i32 0, i32 7, i32 1
  store ptr %96, ptr %97, align 4
  %98 = load ptr, ptr %42, align 4
  %99 = getelementptr inbounds %struct.ext4_group_info, ptr %98, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %99, ptr noundef nonnull @.str.27, ptr noundef nonnull @ext4_mb_add_groupinfo.__key) #17
  %100 = load ptr, ptr %42, align 4
  %101 = getelementptr inbounds %struct.ext4_group_info, ptr %100, i32 0, i32 1
  store ptr null, ptr %101, align 4
  %102 = load ptr, ptr %42, align 4
  %103 = getelementptr inbounds %struct.ext4_group_info, ptr %102, i32 0, i32 10
  store volatile ptr %103, ptr %103, align 4
  %104 = getelementptr inbounds %struct.ext4_group_info, ptr %102, i32 0, i32 10, i32 1
  store ptr %103, ptr %104, align 4
  %105 = load ptr, ptr %42, align 4
  %106 = getelementptr inbounds %struct.ext4_group_info, ptr %105, i32 0, i32 9
  %107 = ptrtoint ptr %106 to i32
  store i32 %107, ptr %106, align 4
  %108 = load ptr, ptr %42, align 4
  %109 = getelementptr inbounds %struct.ext4_group_info, ptr %108, i32 0, i32 5
  store i32 -1, ptr %109, align 4
  %110 = load ptr, ptr %42, align 4
  %111 = getelementptr inbounds %struct.ext4_group_info, ptr %110, i32 0, i32 6
  store i32 %1, ptr %111, align 4
  br label %116

112:                                              ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %113 = load volatile ptr, ptr %32, align 4
  %114 = getelementptr ptr, ptr %113, i32 %8
  %115 = load ptr, ptr %114, align 4
  tail call void @kfree(ptr noundef %115) #17
  store ptr null, ptr %114, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %116

116:                                              ; preds = %112, %91, %44, %26
  %117 = phi i32 [ 0, %91 ], [ -12, %44 ], [ -12, %112 ], [ -12, %26 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_clusters_after_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mb_init(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 1
  %8 = add nuw nsw i32 %7, 4
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #18
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 61
  store ptr %9, ptr %10, align 8
  %11 = icmp eq ptr %9, null
  br i1 %11, label %328, label %12

12:                                               ; preds = %1
  %13 = load i8, ptr %4, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 2
  %16 = add nuw nsw i32 %15, 8
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #18
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 62
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %328, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 16
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = add i32 %22, -1
  %26 = icmp ugt i32 %25, 131071
  br i1 %26, label %328, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 false) #17, !range !29
  %29 = sub nsw i32 22, %28
  %30 = sub nuw nsw i32 32, %28
  %31 = icmp ult i32 %25, 512
  br i1 %31, label %32, label %34, !prof !15

32:                                               ; preds = %27, %20
  %33 = phi i32 [ %30, %27 ], [ 0, %20 ]
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i32 [ %33, %32 ], [ %30, %27 ]
  %36 = phi i32 [ 0, %32 ], [ %29, %27 ]
  tail call void @mutex_lock(ptr noundef nonnull @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex) #17
  %37 = getelementptr [8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void @mutex_unlock(ptr noundef nonnull @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex) #17
  br label %50

41:                                               ; preds = %34
  %42 = shl nsw i32 %35, 2
  %43 = add nsw i32 %42, 88
  %44 = getelementptr [8 x ptr], ptr @ext4_groupinfo_slab_names, i32 0, i32 %36
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @kmem_cache_create(ptr noundef %45, i32 noundef %43, i32 noundef 0, i32 noundef 131072, ptr noundef null) #17
  store ptr %46, ptr %37, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #19
  br label %328

50:                                               ; preds = %41, %40
  %51 = load i32, ptr %21, align 16
  %52 = shl i32 %51, 3
  %53 = load ptr, ptr %18, align 4
  store i32 %52, ptr %53, align 4
  %54 = load ptr, ptr %10, align 8
  store i16 0, ptr %54, align 2
  %55 = load i8, ptr %4, align 4
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %56, -1
  %58 = shl nuw i32 1, %57
  %59 = load i32, ptr %21, align 16
  %60 = shl i32 %59, 2
  br label %61

61:                                               ; preds = %61, %50
  %62 = phi i32 [ %60, %50 ], [ %73, %61 ]
  %63 = phi i32 [ %58, %50 ], [ %72, %61 ]
  %64 = phi i32 [ 0, %50 ], [ %71, %61 ]
  %65 = phi i32 [ 1, %50 ], [ %74, %61 ]
  %66 = trunc i32 %64 to i16
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr i16, ptr %67, i32 %65
  store i16 %66, ptr %68, align 2
  %69 = load ptr, ptr %18, align 4
  %70 = getelementptr i32, ptr %69, i32 %65
  store i32 %62, ptr %70, align 4
  %71 = add i32 %64, %63
  %72 = lshr i32 %63, 1
  %73 = lshr i32 %62, 1
  %74 = add nuw nsw i32 %65, 1
  %75 = load i8, ptr %4, align 4
  %76 = zext i8 %75 to i32
  %77 = add nuw nsw i32 %76, 2
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %61, label %79

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 69
  store ptr null, ptr %80, align 4
  %81 = load i8, ptr %4, align 4
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 3
  %84 = add nuw nsw i32 %83, 16
  %85 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %84, i32 noundef 3264) #18
  %86 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 71
  store ptr %85, ptr %86, align 4
  %87 = icmp eq ptr %85, null
  br i1 %87, label %328, label %88

88:                                               ; preds = %79
  %89 = load i8, ptr %4, align 4
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 2
  %92 = add nuw nsw i32 %91, 8
  %93 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %92, i32 noundef 3264) #18
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 72
  store ptr %93, ptr %94, align 8
  %95 = icmp eq ptr %93, null
  br i1 %95, label %328, label %96

96:                                               ; preds = %96, %88
  %97 = phi i32 [ %103, %96 ], [ 0, %88 ]
  %98 = load ptr, ptr %86, align 4
  %99 = getelementptr %struct.list_head, ptr %98, i32 %97
  store volatile ptr %99, ptr %99, align 4
  %100 = getelementptr %struct.list_head, ptr %98, i32 %97, i32 1
  store ptr %99, ptr %100, align 4
  %101 = load ptr, ptr %94, align 8
  %102 = getelementptr %struct.rwlock_t, ptr %101, i32 %97
  store i32 0, ptr %102, align 4
  %103 = add nuw nsw i32 %97, 1
  %104 = load i8, ptr %4, align 4
  %105 = zext i8 %104 to i32
  %106 = add nuw nsw i32 %105, 2
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %96, label %108

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 70
  store i32 0, ptr %109, align 32
  %110 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 60
  store i32 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 64
  store i32 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 65
  store volatile ptr %112, ptr %112, align 4
  %113 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 65, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 66
  store volatile ptr %114, ptr %114, align 4
  %115 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 66, i32 1
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 67
  store i32 -32, ptr %116, align 8
  %117 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 67, i32 1
  store volatile ptr %117, ptr %117, align 4
  %118 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 67, i32 1, i32 1
  store ptr %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 67, i32 2
  store ptr @ext4_discard_work, ptr %119, align 4
  %120 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 68
  store volatile i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 76
  store i32 200, ptr %121, align 8
  %122 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 77
  store i32 10, ptr %122, align 4
  %123 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 78
  store i32 0, ptr %123, align 64
  %124 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 75
  store i32 16, ptr %124, align 4
  %125 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 79
  store i32 2, ptr %125, align 4
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 81
  store i32 512, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %128 = load i32, ptr %127, align 16
  %129 = lshr i32 512, %128
  %130 = tail call i32 @llvm.umax.i32(i32 %129, i32 32)
  %131 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 80
  store i32 %130, ptr %131, align 8
  %132 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 73
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, 1
  br i1 %134, label %135, label %140

135:                                              ; preds = %108
  %136 = add i32 %133, -1
  %137 = add i32 %136, %130
  %138 = urem i32 %137, %133
  %139 = sub i32 %137, %138
  store i32 %139, ptr %131, align 8
  br label %140

140:                                              ; preds = %135, %108
  %141 = tail call noalias ptr @__alloc_percpu(i32 noundef 104, i32 noundef 4) #18
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 106
  store ptr %141, ptr %142, align 16
  %143 = icmp eq ptr %141, null
  br i1 %143, label %328, label %144

144:                                              ; preds = %140
  %145 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %146 = load i32, ptr @nr_cpu_ids, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %182

148:                                              ; preds = %180, %144
  %149 = phi ptr [ %181, %180 ], [ %141, %144 ]
  %150 = phi i32 [ %177, %180 ], [ %145, %144 ]
  %151 = ptrtoint ptr %149 to i32
  %152 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %150
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, %151
  %155 = inttoptr i32 %154 to ptr
  tail call void @__mutex_init(ptr noundef %155, ptr noundef nonnull @.str.28, ptr noundef nonnull @ext4_mb_init.__key) #17
  %156 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 0
  store volatile ptr %156, ptr %156, align 4
  %157 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 0, i32 1
  store ptr %156, ptr %157, align 4
  %158 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 1
  store volatile ptr %158, ptr %158, align 4
  %159 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 1, i32 1
  store ptr %158, ptr %159, align 4
  %160 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 2
  store volatile ptr %160, ptr %160, align 4
  %161 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 2, i32 1
  store ptr %160, ptr %161, align 4
  %162 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 3
  store volatile ptr %162, ptr %162, align 4
  %163 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 3, i32 1
  store ptr %162, ptr %163, align 4
  %164 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 4
  store volatile ptr %164, ptr %164, align 4
  %165 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 4, i32 1
  store ptr %164, ptr %165, align 4
  %166 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 5
  store volatile ptr %166, ptr %166, align 4
  %167 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 5, i32 1
  store ptr %166, ptr %167, align 4
  %168 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 6
  store volatile ptr %168, ptr %168, align 4
  %169 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 6, i32 1
  store ptr %168, ptr %169, align 4
  %170 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 7
  store volatile ptr %170, ptr %170, align 4
  %171 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 7, i32 1
  store ptr %170, ptr %171, align 4
  %172 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 8
  store volatile ptr %172, ptr %172, align 4
  %173 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 8, i32 1
  store ptr %172, ptr %173, align 4
  %174 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 9
  store volatile ptr %174, ptr %174, align 4
  %175 = getelementptr %struct.ext4_locality_group, ptr %155, i32 0, i32 1, i32 9, i32 1
  store ptr %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.ext4_locality_group, ptr %155, i32 0, i32 2
  store i32 0, ptr %176, align 4
  %177 = tail call i32 @cpumask_next(i32 noundef %150, ptr noundef nonnull @__cpu_possible_mask) #20
  %178 = load i32, ptr @nr_cpu_ids, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %148
  %181 = load ptr, ptr %142, align 16
  br label %148

182:                                              ; preds = %148, %144
  %183 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.block_device, ptr %184, i32 0, i32 18
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.request_queue, ptr %186, i32 0, i32 11
  %188 = load volatile i32, ptr %187, align 4
  %189 = lshr i32 %188, 4
  %190 = and i32 %189, 4
  %191 = xor i32 %190, 4
  %192 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 74
  store i32 %191, ptr %192, align 16
  %193 = load ptr, ptr %2, align 4
  %194 = getelementptr inbounds %struct.ext4_sb_info, ptr %193, i32 0, i32 8
  %195 = load i32, ptr %194, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %196 = load ptr, ptr %2, align 4
  %197 = tail call i32 @ext4_mb_alloc_groupinfo(ptr noundef %0, i32 noundef %195) #17
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %325

199:                                              ; preds = %182
  %200 = tail call ptr @new_inode(ptr noundef %0) #17
  %201 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 59
  store ptr %200, ptr %201, align 32
  %202 = icmp eq ptr %200, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.71) #17
  br label %322

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.inode, ptr %200, i32 0, i32 10
  store i32 1, ptr %205, align 4
  %206 = load ptr, ptr %201, align 32
  %207 = getelementptr i8, ptr %206, i32 -32
  store i64 0, ptr %207, align 8
  %208 = icmp eq i32 %195, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %218, %204
  %210 = phi i32 [ %219, %218 ], [ 0, %204 ]
  %211 = tail call i32 @__cond_resched() #17
  %212 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %210, ptr noundef null) #17
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.72, i32 noundef %210) #17
  br label %273

215:                                              ; preds = %209
  %216 = tail call i32 @ext4_mb_add_groupinfo(ptr noundef %0, i32 noundef %210, ptr noundef nonnull %212) #17
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %273

218:                                              ; preds = %215
  %219 = add nuw i32 %210, 1
  %220 = icmp eq i32 %219, %195
  br i1 %220, label %221, label %209

221:                                              ; preds = %218, %204
  %222 = load ptr, ptr %2, align 4
  %223 = getelementptr inbounds %struct.ext4_sb_info, ptr %222, i32 0, i32 15
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.ext4_super_block, ptr %224, i32 0, i32 29
  %226 = load i32, ptr %225, align 8
  %227 = and i32 %226, 512
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 15
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.ext4_super_block, ptr %231, i32 0, i32 60
  %233 = load i8, ptr %232, align 4
  %234 = icmp ugt i8 %233, 31
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.73) #17
  br label %273

236:                                              ; preds = %229
  %237 = zext i8 %233 to i32
  %238 = shl nuw i32 1, %237
  %239 = load i8, ptr %4, align 4
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %240, -9
  %242 = lshr i32 65536, %241
  %243 = tail call i32 @llvm.umin.i32(i32 %238, i32 %242) #17
  %244 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 85
  %245 = shl nuw nsw i32 %243, 3
  store i32 %245, ptr %244, align 4
  br label %248

246:                                              ; preds = %221
  %247 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 85
  store i32 32, ptr %247, align 4
  br label %248

248:                                              ; preds = %246, %236
  %249 = phi i32 [ 32, %246 ], [ %245, %236 ]
  %250 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 85
  %251 = load ptr, ptr %2, align 4
  %252 = getelementptr inbounds %struct.ext4_sb_info, ptr %251, i32 0, i32 8
  %253 = load i32, ptr %252, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %254 = icmp ugt i32 %249, %253
  br i1 %254, label %257, label %255

255:                                              ; preds = %248
  %256 = load i32, ptr %250, align 4
  br label %261

257:                                              ; preds = %248
  %258 = load ptr, ptr %2, align 4
  %259 = getelementptr inbounds %struct.ext4_sb_info, ptr %258, i32 0, i32 8
  %260 = load i32, ptr %259, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  store i32 %260, ptr %250, align 4
  br label %261

261:                                              ; preds = %257, %255
  %262 = phi i32 [ %256, %255 ], [ %260, %257 ]
  %263 = shl i32 %262, 2
  %264 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 86
  store i32 %263, ptr %264, align 32
  %265 = load ptr, ptr %2, align 4
  %266 = getelementptr inbounds %struct.ext4_sb_info, ptr %265, i32 0, i32 8
  %267 = load i32, ptr %266, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %268 = icmp ugt i32 %263, %267
  br i1 %268, label %269, label %337

269:                                              ; preds = %261
  %270 = load ptr, ptr %2, align 4
  %271 = getelementptr inbounds %struct.ext4_sb_info, ptr %270, i32 0, i32 8
  %272 = load i32, ptr %271, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  store i32 %272, ptr %264, align 32
  br label %337

273:                                              ; preds = %235, %215, %214
  %274 = phi i32 [ %195, %235 ], [ %210, %214 ], [ %210, %215 ]
  %275 = load i8, ptr %4, align 4
  %276 = zext i8 %275 to i32
  %277 = add nsw i32 %276, -10
  %278 = getelementptr [8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 %277
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %283, label %281, !prof !15

281:                                              ; preds = %273
  %282 = icmp eq i32 %274, 0
  br i1 %282, label %308, label %284

283:                                              ; preds = %273
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3078, 0\0A.popsection", ""() #17, !srcloc !31
  unreachable

284:                                              ; preds = %292, %281
  %285 = phi i32 [ %286, %292 ], [ %274, %281 ]
  %286 = add i32 %285, -1
  %287 = load ptr, ptr %2, align 4
  %288 = getelementptr inbounds %struct.ext4_sb_info, ptr %287, i32 0, i32 8
  %289 = load i32, ptr %288, align 32
  %290 = icmp ugt i32 %289, %286
  br i1 %290, label %292, label %291, !prof !11

291:                                              ; preds = %284
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

292:                                              ; preds = %284
  %293 = getelementptr inbounds %struct.ext4_sb_info, ptr %287, i32 0, i32 28
  %294 = load i32, ptr %293, align 64
  %295 = lshr i32 %286, %294
  %296 = getelementptr inbounds %struct.ext4_sb_info, ptr %287, i32 0, i32 7
  %297 = load i32, ptr %296, align 4
  %298 = add i32 %297, -1
  %299 = and i32 %298, %286
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %300 = load ptr, ptr %2, align 4
  %301 = getelementptr inbounds %struct.ext4_sb_info, ptr %300, i32 0, i32 58
  %302 = load volatile ptr, ptr %301, align 4
  %303 = getelementptr ptr, ptr %302, i32 %295
  %304 = load ptr, ptr %303, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %305 = getelementptr ptr, ptr %304, i32 %299
  %306 = load ptr, ptr %305, align 4
  tail call void @kmem_cache_free(ptr noundef nonnull %279, ptr noundef %306) #17
  %307 = icmp eq i32 %286, 0
  br i1 %307, label %308, label %284

308:                                              ; preds = %292, %281
  %309 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 63
  %310 = load i32, ptr %309, align 16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %311 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 58
  %312 = load volatile ptr, ptr %311, align 4
  %313 = icmp eq i32 %310, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %314, %308
  %315 = phi i32 [ %316, %314 ], [ %310, %308 ]
  %316 = add i32 %315, -1
  %317 = getelementptr ptr, ptr %312, i32 %316
  %318 = load ptr, ptr %317, align 4
  tail call void @kfree(ptr noundef %318) #17
  %319 = icmp eq i32 %316, 0
  br i1 %319, label %320, label %314

320:                                              ; preds = %314, %308
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %321 = load ptr, ptr %201, align 32
  tail call void @iput(ptr noundef %321) #17
  br label %322

322:                                              ; preds = %320, %203
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %323 = getelementptr inbounds %struct.ext4_sb_info, ptr %196, i32 0, i32 58
  %324 = load volatile ptr, ptr %323, align 4
  tail call void @kvfree(ptr noundef %324) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %325

325:                                              ; preds = %322, %182
  %326 = phi i32 [ -12, %322 ], [ %197, %182 ]
  %327 = load ptr, ptr %142, align 16
  tail call void @free_percpu(ptr noundef %327) #17
  store ptr null, ptr %142, align 16
  br label %328

328:                                              ; preds = %325, %140, %88, %79, %48, %24, %12, %1
  %329 = phi i32 [ %326, %325 ], [ -12, %1 ], [ -12, %12 ], [ -12, %79 ], [ -12, %88 ], [ -12, %140 ], [ -22, %24 ], [ -12, %48 ]
  %330 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 71
  %331 = load ptr, ptr %330, align 4
  tail call void @kfree(ptr noundef %331) #17
  %332 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 72
  %333 = load ptr, ptr %332, align 8
  tail call void @kfree(ptr noundef %333) #17
  %334 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %334) #17
  store ptr null, ptr %10, align 8
  %335 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 62
  %336 = load ptr, ptr %335, align 4
  tail call void @kfree(ptr noundef %336) #17
  store ptr null, ptr %335, align 4
  br label %337

337:                                              ; preds = %328, %269, %261
  %338 = phi i32 [ %329, %328 ], [ 0, %269 ], [ 0, %261 ]
  ret i32 %338
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_discard_work(ptr noundef %0) #2 {
  %2 = alloca %struct.ext4_buddy, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr i8, ptr %0, i32 -124
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store volatile ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 -36
  call void @_raw_spin_lock(ptr noundef %7) #17
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  store ptr %9, ptr %3, align 8
  store ptr %12, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %13, align 4
  br label %17

17:                                               ; preds = %11, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %18 = load i16, ptr %7, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %20 = load ptr, ptr %3, align 8
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %173, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %24 = getelementptr i8, ptr %0, i32 16
  %25 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 2
  %26 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  br label %27

27:                                               ; preds = %125, %22
  %28 = phi ptr [ %20, %22 ], [ %31, %125 ]
  %29 = phi i32 [ -1, %22 ], [ %127, %125 ]
  %30 = phi i32 [ 0, %22 ], [ %126, %125 ]
  %31 = load ptr, ptr %28, align 4
  %32 = load i32, ptr %23, align 4
  %33 = and i32 %32, 1073741824
  %34 = icmp eq i32 %33, 0
  %35 = icmp ne i32 %30, 0
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %125, label %37

37:                                               ; preds = %27
  %38 = load volatile i32, ptr %24, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %125

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ext4_free_data, ptr %28, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %29
  br i1 %43, label %89, label %44

44:                                               ; preds = %40
  %45 = icmp eq i32 %29, -1
  br i1 %45, label %86, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %25, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54, !prof !11

54:                                               ; preds = %49
  %55 = add i32 %51, -1
  br label %58

56:                                               ; preds = %49
  %57 = ptrtoint ptr %47 to i32
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = inttoptr i32 %59 to ptr
  %61 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #17, !srcloc !20
  %62 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #17, !srcloc !21
  %63 = extractvalue { i32, i32 } %62, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  call void @__put_page(ptr noundef %60) #17
  br label %66

66:                                               ; preds = %65, %58, %46
  %67 = load ptr, ptr %2, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %86, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !11

74:                                               ; preds = %69
  %75 = add i32 %71, -1
  br label %78

76:                                               ; preds = %69
  %77 = ptrtoint ptr %67 to i32
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #17, !srcloc !20
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #17, !srcloc !21
  %83 = extractvalue { i32, i32 } %82, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  call void @__put_page(ptr noundef %80) #17
  br label %86

86:                                               ; preds = %85, %78, %66, %44
  %87 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %5, i32 noundef %42, ptr noundef nonnull %2, i32 noundef 3136) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %86, %40
  %90 = phi i32 [ %29, %40 ], [ %42, %86 ]
  %91 = load ptr, ptr %26, align 4
  %92 = getelementptr inbounds %struct.ext4_sb_info, ptr %91, i32 0, i32 41
  %93 = load ptr, ptr %92, align 16
  %94 = and i32 %42, 63
  %95 = getelementptr [64 x %struct.bgl_lock], ptr %93, i32 0, i32 %94
  %96 = call i32 @_raw_spin_trylock(ptr noundef %95) #17
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %26, align 4
  %99 = getelementptr inbounds %struct.ext4_sb_info, ptr %98, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #17
  br i1 %97, label %105, label %100

100:                                              ; preds = %89
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 0, i32 -1, ptr elementtype(i32) %99) #17, !srcloc !34
  %102 = extractvalue { i32, i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %111

105:                                              ; preds = %89
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 8, i32 1, ptr elementtype(i32) %99) #17, !srcloc !34
  %107 = extractvalue { i32, i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 8
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %110

110:                                              ; preds = %109, %105
  call void @_raw_spin_lock(ptr noundef %95) #17
  br label %111

111:                                              ; preds = %110, %104, %100
  %112 = getelementptr inbounds %struct.ext4_free_data, ptr %28, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.ext4_free_data, ptr %28, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %113, -1
  %117 = add i32 %116, %115
  %118 = call fastcc i32 @ext4_try_to_trim_range(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %113, i32 noundef %117, i32 noundef 1)
  %119 = load ptr, ptr %26, align 4
  %120 = getelementptr inbounds %struct.ext4_sb_info, ptr %119, i32 0, i32 41
  %121 = load ptr, ptr %120, align 16
  %122 = getelementptr [64 x %struct.bgl_lock], ptr %121, i32 0, i32 %94
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %123 = load i16, ptr %122, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %125

125:                                              ; preds = %111, %86, %37, %27
  %126 = phi i32 [ %87, %86 ], [ %30, %27 ], [ 0, %37 ], [ 0, %111 ]
  %127 = phi i32 [ -1, %86 ], [ %29, %27 ], [ %29, %37 ], [ %90, %111 ]
  %128 = load ptr, ptr @ext4_free_data_cachep, align 4
  call void @kmem_cache_free(ptr noundef %128, ptr noundef %28) #17
  %129 = icmp eq ptr %31, %3
  br i1 %129, label %130, label %27

130:                                              ; preds = %125
  %131 = icmp eq i32 %127, -1
  br i1 %131, label %173, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %153, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.page, ptr %134, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141, !prof !11

141:                                              ; preds = %136
  %142 = add i32 %138, -1
  br label %145

143:                                              ; preds = %136
  %144 = ptrtoint ptr %134 to i32
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.page, ptr %147, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #17, !srcloc !20
  %149 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #17, !srcloc !21
  %150 = extractvalue { i32, i32 } %149, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  call void @__put_page(ptr noundef %147) #17
  br label %153

153:                                              ; preds = %152, %145, %132
  %154 = load ptr, ptr %2, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %173, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.page, ptr %154, i32 0, i32 1
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161, !prof !11

161:                                              ; preds = %156
  %162 = add i32 %158, -1
  br label %165

163:                                              ; preds = %156
  %164 = ptrtoint ptr %154 to i32
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = inttoptr i32 %166 to ptr
  %168 = getelementptr inbounds %struct.page, ptr %167, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #17, !srcloc !20
  %169 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #17, !srcloc !21
  %170 = extractvalue { i32, i32 } %169, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  call void @__put_page(ptr noundef %167) #17
  br label %173

173:                                              ; preds = %172, %165, %153, %130, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mb_release(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -10
  %11 = getelementptr [8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !15

14:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3078, 0\0A.popsection", ""() #17, !srcloc !31
  unreachable

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 67
  %22 = tail call zeroext i1 @flush_work(ptr noundef %21) #17
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 66
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp ne ptr %24, %23
  %26 = load i1, ptr @ext4_mb_release.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !15

29:                                               ; preds = %20
  store i1 true, ptr @ext4_mb_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 3556, i32 noundef 9, ptr noundef null) #17
  br label %30

30:                                               ; preds = %29, %20, %15
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 58
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %119, label %34

34:                                               ; preds = %30
  %35 = icmp eq i32 %5, 0
  br i1 %35, label %101, label %36

36:                                               ; preds = %92, %34
  %37 = phi i32 [ %99, %92 ], [ 0, %34 ]
  %38 = tail call i32 @__cond_resched() #17
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 8
  %41 = load i32, ptr %40, align 32
  %42 = icmp ugt i32 %41, %37
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 28
  %46 = load i32, ptr %45, align 64
  %47 = lshr i32 %37, %46
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  %51 = and i32 %50, %37
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 58
  %54 = load volatile ptr, ptr %53, align 4
  %55 = getelementptr ptr, ptr %54, i32 %47
  %56 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %57 = getelementptr ptr, ptr %56, i32 %51
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %59, i32 0, i32 41
  %61 = load ptr, ptr %60, align 16
  %62 = and i32 %37, 63
  %63 = getelementptr [64 x %struct.bgl_lock], ptr %61, i32 0, i32 %62
  %64 = tail call i32 @_raw_spin_trylock(ptr noundef %63) #17
  %65 = icmp eq i32 %64, 0
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #17
  br i1 %65, label %73, label %68

68:                                               ; preds = %44
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 0, i32 -1, ptr elementtype(i32) %67) #17, !srcloc !34
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %79

73:                                               ; preds = %44
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 8, i32 1, ptr elementtype(i32) %67) #17, !srcloc !34
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %78

78:                                               ; preds = %77, %73
  tail call void @_raw_spin_lock(ptr noundef %63) #17
  br label %79

79:                                               ; preds = %78, %72, %68
  %80 = getelementptr inbounds %struct.ext4_group_info, ptr %58, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %92, label %83

83:                                               ; preds = %83, %79
  %84 = phi ptr [ %85, %83 ], [ %81, %79 ]
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %84, i32 -8
  %87 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %88, ptr %89, align 4
  store volatile ptr %85, ptr %88, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %87, align 4
  %90 = load ptr, ptr @ext4_pspace_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %90, ptr noundef %86) #17
  %91 = icmp eq ptr %85, %80
  br i1 %91, label %92, label %83

92:                                               ; preds = %83, %79
  %93 = load ptr, ptr %2, align 4
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %93, i32 0, i32 41
  %95 = load ptr, ptr %94, align 16
  %96 = getelementptr [64 x %struct.bgl_lock], ptr %95, i32 0, i32 %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %97 = load i16, ptr %96, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %96, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  tail call void @kmem_cache_free(ptr noundef nonnull %12, ptr noundef %58) #17
  %99 = add nuw i32 %37, 1
  %100 = icmp eq i32 %99, %5
  br i1 %100, label %101, label %36

101:                                              ; preds = %92, %34
  %102 = load ptr, ptr %2, align 4
  %103 = getelementptr inbounds %struct.ext4_sb_info, ptr %102, i32 0, i32 7
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %5, -1
  %106 = add i32 %105, %104
  %107 = getelementptr inbounds %struct.ext4_sb_info, ptr %102, i32 0, i32 28
  %108 = load i32, ptr %107, align 64
  %109 = lshr i32 %106, %108
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %110 = load volatile ptr, ptr %31, align 4
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %112, %101
  %113 = phi i32 [ %116, %112 ], [ 0, %101 ]
  %114 = getelementptr ptr, ptr %110, i32 %113
  %115 = load ptr, ptr %114, align 4
  tail call void @kfree(ptr noundef %115) #17
  %116 = add nuw i32 %113, 1
  %117 = icmp eq i32 %116, %109
  br i1 %117, label %118, label %112

118:                                              ; preds = %112, %101
  tail call void @kvfree(ptr noundef %110) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %119

119:                                              ; preds = %118, %30
  %120 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 71
  %121 = load ptr, ptr %120, align 4
  tail call void @kfree(ptr noundef %121) #17
  %122 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 72
  %123 = load ptr, ptr %122, align 8
  tail call void @kfree(ptr noundef %123) #17
  %124 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 61
  %125 = load ptr, ptr %124, align 8
  tail call void @kfree(ptr noundef %125) #17
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 62
  %127 = load ptr, ptr %126, align 4
  tail call void @kfree(ptr noundef %127) #17
  %128 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 59
  %129 = load ptr, ptr %128, align 32
  tail call void @iput(ptr noundef %129) #17
  %130 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 78
  %131 = load i32, ptr %130, align 64
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %160, label %133

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 89
  %135 = load volatile i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 87
  %137 = load volatile i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 88
  %139 = load volatile i32, ptr %138, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %135, i32 noundef %137, i32 noundef %139) #17
  %140 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 90
  %141 = load volatile i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 91
  %143 = load volatile i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 92
  %145 = load volatile i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 94
  %147 = load volatile i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 93
  %149 = load volatile i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 102
  %151 = load volatile i32, ptr %150, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32, i32 noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef %147, i32 noundef %149, i32 noundef %151) #17
  %152 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 100
  %153 = load volatile i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 101
  %155 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %154, ptr elementtype(i64) %154) #17, !srcloc !23
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.33, i32 noundef %153, i64 noundef %155) #17
  %156 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 103
  %157 = load volatile i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 104
  %159 = load volatile i32, ptr %158, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.34, i32 noundef %157, i32 noundef %159) #17
  br label %160

160:                                              ; preds = %133, %119
  %161 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 106
  %162 = load ptr, ptr %161, align 16
  tail call void @free_percpu(ptr noundef %162) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_lock_group(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 41
  %6 = load ptr, ptr %5, align 16
  %7 = and i32 %1, 63
  %8 = getelementptr [64 x %struct.bgl_lock], ptr %6, i32 0, i32 %7
  %9 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #17
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17
  br i1 %10, label %18, label %13

13:                                               ; preds = %2
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #17, !srcloc !34
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %24

18:                                               ; preds = %2
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 8, i32 1, ptr elementtype(i32) %12) #17, !srcloc !34
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %23

23:                                               ; preds = %22, %18
  tail call void @_raw_spin_lock(ptr noundef %8) #17
  br label %24

24:                                               ; preds = %23, %17, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_process_freed_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ext4_buddy, align 4
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store volatile ptr %4, ptr %4, align 8
  store ptr %4, ptr %5, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %8) #17
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 65
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ext4_free_data, ptr %10, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %24

16:                                               ; preds = %20, %12
  %17 = phi ptr [ %18, %20 ], [ %10, %12 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %9
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ext4_free_data, ptr %18, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %16, label %24

24:                                               ; preds = %20, %16, %12
  %25 = phi ptr [ null, %12 ], [ %17, %16 ], [ %17, %20 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  %28 = load volatile ptr, ptr %9, align 4
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %51, label %30

30:                                               ; preds = %27
  %31 = load volatile ptr, ptr %9, align 4
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 65, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = icmp eq ptr %25, %9
  %39 = icmp eq ptr %31, %25
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37, %33, %30
  %42 = icmp eq ptr %25, %9
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  store volatile ptr %4, ptr %4, align 8
  br label %48

44:                                               ; preds = %41
  %45 = load ptr, ptr %25, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %31, ptr %4, align 8
  %47 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %4, ptr %47, align 4
  store ptr %25, ptr %5, align 4
  store ptr %4, ptr %25, align 4
  store ptr %45, ptr %9, align 4
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi ptr [ %9, %44 ], [ %4, %43 ]
  %50 = phi ptr [ %46, %44 ], [ %5, %43 ]
  store ptr %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %48, %37, %27, %24, %2
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %52 = load i16, ptr %8, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %54 = load ptr, ptr %4, align 8
  %55 = icmp eq ptr %54, %4
  br i1 %55, label %205, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ext4_buddy, ptr %3, i32 0, i32 4
  %58 = getelementptr inbounds %struct.ext4_buddy, ptr %3, i32 0, i32 2
  br label %59

59:                                               ; preds = %202, %56
  %60 = phi ptr [ %54, %56 ], [ %203, %202 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #17, !annotation !10
  %61 = getelementptr inbounds %struct.ext4_free_data, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %62, ptr noundef nonnull %3, i32 noundef 3136) #17
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65, !prof !11

65:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3649, 0\0A.popsection", ""() #17, !srcloc !36
  unreachable

66:                                               ; preds = %59
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %68) #17
  %69 = getelementptr inbounds %struct.ext4_free_data, ptr %60, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 64
  %73 = load i32, ptr %72, align 4
  %74 = sub i32 %73, %70
  store i32 %74, ptr %72, align 4
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 60
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %77 = load i16, ptr %76, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %76, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %79 = load ptr, ptr %57, align 4
  %80 = load i32, ptr %61, align 4
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr inbounds %struct.ext4_sb_info, ptr %81, i32 0, i32 41
  %83 = load ptr, ptr %82, align 16
  %84 = and i32 %80, 63
  %85 = getelementptr [64 x %struct.bgl_lock], ptr %83, i32 0, i32 %84
  %86 = call i32 @_raw_spin_trylock(ptr noundef %85) #17
  %87 = icmp eq i32 %86, 0
  %88 = load ptr, ptr %6, align 4
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #17
  br i1 %87, label %95, label %90

90:                                               ; preds = %66
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 0, i32 -1, ptr elementtype(i32) %89) #17, !srcloc !34
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %101

95:                                               ; preds = %66
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 8, i32 1, ptr elementtype(i32) %89) #17, !srcloc !34
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %100

100:                                              ; preds = %99, %95
  call void @_raw_spin_lock(ptr noundef %85) #17
  br label %101

101:                                              ; preds = %100, %94, %90
  %102 = getelementptr inbounds %struct.ext4_free_data, ptr %60, i32 0, i32 1
  %103 = getelementptr inbounds %struct.ext4_group_info, ptr %79, i32 0, i32 1
  call void @rb_erase(ptr noundef %102, ptr noundef %103) #17
  %104 = getelementptr inbounds %struct.ext4_free_data, ptr %60, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = load i32, ptr %69, align 4
  call fastcc void @mb_free_blocks(ptr noundef null, ptr noundef nonnull %3, i32 noundef %105, i32 noundef %106) #17
  %107 = load ptr, ptr %6, align 4
  %108 = getelementptr inbounds %struct.ext4_sb_info, ptr %107, i32 0, i32 17
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 1073741824
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  call void @_clear_bit(i32 noundef 1, ptr noundef %79) #17
  br label %113

113:                                              ; preds = %112, %101
  %114 = load ptr, ptr %103, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %58, align 4
  br label %154

118:                                              ; preds = %113
  %119 = load ptr, ptr %3, align 4
  %120 = getelementptr inbounds %struct.page, ptr %119, i32 0, i32 1
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124, !prof !11

124:                                              ; preds = %118
  %125 = add i32 %121, -1
  br label %128

126:                                              ; preds = %118
  %127 = ptrtoint ptr %119 to i32
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = inttoptr i32 %129 to ptr
  %131 = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #17, !srcloc !20
  %132 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #17, !srcloc !21
  %133 = extractvalue { i32, i32 } %132, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  call void @__put_page(ptr noundef %130) #17
  br label %136

136:                                              ; preds = %135, %128
  %137 = load ptr, ptr %58, align 4
  %138 = getelementptr inbounds %struct.page, ptr %137, i32 0, i32 1
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142, !prof !11

142:                                              ; preds = %136
  %143 = add i32 %139, -1
  br label %146

144:                                              ; preds = %136
  %145 = ptrtoint ptr %137 to i32
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = inttoptr i32 %147 to ptr
  %149 = getelementptr inbounds %struct.page, ptr %148, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #17, !srcloc !20
  %150 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 1, ptr elementtype(i32) %149) #17, !srcloc !21
  %151 = extractvalue { i32, i32 } %150, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  call void @__put_page(ptr noundef %148) #17
  br label %154

154:                                              ; preds = %153, %146, %116
  %155 = phi ptr [ %117, %116 ], [ %137, %153 ], [ %137, %146 ]
  %156 = load i32, ptr %61, align 4
  %157 = load ptr, ptr %6, align 4
  %158 = getelementptr inbounds %struct.ext4_sb_info, ptr %157, i32 0, i32 41
  %159 = load ptr, ptr %158, align 16
  %160 = and i32 %156, 63
  %161 = getelementptr [64 x %struct.bgl_lock], ptr %159, i32 0, i32 %160
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %162 = load i16, ptr %161, align 4
  %163 = add i16 %162, 1
  store i16 %163, ptr %161, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %164 = icmp eq ptr %155, null
  br i1 %164, label %182, label %165

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.page, ptr %155, i32 0, i32 1
  %167 = load volatile i32, ptr %166, align 4
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170, !prof !11

170:                                              ; preds = %165
  %171 = add i32 %167, -1
  br label %174

172:                                              ; preds = %165
  %173 = ptrtoint ptr %155 to i32
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  %176 = inttoptr i32 %175 to ptr
  %177 = getelementptr inbounds %struct.page, ptr %176, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %177) #17, !srcloc !20
  %178 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %177, ptr %177, i32 1, ptr elementtype(i32) %177) #17, !srcloc !21
  %179 = extractvalue { i32, i32 } %178, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  call void @__put_page(ptr noundef %176) #17
  br label %182

182:                                              ; preds = %181, %174, %154
  %183 = load ptr, ptr %3, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %202, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.page, ptr %183, i32 0, i32 1
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190, !prof !11

190:                                              ; preds = %185
  %191 = add i32 %187, -1
  br label %194

192:                                              ; preds = %185
  %193 = ptrtoint ptr %183 to i32
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = inttoptr i32 %195 to ptr
  %197 = getelementptr inbounds %struct.page, ptr %196, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %197) #17, !srcloc !20
  %198 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %197, ptr %197, i32 1, ptr elementtype(i32) %197) #17, !srcloc !21
  %199 = extractvalue { i32, i32 } %198, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  call void @__put_page(ptr noundef %196) #17
  br label %202

202:                                              ; preds = %201, %194, %182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  %203 = load ptr, ptr %60, align 4
  %204 = icmp eq ptr %203, %4
  br i1 %204, label %205, label %59

205:                                              ; preds = %202, %51
  %206 = load ptr, ptr %6, align 4
  %207 = getelementptr inbounds %struct.ext4_sb_info, ptr %206, i32 0, i32 17
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, 1073741824
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %205
  call void @_raw_spin_lock(ptr noundef %8) #17
  %212 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 66
  %213 = load volatile ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, %212
  %215 = load volatile ptr, ptr %4, align 8
  %216 = icmp eq ptr %215, %4
  br i1 %216, label %222, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 66, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = load ptr, ptr %5, align 4
  %221 = getelementptr inbounds %struct.list_head, ptr %215, i32 0, i32 1
  store ptr %219, ptr %221, align 4
  store ptr %215, ptr %219, align 4
  store ptr %212, ptr %220, align 4
  store ptr %220, ptr %218, align 4
  br label %222

222:                                              ; preds = %217, %211
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %223 = load i16, ptr %8, align 4
  %224 = add i16 %223, 1
  store i16 %224, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br i1 %214, label %225, label %237

225:                                              ; preds = %222
  %226 = load ptr, ptr @system_unbound_wq, align 4
  %227 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 67
  %228 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %226, ptr noundef %227) #17
  br label %237

229:                                              ; preds = %205
  %230 = load ptr, ptr %4, align 8
  %231 = icmp eq ptr %230, %4
  br i1 %231, label %237, label %232

232:                                              ; preds = %232, %229
  %233 = phi ptr [ %234, %232 ], [ %230, %229 ]
  %234 = load ptr, ptr %233, align 4
  %235 = load ptr, ptr @ext4_free_data_cachep, align 4
  call void @kmem_cache_free(ptr noundef %235, ptr noundef %233) #17
  %236 = icmp eq ptr %234, %4
  br i1 %236, label %237, label %232

237:                                              ; preds = %232, %229, %225, %222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_init_mballoc() local_unnamed_addr #12 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.35, i32 noundef 72, i32 noundef 8, i32 noundef 131072, ptr noundef null) #17
  store ptr %1, ptr @ext4_pspace_cachep, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.36, i32 noundef 116, i32 noundef 4, i32 noundef 131072, ptr noundef null) #17
  store ptr %4, ptr @ext4_ac_cachep, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.37, i32 noundef 36, i32 noundef 4, i32 noundef 131072, ptr noundef null) #17
  store ptr %7, ptr @ext4_free_data_cachep, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load ptr, ptr @ext4_ac_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #17
  br label %11

11:                                               ; preds = %9, %3
  %12 = load ptr, ptr @ext4_pspace_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %12) #17
  br label %13

13:                                               ; preds = %11, %6, %0
  %14 = phi i32 [ 0, %6 ], [ -12, %0 ], [ -12, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_exit_mballoc() local_unnamed_addr #2 {
  tail call void @rcu_barrier() #17
  %1 = load ptr, ptr @ext4_pspace_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #17
  %2 = load ptr, ptr @ext4_ac_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #17
  %3 = load ptr, ptr @ext4_free_data_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #17
  %4 = load ptr, ptr @ext4_groupinfo_caches, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #17
  store ptr null, ptr @ext4_groupinfo_caches, align 4
  %5 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 1), align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #17
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 1), align 4
  %6 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 2), align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #17
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 2), align 4
  %7 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 3), align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #17
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 3), align 4
  %8 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 4), align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #17
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 4), align 4
  %9 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 5), align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #17
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 5), align 4
  %10 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 6), align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #17
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 6), align 4
  %11 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 7), align 4
  tail call void @kmem_cache_destroy(ptr noundef %11) #17
  store ptr null, ptr getelementptr inbounds ([8 x ptr], ptr @ext4_groupinfo_caches, i32 0, i32 7), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_mb_mark_bb(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !10
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %11 = load i32, ptr %10, align 16
  %12 = ashr i32 %2, %11
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %13 = load i32, ptr %6, align 4
  %14 = call ptr @ext4_read_block_bitmap(ptr noundef %0, i32 noundef %13) #17
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %243, label %16

16:                                               ; preds = %4
  %17 = load i32, ptr %6, align 4
  %18 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %5) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %240, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %6, align 4
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 41
  %24 = load ptr, ptr %23, align 16
  %25 = and i32 %21, 63
  %26 = getelementptr [64 x %struct.bgl_lock], ptr %24, i32 0, i32 %25
  %27 = call i32 @_raw_spin_trylock(ptr noundef %26) #17
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #17
  br i1 %28, label %36, label %31

31:                                               ; preds = %20
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 -1, ptr elementtype(i32) %30) #17, !srcloc !34
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %42

36:                                               ; preds = %20
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 8, i32 1, ptr elementtype(i32) %30) #17, !srcloc !34
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %41

41:                                               ; preds = %40, %36
  call void @_raw_spin_lock(ptr noundef %26) #17
  br label %42

42:                                               ; preds = %41, %35, %31
  %43 = icmp sgt i32 %12, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %42
  %45 = load i32, ptr %7, align 4
  %46 = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = shl i32 %48, 3
  %50 = and i32 %49, 24
  %51 = and i32 %48, -4
  %52 = inttoptr i32 %51 to ptr
  %53 = icmp eq i32 %3, 0
  br label %54

54:                                               ; preds = %54, %44
  %55 = phi i32 [ 0, %44 ], [ %69, %54 ]
  %56 = phi i32 [ 0, %44 ], [ %68, %54 ]
  %57 = add i32 %45, %55
  %58 = add i32 %57, %50
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr %52, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %53, %65
  %67 = zext i1 %66 to i32
  %68 = add i32 %56, %67
  %69 = add nuw nsw i32 %55, 1
  %70 = icmp eq i32 %69, %12
  br i1 %70, label %71, label %54

71:                                               ; preds = %54, %42
  %72 = phi i32 [ 0, %42 ], [ %68, %54 ]
  %73 = icmp eq i32 %3, 0
  %74 = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %7, align 4
  %77 = add i32 %76, %12
  %78 = icmp sgt i32 %77, %76
  br i1 %73, label %108, label %79

79:                                               ; preds = %71
  br i1 %78, label %80, label %162

80:                                               ; preds = %79
  %81 = ptrtoint ptr %75 to i32
  %82 = shl i32 %81, 3
  %83 = and i32 %82, 24
  %84 = and i32 %81, -4
  %85 = inttoptr i32 %84 to ptr
  br label %86

86:                                               ; preds = %96, %80
  %87 = phi i32 [ %76, %80 ], [ %98, %96 ]
  %88 = and i32 %87, 31
  %89 = icmp eq i32 %88, 0
  %90 = sub i32 %77, %87
  %91 = icmp sgt i32 %90, 31
  %92 = and i1 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = ashr i32 %87, 3
  %95 = getelementptr i8, ptr %75, i32 %94
  store i32 -1, ptr %95, align 4
  br label %96

96:                                               ; preds = %100, %93
  %97 = phi i32 [ 32, %93 ], [ 1, %100 ]
  %98 = add i32 %97, %87
  %99 = icmp sgt i32 %77, %98
  br i1 %99, label %86, label %162

100:                                              ; preds = %86
  %101 = add i32 %87, %83
  %102 = and i32 %101, 31
  %103 = shl nuw i32 1, %102
  %104 = lshr i32 %101, 5
  %105 = getelementptr i32, ptr %85, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, ptr %105, align 4
  br label %96

108:                                              ; preds = %71
  br i1 %78, label %109, label %162

109:                                              ; preds = %108
  %110 = ptrtoint ptr %75 to i32
  %111 = shl i32 %110, 3
  %112 = and i32 %111, 24
  %113 = and i32 %110, -4
  %114 = inttoptr i32 %113 to ptr
  br label %115

115:                                              ; preds = %143, %109
  %116 = phi i32 [ -1, %109 ], [ %145, %143 ]
  %117 = phi i32 [ %76, %109 ], [ %146, %143 ]
  %118 = and i32 %117, 31
  %119 = icmp eq i32 %118, 0
  %120 = sub i32 %77, %117
  %121 = icmp sgt i32 %120, 31
  %122 = and i1 %119, %121
  br i1 %122, label %123, label %148

123:                                              ; preds = %115
  %124 = ashr i32 %117, 3
  %125 = getelementptr i8, ptr %75, i32 %124
  %126 = load i32, ptr %125, align 4
  %127 = icmp ne i32 %126, -1
  %128 = icmp eq i32 %116, -1
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = ptrtoint ptr %125 to i32
  %132 = shl i32 %131, 3
  %133 = and i32 %132, 24
  %134 = and i32 %131, -4
  %135 = inttoptr i32 %134 to ptr
  %136 = or i32 %133, 32
  %137 = call i32 @_find_next_zero_bit_le(ptr noundef %135, i32 noundef %136, i32 noundef %133) #17
  %138 = sub i32 %137, %133
  %139 = call i32 @llvm.smin.i32(i32 %138, i32 32) #17
  %140 = add i32 %139, %117
  br label %141

141:                                              ; preds = %130, %123
  %142 = phi i32 [ %140, %130 ], [ %116, %123 ]
  store i32 0, ptr %125, align 4
  br label %143

143:                                              ; preds = %148, %141
  %144 = phi i32 [ 32, %141 ], [ 1, %148 ]
  %145 = phi i32 [ %142, %141 ], [ %161, %148 ]
  %146 = add i32 %144, %117
  %147 = icmp sgt i32 %77, %146
  br i1 %147, label %115, label %162

148:                                              ; preds = %115
  %149 = add i32 %117, %112
  %150 = and i32 %149, 31
  %151 = shl nuw i32 1, %150
  %152 = lshr i32 %149, 5
  %153 = getelementptr i32, ptr %114, i32 %152
  %154 = load i32, ptr %153, align 4
  %155 = xor i32 %151, -1
  %156 = and i32 %154, %155
  store i32 %156, ptr %153, align 4
  %157 = and i32 %154, %151
  %158 = icmp eq i32 %157, 0
  %159 = icmp eq i32 %116, -1
  %160 = select i1 %158, i1 %159, i1 false
  %161 = select i1 %160, i32 %117, i32 %116
  br label %143

162:                                              ; preds = %143, %108, %96, %79
  %163 = load ptr, ptr %8, align 4
  %164 = getelementptr inbounds %struct.ext4_sb_info, ptr %163, i32 0, i32 15
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ext4_super_block, ptr %165, i32 0, i32 30
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %162
  %171 = and i32 %167, 1024
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %203, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.ext4_sb_info, ptr %163, i32 0, i32 119
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  %177 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %178 = xor i1 %177, true
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %191, !prof !15

180:                                              ; preds = %173
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 3289, i32 noundef 9, ptr noundef null) #17
  %181 = load ptr, ptr %8, align 4
  %182 = getelementptr inbounds %struct.ext4_sb_info, ptr %181, i32 0, i32 15
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.ext4_super_block, ptr %183, i32 0, i32 30
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 1024
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.ext4_sb_info, ptr %181, i32 0, i32 119
  %190 = load ptr, ptr %189, align 8
  br label %191

191:                                              ; preds = %188, %173
  %192 = phi ptr [ %190, %188 ], [ %175, %173 ]
  %193 = icmp eq ptr %192, null
  br i1 %193, label %203, label %194

194:                                              ; preds = %191, %162
  %195 = getelementptr inbounds %struct.ext4_group_desc, ptr %18, i32 0, i32 6
  %196 = load i16, ptr %195, align 2
  %197 = and i16 %196, 2
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = and i16 %196, -3
  store i16 %200, ptr %195, align 2
  %201 = load i32, ptr %6, align 4
  %202 = call i32 @ext4_free_clusters_after_init(ptr noundef %0, i32 noundef %201, ptr noundef nonnull %18) #17
  call void @ext4_free_group_clusters_set(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %202) #17
  br label %203

203:                                              ; preds = %199, %194, %191, %180, %170
  %204 = call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef nonnull %18) #17
  %205 = sub i32 %12, %72
  %206 = sub i32 %72, %12
  %207 = select i1 %73, i32 %205, i32 %206
  %208 = add i32 %207, %204
  call void @ext4_free_group_clusters_set(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %208) #17
  %209 = load i32, ptr %6, align 4
  call void @ext4_block_bitmap_csum_set(ptr noundef %0, i32 noundef %209, ptr noundef nonnull %18, ptr noundef %14) #17
  %210 = load i32, ptr %6, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %0, i32 noundef %210, ptr noundef nonnull %18) #17
  %211 = load i32, ptr %6, align 4
  %212 = load ptr, ptr %8, align 4
  %213 = getelementptr inbounds %struct.ext4_sb_info, ptr %212, i32 0, i32 41
  %214 = load ptr, ptr %213, align 16
  %215 = and i32 %211, 63
  %216 = getelementptr [64 x %struct.bgl_lock], ptr %214, i32 0, i32 %215
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %217 = load i16, ptr %216, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr %216, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %219 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 110
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %203
  %223 = load i32, ptr %6, align 4
  %224 = lshr i32 %223, %220
  %225 = sext i32 %2 to i64
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %226 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 111
  %227 = load volatile ptr, ptr %226, align 8
  %228 = getelementptr ptr, ptr %227, i32 %224
  %229 = load ptr, ptr %228, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %229) #17, !srcloc !20
  %230 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %229, ptr %229, i64 %225, ptr elementtype(i64) %229) #17, !srcloc !37
  br label %231

231:                                              ; preds = %222, %203
  %232 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mb_mark_bb, i32 noundef 3956, ptr noundef null, ptr noundef null, ptr noundef %14) #17
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = call i32 @sync_dirty_buffer(ptr noundef %14) #17
  %236 = load ptr, ptr %5, align 4
  %237 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mb_mark_bb, i32 noundef 3960, ptr noundef null, ptr noundef null, ptr noundef %236) #17
  %238 = load ptr, ptr %5, align 4
  %239 = call i32 @sync_dirty_buffer(ptr noundef %238) #17
  br label %240

240:                                              ; preds = %234, %231, %16
  %241 = icmp eq ptr %14, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %240
  call void @__brelse(ptr noundef nonnull %14) #17
  br label %243

243:                                              ; preds = %242, %240, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_get_group_no_and_offset(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_read_block_bitmap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_group_clusters_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_block_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_group_desc_csum_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_discard_preallocations(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.ext4_buddy, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !10
  %7 = load i16, ptr %0, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, -32768
  br i1 %9, label %10, label %253

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 25
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 32
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %253

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %0, i32 416
  %19 = load volatile i32, ptr %18, align 4
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_discard_preallocations, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #17
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  %34 = tail call i32 @__traceiter_ext4_discard_preallocations(ptr noundef null, ptr noundef %0, i32 noundef %19, i32 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !39
  br label %35

35:                                               ; preds = %33, %22, %17
  store volatile ptr %3, ptr %3, align 8
  %36 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %36, align 4
  %37 = getelementptr i8, ptr %0, i32 428
  call void @_raw_spin_lock(ptr noundef %37) #17
  %38 = getelementptr i8, ptr %0, i32 420
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %104, label %41

41:                                               ; preds = %35
  %42 = icmp eq i32 %1, 0
  %43 = select i1 %42, i32 -1, i32 %1
  %44 = getelementptr i8, ptr %0, i32 424
  br label %45

45:                                               ; preds = %83, %41
  %46 = phi i32 [ %43, %41 ], [ %94, %83 ]
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %64, %45
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 11
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, %37
  br i1 %52, label %54, label %53, !prof !11

53:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4948, 0\0A.popsection", ""() #17, !srcloc !40
  unreachable

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %55) #17
  %56 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 4
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %60 = load i16, ptr %55, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %62 = load i16, ptr %37, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.38) #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 4957, i32 noundef 9, ptr noundef null) #17
  br label %64

64:                                               ; preds = %99, %59
  %65 = call i32 @schedule_timeout_uninterruptible(i32 noundef 100) #17
  call void @_raw_spin_lock(ptr noundef %37) #17
  %66 = load volatile ptr, ptr %38, align 4
  %67 = icmp ne ptr %66, %38
  %68 = select i1 %67, i1 %47, i1 false
  br i1 %68, label %48, label %104

69:                                               ; preds = %54
  %70 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 5
  store i32 1, ptr %74, align 8
  %75 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 10
  %76 = load i16, ptr %75, align 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 12
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 416
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #17, !srcloc !20
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #17, !srcloc !41
  br label %83

83:                                               ; preds = %78, %73
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %84 = load i16, ptr %55, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %86 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %49, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  store volatile ptr %88, ptr %87, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %86, align 4
  %90 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 2
  %91 = load ptr, ptr %3, align 8
  %92 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  store ptr %90, ptr %92, align 4
  store ptr %91, ptr %90, align 4
  %93 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %49, i32 0, i32 2, i32 0, i32 1
  store ptr %3, ptr %93, align 4
  store volatile ptr %90, ptr %3, align 8
  %94 = add i32 %46, -1
  %95 = load volatile ptr, ptr %38, align 4
  %96 = icmp ne ptr %95, %38
  %97 = icmp ne i32 %94, 0
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %45, label %104

99:                                               ; preds = %69
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %100 = load i16, ptr %55, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %102 = load i16, ptr %37, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %64

104:                                              ; preds = %83, %64, %35
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %105 = load i16, ptr %37, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %107 = load ptr, ptr %3, align 8
  %108 = icmp eq ptr %107, %3
  br i1 %108, label %253, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ext4_buddy, ptr %4, i32 0, i32 2
  br label %111

111:                                              ; preds = %251, %109
  %112 = phi ptr [ %107, %109 ], [ %114, %251 ]
  %113 = getelementptr i8, ptr %112, i32 -16
  %114 = load ptr, ptr %112, align 8
  %115 = getelementptr i8, ptr %112, i32 44
  %116 = load i16, ptr %115, align 4
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %119, label %118, !prof !11

118:                                              ; preds = %111
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4993, 0\0A.popsection", ""() #17, !srcloc !42
  unreachable

119:                                              ; preds = %111
  %120 = getelementptr i8, ptr %112, i32 24
  %121 = load i64, ptr %120, align 8
  %122 = call i32 @ext4_get_group_number(ptr noundef %6, i64 noundef %121) #17
  %123 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %6, i32 noundef %122, ptr noundef nonnull %4, i32 noundef 35904)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = sub i32 0, %123
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %6, ptr noundef nonnull @__func__.ext4_discard_preallocations, i32 noundef 5000, i1 noundef zeroext false, i32 noundef %126, i64 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %123, i32 noundef %122) #17
  br label %251

127:                                              ; preds = %119
  %128 = call ptr @ext4_read_block_bitmap(ptr noundef %6, i32 noundef %122) #17
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %172

130:                                              ; preds = %127
  %131 = ptrtoint ptr %128 to i32
  %132 = sub i32 0, %131
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %6, ptr noundef nonnull @__func__.ext4_discard_preallocations, i32 noundef 5008, i1 noundef zeroext false, i32 noundef %132, i64 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %131, i32 noundef %122) #17
  %133 = load ptr, ptr %110, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %152, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.page, ptr %133, i32 0, i32 1
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140, !prof !11

140:                                              ; preds = %135
  %141 = add i32 %137, -1
  br label %144

142:                                              ; preds = %135
  %143 = ptrtoint ptr %133 to i32
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = inttoptr i32 %145 to ptr
  %147 = getelementptr inbounds %struct.page, ptr %146, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #17, !srcloc !20
  %148 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 1, ptr elementtype(i32) %147) #17, !srcloc !21
  %149 = extractvalue { i32, i32 } %148, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  call void @__put_page(ptr noundef %146) #17
  br label %152

152:                                              ; preds = %151, %144, %130
  %153 = load ptr, ptr %4, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %251, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.page, ptr %153, i32 0, i32 1
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160, !prof !11

160:                                              ; preds = %155
  %161 = add i32 %157, -1
  br label %164

162:                                              ; preds = %155
  %163 = ptrtoint ptr %153 to i32
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = inttoptr i32 %165 to ptr
  %167 = getelementptr inbounds %struct.page, ptr %166, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %167) #17, !srcloc !20
  %168 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %167, ptr %167, i32 1, ptr elementtype(i32) %167) #17, !srcloc !21
  %169 = extractvalue { i32, i32 } %168, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %251

171:                                              ; preds = %164
  call void @__put_page(ptr noundef %166) #17
  br label %251

172:                                              ; preds = %127
  %173 = load ptr, ptr %11, align 4
  %174 = getelementptr inbounds %struct.ext4_sb_info, ptr %173, i32 0, i32 41
  %175 = load ptr, ptr %174, align 16
  %176 = and i32 %122, 63
  %177 = getelementptr [64 x %struct.bgl_lock], ptr %175, i32 0, i32 %176
  %178 = call i32 @_raw_spin_trylock(ptr noundef %177) #17
  %179 = icmp eq i32 %178, 0
  %180 = load ptr, ptr %11, align 4
  %181 = getelementptr inbounds %struct.ext4_sb_info, ptr %180, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %181) #17
  br i1 %179, label %187, label %182

182:                                              ; preds = %172
  %183 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 0, i32 -1, ptr elementtype(i32) %181) #17, !srcloc !34
  %184 = extractvalue { i32, i32, i32 } %183, 0
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %182
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %193

187:                                              ; preds = %172
  %188 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 8, i32 1, ptr elementtype(i32) %181) #17, !srcloc !34
  %189 = extractvalue { i32, i32, i32 } %188, 0
  %190 = icmp eq i32 %189, 8
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %192

192:                                              ; preds = %191, %187
  call void @_raw_spin_lock(ptr noundef %177) #17
  br label %193

193:                                              ; preds = %192, %186, %182
  %194 = getelementptr i8, ptr %112, i32 -8
  %195 = getelementptr i8, ptr %112, i32 -4
  %196 = load ptr, ptr %195, align 4
  %197 = load ptr, ptr %194, align 4
  %198 = getelementptr inbounds %struct.list_head, ptr %197, i32 0, i32 1
  store ptr %196, ptr %198, align 4
  store volatile ptr %197, ptr %196, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %194, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %195, align 4
  call fastcc void @ext4_mb_release_inode_pa(ptr noundef nonnull %4, ptr noundef %128, ptr noundef %113)
  %199 = load ptr, ptr %11, align 4
  %200 = getelementptr inbounds %struct.ext4_sb_info, ptr %199, i32 0, i32 41
  %201 = load ptr, ptr %200, align 16
  %202 = getelementptr [64 x %struct.bgl_lock], ptr %201, i32 0, i32 %176
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %203 = load i16, ptr %202, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %202, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %205 = load ptr, ptr %110, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %224, label %207

207:                                              ; preds = %193
  %208 = getelementptr inbounds %struct.page, ptr %205, i32 0, i32 1
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212, !prof !11

212:                                              ; preds = %207
  %213 = add i32 %209, -1
  br label %216

214:                                              ; preds = %207
  %215 = ptrtoint ptr %205 to i32
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  %218 = inttoptr i32 %217 to ptr
  %219 = getelementptr inbounds %struct.page, ptr %218, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %219) #17, !srcloc !20
  %220 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %219, ptr %219, i32 1, ptr elementtype(i32) %219) #17, !srcloc !21
  %221 = extractvalue { i32, i32 } %220, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  call void @__put_page(ptr noundef %218) #17
  br label %224

224:                                              ; preds = %223, %216, %193
  %225 = load ptr, ptr %4, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %244, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 1
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232, !prof !11

232:                                              ; preds = %227
  %233 = add i32 %229, -1
  br label %236

234:                                              ; preds = %227
  %235 = ptrtoint ptr %225 to i32
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = inttoptr i32 %237 to ptr
  %239 = getelementptr inbounds %struct.page, ptr %238, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #17, !srcloc !20
  %240 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #17, !srcloc !21
  %241 = extractvalue { i32, i32 } %240, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  call void @__put_page(ptr noundef %238) #17
  br label %244

244:                                              ; preds = %243, %236, %224
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !43
  %245 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %245) #17, !srcloc !20
  %246 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %245, ptr %245, i32 1, ptr elementtype(i32) %245) #17, !srcloc !41
  %247 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = load ptr, ptr %112, align 4
  %250 = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  store ptr %248, ptr %250, align 4
  store volatile ptr %249, ptr %248, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %112, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %247, align 4
  call void @call_rcu(ptr noundef %112, ptr noundef nonnull @ext4_mb_pa_callback) #17
  br label %251

251:                                              ; preds = %244, %171, %164, %152, %125
  %252 = icmp eq ptr %114, %3
  br i1 %252, label %253, label %111

253:                                              ; preds = %251, %104, %10, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_group_number(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 59
  %8 = load ptr, ptr %7, align 32
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 16
  %11 = udiv i32 4096, %10
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 8
  %13 = load i32, ptr %12, align 32
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %16, label %15, !prof !11

15:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 28
  %18 = load i32, ptr %17, align 64
  %19 = lshr i32 %1, %18
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = and i32 %22, %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 58
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr ptr, ptr %26, i32 %19
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %29 = getelementptr ptr, ptr %28, i32 %23
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i16
  %34 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 6
  store i16 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 4
  store ptr %30, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 5
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 7
  store i32 %1, ptr %37, align 4
  store ptr null, ptr %2, align 4
  %38 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 2
  store ptr null, ptr %38, align 4
  %39 = load volatile i32, ptr %30, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !11

42:                                               ; preds = %16
  %43 = tail call fastcc i32 @ext4_mb_init_group(ptr noundef %0, i32 noundef %1, i32 noundef %3)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %294

45:                                               ; preds = %42, %16
  %46 = shl i32 %1, 1
  %47 = freeze i32 %11
  %48 = sdiv i32 %46, %47
  %49 = mul i32 %48, %47
  %50 = sub i32 %46, %49
  %51 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %52 = load ptr, ptr %51, align 8
  %53 = tail call ptr @pagecache_get_page(ptr noundef %52, i32 noundef %48, i32 noundef 1, i32 noundef 0) #17
  %54 = ptrtoint ptr %53 to i32
  %55 = icmp eq ptr %53, null
  br i1 %55, label %84, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61, !prof !11

61:                                               ; preds = %56
  %62 = add i32 %58, -1
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ %54, %56 ]
  %65 = inttoptr i32 %64 to ptr
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  br label %116

70:                                               ; preds = %63
  %71 = load volatile i32, ptr %57, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !11

74:                                               ; preds = %70
  %75 = add i32 %71, -1
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %75, %74 ], [ %54, %70 ]
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #17, !srcloc !20
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #17, !srcloc !21
  %81 = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call void @__put_page(ptr noundef %78) #17
  br label %84

84:                                               ; preds = %83, %76, %45
  %85 = load ptr, ptr %51, align 8
  %86 = tail call ptr @pagecache_get_page(ptr noundef %85, i32 noundef %48, i32 noundef 7, i32 noundef %3) #17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %250, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %51, align 8
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %94, label %93, !prof !11

93:                                               ; preds = %88
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1538, 0\0A.popsection", ""() #17, !srcloc !44
  unreachable

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 1
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99, !prof !11

99:                                               ; preds = %94
  %100 = add i32 %96, -1
  br label %103

101:                                              ; preds = %94
  %102 = ptrtoint ptr %86 to i32
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = inttoptr i32 %104 to ptr
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %106, 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  br label %115

110:                                              ; preds = %103
  %111 = tail call fastcc i32 @ext4_mb_init_cache(ptr noundef nonnull %86, ptr noundef null, i32 noundef %3)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %228

113:                                              ; preds = %110
  %114 = tail call ptr @page_address(ptr noundef nonnull %86) #17
  br label %115

115:                                              ; preds = %113, %109
  tail call void @unlock_page(ptr noundef nonnull %86) #17
  br label %116

116:                                              ; preds = %115, %69
  %117 = phi ptr [ %86, %115 ], [ %53, %69 ]
  %118 = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 1
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122, !prof !11

122:                                              ; preds = %116
  %123 = add i32 %119, -1
  br label %126

124:                                              ; preds = %116
  %125 = ptrtoint ptr %117 to i32
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = inttoptr i32 %127 to ptr
  %129 = load volatile i32, ptr %128, align 4
  %130 = and i32 %129, 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %231, label %132

132:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  store ptr %117, ptr %38, align 4
  %133 = tail call ptr @page_address(ptr noundef nonnull %117) #17
  %134 = load i32, ptr %9, align 16
  %135 = mul i32 %134, %50
  %136 = getelementptr i8, ptr %133, i32 %135
  %137 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 3
  store ptr %136, ptr %137, align 4
  %138 = or i32 %46, 1
  %139 = freeze i32 %11
  %140 = sdiv i32 %138, %139
  %141 = mul i32 %140, %139
  %142 = sub i32 %138, %141
  %143 = load ptr, ptr %51, align 8
  %144 = tail call ptr @pagecache_get_page(ptr noundef %143, i32 noundef %140, i32 noundef 1, i32 noundef 0) #17
  %145 = ptrtoint ptr %144 to i32
  %146 = icmp eq ptr %144, null
  br i1 %146, label %175, label %147

147:                                              ; preds = %132
  %148 = getelementptr inbounds %struct.page, ptr %144, i32 0, i32 1
  %149 = load volatile i32, ptr %148, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152, !prof !11

152:                                              ; preds = %147
  %153 = add i32 %149, -1
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi i32 [ %153, %152 ], [ %145, %147 ]
  %156 = inttoptr i32 %155 to ptr
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  br label %206

161:                                              ; preds = %154
  %162 = load volatile i32, ptr %148, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165, !prof !11

165:                                              ; preds = %161
  %166 = add i32 %162, -1
  br label %167

167:                                              ; preds = %165, %161
  %168 = phi i32 [ %166, %165 ], [ %145, %161 ]
  %169 = inttoptr i32 %168 to ptr
  %170 = getelementptr inbounds %struct.page, ptr %169, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #17, !srcloc !20
  %171 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 1, ptr elementtype(i32) %170) #17, !srcloc !21
  %172 = extractvalue { i32, i32 } %171, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  tail call void @__put_page(ptr noundef %169) #17
  br label %175

175:                                              ; preds = %174, %167, %132
  %176 = load ptr, ptr %51, align 8
  %177 = tail call ptr @pagecache_get_page(ptr noundef %176, i32 noundef %140, i32 noundef 7, i32 noundef %3) #17
  %178 = icmp eq ptr %177, null
  br i1 %178, label %250, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.page, ptr %177, i32 0, i32 1, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = load ptr, ptr %51, align 8
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %185, label %184, !prof !11

184:                                              ; preds = %179
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1574, 0\0A.popsection", ""() #17, !srcloc !45
  unreachable

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.page, ptr %177, i32 0, i32 1
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190, !prof !11

190:                                              ; preds = %185
  %191 = add i32 %187, -1
  br label %194

192:                                              ; preds = %185
  %193 = ptrtoint ptr %177 to i32
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = inttoptr i32 %195 to ptr
  %197 = load volatile i32, ptr %196, align 4
  %198 = and i32 %197, 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  br label %205

201:                                              ; preds = %194
  %202 = load ptr, ptr %137, align 4
  %203 = tail call fastcc i32 @ext4_mb_init_cache(ptr noundef nonnull %177, ptr noundef %202, i32 noundef %3)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %228

205:                                              ; preds = %201, %200
  tail call void @unlock_page(ptr noundef nonnull %177) #17
  br label %206

206:                                              ; preds = %205, %160
  %207 = phi ptr [ %177, %205 ], [ %144, %160 ]
  %208 = getelementptr inbounds %struct.page, ptr %207, i32 0, i32 1
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212, !prof !11

212:                                              ; preds = %206
  %213 = add i32 %209, -1
  br label %216

214:                                              ; preds = %206
  %215 = ptrtoint ptr %207 to i32
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  %218 = inttoptr i32 %217 to ptr
  %219 = load volatile i32, ptr %218, align 4
  %220 = and i32 %219, 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %216
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  store ptr %207, ptr %2, align 4
  %223 = tail call ptr @page_address(ptr noundef nonnull %207) #17
  %224 = load i32, ptr %9, align 16
  %225 = mul i32 %224, %142
  %226 = getelementptr i8, ptr %223, i32 %225
  %227 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 1
  store ptr %226, ptr %227, align 4
  br label %294

228:                                              ; preds = %201, %110
  %229 = phi ptr [ %86, %110 ], [ %177, %201 ]
  %230 = phi i32 [ %111, %110 ], [ %203, %201 ]
  tail call void @unlock_page(ptr noundef nonnull %229) #17
  br label %231

231:                                              ; preds = %228, %216, %126
  %232 = phi ptr [ %117, %126 ], [ %207, %216 ], [ %229, %228 ]
  %233 = phi i32 [ -5, %126 ], [ -5, %216 ], [ %230, %228 ]
  %234 = getelementptr inbounds %struct.page, ptr %232, i32 0, i32 1
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238, !prof !11

238:                                              ; preds = %231
  %239 = add i32 %235, -1
  br label %242

240:                                              ; preds = %231
  %241 = ptrtoint ptr %232 to i32
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %244 = inttoptr i32 %243 to ptr
  %245 = getelementptr inbounds %struct.page, ptr %244, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %245) #17, !srcloc !20
  %246 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %245, ptr %245, i32 1, ptr elementtype(i32) %245) #17, !srcloc !21
  %247 = extractvalue { i32, i32 } %246, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  tail call void @__put_page(ptr noundef %244) #17
  br label %250

250:                                              ; preds = %249, %242, %175, %84
  %251 = phi i32 [ %233, %242 ], [ %233, %249 ], [ -12, %84 ], [ -12, %175 ]
  %252 = load ptr, ptr %38, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %271, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.page, ptr %252, i32 0, i32 1
  %256 = load volatile i32, ptr %255, align 4
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259, !prof !11

259:                                              ; preds = %254
  %260 = add i32 %256, -1
  br label %263

261:                                              ; preds = %254
  %262 = ptrtoint ptr %252 to i32
  br label %263

263:                                              ; preds = %261, %259
  %264 = phi i32 [ %260, %259 ], [ %262, %261 ]
  %265 = inttoptr i32 %264 to ptr
  %266 = getelementptr inbounds %struct.page, ptr %265, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %266) #17, !srcloc !20
  %267 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %266, ptr %266, i32 1, ptr elementtype(i32) %266) #17, !srcloc !21
  %268 = extractvalue { i32, i32 } %267, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  tail call void @__put_page(ptr noundef %265) #17
  br label %271

271:                                              ; preds = %270, %263, %250
  %272 = load ptr, ptr %2, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %291, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.page, ptr %272, i32 0, i32 1
  %276 = load volatile i32, ptr %275, align 4
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279, !prof !11

279:                                              ; preds = %274
  %280 = add i32 %276, -1
  br label %283

281:                                              ; preds = %274
  %282 = ptrtoint ptr %272 to i32
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32 [ %280, %279 ], [ %282, %281 ]
  %285 = inttoptr i32 %284 to ptr
  %286 = getelementptr inbounds %struct.page, ptr %285, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %286) #17, !srcloc !20
  %287 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %286, ptr %286, i32 1, ptr elementtype(i32) %286) #17, !srcloc !21
  %288 = extractvalue { i32, i32 } %287, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  tail call void @__put_page(ptr noundef %285) #17
  br label %291

291:                                              ; preds = %290, %283, %271
  %292 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 1
  store ptr null, ptr %292, align 4
  %293 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 3
  store ptr null, ptr %293, align 4
  br label %294

294:                                              ; preds = %291, %222, %42
  %295 = phi i32 [ %251, %291 ], [ 0, %222 ], [ %43, %42 ]
  ret i32 %295
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_unload_buddy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %5
  %11 = add i32 %7, -1
  br label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %3 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #17, !srcloc !20
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #17, !srcloc !21
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @__put_page(ptr noundef %16) #17
  br label %22

22:                                               ; preds = %21, %14, %1
  %23 = load ptr, ptr %0, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %25
  %31 = add i32 %27, -1
  br label %34

32:                                               ; preds = %25
  %33 = ptrtoint ptr %23 to i32
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #17, !srcloc !20
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #17, !srcloc !21
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call void @__put_page(ptr noundef %36) #17
  br label %42

42:                                               ; preds = %41, %34, %22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_release_inode_pa(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !10
  %10 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %2, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !15

13:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4746, 0\0A.popsection", ""() #17, !srcloc !46
  unreachable

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %2, i32 0, i32 6
  %16 = load i64, ptr %15, align 8
  call void @ext4_get_group_no_and_offset(ptr noundef %7, i64 noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %17 = load i64, ptr %15, align 8
  %18 = load i32, ptr %5, align 4
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %20 = load i32, ptr %19, align 16
  %21 = shl i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = sub i64 %17, %22
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  %28 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %2, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  br i1 %27, label %33, label %30

30:                                               ; preds = %14
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %30
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4749, 0\0A.popsection", ""() #17, !srcloc !47
  unreachable

33:                                               ; preds = %30, %14
  %34 = phi i32 [ 0, %30 ], [ %29, %14 ]
  %35 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %2, i32 0, i32 8
  %36 = add i32 %34, %18
  %37 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %38 = icmp ult i32 %18, %36
  br i1 %38, label %39, label %119

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %2, i32 0, i32 12
  br label %41

41:                                               ; preds = %113, %39
  %42 = phi i32 [ %18, %39 ], [ %117, %113 ]
  %43 = phi i32 [ 0, %39 ], [ %70, %113 ]
  %44 = load ptr, ptr %37, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = shl i32 %45, 3
  %47 = and i32 %46, 24
  %48 = and i32 %45, -4
  %49 = inttoptr i32 %48 to ptr
  %50 = add i32 %47, %36
  %51 = add i32 %47, %42
  %52 = call i32 @_find_next_zero_bit_le(ptr noundef %49, i32 noundef %50, i32 noundef %51) #17
  %53 = sub i32 %52, %47
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 %36) #17
  store i32 %54, ptr %5, align 4
  %55 = icmp ult i32 %54, %36
  br i1 %55, label %56, label %119

56:                                               ; preds = %41
  %57 = load ptr, ptr %37, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = shl i32 %58, 3
  %60 = and i32 %59, 24
  %61 = and i32 %58, -4
  %62 = inttoptr i32 %61 to ptr
  %63 = add i32 %60, %36
  %64 = add i32 %60, %54
  %65 = call i32 @_find_next_bit_le(ptr noundef %62, i32 noundef %63, i32 noundef %64) #17
  %66 = sub i32 %65, %60
  %67 = call i32 @llvm.smin.i32(i32 %66, i32 %36) #17
  %68 = load i32, ptr %5, align 4
  %69 = sub i32 %67, %68
  %70 = add i32 %69, %43
  %71 = load i32, ptr %4, align 4
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mballoc_discard, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %56
  %75 = tail call ptr @llvm.thread.pointer() #17
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %74
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !48
  %86 = call i32 @__traceiter_ext4_mballoc_discard(ptr noundef null, ptr noundef %7, ptr noundef null, i32 noundef %71, i32 noundef %68, i32 noundef %69) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !49
  %87 = load i32, ptr %5, align 4
  %88 = sub i32 %67, %87
  br label %89

89:                                               ; preds = %85, %74, %56
  %90 = phi i32 [ %69, %56 ], [ %69, %74 ], [ %88, %85 ]
  %91 = phi i32 [ %68, %56 ], [ %68, %74 ], [ %87, %85 ]
  %92 = load i32, ptr %19, align 16
  %93 = shl i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = add i64 %23, %94
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mb_release_inode_pa, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %89
  %99 = tail call ptr @llvm.thread.pointer() #17
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @__cpu_online_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %98
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !50
  %110 = call i32 @__traceiter_ext4_mb_release_inode_pa(ptr noundef null, ptr noundef %2, i64 noundef %95, i32 noundef %90) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !51
  %111 = load i32, ptr %5, align 4
  %112 = sub i32 %67, %111
  br label %113

113:                                              ; preds = %109, %98, %89
  %114 = phi i32 [ %90, %89 ], [ %90, %98 ], [ %112, %109 ]
  %115 = phi i32 [ %91, %89 ], [ %91, %98 ], [ %111, %109 ]
  %116 = load ptr, ptr %40, align 4
  call fastcc void @mb_free_blocks(ptr noundef %116, ptr noundef %0, i32 noundef %115, i32 noundef %114)
  %117 = add i32 %67, 1
  store i32 %117, ptr %5, align 4
  %118 = icmp ult i32 %117, %36
  br i1 %118, label %41, label %119

119:                                              ; preds = %113, %41, %33
  %120 = phi i32 [ 0, %33 ], [ %43, %41 ], [ %70, %113 ]
  %121 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %2, i32 0, i32 9
  %122 = load i32, ptr %121, align 8
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %6, align 4
  %126 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %2, i32 0, i32 7
  %127 = load i32, ptr %126, align 8
  %128 = load i64, ptr %15, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, ptr %35, align 4
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %125, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef %2, i32 noundef %127, i32 noundef %129, i32 noundef %130) #17
  %131 = load i32, ptr %4, align 4
  %132 = load i32, ptr %121, align 8
  call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_release_inode_pa, i32 noundef 4776, ptr noundef %7, i32 noundef %131, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.77, i32 noundef %120, i32 noundef %132) #17
  br label %133

133:                                              ; preds = %124, %119
  %134 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 104
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %134) #17, !srcloc !20
  %135 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 %120, ptr elementtype(i32) %134) #17, !srcloc !52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_mb_pa_callback(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !11

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4508, 0\0A.popsection", ""() #17, !srcloc !53
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !15

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4509, 0\0A.popsection", ""() #17, !srcloc !54
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 -16
  %13 = load ptr, ptr @ext4_pspace_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %12) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store i64 0, ptr %6, align 8, !annotation !10
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_request_blocks, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = tail call ptr @llvm.thread.pointer() #17
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !55
  %26 = tail call i32 @__traceiter_ext4_request_blocks(ptr noundef null, ptr noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !56
  br label %27

27:                                               ; preds = %25, %14, %3
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 25
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  %32 = load ptr, ptr %1, align 8
  br i1 %31, label %186, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !10
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 27
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 5
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ext4_super_block, ptr %41, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %65, label %48

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.ext4_super_block, ptr %41, i32 0, i32 29
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %41, i32 0, i32 50
  %55 = load i32, ptr %54, align 8
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i64 [ %57, %53 ], [ 0, %48 ]
  %60 = getelementptr inbounds %struct.ext4_super_block, ptr %41, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = or i64 %59, %62
  %64 = icmp ult i64 %43, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %58, %33
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i64 [ %46, %65 ], [ %43, %58 ]
  %68 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  store i32 0, ptr %68, align 4
  call void @ext4_get_group_no_and_offset(ptr noundef %35, i64 noundef %67, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %69 = load i32, ptr %4, align 4
  %70 = load ptr, ptr %36, align 4
  %71 = getelementptr inbounds %struct.ext4_sb_info, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 32
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %158

74:                                               ; preds = %151, %66
  %75 = load i32, ptr %4, align 4
  %76 = call ptr @ext4_read_block_bitmap(ptr noundef %35, i32 noundef %75) #17
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = ptrtoint ptr %76 to i32
  store i32 %79, ptr %2, align 4
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #19
  br label %184

81:                                               ; preds = %74
  %82 = load i32, ptr %4, align 4
  %83 = zext i32 %82 to i64
  %84 = load ptr, ptr %36, align 4
  %85 = getelementptr inbounds %struct.ext4_sb_info, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = zext i32 %86 to i64
  %88 = mul nuw i64 %87, %83
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %84, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ext4_super_block, ptr %90, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = zext i32 %92 to i64
  %94 = add nuw i64 %88, %93
  %95 = call i64 @llvm.umax.i64(i64 %94, i64 %67) #17
  call void @ext4_get_group_no_and_offset(ptr noundef %35, i64 noundef %95, ptr noundef null, ptr noundef nonnull %5) #17
  %96 = getelementptr inbounds %struct.buffer_head, ptr %76, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %5, align 4
  %99 = ptrtoint ptr %97 to i32
  %100 = shl i32 %99, 3
  %101 = and i32 %100, 24
  %102 = and i32 %99, -4
  %103 = inttoptr i32 %102 to ptr
  %104 = add i32 %101, %39
  %105 = add i32 %101, %98
  %106 = call i32 @_find_next_zero_bit_le(ptr noundef %103, i32 noundef %104, i32 noundef %105) #17
  %107 = sub i32 %106, %101
  %108 = call i32 @llvm.smin.i32(i32 %107, i32 %39) #17
  %109 = icmp sgt i32 %39, %107
  br i1 %109, label %110, label %145

110:                                              ; preds = %128, %81
  %111 = phi i32 [ %140, %128 ], [ %108, %81 ]
  %112 = load i32, ptr %4, align 4
  %113 = zext i32 %112 to i64
  %114 = load ptr, ptr %36, align 4
  %115 = getelementptr inbounds %struct.ext4_sb_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = zext i32 %116 to i64
  %118 = mul nuw i64 %117, %113
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %114, i32 0, i32 15
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.ext4_super_block, ptr %120, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = sext i32 %111 to i64
  %125 = add i64 %118, %124
  %126 = add i64 %125, %123
  %127 = call zeroext i1 @ext4_fc_replay_check_excluded(ptr noundef %35, i64 noundef %126) #17
  br i1 %127, label %128, label %142

128:                                              ; preds = %110
  %129 = add nsw i32 %111, 1
  store i32 %129, ptr %5, align 4
  %130 = load ptr, ptr %96, align 4
  %131 = ptrtoint ptr %130 to i32
  %132 = shl i32 %131, 3
  %133 = and i32 %132, 24
  %134 = and i32 %131, -4
  %135 = inttoptr i32 %134 to ptr
  %136 = add i32 %133, %39
  %137 = add i32 %133, %129
  %138 = call i32 @_find_next_zero_bit_le(ptr noundef %135, i32 noundef %136, i32 noundef %137) #17
  %139 = sub i32 %138, %133
  %140 = call i32 @llvm.smin.i32(i32 %139, i32 %39) #17
  %141 = icmp sgt i32 %39, %139
  br i1 %141, label %110, label %142

142:                                              ; preds = %128, %110
  %143 = phi i32 [ %140, %128 ], [ %111, %110 ]
  %144 = xor i1 %127, true
  br label %145

145:                                              ; preds = %142, %81
  %146 = phi i32 [ %108, %81 ], [ %143, %142 ]
  %147 = phi i1 [ false, %81 ], [ %144, %142 ]
  %148 = icmp eq ptr %76, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @__brelse(ptr noundef nonnull %76) #17
  br label %150

150:                                              ; preds = %149, %145
  br i1 %147, label %158, label %151

151:                                              ; preds = %150
  %152 = load i32, ptr %4, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %4, align 4
  %154 = load ptr, ptr %36, align 4
  %155 = getelementptr inbounds %struct.ext4_sb_info, ptr %154, i32 0, i32 8
  %156 = load i32, ptr %155, align 32
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %157 = icmp ult i32 %153, %156
  br i1 %157, label %74, label %158

158:                                              ; preds = %151, %150, %66
  %159 = phi i32 [ 0, %66 ], [ %146, %150 ], [ %146, %151 ]
  %160 = load i32, ptr %4, align 4
  %161 = load ptr, ptr %36, align 4
  %162 = getelementptr inbounds %struct.ext4_sb_info, ptr %161, i32 0, i32 8
  %163 = load i32, ptr %162, align 32
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %164 = icmp ult i32 %160, %163
  %165 = icmp slt i32 %159, %39
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %168, label %167

167:                                              ; preds = %158
  store i32 -28, ptr %2, align 4
  br label %184

168:                                              ; preds = %158
  %169 = load i32, ptr %4, align 4
  %170 = zext i32 %169 to i64
  %171 = load ptr, ptr %36, align 4
  %172 = getelementptr inbounds %struct.ext4_sb_info, ptr %171, i32 0, i32 2
  %173 = load i32, ptr %172, align 8
  %174 = zext i32 %173 to i64
  %175 = mul nuw i64 %174, %170
  %176 = getelementptr inbounds %struct.ext4_sb_info, ptr %171, i32 0, i32 15
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ext4_super_block, ptr %177, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = zext i32 %179 to i64
  %181 = sext i32 %159 to i64
  %182 = add i64 %175, %181
  %183 = add i64 %182, %180
  call void @ext4_mb_mark_bb(ptr noundef %35, i64 noundef %183, i32 noundef 1, i32 noundef 1) #17
  store i32 1, ptr %68, align 4
  br label %184

184:                                              ; preds = %168, %167, %78
  %185 = phi i64 [ 0, %78 ], [ 0, %167 ], [ %183, %168 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %777

186:                                              ; preds = %27
  %187 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 4
  %188 = load i32, ptr %187, align 4
  %189 = and i32 %188, 32
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %186
  %192 = getelementptr i8, ptr %32, i32 -124
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 2097152
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 8
  %198 = load i32, ptr %197, align 8
  %199 = or i32 %198, 4096
  store i32 %199, ptr %197, align 8
  br label %200

200:                                              ; preds = %196, %191, %186
  %201 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 8
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 1024
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %244

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %226, label %209

209:                                              ; preds = %205
  %210 = zext i32 %207 to i64
  %211 = tail call i32 @ext4_claim_free_clusters(ptr noundef %11, i64 noundef %210, i32 noundef %202) #17
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %218, %209
  %214 = tail call i32 @__cond_resched() #17
  %215 = load i32, ptr %206, align 4
  %216 = lshr i32 %215, 1
  store i32 %216, ptr %206, align 4
  %217 = icmp ult i32 %215, 2
  br i1 %217, label %226, label %218

218:                                              ; preds = %213
  %219 = load i32, ptr %201, align 8
  %220 = zext i32 %216 to i64
  %221 = tail call i32 @ext4_claim_free_clusters(ptr noundef %11, i64 noundef %220, i32 noundef %219) #17
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %213

223:                                              ; preds = %218, %209
  %224 = load i32, ptr %206, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223, %213, %205
  store i32 -28, ptr %2, align 4
  br label %777

227:                                              ; preds = %223
  %228 = load i32, ptr %201, align 8
  %229 = and i32 %228, 4096
  %230 = icmp eq i32 %229, 0
  %231 = load ptr, ptr %1, align 8
  %232 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 12
  %233 = load i32, ptr %232, align 16
  %234 = shl i32 %224, %233
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.inode, ptr %231, i32 0, i32 19
  %237 = load i8, ptr %236, align 2
  %238 = zext i8 %237 to i64
  %239 = shl i64 %235, %238
  tail call void @inode_add_bytes(ptr noundef %231, i64 noundef %239) #17
  %240 = select i1 %230, i32 7, i32 1
  tail call void @__mark_inode_dirty(ptr noundef %231, i32 noundef %240) #17
  %241 = load i32, ptr %206, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %227
  store i32 -122, ptr %2, align 4
  br label %746

244:                                              ; preds = %227, %200
  %245 = phi i32 [ %224, %227 ], [ 0, %200 ]
  %246 = phi i32 [ %241, %227 ], [ 0, %200 ]
  %247 = load ptr, ptr @ext4_ac_cachep, align 4
  %248 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %247, i32 noundef 3392) #17
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  store i32 0, ptr %251, align 4
  store i32 -12, ptr %2, align 4
  br label %728

252:                                              ; preds = %244
  tail call fastcc void @ext4_mb_initialize_context(ptr noundef nonnull %248, ptr noundef %1)
  store i32 0, ptr %2, align 4
  %253 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 17
  store i8 2, ptr %253, align 1
  %254 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !57
  %255 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %256 = inttoptr i32 %255 to ptr
  %257 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %256) #16, !srcloc !58
  %258 = add i32 %257, ptrtoint (ptr @discard_pa_seq to i32)
  %259 = inttoptr i32 %258 to ptr
  %260 = load i64, ptr %259, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %254) #17, !srcloc !59
  store i64 %260, ptr %6, align 8
  %261 = tail call fastcc zeroext i1 @ext4_mb_use_preallocated(ptr noundef nonnull %248)
  br i1 %261, label %299, label %262

262:                                              ; preds = %252
  store i8 1, ptr %253, align 1
  tail call fastcc void @ext4_mb_normalize_request(ptr noundef nonnull %248, ptr noundef %1)
  %263 = load ptr, ptr @ext4_pspace_cachep, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %266, !prof !15

265:                                              ; preds = %262
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5030, 0\0A.popsection", ""() #17, !srcloc !60
  unreachable

266:                                              ; preds = %262
  %267 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %263, i32 noundef 3392) #17
  %268 = icmp eq ptr %267, null
  br i1 %268, label %339, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %267, i32 0, i32 4
  store volatile i32 1, ptr %270, align 4
  %271 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 20
  store ptr %267, ptr %271, align 4
  store i32 0, ptr %2, align 4
  br label %272

272:                                              ; preds = %332, %269
  %273 = tail call fastcc i32 @ext4_mb_regular_allocator(ptr noundef nonnull %248)
  store i32 %273, ptr %2, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  tail call fastcc void @ext4_mb_pa_free(ptr noundef nonnull %248)
  tail call fastcc void @ext4_discard_allocated_blocks(ptr noundef nonnull %248)
  br label %335

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 14
  %278 = load i8, ptr %277, align 2
  %279 = icmp eq i8 %278, 2
  br i1 %279, label %280, label %299

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 2, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 5, i32 3
  %284 = load i32, ptr %283, align 4
  %285 = icmp slt i32 %282, %284
  br i1 %285, label %299, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 20
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %291, !prof !15

290:                                              ; preds = %286
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5043, 0\0A.popsection", ""() #17, !srcloc !61
  unreachable

291:                                              ; preds = %286
  store ptr null, ptr %287, align 4
  %292 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %288, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %292) #17, !srcloc !20
  %293 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %292, ptr %292, i32 1, ptr elementtype(i32) %292) #17, !srcloc !21
  %294 = extractvalue { i32, i32 } %293, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %297, label %296, !prof !11

296:                                              ; preds = %291
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 5045, i32 noundef 9, ptr noundef null) #17
  br label %297

297:                                              ; preds = %296, %291
  %298 = load ptr, ptr @ext4_pspace_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %298, ptr noundef nonnull %288) #17
  br label %299

299:                                              ; preds = %297, %280, %276, %252
  %300 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 14
  %301 = load i8, ptr %300, align 2
  %302 = icmp eq i8 %301, 2
  br i1 %302, label %303, label %332, !prof !11

303:                                              ; preds = %299
  %304 = tail call fastcc i32 @ext4_mb_mark_diskspace_used(ptr noundef nonnull %248, ptr noundef %0, i32 noundef %245)
  store i32 %304, ptr %2, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %303
  tail call fastcc void @ext4_discard_allocated_blocks(ptr noundef nonnull %248)
  br label %335

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 2
  %309 = load i32, ptr %308, align 8
  %310 = zext i32 %309 to i64
  %311 = load ptr, ptr %10, align 4
  %312 = getelementptr inbounds %struct.ext4_sb_info, ptr %311, i32 0, i32 2
  %313 = load i32, ptr %312, align 8
  %314 = zext i32 %313 to i64
  %315 = mul nuw i64 %314, %310
  %316 = getelementptr inbounds %struct.ext4_sb_info, ptr %311, i32 0, i32 15
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.ext4_super_block, ptr %317, i32 0, i32 5
  %319 = load i32, ptr %318, align 4
  %320 = zext i32 %319 to i64
  %321 = add nuw i64 %315, %320
  %322 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 1
  %323 = load i32, ptr %322, align 4
  %324 = getelementptr inbounds %struct.ext4_sb_info, ptr %311, i32 0, i32 12
  %325 = load i32, ptr %324, align 16
  %326 = shl i32 %323, %325
  %327 = sext i32 %326 to i64
  %328 = add i64 %321, %327
  %329 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 3
  %330 = load i32, ptr %329, align 4
  %331 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  store i32 %330, ptr %331, align 4
  br label %335

332:                                              ; preds = %299
  %333 = call fastcc zeroext i1 @ext4_mb_discard_preallocations_should_retry(ptr noundef %9, ptr noundef nonnull %248, ptr noundef nonnull %6)
  br i1 %333, label %272, label %334

334:                                              ; preds = %332
  tail call fastcc void @ext4_mb_pa_free(ptr noundef nonnull %248)
  br label %339

335:                                              ; preds = %307, %306, %275
  %336 = phi i64 [ 0, %275 ], [ %328, %307 ], [ 0, %306 ]
  %337 = load i32, ptr %2, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %345, label %341

339:                                              ; preds = %334, %266
  %340 = phi i32 [ -28, %334 ], [ -12, %266 ]
  store i32 %340, ptr %2, align 4
  br label %341

341:                                              ; preds = %339, %335
  %342 = phi i64 [ %336, %335 ], [ 0, %339 ]
  %343 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 3
  store i32 0, ptr %343, align 4
  %344 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  store i32 0, ptr %344, align 4
  br label %345

345:                                              ; preds = %341, %335
  %346 = phi i64 [ %342, %341 ], [ %336, %335 ]
  %347 = load ptr, ptr %248, align 8
  %348 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 1
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr inbounds %struct.super_block, ptr %349, i32 0, i32 27
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 20
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %567, label %355

355:                                              ; preds = %345
  %356 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 10
  %357 = load i16, ptr %356, align 4
  %358 = icmp eq i16 %357, 1
  br i1 %358, label %359, label %461

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %360) #17
  %361 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 3
  %362 = load i32, ptr %361, align 4
  %363 = getelementptr inbounds %struct.ext4_sb_info, ptr %351, i32 0, i32 12
  %364 = load i32, ptr %363, align 16
  %365 = shl i32 %362, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 6
  %368 = load i64, ptr %367, align 8
  %369 = add i64 %368, %366
  store i64 %369, ptr %367, align 8
  %370 = load i32, ptr %361, align 4
  %371 = load i32, ptr %363, align 16
  %372 = shl i32 %370, %371
  %373 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 7
  %374 = load i32, ptr %373, align 8
  %375 = add i32 %374, %372
  store i32 %375, ptr %373, align 8
  %376 = load i32, ptr %361, align 4
  %377 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 9
  %378 = load i32, ptr %377, align 8
  %379 = sub i32 %378, %376
  store i32 %379, ptr %377, align 8
  %380 = load i32, ptr %361, align 4
  %381 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 8
  %382 = load i32, ptr %381, align 4
  %383 = sub i32 %382, %380
  store i32 %383, ptr %381, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %384 = load i16, ptr %360, align 4
  %385 = add i16 %384, 1
  store i16 %385, ptr %360, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %386 = load i32, ptr %377, align 8
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %459, label %388, !prof !15

388:                                              ; preds = %359
  %389 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 11
  %390 = load ptr, ptr %389, align 8
  tail call void @_raw_spin_lock(ptr noundef %390) #17
  %391 = getelementptr inbounds %struct.list_head, ptr %353, i32 0, i32 1
  %392 = load ptr, ptr %391, align 4
  %393 = load ptr, ptr %353, align 4
  %394 = getelementptr inbounds %struct.list_head, ptr %393, i32 0, i32 1
  store ptr %392, ptr %394, align 4
  store volatile ptr %393, ptr %392, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %391, align 4
  %395 = load ptr, ptr %389, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %396 = load i16, ptr %395, align 4
  %397 = add i16 %396, 1
  store i16 %397, ptr %395, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %398 = load ptr, ptr %348, align 4
  %399 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 21
  %400 = load ptr, ptr %399, align 8
  %401 = load ptr, ptr %352, align 4
  %402 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %401, i32 0, i32 9
  %403 = load i32, ptr %402, align 8
  %404 = icmp eq i32 %403, 0
  %405 = tail call i32 @llvm.ctlz.i32(i32 %403, i1 false) #17, !range !29
  %406 = sub nsw i32 31, %405
  %407 = tail call i32 @llvm.smin.i32(i32 %406, i32 9) #17
  %408 = select i1 %404, i32 -1, i32 %407
  %409 = getelementptr inbounds %struct.ext4_locality_group, ptr %400, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %409) #17
  %410 = getelementptr %struct.ext4_locality_group, ptr %400, i32 0, i32 1, i32 %408
  %411 = load volatile ptr, ptr %410, align 4
  %412 = icmp eq ptr %411, %410
  br i1 %412, label %448, label %413

413:                                              ; preds = %388
  %414 = getelementptr inbounds %struct.list_head, ptr %401, i32 0, i32 1
  br label %415

415:                                              ; preds = %441, %413
  %416 = phi ptr [ %411, %413 ], [ %444, %441 ]
  %417 = phi i32 [ 0, %413 ], [ %443, %441 ]
  %418 = phi i32 [ 1, %413 ], [ %442, %441 ]
  %419 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %416, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %419) #17
  %420 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %416, i32 0, i32 5
  %421 = load i32, ptr %420, align 8
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %415
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %424 = load i16, ptr %419, align 4
  %425 = add i16 %424, 1
  store i16 %425, ptr %419, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %441

426:                                              ; preds = %415
  %427 = icmp eq i32 %417, 0
  br i1 %427, label %428, label %436

428:                                              ; preds = %426
  %429 = load i32, ptr %402, align 8
  %430 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %416, i32 0, i32 9
  %431 = load i32, ptr %430, align 8
  %432 = icmp slt i32 %429, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %428
  %434 = getelementptr inbounds %struct.list_head, ptr %416, i32 0, i32 1
  %435 = load ptr, ptr %434, align 4
  store ptr %416, ptr %401, align 4
  store ptr %435, ptr %414, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !62
  store volatile ptr %401, ptr %435, align 4
  store ptr %401, ptr %434, align 4
  br label %436

436:                                              ; preds = %433, %428, %426
  %437 = phi i32 [ 1, %426 ], [ 1, %433 ], [ 0, %428 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %438 = load i16, ptr %419, align 4
  %439 = add i16 %438, 1
  store i16 %439, ptr %419, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %440 = add i32 %418, 1
  br label %441

441:                                              ; preds = %436, %423
  %442 = phi i32 [ %418, %423 ], [ %440, %436 ]
  %443 = phi i32 [ %417, %423 ], [ %437, %436 ]
  %444 = load volatile ptr, ptr %416, align 4
  %445 = icmp eq ptr %444, %410
  br i1 %445, label %446, label %415

446:                                              ; preds = %441
  %447 = icmp eq i32 %443, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %446, %388
  %449 = phi i32 [ %442, %446 ], [ 1, %388 ]
  %450 = getelementptr %struct.ext4_locality_group, ptr %400, i32 0, i32 1, i32 %408, i32 1
  %451 = load ptr, ptr %450, align 4
  store ptr %410, ptr %401, align 4
  %452 = getelementptr inbounds %struct.list_head, ptr %401, i32 0, i32 1
  store ptr %451, ptr %452, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !62
  store volatile ptr %401, ptr %451, align 4
  store ptr %401, ptr %450, align 4
  br label %453

453:                                              ; preds = %448, %446
  %454 = phi i32 [ %449, %448 ], [ %442, %446 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %455 = load i16, ptr %409, align 4
  %456 = add i16 %455, 1
  store i16 %456, ptr %409, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %457 = icmp sgt i32 %454, 8
  br i1 %457, label %458, label %459

458:                                              ; preds = %453
  tail call fastcc void @ext4_mb_discard_lg_preallocations(ptr noundef %398, ptr noundef %400, i32 noundef %408, i32 noundef %454) #17
  br label %459

459:                                              ; preds = %458, %453, %359
  %460 = load i16, ptr %356, align 4
  br label %461

461:                                              ; preds = %459, %355
  %462 = phi i16 [ %460, %459 ], [ %357, %355 ]
  %463 = icmp eq i16 %462, 0
  br i1 %463, label %464, label %477

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 11
  %466 = load ptr, ptr %465, align 8
  tail call void @_raw_spin_lock(ptr noundef %466) #17
  %467 = getelementptr i8, ptr %347, i32 420
  %468 = getelementptr inbounds %struct.list_head, ptr %353, i32 0, i32 1
  %469 = load ptr, ptr %468, align 4
  %470 = load ptr, ptr %353, align 4
  %471 = getelementptr inbounds %struct.list_head, ptr %470, i32 0, i32 1
  store ptr %469, ptr %471, align 4
  store volatile ptr %470, ptr %469, align 4
  %472 = load ptr, ptr %467, align 4
  %473 = getelementptr inbounds %struct.list_head, ptr %472, i32 0, i32 1
  store ptr %353, ptr %473, align 4
  store ptr %472, ptr %353, align 4
  store ptr %467, ptr %468, align 4
  store volatile ptr %353, ptr %467, align 4
  %474 = load ptr, ptr %465, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %475 = load i16, ptr %474, align 4
  %476 = add i16 %475, 1
  store i16 %476, ptr %474, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %477

477:                                              ; preds = %464, %461
  %478 = load ptr, ptr %348, align 4
  %479 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %479) #17
  %480 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %480) #17, !srcloc !20
  %481 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %480, ptr %480, i32 1, ptr elementtype(i32) %480) #17, !srcloc !21
  %482 = extractvalue { i32, i32 } %481, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %477
  %485 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 9
  %486 = load i32, ptr %485, align 8
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %484, %477
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %489 = load i16, ptr %479, align 4
  %490 = add i16 %489, 1
  store i16 %490, ptr %479, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %567

491:                                              ; preds = %484
  %492 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 5
  %493 = load i32, ptr %492, align 8
  switch i32 %493, label %497 [
    i32 1, label %494
    i32 0, label %506
  ]

494:                                              ; preds = %491
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %495 = load i16, ptr %479, align 4
  %496 = add i16 %495, 1
  store i16 %496, ptr %479, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %567

497:                                              ; preds = %491
  %498 = load i16, ptr %356, align 4
  %499 = zext i16 %498 to i32
  %500 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 6
  %501 = load i64, ptr %500, align 8
  %502 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 7
  %503 = load i32, ptr %502, align 8
  %504 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 8
  %505 = load i32, ptr %504, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %478, ptr noundef nonnull @__func__.ext4_mb_mark_pa_deleted, i32 noundef 4491, ptr noundef nonnull @.str.74, i32 noundef %499, i64 noundef %501, i32 noundef %503, i32 noundef %505) #17
  br label %514

506:                                              ; preds = %491
  store i32 1, ptr %492, align 8
  %507 = load i16, ptr %356, align 4
  %508 = icmp eq i16 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 12
  %511 = load ptr, ptr %510, align 4
  %512 = getelementptr i8, ptr %511, i32 416
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %512) #17, !srcloc !20
  %513 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %512, ptr %512, i32 1, ptr elementtype(i32) %512) #17, !srcloc !41
  br label %514

514:                                              ; preds = %509, %506, %497
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %515 = load i16, ptr %479, align 4
  %516 = add i16 %515, 1
  store i16 %516, ptr %479, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %517 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 6
  %518 = load i64, ptr %517, align 8
  %519 = load i16, ptr %356, align 4
  %520 = icmp eq i16 %519, 1
  %521 = sext i1 %520 to i64
  %522 = add i64 %518, %521
  %523 = tail call i32 @ext4_get_group_number(ptr noundef %478, i64 noundef %522) #17
  %524 = getelementptr inbounds %struct.super_block, ptr %478, i32 0, i32 27
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr inbounds %struct.ext4_sb_info, ptr %525, i32 0, i32 41
  %527 = load ptr, ptr %526, align 16
  %528 = and i32 %523, 63
  %529 = getelementptr [64 x %struct.bgl_lock], ptr %527, i32 0, i32 %528
  %530 = tail call i32 @_raw_spin_trylock(ptr noundef %529) #17
  %531 = icmp eq i32 %530, 0
  %532 = load ptr, ptr %524, align 4
  %533 = getelementptr inbounds %struct.ext4_sb_info, ptr %532, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %533) #17
  br i1 %531, label %539, label %534

534:                                              ; preds = %514
  %535 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %533, ptr %533, i32 0, i32 -1, ptr elementtype(i32) %533) #17, !srcloc !34
  %536 = extractvalue { i32, i32, i32 } %535, 0
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %545, label %538

538:                                              ; preds = %534
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %545

539:                                              ; preds = %514
  %540 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %533, ptr %533, i32 8, i32 1, ptr elementtype(i32) %533) #17, !srcloc !34
  %541 = extractvalue { i32, i32, i32 } %540, 0
  %542 = icmp eq i32 %541, 8
  br i1 %542, label %544, label %543

543:                                              ; preds = %539
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %544

544:                                              ; preds = %543, %539
  tail call void @_raw_spin_lock(ptr noundef %529) #17
  br label %545

545:                                              ; preds = %544, %538, %534
  %546 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 1
  %547 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 1, i32 1
  %548 = load ptr, ptr %547, align 4
  %549 = load ptr, ptr %546, align 4
  %550 = getelementptr inbounds %struct.list_head, ptr %549, i32 0, i32 1
  store ptr %548, ptr %550, align 4
  store volatile ptr %549, ptr %548, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %546, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %547, align 4
  %551 = load ptr, ptr %524, align 4
  %552 = getelementptr inbounds %struct.ext4_sb_info, ptr %551, i32 0, i32 41
  %553 = load ptr, ptr %552, align 16
  %554 = getelementptr [64 x %struct.bgl_lock], ptr %553, i32 0, i32 %528
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %555 = load i16, ptr %554, align 4
  %556 = add i16 %555, 1
  store i16 %556, ptr %554, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %557 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 11
  %558 = load ptr, ptr %557, align 8
  tail call void @_raw_spin_lock(ptr noundef %558) #17
  %559 = getelementptr inbounds %struct.list_head, ptr %353, i32 0, i32 1
  %560 = load ptr, ptr %559, align 4
  %561 = load ptr, ptr %353, align 4
  %562 = getelementptr inbounds %struct.list_head, ptr %561, i32 0, i32 1
  store ptr %560, ptr %562, align 4
  store volatile ptr %561, ptr %560, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %559, align 4
  %563 = load ptr, ptr %557, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %564 = load i16, ptr %563, align 4
  %565 = add i16 %564, 1
  store i16 %565, ptr %563, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %566 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %353, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %566, ptr noundef nonnull @ext4_mb_pa_callback) #17
  br label %567

567:                                              ; preds = %545, %494, %488, %345
  %568 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 18
  %569 = load ptr, ptr %568, align 4
  %570 = icmp eq ptr %569, null
  br i1 %570, label %588, label %571

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.page, ptr %569, i32 0, i32 1
  %573 = load volatile i32, ptr %572, align 4
  %574 = and i32 %573, 1
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %578, label %576, !prof !11

576:                                              ; preds = %571
  %577 = add i32 %573, -1
  br label %580

578:                                              ; preds = %571
  %579 = ptrtoint ptr %569 to i32
  br label %580

580:                                              ; preds = %578, %576
  %581 = phi i32 [ %577, %576 ], [ %579, %578 ]
  %582 = inttoptr i32 %581 to ptr
  %583 = getelementptr inbounds %struct.page, ptr %582, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %583) #17, !srcloc !20
  %584 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %583, ptr %583, i32 1, ptr elementtype(i32) %583) #17, !srcloc !21
  %585 = extractvalue { i32, i32 } %584, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %580
  tail call void @__put_page(ptr noundef %582) #17
  br label %588

588:                                              ; preds = %587, %580, %567
  %589 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 19
  %590 = load ptr, ptr %589, align 8
  %591 = icmp eq ptr %590, null
  br i1 %591, label %609, label %592

592:                                              ; preds = %588
  %593 = getelementptr inbounds %struct.page, ptr %590, i32 0, i32 1
  %594 = load volatile i32, ptr %593, align 4
  %595 = and i32 %594, 1
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %599, label %597, !prof !11

597:                                              ; preds = %592
  %598 = add i32 %594, -1
  br label %601

599:                                              ; preds = %592
  %600 = ptrtoint ptr %590 to i32
  br label %601

601:                                              ; preds = %599, %597
  %602 = phi i32 [ %598, %597 ], [ %600, %599 ]
  %603 = inttoptr i32 %602 to ptr
  %604 = getelementptr inbounds %struct.page, ptr %603, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %604) #17, !srcloc !20
  %605 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %604, ptr %604, i32 1, ptr elementtype(i32) %604) #17, !srcloc !21
  %606 = extractvalue { i32, i32 } %605, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %609

608:                                              ; preds = %601
  tail call void @__put_page(ptr noundef %603) #17
  br label %609

609:                                              ; preds = %608, %601, %588
  %610 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 8
  %611 = load i32, ptr %610, align 8
  %612 = and i32 %611, 128
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %617, label %614

614:                                              ; preds = %609
  %615 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 21
  %616 = load ptr, ptr %615, align 8
  tail call void @mutex_unlock(ptr noundef %616) #17
  br label %617

617:                                              ; preds = %614, %609
  %618 = load ptr, ptr %348, align 4
  %619 = getelementptr inbounds %struct.super_block, ptr %618, i32 0, i32 27
  %620 = load ptr, ptr %619, align 4
  %621 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 78
  %622 = load i32, ptr %621, align 64
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %676, label %624

624:                                              ; preds = %617
  %625 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 3, i32 3
  %626 = load i32, ptr %625, align 4
  %627 = icmp sgt i32 %626, 0
  br i1 %627, label %628, label %676

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 87
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %629) #17, !srcloc !20
  %630 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %629, ptr %629, i32 1, ptr elementtype(i32) %629) #17, !srcloc !52
  %631 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 3
  %632 = load i32, ptr %631, align 4
  %633 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 89
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %633) #17, !srcloc !20
  %634 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %633, ptr %633, i32 %632, ptr elementtype(i32) %633) #17, !srcloc !52
  %635 = load i32, ptr %631, align 4
  %636 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 2, i32 3
  %637 = load i32, ptr %636, align 4
  %638 = icmp slt i32 %635, %637
  br i1 %638, label %642, label %639

639:                                              ; preds = %628
  %640 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 88
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %640) #17, !srcloc !20
  %641 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %640, ptr %640, i32 1, ptr elementtype(i32) %640) #17, !srcloc !52
  br label %642

642:                                              ; preds = %639, %628
  %643 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 11
  %644 = load i16, ptr %643, align 8
  %645 = zext i16 %644 to i32
  %646 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 90
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %646) #17, !srcloc !20
  %647 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %646, ptr %646, i32 %645, ptr elementtype(i32) %646) #17, !srcloc !52
  %648 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 9
  %649 = load i16, ptr %648, align 4
  %650 = zext i16 %649 to i32
  %651 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 91
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %651) #17, !srcloc !20
  %652 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %651, ptr %651, i32 %650, ptr elementtype(i32) %651) #17, !srcloc !52
  %653 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 3, i32 1
  %654 = load i32, ptr %653, align 4
  %655 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 1
  %656 = load i32, ptr %655, align 4
  %657 = icmp eq i32 %654, %656
  br i1 %657, label %658, label %667

658:                                              ; preds = %642
  %659 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 3, i32 2
  %660 = load i32, ptr %659, align 8
  %661 = getelementptr inbounds %struct.ext4_allocation_context, ptr %248, i32 0, i32 4, i32 2
  %662 = load i32, ptr %661, align 8
  %663 = icmp eq i32 %660, %662
  br i1 %663, label %664, label %667

664:                                              ; preds = %658
  %665 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 92
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %665) #17, !srcloc !20
  %666 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %665, ptr %665, i32 1, ptr elementtype(i32) %665) #17, !srcloc !52
  br label %667

667:                                              ; preds = %664, %658, %642
  %668 = load i16, ptr %643, align 8
  %669 = zext i16 %668 to i32
  %670 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 76
  %671 = load i32, ptr %670, align 8
  %672 = icmp ult i32 %671, %669
  br i1 %672, label %673, label %676

673:                                              ; preds = %667
  %674 = getelementptr inbounds %struct.ext4_sb_info, ptr %620, i32 0, i32 93
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %674) #17, !srcloc !20
  %675 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %674, ptr %674, i32 1, ptr elementtype(i32) %674) #17, !srcloc !52
  br label %676

676:                                              ; preds = %673, %667, %624, %617
  %677 = load i8, ptr %253, align 1
  %678 = icmp eq i8 %677, 1
  br i1 %678, label %679, label %695

679:                                              ; preds = %676
  %680 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mballoc_alloc, i32 0, i32 1), align 4
  %681 = icmp sgt i32 %680, 0
  br i1 %681, label %682, label %711

682:                                              ; preds = %679
  %683 = tail call ptr @llvm.thread.pointer() #17
  %684 = getelementptr inbounds %struct.thread_info, ptr %683, i32 0, i32 2
  %685 = load i32, ptr %684, align 8
  %686 = lshr i32 %685, 5
  %687 = getelementptr i32, ptr @__cpu_online_mask, i32 %686
  %688 = load volatile i32, ptr %687, align 4
  %689 = and i32 %685, 31
  %690 = shl nuw i32 1, %689
  %691 = and i32 %690, %688
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %711, label %693

693:                                              ; preds = %682
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !63
  %694 = tail call i32 @__traceiter_ext4_mballoc_alloc(ptr noundef null, ptr noundef %248) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !64
  br label %711

695:                                              ; preds = %676
  %696 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mballoc_prealloc, i32 0, i32 1), align 4
  %697 = icmp sgt i32 %696, 0
  br i1 %697, label %698, label %711

698:                                              ; preds = %695
  %699 = tail call ptr @llvm.thread.pointer() #17
  %700 = getelementptr inbounds %struct.thread_info, ptr %699, i32 0, i32 2
  %701 = load i32, ptr %700, align 8
  %702 = lshr i32 %701, 5
  %703 = getelementptr i32, ptr @__cpu_online_mask, i32 %702
  %704 = load volatile i32, ptr %703, align 4
  %705 = and i32 %701, 31
  %706 = shl nuw i32 1, %705
  %707 = and i32 %706, %704
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %711, label %709

709:                                              ; preds = %698
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !65
  %710 = tail call i32 @__traceiter_ext4_mballoc_prealloc(ptr noundef null, ptr noundef %248) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !66
  br label %711

711:                                              ; preds = %709, %698, %695, %693, %682, %679
  %712 = getelementptr inbounds %struct.inode, ptr %347, i32 0, i32 8
  %713 = load ptr, ptr %712, align 4
  %714 = getelementptr inbounds %struct.super_block, ptr %713, i32 0, i32 27
  %715 = load ptr, ptr %714, align 4
  %716 = getelementptr i8, ptr %347, i32 416
  %717 = load volatile i32, ptr %716, align 4
  %718 = getelementptr inbounds %struct.ext4_sb_info, ptr %715, i32 0, i32 81
  %719 = load i32, ptr %718, align 4
  %720 = lshr i32 %719, 2
  %721 = add i32 %719, 1
  %722 = add i32 %721, %720
  %723 = icmp ugt i32 %717, %722
  br i1 %723, label %724, label %726

724:                                              ; preds = %711
  %725 = sub i32 %717, %719
  tail call void @ext4_discard_preallocations(ptr noundef %347, i32 noundef %725) #17
  br label %726

726:                                              ; preds = %724, %711
  %727 = load ptr, ptr @ext4_ac_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %727, ptr noundef nonnull %248) #17
  br label %728

728:                                              ; preds = %726, %250
  %729 = phi i64 [ %346, %726 ], [ 0, %250 ]
  %730 = icmp eq i32 %246, 0
  br i1 %730, label %746, label %731

731:                                              ; preds = %728
  %732 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  %733 = load i32, ptr %732, align 4
  %734 = icmp ugt i32 %246, %733
  br i1 %734, label %735, label %746

735:                                              ; preds = %731
  %736 = load ptr, ptr %1, align 8
  %737 = sub i32 %246, %733
  %738 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 12
  %739 = load i32, ptr %738, align 16
  %740 = shl i32 %737, %739
  %741 = zext i32 %740 to i64
  %742 = getelementptr inbounds %struct.inode, ptr %736, i32 0, i32 19
  %743 = load i8, ptr %742, align 2
  %744 = zext i8 %743 to i64
  %745 = shl i64 %741, %744
  tail call void @inode_sub_bytes(ptr noundef %736, i64 noundef %745) #17
  tail call void @__mark_inode_dirty(ptr noundef %736, i32 noundef 1) #17
  br label %746

746:                                              ; preds = %735, %731, %728, %243
  %747 = phi i32 [ %224, %243 ], [ %245, %735 ], [ %245, %731 ], [ %245, %728 ]
  %748 = phi i64 [ 0, %243 ], [ %729, %735 ], [ %729, %731 ], [ %729, %728 ]
  %749 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  %750 = load i32, ptr %749, align 4
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %761

752:                                              ; preds = %746
  %753 = load i32, ptr %201, align 8
  %754 = and i32 %753, 1024
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %761

756:                                              ; preds = %752
  %757 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 39
  %758 = zext i32 %747 to i64
  %759 = sub nsw i64 0, %758
  %760 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %757, i64 noundef %759, i32 noundef %760) #17
  br label %761

761:                                              ; preds = %756, %752, %746
  %762 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_allocate_blocks, i32 0, i32 1), align 4
  %763 = icmp sgt i32 %762, 0
  br i1 %763, label %764, label %777

764:                                              ; preds = %761
  %765 = tail call ptr @llvm.thread.pointer() #17
  %766 = getelementptr inbounds %struct.thread_info, ptr %765, i32 0, i32 2
  %767 = load i32, ptr %766, align 8
  %768 = lshr i32 %767, 5
  %769 = getelementptr i32, ptr @__cpu_online_mask, i32 %768
  %770 = load volatile i32, ptr %769, align 4
  %771 = and i32 %767, 31
  %772 = shl nuw i32 1, %771
  %773 = and i32 %772, %770
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %777, label %775

775:                                              ; preds = %764
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !67
  %776 = tail call i32 @__traceiter_ext4_allocate_blocks(ptr noundef null, ptr noundef %1, i64 noundef %748) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !68
  br label %777

777:                                              ; preds = %775, %764, %761, %226, %184
  %778 = phi i64 [ %185, %184 ], [ 0, %226 ], [ %748, %761 ], [ %748, %764 ], [ %748, %775 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i64 %778
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_claim_free_clusters(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_initialize_context(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !10
  %12 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 5
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 29
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 50
  %30 = load i32, ptr %29, align 8
  %31 = zext i32 %30 to i64
  %32 = shl nuw i64 %31, 32
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i64 [ %32, %28 ], [ 0, %23 ]
  %35 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = or i64 %34, %37
  %39 = icmp ult i64 %18, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %2
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i64 [ %21, %40 ], [ %18, %33 ]
  call void @ext4_get_group_no_and_offset(ptr noundef %7, i64 noundef %42, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %43 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 0, %46
  %48 = and i32 %44, %47
  %49 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  store i8 1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  store ptr %7, ptr %51, align 4
  %52 = load ptr, ptr %1, align 8
  store ptr %52, ptr %0, align 4
  %53 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2
  store i32 %48, ptr %53, align 4
  %54 = load i32, ptr %3, align 4
  %55 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 2
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %4, align 4
  %57 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 3
  store i32 %16, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %59, ptr noundef align 4 dereferenceable(16) %53, i32 16, i1 false)
  %60 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 8
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  store i32 %61, ptr %62, align 4
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 2
  %65 = load i8, ptr %64, align 4
  %66 = and i32 %61, 288
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %143, !prof !69

68:                                               ; preds = %41
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 12
  %70 = load i32, ptr %69, align 16
  %71 = shl i32 %16, %70
  %72 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 22
  %73 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 13
  br label %74

74:                                               ; preds = %82, %68
  %75 = load volatile i32, ptr %72, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %78, %74
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !70
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !71
  %79 = load volatile i32, ptr %72, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %78

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %75, %74 ], [ %79, %78 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !72
  %84 = load i64, ptr %73, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !73
  %85 = load volatile i32, ptr %72, align 4
  %86 = icmp eq i32 %85, %83
  br i1 %86, label %87, label %74

87:                                               ; preds = %82
  %88 = add i32 %71, %48
  %89 = zext i32 %88 to i64
  %90 = load ptr, ptr %51, align 4
  %91 = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 3
  %92 = load i32, ptr %91, align 16
  %93 = zext i32 %92 to i64
  %94 = add i64 %84, -1
  %95 = add i64 %94, %93
  %96 = zext i8 %65 to i64
  %97 = ashr i64 %95, %96
  %98 = icmp eq i64 %97, %89
  br i1 %98, label %99, label %111

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 105
  %101 = load volatile i32, ptr %100, align 4
  %102 = icmp slt i32 %101, 3
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load ptr, ptr %0, align 4
  %105 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 37
  %106 = load volatile i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %62, align 4
  %110 = or i32 %109, 64
  store i32 %110, ptr %62, align 4
  br label %143

111:                                              ; preds = %103, %99, %87
  %112 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 80
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, ptr %62, align 4
  %117 = or i32 %116, 2048
  store i32 %117, ptr %62, align 4
  br label %143

118:                                              ; preds = %111
  %119 = call i64 @llvm.smax.i64(i64 %97, i64 %89) #17
  %120 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 75
  %121 = load i32, ptr %120, align 4
  %122 = zext i32 %121 to i64
  %123 = icmp ugt i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, ptr %62, align 4
  %126 = or i32 %125, 2048
  store i32 %126, ptr %62, align 4
  br label %143

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 21
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131, !prof !11

131:                                              ; preds = %127
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5164, 0\0A.popsection", ""() #17, !srcloc !74
  unreachable

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 106
  %134 = load ptr, ptr %133, align 16
  %135 = ptrtoint ptr %134 to i32
  %136 = call i32 @llvm.read_register.i32(metadata !0) #17
  %137 = inttoptr i32 %136 to ptr
  %138 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %137) #16, !srcloc !58
  %139 = add i32 %138, %135
  %140 = inttoptr i32 %139 to ptr
  store ptr %140, ptr %128, align 4
  %141 = load i32, ptr %62, align 4
  %142 = or i32 %141, 128
  store i32 %142, ptr %62, align 4
  call void @mutex_lock(ptr noundef %140) #17
  br label %143

143:                                              ; preds = %132, %124, %115, %108, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext4_mb_use_preallocated(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %164, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %12 = getelementptr i8, ptr %11, i32 420
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %64, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 12
  br label %18

18:                                               ; preds = %61, %15
  %19 = phi ptr [ %13, %15 ], [ %62, %61 ]
  %20 = load i32, ptr %16, align 4
  %21 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %19, i32 0, i32 7
  %22 = load i32, ptr %21, align 8
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %61, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %19, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %17, align 16
  %28 = shl i32 %26, %27
  %29 = add i32 %28, %22
  %30 = icmp ult i32 %20, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr i8, ptr %32, i32 -124
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %19, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = sext i32 %28 to i64
  %41 = add i64 %39, %40
  %42 = icmp ugt i64 %41, 4294967295
  br i1 %42, label %61, label %43

43:                                               ; preds = %37, %31
  %44 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %19, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %44) #17
  %45 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %19, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %19, i32 0, i32 9
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %19, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #17, !srcloc !20
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #17, !srcloc !52
  tail call fastcc void @ext4_mb_use_inode_pa(ptr noundef %0, ptr noundef %19)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %55 = load i16, ptr %44, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %57 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 15
  store i8 10, ptr %57, align 1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %164

58:                                               ; preds = %48, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %59 = load i16, ptr %44, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %61

61:                                               ; preds = %58, %37, %24, %18
  %62 = load volatile ptr, ptr %19, align 4
  %63 = icmp eq ptr %62, %12
  br i1 %63, label %64, label %18

64:                                               ; preds = %61, %10
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %65 = load i32, ptr %6, align 4
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %164, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 21
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %164, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = tail call i32 @llvm.ctlz.i32(i32 %74, i1 false) #17, !range !29
  %77 = sub nsw i32 31, %76
  %78 = tail call i32 @llvm.smin.i32(i32 %77, i32 9)
  %79 = select i1 %75, i32 -1, i32 %78
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 27
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ext4_sb_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = zext i32 %87 to i64
  %89 = mul nuw i64 %88, %83
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %85, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ext4_super_block, ptr %91, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = zext i32 %93 to i64
  %95 = add nuw i64 %89, %94
  %96 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ext4_sb_info, ptr %85, i32 0, i32 12
  %99 = load i32, ptr %98, align 16
  %100 = shl i32 %97, %99
  %101 = sext i32 %100 to i64
  %102 = add i64 %95, %101
  br label %103

103:                                              ; preds = %147, %72
  %104 = phi i32 [ %79, %72 ], [ %149, %147 ]
  %105 = phi ptr [ null, %72 ], [ %148, %147 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %106 = getelementptr %struct.ext4_locality_group, ptr %70, i32 0, i32 1, i32 %104
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %147, label %109

109:                                              ; preds = %141, %103
  %110 = phi ptr [ %145, %141 ], [ %107, %103 ]
  %111 = phi ptr [ %142, %141 ], [ %105, %103 ]
  %112 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %110, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %112) #17
  %113 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %110, i32 0, i32 5
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %110, i32 0, i32 9
  %118 = load i32, ptr %117, align 8
  %119 = load i32, ptr %73, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %141, label %121

121:                                              ; preds = %116
  %122 = icmp eq ptr %111, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %110, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %124) #17, !srcloc !20
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %124, ptr %124, i32 1, ptr elementtype(i32) %124) #17, !srcloc !52
  br label %141

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %111, i32 0, i32 6
  %128 = load i64, ptr %127, align 8
  %129 = sub i64 %102, %128
  %130 = tail call i64 @llvm.abs.i64(i64 %129, i1 false) #17
  %131 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %110, i32 0, i32 6
  %132 = load i64, ptr %131, align 8
  %133 = sub i64 %102, %132
  %134 = tail call i64 @llvm.abs.i64(i64 %133, i1 false) #17
  %135 = icmp ugt i64 %130, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %111, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #17, !srcloc !20
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #17, !srcloc !41
  %139 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %110, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #17, !srcloc !20
  %140 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #17, !srcloc !52
  br label %141

141:                                              ; preds = %136, %126, %123, %116, %109
  %142 = phi ptr [ %111, %116 ], [ %111, %109 ], [ %110, %123 ], [ %110, %136 ], [ %111, %126 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %143 = load i16, ptr %112, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %112, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %145 = load volatile ptr, ptr %110, align 4
  %146 = icmp eq ptr %145, %106
  br i1 %146, label %147, label %109

147:                                              ; preds = %141, %103
  %148 = phi ptr [ %105, %103 ], [ %142, %141 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %149 = add i32 %104, 1
  %150 = icmp slt i32 %149, 10
  br i1 %150, label %103, label %151

151:                                              ; preds = %147
  %152 = icmp eq ptr %148, null
  br i1 %152, label %164, label %153

153:                                              ; preds = %151
  %154 = load i32, ptr %73, align 4
  %155 = load ptr, ptr %2, align 4
  %156 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %148, i32 0, i32 6
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %159 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  tail call void @ext4_get_group_no_and_offset(ptr noundef %155, i64 noundef %157, ptr noundef %158, ptr noundef %159) #17
  %160 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  store i32 %154, ptr %160, align 4
  %161 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  store i8 2, ptr %161, align 2
  %162 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 20
  store ptr %148, ptr %162, align 4
  %163 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 15
  store i8 20, ptr %163, align 1
  br label %164

164:                                              ; preds = %153, %151, %68, %64, %52, %1
  %165 = phi i1 [ true, %52 ], [ true, %153 ], [ false, %1 ], [ false, %64 ], [ false, %68 ], [ false, %151 ]
  ret i1 %165
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_normalize_request(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 352
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %337, !prof !75

12:                                               ; preds = %2
  %13 = and i32 %9, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 21
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !15

19:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3981, 0\0A.popsection", ""() #17, !srcloc !76
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 80
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  store i32 %22, ptr %23, align 4
  br label %337

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %32 = load i32, ptr %31, align 16
  %33 = shl i32 %30, %32
  %34 = add i32 %33, %28
  %35 = zext i8 %26 to i64
  %36 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 22
  %37 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  br label %38

38:                                               ; preds = %46, %24
  %39 = load volatile i32, ptr %36, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %42, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !70
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !71
  %43 = load volatile i32, ptr %36, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %42

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !72
  %48 = load i64, ptr %37, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !73
  %49 = load volatile i32, ptr %36, align 4
  %50 = icmp eq i32 %49, %47
  br i1 %50, label %51, label %38

51:                                               ; preds = %46
  %52 = zext i8 %26 to i32
  %53 = zext i32 %34 to i64
  %54 = shl i64 %53, %35
  %55 = icmp slt i64 %54, %48
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 4
  %58 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 22
  %59 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 13
  br label %60

60:                                               ; preds = %68, %56
  %61 = load volatile i32, ptr %58, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %64, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !70
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !71
  %65 = load volatile i32, ptr %58, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %64

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %61, %60 ], [ %65, %64 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !72
  %70 = load i64, ptr %59, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !73
  %71 = load volatile i32, ptr %58, align 4
  %72 = icmp eq i32 %71, %69
  br i1 %72, label %73, label %60

73:                                               ; preds = %68, %51
  %74 = phi i64 [ %54, %51 ], [ %70, %68 ]
  %75 = shl i32 2, %52
  %76 = icmp slt i64 %74, 16385
  br i1 %76, label %134, label %77

77:                                               ; preds = %73
  %78 = icmp ult i64 %74, 32769
  br i1 %78, label %134, label %79

79:                                               ; preds = %77
  %80 = icmp ult i64 %74, 65537
  br i1 %80, label %134, label %81

81:                                               ; preds = %79
  %82 = icmp ult i64 %74, 131073
  br i1 %82, label %134, label %83

83:                                               ; preds = %81
  %84 = icmp ult i64 %74, 262145
  br i1 %84, label %134, label %85

85:                                               ; preds = %83
  %86 = icmp ult i64 %74, 524289
  br i1 %86, label %134, label %87

87:                                               ; preds = %85
  %88 = icmp ult i64 %74, 1048577
  br i1 %88, label %134, label %89

89:                                               ; preds = %87
  %90 = icmp ult i64 %74, 4194305
  %91 = icmp slt i32 %75, 2049
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, ptr %27, align 4
  %95 = zext i32 %94 to i64
  %96 = sub nsw i32 21, %52
  %97 = zext i32 %96 to i64
  %98 = lshr i64 %95, %97
  %99 = shl nuw nsw i64 %98, 21
  br label %134

100:                                              ; preds = %89
  %101 = icmp ult i64 %74, 8388609
  %102 = icmp ult i32 %75, 4097
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, ptr %27, align 4
  %106 = zext i32 %105 to i64
  %107 = sub nsw i32 22, %52
  %108 = zext i32 %107 to i64
  %109 = lshr i64 %106, %108
  %110 = shl nuw nsw i64 %109, 22
  br label %134

111:                                              ; preds = %100
  %112 = load i32, ptr %29, align 4
  %113 = lshr i32 8388608, %52
  %114 = icmp sle i32 %112, %113
  %115 = icmp ult i32 %75, 8193
  %116 = select i1 %114, i1 true, i1 %115
  %117 = load i32, ptr %27, align 4
  %118 = zext i32 %117 to i64
  br i1 %116, label %119, label %124

119:                                              ; preds = %111
  %120 = sub nsw i32 23, %52
  %121 = zext i32 %120 to i64
  %122 = lshr i64 %118, %121
  %123 = shl nuw nsw i64 %122, 23
  br label %134

124:                                              ; preds = %111
  %125 = shl i64 %118, %35
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 27
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.ext4_sb_info, ptr %128, i32 0, i32 12
  %130 = load i32, ptr %129, align 16
  %131 = shl i32 %112, %130
  %132 = sext i32 %131 to i64
  %133 = shl i64 %132, %35
  br label %134

134:                                              ; preds = %124, %119, %104, %93, %87, %85, %83, %81, %79, %77, %73
  %135 = phi i64 [ %99, %93 ], [ %110, %104 ], [ %123, %119 ], [ %125, %124 ], [ 0, %73 ], [ 0, %77 ], [ 0, %79 ], [ 0, %81 ], [ 0, %83 ], [ 0, %85 ], [ 0, %87 ]
  %136 = phi i64 [ 2097152, %93 ], [ 4194304, %104 ], [ 8388608, %119 ], [ %133, %124 ], [ 16384, %73 ], [ 32768, %77 ], [ 65536, %79 ], [ 131072, %81 ], [ 262144, %83 ], [ 524288, %85 ], [ 1048576, %87 ]
  %137 = ashr i64 %136, %35
  %138 = ashr i64 %135, %35
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 6
  %141 = load i64, ptr %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = icmp ult i32 %145, %139
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = add i32 %145, 1
  %149 = sub i32 %148, %139
  %150 = zext i32 %149 to i64
  %151 = sub i64 %137, %150
  br label %152

152:                                              ; preds = %147, %143, %134
  %153 = phi i32 [ %148, %147 ], [ %139, %143 ], [ %139, %134 ]
  %154 = phi i64 [ %151, %147 ], [ %137, %143 ], [ %137, %134 ]
  %155 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 7
  %156 = load i64, ptr %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %152
  %159 = zext i32 %153 to i64
  %160 = add i64 %154, %159
  %161 = add i64 %160, -1
  %162 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 4
  %163 = load i32, ptr %162, align 8
  %164 = zext i32 %163 to i64
  %165 = icmp slt i64 %161, %164
  %166 = sub nsw i64 %164, %159
  %167 = select i1 %165, i64 %154, i64 %166
  br label %168

168:                                              ; preds = %158, %152
  %169 = phi i64 [ %154, %152 ], [ %167, %158 ]
  %170 = load ptr, ptr %3, align 4
  %171 = getelementptr inbounds %struct.super_block, ptr %170, i32 0, i32 27
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.ext4_sb_info, ptr %172, i32 0, i32 2
  %174 = load i32, ptr %173, align 8
  %175 = zext i32 %174 to i64
  %176 = icmp sgt i64 %169, %175
  %177 = trunc i64 %169 to i32
  %178 = select i1 %176, i32 %174, i32 %177
  %179 = add i32 %178, %153
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %180 = getelementptr i8, ptr %7, i32 420
  %181 = load volatile ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, %180
  br i1 %182, label %243, label %183

183:                                              ; preds = %238, %168
  %184 = phi ptr [ %241, %238 ], [ %181, %168 ]
  %185 = phi i32 [ %240, %238 ], [ %179, %168 ]
  %186 = phi i32 [ %239, %238 ], [ %153, %168 ]
  %187 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %184, i32 0, i32 5
  %188 = load i32, ptr %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %238

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %184, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %191) #17
  %192 = load i32, ptr %187, align 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %195 = load i16, ptr %191, align 4
  %196 = add i16 %195, 1
  store i16 %196, ptr %191, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %238

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %184, i32 0, i32 7
  %199 = load i32, ptr %198, align 8
  %200 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %184, i32 0, i32 8
  %201 = load i32, ptr %200, align 4
  %202 = load ptr, ptr %3, align 4
  %203 = getelementptr inbounds %struct.super_block, ptr %202, i32 0, i32 27
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.ext4_sb_info, ptr %204, i32 0, i32 12
  %206 = load i32, ptr %205, align 16
  %207 = shl i32 %201, %206
  %208 = add i32 %207, %199
  %209 = load i32, ptr %27, align 4
  %210 = icmp ult i32 %209, %208
  %211 = xor i1 %210, true
  %212 = icmp ult i32 %209, %199
  %213 = select i1 %211, i1 true, i1 %212
  br i1 %213, label %215, label %214, !prof !77

214:                                              ; preds = %197
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4111, 0\0A.popsection", ""() #17, !srcloc !78
  unreachable

215:                                              ; preds = %197
  %216 = icmp ult i32 %199, %185
  %217 = icmp ugt i32 %208, %186
  %218 = select i1 %216, i1 %217, i1 false
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %220 = load i16, ptr %191, align 4
  %221 = add i16 %220, 1
  store i16 %221, ptr %191, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %238

222:                                              ; preds = %215
  %223 = icmp ule i32 %199, %186
  %224 = icmp uge i32 %208, %185
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %227, !prof !15

226:                                              ; preds = %222
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4118, 0\0A.popsection", ""() #17, !srcloc !79
  unreachable

227:                                              ; preds = %222
  %228 = and i1 %210, %212
  %229 = select i1 %210, i32 %186, i32 %208
  br i1 %228, label %230, label %233

230:                                              ; preds = %227
  %231 = icmp ugt i32 %199, %185
  br i1 %231, label %232, label %233, !prof !15

232:                                              ; preds = %230
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4125, 0\0A.popsection", ""() #17, !srcloc !80
  unreachable

233:                                              ; preds = %230, %227
  %234 = phi i32 [ %186, %230 ], [ %229, %227 ]
  %235 = phi i32 [ %199, %230 ], [ %185, %227 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %236 = load i16, ptr %191, align 4
  %237 = add i16 %236, 1
  store i16 %237, ptr %191, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %238

238:                                              ; preds = %233, %219, %194, %183
  %239 = phi i32 [ %186, %194 ], [ %186, %219 ], [ %234, %233 ], [ %186, %183 ]
  %240 = phi i32 [ %185, %194 ], [ %185, %219 ], [ %235, %233 ], [ %185, %183 ]
  %241 = load volatile ptr, ptr %184, align 4
  %242 = icmp eq ptr %241, %180
  br i1 %242, label %243, label %183

243:                                              ; preds = %238, %168
  %244 = phi i32 [ %153, %168 ], [ %239, %238 ]
  %245 = phi i32 [ %179, %168 ], [ %240, %238 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %246 = sub i32 %245, %244
  %247 = zext i32 %246 to i64
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %248 = load volatile ptr, ptr %180, align 4
  %249 = icmp eq ptr %248, %180
  br i1 %249, label %277, label %250

250:                                              ; preds = %272, %243
  %251 = phi ptr [ %275, %272 ], [ %248, %243 ]
  %252 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %251, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %252) #17
  %253 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %251, i32 0, i32 5
  %254 = load i32, ptr %253, align 8
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %251, i32 0, i32 7
  %258 = load i32, ptr %257, align 8
  %259 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %251, i32 0, i32 8
  %260 = load i32, ptr %259, align 4
  %261 = load ptr, ptr %3, align 4
  %262 = getelementptr inbounds %struct.super_block, ptr %261, i32 0, i32 27
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.ext4_sb_info, ptr %263, i32 0, i32 12
  %265 = load i32, ptr %264, align 16
  %266 = shl i32 %260, %265
  %267 = add i32 %266, %258
  %268 = icmp uge i32 %244, %267
  %269 = icmp ule i32 %245, %258
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %272, label %271, !prof !77

271:                                              ; preds = %256
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4142, 0\0A.popsection", ""() #17, !srcloc !81
  unreachable

272:                                              ; preds = %256, %250
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %273 = load i16, ptr %252, align 4
  %274 = add i16 %273, 1
  store i16 %274, ptr %252, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %275 = load volatile ptr, ptr %251, align 4
  %276 = icmp eq ptr %275, %180
  br i1 %276, label %277, label %250

277:                                              ; preds = %272, %243
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %278 = zext i32 %244 to i64
  %279 = add nuw nsw i64 %247, %278
  %280 = load i32, ptr %27, align 4
  %281 = zext i32 %280 to i64
  %282 = icmp ule i64 %279, %281
  %283 = icmp ugt i32 %244, %280
  %284 = select i1 %282, i1 %283, i1 false
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %286, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.78, i32 noundef %244, i32 noundef %246, i32 noundef %280) #17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4154, 0\0A.popsection", ""() #17, !srcloc !82
  unreachable

287:                                              ; preds = %277
  %288 = icmp eq i32 %245, %244
  br i1 %288, label %296, label %289, !prof !15

289:                                              ; preds = %287
  %290 = load ptr, ptr %3, align 4
  %291 = getelementptr inbounds %struct.super_block, ptr %290, i32 0, i32 27
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.ext4_sb_info, ptr %292, i32 0, i32 2
  %294 = load i32, ptr %293, align 8
  %295 = icmp ugt i32 %246, %294
  br i1 %295, label %296, label %297, !prof !15

296:                                              ; preds = %289, %287
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4156, 0\0A.popsection", ""() #17, !srcloc !83
  unreachable

297:                                              ; preds = %289
  %298 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3
  store i32 %244, ptr %298, align 4
  %299 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 11
  %300 = load i32, ptr %299, align 4
  %301 = zext i32 %300 to i64
  %302 = add nsw i64 %247, -1
  %303 = add nsw i64 %302, %301
  %304 = load i32, ptr %31, align 16
  %305 = zext i32 %304 to i64
  %306 = ashr i64 %303, %305
  %307 = trunc i64 %306 to i32
  %308 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  store i32 %307, ptr %308, align 4
  %309 = load i64, ptr %155, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %297
  %312 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 4
  %313 = load i32, ptr %312, align 8
  %314 = zext i32 %313 to i64
  %315 = icmp eq i64 %279, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %311
  %317 = sub i64 %309, %247
  %318 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 2
  %319 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 1
  tail call void @ext4_get_group_no_and_offset(ptr noundef %290, i64 noundef %317, ptr noundef %318, ptr noundef %319) #17
  %320 = load i32, ptr %8, align 4
  %321 = or i32 %320, 512
  store i32 %321, ptr %8, align 4
  br label %322

322:                                              ; preds = %316, %311, %297
  %323 = load i64, ptr %140, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %337, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 3
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %327, 1
  %329 = icmp eq i32 %328, %244
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load ptr, ptr %3, align 4
  %332 = add i64 %323, 1
  %333 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 2
  %334 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 1
  tail call void @ext4_get_group_no_and_offset(ptr noundef %331, i64 noundef %332, ptr noundef %333, ptr noundef %334) #17
  %335 = load i32, ptr %8, align 4
  %336 = or i32 %335, 512
  store i32 %336, ptr %8, align 4
  br label %337

337:                                              ; preds = %330, %325, %322, %20, %2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_mb_regular_allocator(ptr noundef %0) unnamed_addr #6 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_buddy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 -124
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 524288
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i32 [ %9, %1 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  %21 = load i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %24, !prof !15

23:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2651, 0\0A.popsection", ""() #17, !srcloc !84
  unreachable

24:                                               ; preds = %18
  %25 = call fastcc i32 @ext4_mb_find_by_goal(ptr noundef %0, ptr noundef nonnull %3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %876

27:                                               ; preds = %24
  %28 = load i8, ptr %20, align 2
  %29 = icmp eq i8 %28, 2
  br i1 %29, label %861, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %861, !prof !11

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = call i32 @llvm.ctlz.i32(i32 %37, i1 false) #17, !range !29
  %40 = sub nuw nsw i32 32, %39
  %41 = select i1 %38, i32 0, i32 %40
  %42 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 16
  store i8 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 79
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %63, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, 2
  %51 = icmp ugt i32 %41, %50
  br i1 %51, label %63, label %52

52:                                               ; preds = %46
  %53 = add nsw i32 %41, -1
  %54 = shl nuw i32 1, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %37, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %53, i32 %50) #17, !srcloc !85
  %60 = and i32 %59, %53
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %42, align 4
  %62 = load i32, ptr %31, align 4
  br label %63

63:                                               ; preds = %58, %52, %46, %35
  %64 = phi i8 [ 0, %52 ], [ %61, %58 ], [ 0, %46 ], [ 0, %35 ]
  %65 = phi i32 [ %32, %52 ], [ %62, %58 ], [ %32, %46 ], [ %32, %35 ]
  %66 = and i32 %65, 2048
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %69) #17
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 83
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 2
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 84
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 1
  store i32 %74, ptr %75, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %76 = load i16, ptr %69, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %69, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %78 = load i8, ptr %42, align 4
  br label %79

79:                                               ; preds = %68, %63
  %80 = phi i8 [ %78, %68 ], [ %64, %63 ]
  %81 = icmp eq i8 %80, 0
  %82 = zext i1 %81 to i32
  %83 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 15
  %84 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 2
  %85 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 74
  %87 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 10
  %88 = icmp eq i32 %19, 0
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 86
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 85
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 110
  %92 = getelementptr inbounds %struct.ext4_buddy, ptr %3, i32 0, i32 2
  %93 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 9
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 73
  %95 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 78
  %96 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  %97 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 102
  %98 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %99 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  br label %100

100:                                              ; preds = %845, %79
  %101 = phi i32 [ 0, %79 ], [ %846, %845 ]
  %102 = phi i32 [ 0, %79 ], [ %847, %845 ]
  %103 = phi i32 [ %82, %79 ], [ %848, %845 ]
  %104 = phi i32 [ 0, %79 ], [ %849, %845 ]
  %105 = icmp ult i32 %103, 4
  br i1 %105, label %106, label %825

106:                                              ; preds = %100
  %107 = load i8, ptr %20, align 2
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %112, label %825

109:                                              ; preds = %822
  %110 = load i8, ptr %20, align 2
  %111 = icmp eq i8 %110, 1
  br i1 %111, label %112, label %825

112:                                              ; preds = %109, %106
  %113 = phi i32 [ %813, %109 ], [ %101, %106 ]
  %114 = phi i32 [ %811, %109 ], [ %102, %106 ]
  %115 = phi i32 [ %823, %109 ], [ %103, %106 ]
  %116 = trunc i32 %115 to i8
  store i8 %116, ptr %83, align 1
  %117 = load i32, ptr %84, align 4
  store i32 %117, ptr %85, align 4
  %118 = load i32, ptr %86, align 16
  %119 = trunc i32 %118 to i16
  store i16 %119, ptr %87, align 2
  br i1 %88, label %810, label %120

120:                                              ; preds = %112
  %121 = icmp ugt i32 %115, 1
  %122 = icmp ult i32 %115, 3
  %123 = icmp ult i32 %115, 2
  br label %124

124:                                              ; preds = %806, %120
  %125 = phi i32 [ %117, %120 ], [ %491, %806 ]
  %126 = phi i32 [ 0, %120 ], [ %808, %806 ]
  %127 = phi i32 [ %114, %120 ], [ %774, %806 ]
  %128 = phi i32 [ %113, %120 ], [ %490, %806 ]
  %129 = phi i32 [ %117, %120 ], [ %807, %806 ]
  %130 = call i32 @__cond_resched() #17
  %131 = load i8, ptr %83, align 1
  %132 = zext i8 %131 to i32
  %133 = load ptr, ptr %4, align 4
  %134 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 27
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 18
  %137 = load i32, ptr %136, align 16
  %138 = and i32 %137, 128
  %139 = icmp eq i32 %138, 0
  %140 = icmp ugt i8 %131, 1
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %456, label %142, !prof !86

142:                                              ; preds = %124
  %143 = load ptr, ptr %0, align 4
  %144 = getelementptr i8, ptr %143, i32 -124
  %145 = load volatile i32, ptr %144, align 4
  %146 = and i32 %145, 524288
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %456

148:                                              ; preds = %142
  %149 = load i16, ptr %87, align 2
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %456

151:                                              ; preds = %148
  switch i8 %131, label %455 [
    i8 0, label %152
    i8 1, label %307
  ]

152:                                              ; preds = %151
  %153 = load i8, ptr %20, align 2
  %154 = icmp eq i8 %153, 2
  br i1 %154, label %456, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 78
  %157 = load i32, ptr %156, align 64
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %31, align 4
  %161 = and i32 %160, 32768
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163, !prof !11

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 95
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %164) #17, !srcloc !20
  %165 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %164, ptr %164, i32 1, ptr elementtype(i32) %164) #17, !srcloc !52
  %166 = load ptr, ptr %4, align 4
  br label %167

167:                                              ; preds = %163, %159, %155
  %168 = phi ptr [ %133, %155 ], [ %166, %163 ], [ %133, %159 ]
  %169 = load i8, ptr %42, align 4
  %170 = zext i8 %169 to i32
  %171 = getelementptr inbounds %struct.super_block, ptr %168, i32 0, i32 2
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %173, 2
  %175 = icmp ugt i32 %174, %170
  br i1 %175, label %176, label %456

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 71
  %178 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 72
  %179 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 97
  br label %180

180:                                              ; preds = %294, %176
  %181 = phi i32 [ %170, %176 ], [ %295, %294 ]
  %182 = load ptr, ptr %177, align 4
  %183 = getelementptr %struct.list_head, ptr %182, i32 %181
  %184 = load volatile ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, %183
  br i1 %185, label %294, label %186

186:                                              ; preds = %180
  %187 = load ptr, ptr %178, align 8
  %188 = getelementptr %struct.rwlock_t, ptr %187, i32 %181
  call void @_raw_read_lock(ptr noundef %188) #17
  %189 = load ptr, ptr %177, align 4
  %190 = getelementptr %struct.list_head, ptr %189, i32 %181
  %191 = load volatile ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, %190
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load ptr, ptr %178, align 8
  %195 = getelementptr %struct.rwlock_t, ptr %194, i32 %181
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #17, !srcloc !20
  %196 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %195) #17, !srcloc !25
  %197 = extractvalue { i32, i32 } %196, 0
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  br label %200

200:                                              ; preds = %199, %193
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  br label %294

201:                                              ; preds = %275, %186
  %202 = phi ptr [ %276, %275 ], [ %191, %186 ]
  %203 = load i32, ptr %156, align 64
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %179) #17, !srcloc !20
  %206 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %179, ptr %179, i64 1, ptr elementtype(i64) %179) #17, !srcloc !87
  br label %207

207:                                              ; preds = %205, %201
  %208 = getelementptr i8, ptr %202, i32 -48
  %209 = load i32, ptr %208, align 4
  %210 = load ptr, ptr %4, align 4
  %211 = getelementptr inbounds %struct.super_block, ptr %210, i32 0, i32 27
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.ext4_sb_info, ptr %212, i32 0, i32 110
  %214 = load i32, ptr %213, align 4
  %215 = shl nuw i32 1, %214
  %216 = getelementptr inbounds %struct.ext4_sb_info, ptr %212, i32 0, i32 8
  %217 = load i32, ptr %216, align 32
  %218 = icmp ugt i32 %217, %209
  br i1 %218, label %220, label %219, !prof !11

219:                                              ; preds = %207
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

220:                                              ; preds = %207
  %221 = getelementptr inbounds %struct.ext4_sb_info, ptr %212, i32 0, i32 28
  %222 = load i32, ptr %221, align 64
  %223 = lshr i32 %209, %222
  %224 = getelementptr inbounds %struct.ext4_sb_info, ptr %212, i32 0, i32 7
  %225 = load i32, ptr %224, align 4
  %226 = add i32 %225, -1
  %227 = and i32 %226, %209
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %228 = load ptr, ptr %211, align 4
  %229 = getelementptr inbounds %struct.ext4_sb_info, ptr %228, i32 0, i32 58
  %230 = load volatile ptr, ptr %229, align 4
  %231 = getelementptr ptr, ptr %230, i32 %223
  %232 = load ptr, ptr %231, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %233 = getelementptr ptr, ptr %232, i32 %227
  %234 = load ptr, ptr %233, align 4
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %235, 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %275, !prof !11

238:                                              ; preds = %220
  %239 = getelementptr inbounds %struct.ext4_group_info, ptr %234, i32 0, i32 3
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %275, label %242, !prof !88

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.ext4_group_info, ptr %234, i32 0, i32 4
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %275, label %246, !prof !88

246:                                              ; preds = %242
  %247 = load i8, ptr %42, align 4
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %250, !prof !15

249:                                              ; preds = %246
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2442, 0\0A.popsection", ""() #17, !srcloc !89
  unreachable

250:                                              ; preds = %246
  %251 = load i32, ptr %31, align 4
  %252 = and i32 %251, 32
  %253 = icmp ne i32 %252, 0
  %254 = icmp sgt i32 %215, 3
  %255 = select i1 %253, i1 %254, i1 false
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = add nsw i32 %215, -1
  %258 = and i32 %257, %209
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %275, label %260, !prof !88

260:                                              ; preds = %256, %250
  %261 = load i32, ptr %36, align 4
  %262 = icmp slt i32 %240, %261
  br i1 %262, label %275, label %263, !prof !88

263:                                              ; preds = %260
  %264 = zext i8 %247 to i32
  %265 = load ptr, ptr %4, align 4
  %266 = getelementptr inbounds %struct.super_block, ptr %265, i32 0, i32 2
  %267 = load i8, ptr %266, align 4
  %268 = zext i8 %267 to i32
  %269 = add nuw nsw i32 %268, 2
  %270 = icmp ugt i32 %269, %264
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.ext4_group_info, ptr %234, i32 0, i32 5
  %273 = load i32, ptr %272, align 4
  %274 = icmp slt i32 %273, %264
  br i1 %274, label %275, label %282, !prof !15

275:                                              ; preds = %271, %260, %256, %242, %238, %220
  %276 = load ptr, ptr %202, align 4
  %277 = load ptr, ptr %177, align 4
  %278 = getelementptr %struct.list_head, ptr %277, i32 %181
  %279 = icmp eq ptr %276, %278
  br i1 %279, label %284, label %201

280:                                              ; preds = %263
  %281 = getelementptr i8, ptr %202, i32 -72
  br label %284

282:                                              ; preds = %271
  %283 = getelementptr i8, ptr %202, i32 -72
  br label %284

284:                                              ; preds = %282, %280, %275
  %285 = phi ptr [ %281, %280 ], [ %283, %282 ], [ null, %275 ]
  %286 = load ptr, ptr %178, align 8
  %287 = getelementptr %struct.rwlock_t, ptr %286, i32 %181
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %287) #17, !srcloc !20
  %288 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %287) #17, !srcloc !25
  %289 = extractvalue { i32, i32 } %288, 0
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  br label %292

292:                                              ; preds = %291, %284
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  %293 = icmp eq ptr %285, null
  br i1 %293, label %294, label %302

294:                                              ; preds = %292, %200, %180
  %295 = add nuw nsw i32 %181, 1
  %296 = load ptr, ptr %4, align 4
  %297 = getelementptr inbounds %struct.super_block, ptr %296, i32 0, i32 2
  %298 = load i8, ptr %297, align 4
  %299 = zext i8 %298 to i32
  %300 = add nuw nsw i32 %299, 2
  %301 = icmp ult i32 %295, %300
  br i1 %301, label %180, label %456

302:                                              ; preds = %292
  %303 = getelementptr inbounds %struct.ext4_group_info, ptr %285, i32 0, i32 6
  %304 = load i32, ptr %303, align 4
  store i32 %304, ptr %85, align 4
  %305 = load i32, ptr %31, align 4
  %306 = or i32 %305, 32768
  store i32 %306, ptr %31, align 4
  br label %456

307:                                              ; preds = %151
  %308 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 70
  %309 = call i32 @_raw_read_trylock(ptr noundef %308) #17
  %310 = icmp eq i32 %309, 0
  %311 = load i32, ptr %31, align 4
  br i1 %310, label %312, label %314

312:                                              ; preds = %307
  %313 = or i32 %311, 131072
  store i32 %313, ptr %31, align 4
  br label %456

314:                                              ; preds = %307
  %315 = and i32 %311, 65536
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %366, label %317, !prof !11

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 78
  %319 = load i32, ptr %318, align 64
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 96
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %322) #17, !srcloc !20
  %323 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %322, ptr %322, i32 1, ptr elementtype(i32) %322) #17, !srcloc !52
  br label %324

324:                                              ; preds = %321, %317
  %325 = load ptr, ptr %4, align 4
  %326 = load i32, ptr %85, align 4
  %327 = getelementptr inbounds %struct.super_block, ptr %325, i32 0, i32 27
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.ext4_sb_info, ptr %328, i32 0, i32 8
  %330 = load i32, ptr %329, align 32
  %331 = icmp ugt i32 %330, %326
  br i1 %331, label %333, label %332, !prof !11

332:                                              ; preds = %324
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

333:                                              ; preds = %324
  %334 = getelementptr inbounds %struct.ext4_sb_info, ptr %328, i32 0, i32 28
  %335 = load i32, ptr %334, align 64
  %336 = lshr i32 %326, %335
  %337 = getelementptr inbounds %struct.ext4_sb_info, ptr %328, i32 0, i32 7
  %338 = load i32, ptr %337, align 4
  %339 = add i32 %338, -1
  %340 = and i32 %339, %326
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %341 = load ptr, ptr %327, align 4
  %342 = getelementptr inbounds %struct.ext4_sb_info, ptr %341, i32 0, i32 58
  %343 = load volatile ptr, ptr %342, align 4
  %344 = getelementptr ptr, ptr %343, i32 %336
  %345 = load ptr, ptr %344, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %346 = getelementptr ptr, ptr %345, i32 %340
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr inbounds %struct.ext4_group_info, ptr %347, i32 0, i32 9
  %349 = call ptr @rb_next(ptr noundef %348) #17
  %350 = icmp eq ptr %349, null
  br i1 %350, label %447, label %351

351:                                              ; preds = %333
  %352 = getelementptr %struct.ext4_sb_info, ptr %135, i32 0, i32 97, i32 1
  br label %353

353:                                              ; preds = %363, %351
  %354 = phi ptr [ %349, %351 ], [ %364, %363 ]
  %355 = load i32, ptr %318, align 64
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %353
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %352) #17, !srcloc !20
  %358 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %352, ptr %352, i64 1, ptr elementtype(i64) %352) #17, !srcloc !87
  br label %359

359:                                              ; preds = %357, %353
  %360 = getelementptr i8, ptr %354, i32 -36
  %361 = load i32, ptr %360, align 4
  %362 = call fastcc zeroext i1 @ext4_mb_good_group(ptr noundef %0, i32 noundef %361, i32 noundef 1) #17
  br i1 %362, label %441, label %363, !prof !11

363:                                              ; preds = %359
  %364 = call ptr @rb_next(ptr noundef nonnull %354) #17
  %365 = icmp eq ptr %364, null
  br i1 %365, label %447, label %353

366:                                              ; preds = %314
  %367 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 69
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %447, label %370

370:                                              ; preds = %428, %366
  %371 = phi ptr [ %437, %428 ], [ %368, %366 ]
  %372 = phi i32 [ %430, %428 ], [ 0, %366 ]
  %373 = phi ptr [ %429, %428 ], [ null, %366 ]
  %374 = getelementptr i8, ptr %371, i32 -36
  %375 = load i32, ptr %374, align 4
  %376 = load ptr, ptr %4, align 4
  %377 = getelementptr inbounds %struct.super_block, ptr %376, i32 0, i32 27
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr inbounds %struct.ext4_sb_info, ptr %378, i32 0, i32 8
  %380 = load i32, ptr %379, align 32
  %381 = icmp ugt i32 %380, %375
  br i1 %381, label %383, label %382, !prof !11

382:                                              ; preds = %370
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

383:                                              ; preds = %370
  %384 = getelementptr inbounds %struct.ext4_sb_info, ptr %378, i32 0, i32 28
  %385 = load i32, ptr %384, align 64
  %386 = lshr i32 %375, %385
  %387 = getelementptr inbounds %struct.ext4_sb_info, ptr %378, i32 0, i32 7
  %388 = load i32, ptr %387, align 4
  %389 = add i32 %388, -1
  %390 = and i32 %389, %375
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %391 = load ptr, ptr %377, align 4
  %392 = getelementptr inbounds %struct.ext4_sb_info, ptr %391, i32 0, i32 58
  %393 = load volatile ptr, ptr %392, align 4
  %394 = getelementptr ptr, ptr %393, i32 %386
  %395 = load ptr, ptr %394, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %396 = getelementptr ptr, ptr %395, i32 %390
  %397 = load ptr, ptr %396, align 4
  %398 = load volatile i32, ptr %397, align 4
  %399 = and i32 %398, 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %428, !prof !11

401:                                              ; preds = %383
  %402 = getelementptr inbounds %struct.ext4_group_info, ptr %397, i32 0, i32 3
  %403 = load i32, ptr %402, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %428, label %405

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.ext4_group_info, ptr %397, i32 0, i32 4
  %407 = load i32, ptr %406, align 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %428, label %409

409:                                              ; preds = %405
  %410 = sdiv i32 %403, %407
  %411 = load i32, ptr %36, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %428, label %413

413:                                              ; preds = %409
  %414 = getelementptr i8, ptr %371, i32 -44
  %415 = load i32, ptr %414, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %421, label %417

417:                                              ; preds = %413
  %418 = getelementptr i8, ptr %371, i32 -48
  %419 = load i32, ptr %418, align 4
  %420 = sdiv i32 %419, %415
  br label %421

421:                                              ; preds = %417, %413
  %422 = phi i32 [ %420, %417 ], [ 0, %413 ]
  %423 = icmp eq i32 %372, 0
  %424 = icmp slt i32 %422, %372
  %425 = select i1 %423, i1 true, i1 %424
  %426 = select i1 %425, ptr %371, ptr %373
  %427 = select i1 %425, i32 %422, i32 %372
  br label %428

428:                                              ; preds = %421, %409, %405, %401, %383
  %429 = phi ptr [ %426, %421 ], [ %373, %383 ], [ %373, %401 ], [ %373, %405 ], [ %373, %409 ]
  %430 = phi i32 [ %427, %421 ], [ %372, %383 ], [ %372, %401 ], [ %372, %405 ], [ %372, %409 ]
  %431 = phi i32 [ %422, %421 ], [ 0, %383 ], [ 0, %401 ], [ 0, %405 ], [ 0, %409 ]
  %432 = load i32, ptr %36, align 4
  %433 = icmp sgt i32 %431, %432
  %434 = getelementptr inbounds %struct.rb_node, ptr %371, i32 0, i32 1
  %435 = getelementptr inbounds %struct.rb_node, ptr %371, i32 0, i32 2
  %436 = select i1 %433, ptr %434, ptr %435
  %437 = load ptr, ptr %436, align 4
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %370

439:                                              ; preds = %428
  %440 = icmp eq ptr %429, null
  br i1 %440, label %447, label %441

441:                                              ; preds = %439, %359
  %442 = phi ptr [ %429, %439 ], [ %354, %359 ]
  %443 = getelementptr i8, ptr %442, i32 -36
  %444 = load i32, ptr %443, align 4
  %445 = load i32, ptr %31, align 4
  %446 = or i32 %445, 65536
  store i32 %446, ptr %31, align 4
  br label %447

447:                                              ; preds = %441, %439, %366, %363, %333
  %448 = phi i32 [ %444, %441 ], [ %129, %439 ], [ %129, %366 ], [ %129, %333 ], [ %129, %363 ]
  %449 = phi i32 [ %132, %441 ], [ 2, %439 ], [ 2, %366 ], [ 2, %333 ], [ 2, %363 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %308) #17, !srcloc !20
  %450 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %308) #17, !srcloc !25
  %451 = extractvalue { i32, i32 } %450, 0
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %447
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  br label %454

454:                                              ; preds = %453, %447
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  store i32 %448, ptr %85, align 4
  br label %456

455:                                              ; preds = %151
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1067, i32 noundef 9, ptr noundef null) #17
  br label %456

456:                                              ; preds = %455, %454, %312, %302, %294, %167, %152, %148, %142, %124
  %457 = phi i32 [ %129, %124 ], [ %129, %455 ], [ %129, %312 ], [ %448, %454 ], [ %129, %152 ], [ %304, %302 ], [ %129, %148 ], [ %129, %142 ], [ %129, %167 ], [ %129, %294 ]
  %458 = phi i32 [ %132, %124 ], [ %132, %455 ], [ 1, %312 ], [ %449, %454 ], [ 0, %152 ], [ %132, %302 ], [ %132, %148 ], [ %132, %142 ], [ 1, %167 ], [ 1, %294 ]
  %459 = icmp eq i32 %458, %115
  br i1 %459, label %460, label %845

460:                                              ; preds = %456
  %461 = icmp eq i32 %125, %457
  br i1 %461, label %462, label %489

462:                                              ; preds = %460
  %463 = load i32, ptr %2, align 4
  br i1 %121, label %467, label %464

464:                                              ; preds = %462
  %465 = load i32, ptr %89, align 32
  %466 = icmp ult i32 %463, %465
  br i1 %466, label %467, label %489

467:                                              ; preds = %464, %462
  %468 = load i32, ptr %90, align 4
  %469 = load ptr, ptr %6, align 4
  %470 = getelementptr inbounds %struct.ext4_sb_info, ptr %469, i32 0, i32 15
  %471 = load ptr, ptr %470, align 4
  %472 = getelementptr inbounds %struct.ext4_super_block, ptr %471, i32 0, i32 29
  %473 = load i32, ptr %472, align 8
  %474 = and i32 %473, 512
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %483, label %476

476:                                              ; preds = %467
  %477 = load i32, ptr %91, align 4
  %478 = shl nuw i32 1, %477
  %479 = add i32 %478, -1
  %480 = and i32 %479, %125
  %481 = sub i32 %478, %480
  %482 = call i32 @llvm.umin.i32(i32 %481, i32 %468)
  br label %483

483:                                              ; preds = %476, %467
  %484 = phi i32 [ %482, %476 ], [ %468, %467 ]
  %485 = call i32 @ext4_mb_prefetch(ptr noundef %5, i32 noundef %125, i32 noundef %484, ptr noundef nonnull %2)
  %486 = load i32, ptr %2, align 4
  %487 = icmp eq i32 %486, %463
  %488 = select i1 %487, i32 0, i32 %484
  br label %489

489:                                              ; preds = %483, %464, %460
  %490 = phi i32 [ %488, %483 ], [ %128, %464 ], [ %128, %460 ]
  %491 = phi i32 [ %485, %483 ], [ %125, %464 ], [ %125, %460 ]
  %492 = load ptr, ptr %4, align 4
  %493 = getelementptr inbounds %struct.super_block, ptr %492, i32 0, i32 27
  %494 = load ptr, ptr %493, align 4
  %495 = getelementptr inbounds %struct.ext4_sb_info, ptr %494, i32 0, i32 8
  %496 = load i32, ptr %495, align 32
  %497 = icmp ugt i32 %496, %457
  br i1 %497, label %499, label %498, !prof !11

498:                                              ; preds = %489
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

499:                                              ; preds = %489
  %500 = getelementptr inbounds %struct.ext4_sb_info, ptr %494, i32 0, i32 28
  %501 = load i32, ptr %500, align 64
  %502 = lshr i32 %457, %501
  %503 = getelementptr inbounds %struct.ext4_sb_info, ptr %494, i32 0, i32 7
  %504 = load i32, ptr %503, align 4
  %505 = add i32 %504, -1
  %506 = and i32 %505, %457
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %507 = load ptr, ptr %493, align 4
  %508 = getelementptr inbounds %struct.ext4_sb_info, ptr %507, i32 0, i32 58
  %509 = load volatile ptr, ptr %508, align 4
  %510 = getelementptr ptr, ptr %509, i32 %502
  %511 = load ptr, ptr %510, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %512 = getelementptr ptr, ptr %511, i32 %506
  %513 = load ptr, ptr %512, align 4
  %514 = load ptr, ptr %4, align 4
  %515 = getelementptr inbounds %struct.super_block, ptr %514, i32 0, i32 27
  %516 = load ptr, ptr %515, align 4
  %517 = load i32, ptr %31, align 4
  %518 = and i32 %517, 16384
  %519 = icmp eq i32 %518, 0
  %520 = getelementptr inbounds %struct.ext4_sb_info, ptr %516, i32 0, i32 78
  %521 = load i32, ptr %520, align 64
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %528, label %523

523:                                              ; preds = %499
  %524 = load i8, ptr %83, align 1
  %525 = zext i8 %524 to i32
  %526 = getelementptr %struct.ext4_sb_info, ptr %516, i32 0, i32 97, i32 %525
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %526) #17, !srcloc !20
  %527 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %526, ptr %526, i64 1, ptr elementtype(i64) %526) #17, !srcloc !87
  br label %528

528:                                              ; preds = %523, %499
  br i1 %519, label %550, label %529

529:                                              ; preds = %528
  %530 = load ptr, ptr %515, align 4
  %531 = getelementptr inbounds %struct.ext4_sb_info, ptr %530, i32 0, i32 41
  %532 = load ptr, ptr %531, align 16
  %533 = and i32 %457, 63
  %534 = getelementptr [64 x %struct.bgl_lock], ptr %532, i32 0, i32 %533
  %535 = call i32 @_raw_spin_trylock(ptr noundef %534) #17
  %536 = icmp eq i32 %535, 0
  %537 = load ptr, ptr %515, align 4
  %538 = getelementptr inbounds %struct.ext4_sb_info, ptr %537, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %538) #17
  br i1 %536, label %544, label %539

539:                                              ; preds = %529
  %540 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %538, ptr %538, i32 0, i32 -1, ptr elementtype(i32) %538) #17, !srcloc !34
  %541 = extractvalue { i32, i32, i32 } %540, 0
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %550, label %543

543:                                              ; preds = %539
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %550

544:                                              ; preds = %529
  %545 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %538, ptr %538, i32 8, i32 1, ptr elementtype(i32) %538) #17, !srcloc !34
  %546 = extractvalue { i32, i32, i32 } %545, 0
  %547 = icmp eq i32 %546, 8
  br i1 %547, label %549, label %548

548:                                              ; preds = %544
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %549

549:                                              ; preds = %548, %544
  call void @_raw_spin_lock(ptr noundef %534) #17
  br label %550

550:                                              ; preds = %549, %543, %539, %528
  %551 = getelementptr inbounds %struct.ext4_group_info, ptr %513, i32 0, i32 3
  %552 = load i32, ptr %551, align 4
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %622, label %554

554:                                              ; preds = %550
  br i1 %122, label %555, label %558

555:                                              ; preds = %554
  %556 = load i32, ptr %36, align 4
  %557 = icmp slt i32 %552, %556
  br i1 %557, label %622, label %558

558:                                              ; preds = %555, %554
  %559 = load volatile i32, ptr %513, align 4
  %560 = and i32 %559, 4
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %622, !prof !11

562:                                              ; preds = %558
  br i1 %519, label %571, label %563

563:                                              ; preds = %562
  %564 = load ptr, ptr %515, align 4
  %565 = getelementptr inbounds %struct.ext4_sb_info, ptr %564, i32 0, i32 41
  %566 = load ptr, ptr %565, align 16
  %567 = and i32 %457, 63
  %568 = getelementptr [64 x %struct.bgl_lock], ptr %566, i32 0, i32 %567
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %569 = load i16, ptr %568, align 4
  %570 = add i16 %569, 1
  store i16 %570, ptr %568, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %571

571:                                              ; preds = %563, %562
  %572 = load volatile i32, ptr %513, align 4
  %573 = and i32 %572, 1
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %597, label %575, !prof !11

575:                                              ; preds = %571
  %576 = call ptr @ext4_get_group_desc(ptr noundef %514, i32 noundef %457, ptr noundef null) #17
  br i1 %123, label %577, label %594

577:                                              ; preds = %575
  %578 = getelementptr inbounds %struct.ext4_sb_info, ptr %516, i32 0, i32 110
  %579 = load i32, ptr %578, align 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %586, label %581

581:                                              ; preds = %577
  %582 = shl nsw i32 -1, %579
  %583 = xor i32 %582, -1
  %584 = and i32 %457, %583
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %594, label %586

586:                                              ; preds = %581, %577
  %587 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %514) #17
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %635, label %589

589:                                              ; preds = %586
  %590 = getelementptr inbounds %struct.ext4_group_desc, ptr %576, i32 0, i32 6
  %591 = load i16, ptr %590, align 2
  %592 = and i16 %591, 2
  %593 = icmp eq i16 %592, 0
  br i1 %593, label %635, label %594

594:                                              ; preds = %589, %581, %575
  %595 = call fastcc i32 @ext4_mb_init_group(ptr noundef %514, i32 noundef %457, i32 noundef 3136) #17
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %632

597:                                              ; preds = %594, %571
  br i1 %519, label %619, label %598

598:                                              ; preds = %597
  %599 = load ptr, ptr %515, align 4
  %600 = getelementptr inbounds %struct.ext4_sb_info, ptr %599, i32 0, i32 41
  %601 = load ptr, ptr %600, align 16
  %602 = and i32 %457, 63
  %603 = getelementptr [64 x %struct.bgl_lock], ptr %601, i32 0, i32 %602
  %604 = call i32 @_raw_spin_trylock(ptr noundef %603) #17
  %605 = icmp eq i32 %604, 0
  %606 = load ptr, ptr %515, align 4
  %607 = getelementptr inbounds %struct.ext4_sb_info, ptr %606, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %607) #17
  br i1 %605, label %613, label %608

608:                                              ; preds = %598
  %609 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %607, ptr %607, i32 0, i32 -1, ptr elementtype(i32) %607) #17, !srcloc !34
  %610 = extractvalue { i32, i32, i32 } %609, 0
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %619, label %612

612:                                              ; preds = %608
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %619

613:                                              ; preds = %598
  %614 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %607, ptr %607, i32 8, i32 1, ptr elementtype(i32) %607) #17, !srcloc !34
  %615 = extractvalue { i32, i32, i32 } %614, 0
  %616 = icmp eq i32 %615, 8
  br i1 %616, label %618, label %617

617:                                              ; preds = %613
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %618

618:                                              ; preds = %617, %613
  call void @_raw_spin_lock(ptr noundef %603) #17
  br label %619

619:                                              ; preds = %618, %612, %608, %597
  %620 = call fastcc zeroext i1 @ext4_mb_good_group(ptr noundef %0, i32 noundef %457, i32 noundef %115) #17
  %621 = zext i1 %620 to i32
  br label %622

622:                                              ; preds = %619, %558, %555, %550
  %623 = phi i32 [ 0, %550 ], [ 0, %555 ], [ 0, %558 ], [ %621, %619 ]
  br i1 %519, label %632, label %624

624:                                              ; preds = %622
  %625 = load ptr, ptr %515, align 4
  %626 = getelementptr inbounds %struct.ext4_sb_info, ptr %625, i32 0, i32 41
  %627 = load ptr, ptr %626, align 16
  %628 = and i32 %457, 63
  %629 = getelementptr [64 x %struct.bgl_lock], ptr %627, i32 0, i32 %628
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %630 = load i16, ptr %629, align 4
  %631 = add i16 %630, 1
  store i16 %631, ptr %629, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %632

632:                                              ; preds = %624, %622, %594
  %633 = phi i32 [ %595, %594 ], [ %623, %624 ], [ %623, %622 ]
  %634 = icmp slt i32 %633, 1
  br i1 %634, label %635, label %639

635:                                              ; preds = %632, %589, %586
  %636 = phi i32 [ %633, %632 ], [ 0, %589 ], [ 0, %586 ]
  %637 = icmp eq i32 %127, 0
  %638 = select i1 %637, i32 %636, i32 %127
  br label %773

639:                                              ; preds = %632
  %640 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %5, i32 noundef %457, ptr noundef nonnull %3, i32 noundef 3136) #17
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %870

642:                                              ; preds = %639
  %643 = load ptr, ptr %6, align 4
  %644 = getelementptr inbounds %struct.ext4_sb_info, ptr %643, i32 0, i32 41
  %645 = load ptr, ptr %644, align 16
  %646 = and i32 %457, 63
  %647 = getelementptr [64 x %struct.bgl_lock], ptr %645, i32 0, i32 %646
  %648 = call i32 @_raw_spin_trylock(ptr noundef %647) #17
  %649 = icmp eq i32 %648, 0
  %650 = load ptr, ptr %6, align 4
  %651 = getelementptr inbounds %struct.ext4_sb_info, ptr %650, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %651) #17
  br i1 %649, label %657, label %652

652:                                              ; preds = %642
  %653 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %651, ptr %651, i32 0, i32 -1, ptr elementtype(i32) %651) #17, !srcloc !34
  %654 = extractvalue { i32, i32, i32 } %653, 0
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %663, label %656

656:                                              ; preds = %652
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %663

657:                                              ; preds = %642
  %658 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %651, ptr %651, i32 8, i32 1, ptr elementtype(i32) %651) #17, !srcloc !34
  %659 = extractvalue { i32, i32, i32 } %658, 0
  %660 = icmp eq i32 %659, 8
  br i1 %660, label %662, label %661

661:                                              ; preds = %657
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %662

662:                                              ; preds = %661, %657
  call void @_raw_spin_lock(ptr noundef %647) #17
  br label %663

663:                                              ; preds = %662, %656, %652
  %664 = call fastcc zeroext i1 @ext4_mb_good_group(ptr noundef %0, i32 noundef %457, i32 noundef %115)
  br i1 %664, label %711, label %665

665:                                              ; preds = %663
  %666 = load ptr, ptr %6, align 4
  %667 = getelementptr inbounds %struct.ext4_sb_info, ptr %666, i32 0, i32 41
  %668 = load ptr, ptr %667, align 16
  %669 = getelementptr [64 x %struct.bgl_lock], ptr %668, i32 0, i32 %646
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %670 = load i16, ptr %669, align 4
  %671 = add i16 %670, 1
  store i16 %671, ptr %669, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %672 = load ptr, ptr %92, align 4
  %673 = icmp eq ptr %672, null
  br i1 %673, label %691, label %674

674:                                              ; preds = %665
  %675 = getelementptr inbounds %struct.page, ptr %672, i32 0, i32 1
  %676 = load volatile i32, ptr %675, align 4
  %677 = and i32 %676, 1
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %681, label %679, !prof !11

679:                                              ; preds = %674
  %680 = add i32 %676, -1
  br label %683

681:                                              ; preds = %674
  %682 = ptrtoint ptr %672 to i32
  br label %683

683:                                              ; preds = %681, %679
  %684 = phi i32 [ %680, %679 ], [ %682, %681 ]
  %685 = inttoptr i32 %684 to ptr
  %686 = getelementptr inbounds %struct.page, ptr %685, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %686) #17, !srcloc !20
  %687 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %686, ptr %686, i32 1, ptr elementtype(i32) %686) #17, !srcloc !21
  %688 = extractvalue { i32, i32 } %687, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %691

690:                                              ; preds = %683
  call void @__put_page(ptr noundef %685) #17
  br label %691

691:                                              ; preds = %690, %683, %665
  %692 = load ptr, ptr %3, align 4
  %693 = icmp eq ptr %692, null
  br i1 %693, label %773, label %694

694:                                              ; preds = %691
  %695 = getelementptr inbounds %struct.page, ptr %692, i32 0, i32 1
  %696 = load volatile i32, ptr %695, align 4
  %697 = and i32 %696, 1
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %701, label %699, !prof !11

699:                                              ; preds = %694
  %700 = add i32 %696, -1
  br label %703

701:                                              ; preds = %694
  %702 = ptrtoint ptr %692 to i32
  br label %703

703:                                              ; preds = %701, %699
  %704 = phi i32 [ %700, %699 ], [ %702, %701 ]
  %705 = inttoptr i32 %704 to ptr
  %706 = getelementptr inbounds %struct.page, ptr %705, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %706) #17, !srcloc !20
  %707 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %706, ptr %706, i32 1, ptr elementtype(i32) %706) #17, !srcloc !21
  %708 = extractvalue { i32, i32 } %707, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %773

710:                                              ; preds = %703
  call void @__put_page(ptr noundef %705) #17
  br label %773

711:                                              ; preds = %663
  %712 = load i16, ptr %93, align 4
  %713 = add i16 %712, 1
  store i16 %713, ptr %93, align 4
  switch i32 %115, label %723 [
    i32 0, label %714
    i32 1, label %715
  ]

714:                                              ; preds = %711
  call fastcc void @ext4_mb_simple_scan_group(ptr noundef %0, ptr noundef nonnull %3)
  br label %724

715:                                              ; preds = %711
  %716 = load i32, ptr %94, align 4
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %723, label %718

718:                                              ; preds = %715
  %719 = load i32, ptr %36, align 4
  %720 = urem i32 %719, %716
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %723

722:                                              ; preds = %718
  call fastcc void @ext4_mb_scan_aligned(ptr noundef %0, ptr noundef nonnull %3)
  br label %724

723:                                              ; preds = %718, %715, %711
  call fastcc void @ext4_mb_complex_scan_group(ptr noundef %0, ptr noundef nonnull %3)
  br label %724

724:                                              ; preds = %723, %722, %714
  %725 = load ptr, ptr %6, align 4
  %726 = getelementptr inbounds %struct.ext4_sb_info, ptr %725, i32 0, i32 41
  %727 = load ptr, ptr %726, align 16
  %728 = getelementptr [64 x %struct.bgl_lock], ptr %727, i32 0, i32 %646
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %729 = load i16, ptr %728, align 4
  %730 = add i16 %729, 1
  store i16 %730, ptr %728, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %731 = load ptr, ptr %92, align 4
  %732 = icmp eq ptr %731, null
  br i1 %732, label %750, label %733

733:                                              ; preds = %724
  %734 = getelementptr inbounds %struct.page, ptr %731, i32 0, i32 1
  %735 = load volatile i32, ptr %734, align 4
  %736 = and i32 %735, 1
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %740, label %738, !prof !11

738:                                              ; preds = %733
  %739 = add i32 %735, -1
  br label %742

740:                                              ; preds = %733
  %741 = ptrtoint ptr %731 to i32
  br label %742

742:                                              ; preds = %740, %738
  %743 = phi i32 [ %739, %738 ], [ %741, %740 ]
  %744 = inttoptr i32 %743 to ptr
  %745 = getelementptr inbounds %struct.page, ptr %744, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %745) #17, !srcloc !20
  %746 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %745, ptr %745, i32 1, ptr elementtype(i32) %745) #17, !srcloc !21
  %747 = extractvalue { i32, i32 } %746, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %750

749:                                              ; preds = %742
  call void @__put_page(ptr noundef %744) #17
  br label %750

750:                                              ; preds = %749, %742, %724
  %751 = load ptr, ptr %3, align 4
  %752 = icmp eq ptr %751, null
  br i1 %752, label %770, label %753

753:                                              ; preds = %750
  %754 = getelementptr inbounds %struct.page, ptr %751, i32 0, i32 1
  %755 = load volatile i32, ptr %754, align 4
  %756 = and i32 %755, 1
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %760, label %758, !prof !11

758:                                              ; preds = %753
  %759 = add i32 %755, -1
  br label %762

760:                                              ; preds = %753
  %761 = ptrtoint ptr %751 to i32
  br label %762

762:                                              ; preds = %760, %758
  %763 = phi i32 [ %759, %758 ], [ %761, %760 ]
  %764 = inttoptr i32 %763 to ptr
  %765 = getelementptr inbounds %struct.page, ptr %764, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %765) #17, !srcloc !20
  %766 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %765, ptr %765, i32 1, ptr elementtype(i32) %765) #17, !srcloc !21
  %767 = extractvalue { i32, i32 } %766, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %770

769:                                              ; preds = %762
  call void @__put_page(ptr noundef %764) #17
  br label %770

770:                                              ; preds = %769, %762, %750
  %771 = load i8, ptr %20, align 2
  %772 = icmp eq i8 %771, 1
  br i1 %772, label %773, label %810

773:                                              ; preds = %770, %710, %703, %691, %635
  %774 = phi i32 [ %127, %710 ], [ %127, %703 ], [ %127, %691 ], [ %638, %635 ], [ %127, %770 ]
  %775 = load ptr, ptr %4, align 4
  %776 = getelementptr inbounds %struct.super_block, ptr %775, i32 0, i32 27
  %777 = load ptr, ptr %776, align 4
  %778 = getelementptr inbounds %struct.ext4_sb_info, ptr %777, i32 0, i32 18
  %779 = load i32, ptr %778, align 16
  %780 = and i32 %779, 128
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %802, label %782, !prof !15

782:                                              ; preds = %773
  %783 = load i8, ptr %83, align 1
  %784 = icmp ugt i8 %783, 1
  br i1 %784, label %802, label %785

785:                                              ; preds = %782
  %786 = load ptr, ptr %0, align 4
  %787 = getelementptr i8, ptr %786, i32 -124
  %788 = load volatile i32, ptr %787, align 4
  %789 = and i32 %788, 524288
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %802

791:                                              ; preds = %785
  %792 = load i16, ptr %87, align 2
  %793 = icmp eq i16 %792, 0
  br i1 %793, label %796, label %794

794:                                              ; preds = %791
  %795 = add i16 %792, -1
  store i16 %795, ptr %87, align 2
  br label %802

796:                                              ; preds = %791
  %797 = load i32, ptr %31, align 4
  %798 = and i32 %797, 131072
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %806, label %800

800:                                              ; preds = %796
  %801 = and i32 %797, -131073
  store i32 %801, ptr %31, align 4
  br label %802

802:                                              ; preds = %800, %794, %785, %782, %773
  %803 = add nuw i32 %457, 1
  %804 = icmp slt i32 %803, %19
  %805 = select i1 %804, i32 %803, i32 0
  br label %806

806:                                              ; preds = %802, %796
  %807 = phi i32 [ %805, %802 ], [ %457, %796 ]
  %808 = add nuw i32 %126, 1
  %809 = icmp eq i32 %808, %19
  br i1 %809, label %810, label %124

810:                                              ; preds = %806, %770, %112
  %811 = phi i32 [ %114, %112 ], [ %127, %770 ], [ %774, %806 ]
  %812 = phi i32 [ 0, %112 ], [ %126, %770 ], [ %19, %806 ]
  %813 = phi i32 [ %113, %112 ], [ %490, %770 ], [ %490, %806 ]
  %814 = phi i32 [ %117, %112 ], [ %491, %770 ], [ %491, %806 ]
  %815 = load i32, ptr %95, align 64
  %816 = icmp ne i32 %815, 0
  %817 = icmp eq i32 %812, %19
  %818 = select i1 %816, i1 %817, i1 false
  br i1 %818, label %819, label %822

819:                                              ; preds = %810
  %820 = getelementptr %struct.ext4_sb_info, ptr %7, i32 0, i32 99, i32 %115
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %820) #17, !srcloc !20
  %821 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %820, ptr %820, i64 1, ptr elementtype(i64) %820) #17, !srcloc !87
  br label %822

822:                                              ; preds = %819, %810
  %823 = add nuw nsw i32 %115, 1
  %824 = icmp eq i32 %823, 4
  br i1 %824, label %825, label %109

825:                                              ; preds = %822, %109, %106, %100
  %826 = phi i32 [ %101, %100 ], [ %101, %106 ], [ %813, %109 ], [ %813, %822 ]
  %827 = phi i32 [ %102, %100 ], [ %102, %106 ], [ %811, %109 ], [ %811, %822 ]
  %828 = phi i32 [ %104, %100 ], [ %104, %106 ], [ %814, %109 ], [ %814, %822 ]
  %829 = load i32, ptr %96, align 4
  %830 = icmp sgt i32 %829, 0
  br i1 %830, label %831, label %850

831:                                              ; preds = %825
  %832 = load i8, ptr %20, align 2
  %833 = icmp eq i8 %832, 2
  br i1 %833, label %850, label %834

834:                                              ; preds = %831
  %835 = load i32, ptr %31, align 4
  %836 = and i32 %835, 8
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %850

838:                                              ; preds = %834
  call fastcc void @ext4_mb_try_best_found(ptr noundef %0, ptr noundef nonnull %3)
  %839 = load i8, ptr %20, align 2
  %840 = icmp eq i8 %839, 2
  br i1 %840, label %850, label %841

841:                                              ; preds = %838
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !90
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #17, !srcloc !20
  %842 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #17, !srcloc !91
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !92
  store i32 0, ptr %98, align 4
  store i32 0, ptr %99, align 4
  store i32 0, ptr %96, align 4
  store i8 1, ptr %20, align 2
  %843 = load i32, ptr %31, align 4
  %844 = or i32 %843, 8
  store i32 %844, ptr %31, align 4
  br label %845

845:                                              ; preds = %841, %456
  %846 = phi i32 [ %826, %841 ], [ %128, %456 ]
  %847 = phi i32 [ %827, %841 ], [ %127, %456 ]
  %848 = phi i32 [ 3, %841 ], [ %458, %456 ]
  %849 = phi i32 [ %828, %841 ], [ %125, %456 ]
  br label %100

850:                                              ; preds = %838, %834, %831, %825
  %851 = load i32, ptr %95, align 64
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %861, label %853

853:                                              ; preds = %850
  %854 = load i8, ptr %20, align 2
  %855 = icmp eq i8 %854, 2
  br i1 %855, label %856, label %861

856:                                              ; preds = %853
  %857 = load i8, ptr %83, align 1
  %858 = zext i8 %857 to i32
  %859 = getelementptr %struct.ext4_sb_info, ptr %7, i32 0, i32 98, i32 %858
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %859) #17, !srcloc !20
  %860 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %859, ptr %859, i64 1, ptr elementtype(i64) %859) #17, !srcloc !87
  br label %861

861:                                              ; preds = %856, %853, %850, %30, %27
  %862 = phi i32 [ 0, %27 ], [ 0, %30 ], [ %828, %850 ], [ %828, %853 ], [ %828, %856 ]
  %863 = phi i32 [ 0, %27 ], [ 0, %30 ], [ %827, %850 ], [ %827, %853 ], [ %827, %856 ]
  %864 = phi i32 [ 0, %27 ], [ 0, %30 ], [ %826, %850 ], [ %826, %853 ], [ %826, %856 ]
  %865 = load i8, ptr %20, align 2
  %866 = icmp ne i8 %865, 2
  %867 = icmp ne i32 %863, 0
  %868 = select i1 %866, i1 %867, i1 false
  %869 = select i1 %868, i32 %863, i32 0
  br label %870

870:                                              ; preds = %861, %639
  %871 = phi i32 [ %862, %861 ], [ %491, %639 ]
  %872 = phi i32 [ %864, %861 ], [ %490, %639 ]
  %873 = phi i32 [ %869, %861 ], [ %640, %639 ]
  %874 = icmp eq i32 %872, 0
  br i1 %874, label %876, label %875

875:                                              ; preds = %870
  call void @ext4_mb_prefetch_fini(ptr noundef %5, i32 noundef %871, i32 noundef %872)
  br label %876

876:                                              ; preds = %875, %870, %24
  %877 = phi i32 [ %873, %870 ], [ %873, %875 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %877
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_pa_free(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !15

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5043, 0\0A.popsection", ""() #17, !srcloc !61
  unreachable

6:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %7 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #17, !srcloc !20
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #17, !srcloc !21
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 5045, i32 noundef 9, ptr noundef null) #17
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr @ext4_pspace_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_discard_allocated_blocks(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.ext4_buddy, align 4
  %3 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %97

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %107, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %2, i32 noundef 3136) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 4231, i32 noundef 9, ptr noundef nonnull @.str.83, i32 noundef %15) #17
  br label %107

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 4
  %20 = load i32, ptr %13, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 41
  %24 = load ptr, ptr %23, align 16
  %25 = and i32 %20, 63
  %26 = getelementptr [64 x %struct.bgl_lock], ptr %24, i32 0, i32 %25
  %27 = tail call i32 @_raw_spin_trylock(ptr noundef %26) #17
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #17
  br i1 %28, label %36, label %31

31:                                               ; preds = %18
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 -1, ptr elementtype(i32) %30) #17, !srcloc !34
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %42

36:                                               ; preds = %18
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 8, i32 1, ptr elementtype(i32) %30) #17, !srcloc !34
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %41

41:                                               ; preds = %40, %36
  tail call void @_raw_spin_lock(ptr noundef %26) #17
  br label %42

42:                                               ; preds = %41, %35, %31
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %7, align 4
  call fastcc void @mb_free_blocks(ptr noundef %43, ptr noundef nonnull %2, i32 noundef %45, i32 noundef %46)
  %47 = load ptr, ptr %11, align 4
  %48 = load i32, ptr %13, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 41
  %52 = load ptr, ptr %51, align 16
  %53 = and i32 %48, 63
  %54 = getelementptr [64 x %struct.bgl_lock], ptr %52, i32 0, i32 %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %55 = load i16, ptr %54, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %57 = getelementptr inbounds %struct.ext4_buddy, ptr %2, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !11

65:                                               ; preds = %60
  %66 = add i32 %62, -1
  br label %69

67:                                               ; preds = %60
  %68 = ptrtoint ptr %58 to i32
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #17, !srcloc !20
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #17, !srcloc !21
  %74 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  tail call void @__put_page(ptr noundef %71) #17
  br label %77

77:                                               ; preds = %76, %69, %42
  %78 = load ptr, ptr %2, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %107, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85, !prof !11

85:                                               ; preds = %80
  %86 = add i32 %82, -1
  br label %89

87:                                               ; preds = %80
  %88 = ptrtoint ptr %78 to i32
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr inbounds %struct.page, ptr %91, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #17, !srcloc !20
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #17, !srcloc !21
  %94 = extractvalue { i32, i32 } %93, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  tail call void @__put_page(ptr noundef %91) #17
  br label %107

97:                                               ; preds = %1
  %98 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %4, i32 0, i32 10
  %99 = load i16, ptr %98, align 4
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %4, i32 0, i32 9
  %105 = load i32, ptr %104, align 8
  %106 = add i32 %105, %103
  store i32 %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %101, %97, %96, %89, %77, %17, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_mb_mark_diskspace_used(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3785, 0\0A.popsection", ""() #17, !srcloc !93
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14, !prof !15

13:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3786, 0\0A.popsection", ""() #17, !srcloc !94
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @ext4_read_block_bitmap(ptr noundef %16, i32 noundef %20) #17
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = ptrtoint ptr %21 to i32
  br label %233

25:                                               ; preds = %14
  %26 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_mb_mark_diskspace_used, i32 noundef 3800, ptr noundef %1, ptr noundef %16, ptr noundef %21, i32 noundef 1) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %229

28:                                               ; preds = %25
  %29 = load i32, ptr %19, align 4
  %30 = call ptr @ext4_get_group_desc(ptr noundef %16, i32 noundef %29, ptr noundef nonnull %4) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %229, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 4
  %34 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_mb_mark_diskspace_used, i32 noundef 3813, ptr noundef %1, ptr noundef %16, ptr noundef %33, i32 noundef 1) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %229

36:                                               ; preds = %32
  %37 = load i32, ptr %19, align 4
  %38 = zext i32 %37 to i64
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = zext i32 %41 to i64
  %43 = mul nuw i64 %42, %38
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ext4_super_block, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = zext i32 %47 to i64
  %49 = add nuw i64 %43, %48
  %50 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 12
  %53 = load i32, ptr %52, align 16
  %54 = shl i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = add i64 %49, %55
  %57 = load i32, ptr %10, align 4
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 12
  %59 = load i32, ptr %58, align 16
  %60 = shl i32 %57, %59
  %61 = load ptr, ptr %0, align 4
  %62 = call i32 @ext4_inode_block_valid(ptr noundef %61, i64 noundef %56, i32 noundef %60) #17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %36
  %65 = sext i32 %60 to i64
  %66 = add i64 %56, %65
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %16, ptr noundef nonnull @__func__.ext4_mb_mark_diskspace_used, i32 noundef 3822, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.84, i64 noundef %56, i64 noundef %66) #17
  %67 = load i32, ptr %19, align 4
  call fastcc void @ext4_lock_group(ptr noundef %16, i32 noundef %67)
  %68 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %50, align 4
  %71 = load i32, ptr %10, align 4
  call void @ext4_set_bits(ptr noundef %69, i32 noundef %70, i32 noundef %71)
  %72 = load i32, ptr %19, align 4
  %73 = load ptr, ptr %17, align 4
  %74 = getelementptr inbounds %struct.ext4_sb_info, ptr %73, i32 0, i32 41
  %75 = load ptr, ptr %74, align 16
  %76 = and i32 %72, 63
  %77 = getelementptr [64 x %struct.bgl_lock], ptr %75, i32 0, i32 %76
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %78 = load i16, ptr %77, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %77, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %80 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mb_mark_diskspace_used, i32 noundef 3831, ptr noundef %1, ptr noundef null, ptr noundef %21) #17
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 -117, i32 %80
  br label %229

83:                                               ; preds = %36
  %84 = load i32, ptr %19, align 4
  %85 = load ptr, ptr %17, align 4
  %86 = getelementptr inbounds %struct.ext4_sb_info, ptr %85, i32 0, i32 41
  %87 = load ptr, ptr %86, align 16
  %88 = and i32 %84, 63
  %89 = getelementptr [64 x %struct.bgl_lock], ptr %87, i32 0, i32 %88
  %90 = call i32 @_raw_spin_trylock(ptr noundef %89) #17
  %91 = icmp eq i32 %90, 0
  %92 = load ptr, ptr %17, align 4
  %93 = getelementptr inbounds %struct.ext4_sb_info, ptr %92, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #17
  br i1 %91, label %99, label %94

94:                                               ; preds = %83
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 0, i32 -1, ptr elementtype(i32) %93) #17, !srcloc !34
  %96 = extractvalue { i32, i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %105

99:                                               ; preds = %83
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 8, i32 1, ptr elementtype(i32) %93) #17, !srcloc !34
  %101 = extractvalue { i32, i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %104

104:                                              ; preds = %103, %99
  call void @_raw_spin_lock(ptr noundef %89) #17
  br label %105

105:                                              ; preds = %104, %98, %94
  %106 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %50, align 4
  %109 = load i32, ptr %10, align 4
  %110 = add i32 %109, %108
  %111 = icmp sgt i32 %110, %108
  br i1 %111, label %112, label %140

112:                                              ; preds = %105
  %113 = ptrtoint ptr %107 to i32
  %114 = shl i32 %113, 3
  %115 = and i32 %114, 24
  %116 = and i32 %113, -4
  %117 = inttoptr i32 %116 to ptr
  br label %118

118:                                              ; preds = %128, %112
  %119 = phi i32 [ %108, %112 ], [ %130, %128 ]
  %120 = and i32 %119, 31
  %121 = icmp eq i32 %120, 0
  %122 = sub i32 %110, %119
  %123 = icmp sgt i32 %122, 31
  %124 = and i1 %121, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = ashr i32 %119, 3
  %127 = getelementptr i8, ptr %107, i32 %126
  store i32 -1, ptr %127, align 4
  br label %128

128:                                              ; preds = %132, %125
  %129 = phi i32 [ 32, %125 ], [ 1, %132 ]
  %130 = add i32 %129, %119
  %131 = icmp sgt i32 %110, %130
  br i1 %131, label %118, label %140

132:                                              ; preds = %118
  %133 = add i32 %119, %115
  %134 = and i32 %133, 31
  %135 = shl nuw i32 1, %134
  %136 = lshr i32 %133, 5
  %137 = getelementptr i32, ptr %117, i32 %136
  %138 = load i32, ptr %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, ptr %137, align 4
  br label %128

140:                                              ; preds = %128, %105
  %141 = load ptr, ptr %17, align 4
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %141, i32 0, i32 15
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ext4_super_block, ptr %143, i32 0, i32 30
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 16
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %140
  %149 = and i32 %145, 1024
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %181, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.ext4_sb_info, ptr %141, i32 0, i32 119
  %153 = load ptr, ptr %152, align 8
  %154 = icmp eq ptr %153, null
  %155 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %156 = xor i1 %155, true
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %169, !prof !15

158:                                              ; preds = %151
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 3289, i32 noundef 9, ptr noundef null) #17
  %159 = load ptr, ptr %17, align 4
  %160 = getelementptr inbounds %struct.ext4_sb_info, ptr %159, i32 0, i32 15
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.ext4_super_block, ptr %161, i32 0, i32 30
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 1024
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.ext4_sb_info, ptr %159, i32 0, i32 119
  %168 = load ptr, ptr %167, align 8
  br label %169

169:                                              ; preds = %166, %151
  %170 = phi ptr [ %168, %166 ], [ %153, %151 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %169, %140
  %173 = getelementptr inbounds %struct.ext4_group_desc, ptr %30, i32 0, i32 6
  %174 = load i16, ptr %173, align 2
  %175 = and i16 %174, 2
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = and i16 %174, -3
  store i16 %178, ptr %173, align 2
  %179 = load i32, ptr %19, align 4
  %180 = call i32 @ext4_free_clusters_after_init(ptr noundef %16, i32 noundef %179, ptr noundef nonnull %30) #17
  call void @ext4_free_group_clusters_set(ptr noundef %16, ptr noundef nonnull %30, i32 noundef %180) #17
  br label %181

181:                                              ; preds = %177, %172, %169, %158, %148
  %182 = call i32 @ext4_free_group_clusters(ptr noundef %16, ptr noundef nonnull %30) #17
  %183 = load i32, ptr %10, align 4
  %184 = sub i32 %182, %183
  call void @ext4_free_group_clusters_set(ptr noundef %16, ptr noundef nonnull %30, i32 noundef %184) #17
  %185 = load i32, ptr %19, align 4
  call void @ext4_block_bitmap_csum_set(ptr noundef %16, i32 noundef %185, ptr noundef nonnull %30, ptr noundef %21) #17
  %186 = load i32, ptr %19, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %16, i32 noundef %186, ptr noundef nonnull %30) #17
  %187 = load i32, ptr %19, align 4
  %188 = load ptr, ptr %17, align 4
  %189 = getelementptr inbounds %struct.ext4_sb_info, ptr %188, i32 0, i32 41
  %190 = load ptr, ptr %189, align 16
  %191 = and i32 %187, 63
  %192 = getelementptr [64 x %struct.bgl_lock], ptr %190, i32 0, i32 %191
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %193 = load i16, ptr %192, align 4
  %194 = add i16 %193, 1
  store i16 %194, ptr %192, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %195 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 36
  %196 = load i32, ptr %10, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %195, i64 noundef %198, i32 noundef %199) #17
  %200 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 1024
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %181
  %205 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 39
  %206 = zext i32 %2 to i64
  %207 = sub nsw i64 0, %206
  %208 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %205, i64 noundef %207, i32 noundef %208) #17
  br label %209

209:                                              ; preds = %204, %181
  %210 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 110
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %209
  %214 = load i32, ptr %19, align 4
  %215 = lshr i32 %214, %211
  %216 = load i32, ptr %10, align 4
  %217 = sext i32 %216 to i64
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %218 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 111
  %219 = load volatile ptr, ptr %218, align 8
  %220 = getelementptr ptr, ptr %219, i32 %215
  %221 = load ptr, ptr %220, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %221) #17, !srcloc !20
  %222 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %221, ptr %221, i64 %217, ptr elementtype(i64) %221) #17, !srcloc !37
  br label %223

223:                                              ; preds = %213, %209
  %224 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mb_mark_diskspace_used, i32 noundef 3879, ptr noundef %1, ptr noundef null, ptr noundef %21) #17
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load ptr, ptr %4, align 4
  %228 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mb_mark_diskspace_used, i32 noundef 3882, ptr noundef %1, ptr noundef null, ptr noundef %227) #17
  br label %229

229:                                              ; preds = %226, %223, %64, %32, %28, %25
  %230 = phi i32 [ %26, %25 ], [ %34, %32 ], [ %224, %223 ], [ %228, %226 ], [ %82, %64 ], [ -5, %28 ]
  %231 = icmp eq ptr %21, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call void @__brelse(ptr noundef nonnull %21) #17
  br label %233

233:                                              ; preds = %232, %229, %23
  %234 = phi i32 [ %24, %23 ], [ %230, %229 ], [ %230, %232 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %234
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext4_mb_discard_preallocations_should_retry(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ext4_allocation_context, ptr %1, i32 0, i32 2, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mb_discard_preallocations, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = tail call ptr @llvm.thread.pointer() #17
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !95
  %25 = tail call i32 @__traceiter_ext4_mb_discard_preallocations(ptr noundef null, ptr noundef %0, i32 noundef %6) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !96
  br label %26

26:                                               ; preds = %24, %13, %3
  %27 = icmp eq i32 %6, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %32, %28 ], [ %6, %26 ]
  %35 = icmp ne i32 %10, 0
  %36 = icmp sgt i32 %34, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %87

39:                                               ; preds = %39, %33
  %40 = phi i32 [ %45, %39 ], [ %34, %33 ]
  %41 = phi i32 [ %44, %39 ], [ 0, %33 ]
  %42 = phi i32 [ %47, %39 ], [ 0, %33 ]
  %43 = call fastcc i32 @ext4_mb_discard_group_preallocations(ptr noundef %0, i32 noundef %42, ptr noundef nonnull %4) #17
  %44 = add i32 %43, %41
  %45 = sub i32 %40, %43
  %46 = tail call i32 @__cond_resched() #17
  %47 = add nuw i32 %42, 1
  %48 = icmp ult i32 %47, %10
  %49 = icmp sgt i32 %45, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %39, label %51

51:                                               ; preds = %39
  %52 = load i32, ptr %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %49, i1 %53, i1 false
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  store i32 0, ptr %4, align 4
  br label %56

56:                                               ; preds = %56, %55
  %57 = phi i32 [ %62, %56 ], [ %45, %55 ]
  %58 = phi i32 [ %61, %56 ], [ %44, %55 ]
  %59 = phi i32 [ %64, %56 ], [ 0, %55 ]
  %60 = call fastcc i32 @ext4_mb_discard_group_preallocations(ptr noundef %0, i32 noundef %59, ptr noundef nonnull %4) #17
  %61 = add i32 %60, %58
  %62 = sub i32 %57, %60
  %63 = tail call i32 @__cond_resched() #17
  %64 = add nuw i32 %59, 1
  %65 = icmp ult i32 %64, %10
  %66 = icmp sgt i32 %62, 0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %56, label %68

68:                                               ; preds = %56
  %69 = load i32, ptr %4, align 4
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %66, i1 %70, i1 false
  br i1 %71, label %72, label %84

72:                                               ; preds = %72, %68
  %73 = phi i32 [ %78, %72 ], [ %62, %68 ]
  %74 = phi i32 [ %77, %72 ], [ %61, %68 ]
  %75 = phi i32 [ %80, %72 ], [ 0, %68 ]
  %76 = call fastcc i32 @ext4_mb_discard_group_preallocations(ptr noundef %0, i32 noundef %75, ptr noundef nonnull %4) #17
  %77 = add i32 %76, %74
  %78 = sub i32 %73, %76
  %79 = tail call i32 @__cond_resched() #17
  %80 = add nuw i32 %75, 1
  %81 = icmp ult i32 %80, %10
  %82 = icmp sgt i32 %78, 0
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %72, label %84

84:                                               ; preds = %72, %68, %51
  %85 = phi i32 [ %44, %51 ], [ %61, %68 ], [ %77, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84, %38
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %89 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %90 = icmp ult i32 %89, %88
  br i1 %90, label %91, label %102

91:                                               ; preds = %91, %87
  %92 = phi i32 [ %100, %91 ], [ %89, %87 ]
  %93 = phi i64 [ %99, %91 ], [ 0, %87 ]
  %94 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %92
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, ptrtoint (ptr @discard_pa_seq to i32)
  %97 = inttoptr i32 %96 to ptr
  %98 = load i64, ptr %97, align 8
  %99 = add i64 %98, %93
  %100 = tail call i32 @cpumask_next(i32 noundef %92, ptr noundef nonnull @__cpu_possible_mask) #20
  %101 = icmp ult i32 %100, %88
  br i1 %101, label %91, label %102

102:                                              ; preds = %91, %87
  %103 = phi i64 [ 0, %87 ], [ %99, %91 ]
  %104 = getelementptr inbounds %struct.ext4_allocation_context, ptr %1, i32 0, i32 8
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 16384
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load i64, ptr %2, align 8
  %110 = icmp eq i64 %103, %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %108, %102
  %112 = or i32 %105, 16384
  store i32 %112, ptr %104, align 4
  store i64 %103, ptr %2, align 8
  br label %113

113:                                              ; preds = %111, %108, %84
  %114 = phi i1 [ true, %111 ], [ false, %108 ], [ true, %84 ]
  ret i1 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext4_buddy, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  store i32 0, ptr %10, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  store ptr null, ptr %11, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  store i32 0, ptr %12, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %13, i8 0, i32 32, i1 false), !annotation !10
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 25
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 32
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %114, label %22

22:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store ptr null, ptr %7, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 0, ptr %8, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 0, ptr %9, align 4, !annotation !10
  call void @ext4_get_group_no_and_offset(ptr noundef %15, i64 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %23 = load i32, ptr %8, align 4
  %24 = call ptr @ext4_read_block_bitmap(ptr noundef %15, i32 noundef %23) #17
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #19
  br label %113

28:                                               ; preds = %22
  %29 = load i32, ptr %8, align 4
  %30 = call ptr @ext4_get_group_desc(ptr noundef %15, i32 noundef %29, ptr noundef nonnull %7) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %113, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %9, align 4
  br label %62

38:                                               ; preds = %32
  %39 = load i32, ptr %9, align 4
  %40 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = shl i32 %42, 3
  %44 = and i32 %43, 24
  %45 = and i32 %42, -4
  %46 = inttoptr i32 %45 to ptr
  %47 = add i32 %44, %39
  br label %48

48:                                               ; preds = %48, %38
  %49 = phi i32 [ 0, %38 ], [ %60, %48 ]
  %50 = phi i32 [ 0, %38 ], [ %59, %48 ]
  %51 = add i32 %47, %49
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr %46, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = xor i32 %54, -1
  %57 = lshr i32 %56, %55
  %58 = and i32 %57, 1
  %59 = add i32 %58, %50
  %60 = add nuw i32 %49, 1
  %61 = icmp eq i32 %60, %4
  br i1 %61, label %62, label %48

62:                                               ; preds = %48, %34
  %63 = phi i32 [ %37, %34 ], [ %39, %48 ]
  %64 = phi ptr [ %36, %34 ], [ %41, %48 ]
  %65 = phi i32 [ 0, %34 ], [ %59, %48 ]
  %66 = add i32 %63, %4
  %67 = icmp sgt i32 %66, %63
  br i1 %67, label %68, label %97

68:                                               ; preds = %62
  %69 = ptrtoint ptr %64 to i32
  %70 = shl i32 %69, 3
  %71 = and i32 %70, 24
  %72 = and i32 %69, -4
  %73 = inttoptr i32 %72 to ptr
  br label %74

74:                                               ; preds = %84, %68
  %75 = phi i32 [ %63, %68 ], [ %86, %84 ]
  %76 = and i32 %75, 31
  %77 = icmp eq i32 %76, 0
  %78 = sub i32 %66, %75
  %79 = icmp sgt i32 %78, 31
  %80 = and i1 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = ashr i32 %75, 3
  %83 = getelementptr i8, ptr %64, i32 %82
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %88, %81
  %85 = phi i32 [ 32, %81 ], [ 1, %88 ]
  %86 = add i32 %85, %75
  %87 = icmp sgt i32 %66, %86
  br i1 %87, label %74, label %97

88:                                               ; preds = %74
  %89 = add i32 %75, %71
  %90 = and i32 %89, 31
  %91 = shl nuw i32 1, %90
  %92 = lshr i32 %89, 5
  %93 = getelementptr i32, ptr %73, i32 %92
  %94 = xor i32 %91, -1
  %95 = load i32, ptr %93, align 4
  %96 = and i32 %95, %94
  store i32 %96, ptr %93, align 4
  br label %84

97:                                               ; preds = %84, %62
  %98 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_blocks_simple, i32 noundef 5834, ptr noundef null, ptr noundef null, ptr noundef %24) #17
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = call i32 @ext4_free_group_clusters(ptr noundef %15, ptr noundef nonnull %30) #17
  %102 = sub i32 %4, %65
  %103 = add i32 %102, %101
  call void @ext4_free_group_clusters_set(ptr noundef %15, ptr noundef nonnull %30, i32 noundef %103) #17
  %104 = load i32, ptr %8, align 4
  call void @ext4_block_bitmap_csum_set(ptr noundef %15, i32 noundef %104, ptr noundef nonnull %30, ptr noundef %24) #17
  %105 = load i32, ptr %8, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %15, i32 noundef %105, ptr noundef nonnull %30) #17
  %106 = load ptr, ptr %7, align 4
  %107 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_blocks_simple, i32 noundef 5842, ptr noundef null, ptr noundef null, ptr noundef %106) #17
  %108 = call i32 @sync_dirty_buffer(ptr noundef %24) #17
  %109 = load ptr, ptr %7, align 4
  %110 = call i32 @sync_dirty_buffer(ptr noundef %109) #17
  %111 = icmp eq ptr %24, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %100
  call void @__brelse(ptr noundef nonnull %24) #17
  br label %113

113:                                              ; preds = %112, %100, %97, %28, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  br label %659

114:                                              ; preds = %6
  %115 = icmp eq ptr %2, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %114
  %117 = icmp eq i64 %3, 0
  %118 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %119 = load i64, ptr %118, align 8
  br i1 %117, label %123, label %120

120:                                              ; preds = %116
  %121 = icmp eq i64 %119, %3
  br i1 %121, label %123, label %122, !prof !11

122:                                              ; preds = %120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5884, 0\0A.popsection", ""() #17, !srcloc !97
  unreachable

123:                                              ; preds = %120, %116, %114
  %124 = phi i64 [ %3, %120 ], [ %3, %114 ], [ %119, %116 ]
  %125 = and i32 %5, 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = tail call i32 @ext4_inode_block_valid(ptr noundef %1, i64 noundef %124, i32 noundef %4) #17
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %15, ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 5892, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.41, i64 noundef %124, i32 noundef %4) #17
  br label %659

131:                                              ; preds = %127, %123
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_free_blocks, i32 0, i32 1), align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = tail call ptr @llvm.thread.pointer() #17
  %136 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 5
  %139 = getelementptr i32, ptr @__cpu_online_mask, i32 %138
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %137, 31
  %142 = shl nuw i32 1, %141
  %143 = and i32 %142, %140
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %134
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !98
  %146 = tail call i32 @__traceiter_ext4_free_blocks(ptr noundef null, ptr noundef %1, i64 noundef %124, i32 noundef %4, i32 noundef %5) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !99
  br label %147

147:                                              ; preds = %145, %134, %131
  %148 = and i32 %5, 2
  %149 = icmp eq i32 %148, 0
  %150 = or i1 %115, %149
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = icmp ugt i32 %4, 1
  br i1 %152, label %153, label %154, !prof !15

153:                                              ; preds = %151
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5900, 0\0A.popsection", ""() #17, !srcloc !100
  unreachable

154:                                              ; preds = %151
  %155 = and i32 %5, 1
  %156 = tail call i32 @__ext4_forget(ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 5903, ptr noundef %0, i32 noundef %155, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %124) #17
  br label %157

157:                                              ; preds = %154, %147
  %158 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 11
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %159 to i64
  %161 = add nuw nsw i64 %160, 4294967295
  %162 = and i64 %161, %124
  %163 = trunc i64 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %157
  %166 = and i32 %5, 16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %165
  %169 = sub i32 %159, %163
  %170 = icmp ult i32 %169, %4
  br i1 %170, label %171, label %659

171:                                              ; preds = %168
  %172 = zext i32 %169 to i64
  %173 = add i64 %124, %172
  %174 = sub i32 %4, %169
  br label %179

175:                                              ; preds = %165
  %176 = and i64 %162, 4294967295
  %177 = sub i64 %124, %176
  %178 = add i32 %163, %4
  br label %179

179:                                              ; preds = %175, %171, %157
  %180 = phi i32 [ %174, %171 ], [ %178, %175 ], [ %4, %157 ]
  %181 = phi i64 [ %173, %171 ], [ %177, %175 ], [ %124, %157 ]
  %182 = add i32 %159, -1
  %183 = and i32 %180, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %179
  %186 = and i32 %5, 32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = icmp ugt i32 %180, %183
  br i1 %189, label %190, label %659

190:                                              ; preds = %188
  %191 = sub i32 %180, %183
  br label %195

192:                                              ; preds = %185
  %193 = add i32 %180, %159
  %194 = sub i32 %193, %183
  br label %195

195:                                              ; preds = %192, %190, %179
  %196 = phi i32 [ %191, %190 ], [ %194, %192 ], [ %180, %179 ]
  %197 = xor i1 %115, true
  %198 = or i1 %149, %197
  br i1 %198, label %226, label %199

199:                                              ; preds = %195
  %200 = and i32 %5, 1
  %201 = icmp eq i32 %196, 0
  br i1 %201, label %226, label %202

202:                                              ; preds = %199
  %203 = icmp eq i32 %200, 0
  br label %204

204:                                              ; preds = %220, %202
  %205 = phi ptr [ null, %202 ], [ %222, %220 ]
  %206 = phi i32 [ 0, %202 ], [ %224, %220 ]
  %207 = tail call i32 @__cond_resched() #17
  br i1 %203, label %208, label %211

208:                                              ; preds = %204
  %209 = sext i32 %206 to i64
  %210 = add i64 %181, %209
  br label %220

211:                                              ; preds = %204
  %212 = load ptr, ptr %14, align 4
  %213 = sext i32 %206 to i64
  %214 = add i64 %181, %213
  %215 = getelementptr inbounds %struct.super_block, ptr %212, i32 0, i32 20
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.super_block, ptr %212, i32 0, i32 3
  %218 = load i32, ptr %217, align 16
  %219 = tail call ptr @__find_get_block(ptr noundef %216, i64 noundef %214, i32 noundef %218) #17
  br label %220

220:                                              ; preds = %211, %208
  %221 = phi i64 [ %210, %208 ], [ %214, %211 ]
  %222 = phi ptr [ %205, %208 ], [ %219, %211 ]
  %223 = tail call i32 @__ext4_forget(ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 5946, ptr noundef %0, i32 noundef %200, ptr noundef %1, ptr noundef %222, i64 noundef %221) #17
  %224 = add nuw i32 %206, 1
  %225 = icmp eq i32 %224, %196
  br i1 %225, label %226, label %204

226:                                              ; preds = %220, %199, %195
  call void @ext4_get_group_no_and_offset(ptr noundef %15, i64 noundef %181, ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  %227 = load i32, ptr %12, align 4
  %228 = load ptr, ptr %16, align 4
  %229 = getelementptr inbounds %struct.ext4_sb_info, ptr %228, i32 0, i32 8
  %230 = load i32, ptr %229, align 32
  %231 = icmp ugt i32 %230, %227
  br i1 %231, label %232, label %250, !prof !11

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 12
  %234 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 5
  %235 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  %236 = and i32 %5, 1
  %237 = icmp eq i32 %236, 0
  %238 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 20
  %239 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 2
  %240 = getelementptr inbounds %struct.ext4_buddy, ptr %13, i32 0, i32 4
  %241 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 110
  %242 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 111
  %243 = and i32 %5, 64
  %244 = icmp eq i32 %243, 0
  %245 = and i32 %5, 8
  %246 = icmp eq i32 %245, 0
  %247 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %248 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 36
  %249 = getelementptr inbounds %struct.ext4_buddy, ptr %13, i32 0, i32 2
  br label %251

250:                                              ; preds = %643, %226
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

251:                                              ; preds = %643, %232
  %252 = phi ptr [ %228, %232 ], [ %647, %643 ]
  %253 = phi i32 [ %227, %232 ], [ %646, %643 ]
  %254 = phi i64 [ %181, %232 ], [ %326, %643 ]
  %255 = phi i32 [ %196, %232 ], [ %281, %643 ]
  %256 = getelementptr inbounds %struct.ext4_sb_info, ptr %252, i32 0, i32 28
  %257 = load i32, ptr %256, align 64
  %258 = lshr i32 %253, %257
  %259 = getelementptr inbounds %struct.ext4_sb_info, ptr %252, i32 0, i32 7
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, -1
  %262 = and i32 %261, %253
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %263 = load ptr, ptr %16, align 4
  %264 = getelementptr inbounds %struct.ext4_sb_info, ptr %263, i32 0, i32 58
  %265 = load volatile ptr, ptr %264, align 4
  %266 = getelementptr ptr, ptr %265, i32 %258
  %267 = load ptr, ptr %266, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %268 = getelementptr ptr, ptr %267, i32 %262
  %269 = load ptr, ptr %268, align 4
  %270 = load volatile i32, ptr %269, align 4
  %271 = and i32 %270, 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %659, !prof !11

273:                                              ; preds = %251
  %274 = load i32, ptr %10, align 4
  %275 = load i32, ptr %233, align 16
  %276 = shl i32 %274, %275
  %277 = add i32 %276, %255
  %278 = load ptr, ptr %16, align 4
  %279 = getelementptr inbounds %struct.ext4_sb_info, ptr %278, i32 0, i32 2
  %280 = load i32, ptr %279, align 8
  %281 = call i32 @llvm.usub.sat.i32(i32 %277, i32 %280)
  %282 = sub i32 %255, %281
  %283 = load i32, ptr %158, align 4
  %284 = add i32 %283, -1
  %285 = add i32 %284, %282
  %286 = lshr i32 %285, %275
  %287 = load i32, ptr %12, align 4
  %288 = call ptr @ext4_read_block_bitmap(ptr noundef %15, i32 noundef %287) #17
  %289 = icmp ugt ptr %288, inttoptr (i32 -4096 to ptr)
  br i1 %289, label %290, label %292

290:                                              ; preds = %273
  %291 = ptrtoint ptr %288 to i32
  br label %655

292:                                              ; preds = %273
  %293 = load i32, ptr %12, align 4
  %294 = call ptr @ext4_get_group_desc(ptr noundef %15, i32 noundef %293, ptr noundef nonnull %11) #17
  %295 = icmp eq ptr %294, null
  br i1 %295, label %651, label %296

296:                                              ; preds = %292
  %297 = call i64 @ext4_block_bitmap(ptr noundef %15, ptr noundef nonnull %294) #17
  %298 = icmp ult i64 %297, %254
  br i1 %298, label %305, label %299

299:                                              ; preds = %296
  %300 = call i64 @ext4_block_bitmap(ptr noundef %15, ptr noundef nonnull %294) #17
  %301 = zext i32 %282 to i64
  %302 = add i64 %254, -1
  %303 = add i64 %302, %301
  %304 = icmp ugt i64 %300, %303
  br i1 %304, label %305, label %337

305:                                              ; preds = %299, %296
  %306 = call i64 @ext4_inode_bitmap(ptr noundef %15, ptr noundef nonnull %294) #17
  %307 = icmp ult i64 %306, %254
  br i1 %307, label %314, label %308

308:                                              ; preds = %305
  %309 = call i64 @ext4_inode_bitmap(ptr noundef %15, ptr noundef nonnull %294) #17
  %310 = zext i32 %282 to i64
  %311 = add i64 %254, -1
  %312 = add i64 %311, %310
  %313 = icmp ugt i64 %309, %312
  br i1 %313, label %314, label %337

314:                                              ; preds = %308, %305
  %315 = call i64 @ext4_inode_table(ptr noundef %15, ptr noundef nonnull %294) #17
  %316 = icmp ult i64 %254, %315
  br i1 %316, label %324, label %317

317:                                              ; preds = %314
  %318 = call i64 @ext4_inode_table(ptr noundef %15, ptr noundef nonnull %294) #17
  %319 = load i32, ptr %234, align 4
  %320 = zext i32 %319 to i64
  %321 = add i64 %318, -1
  %322 = add i64 %321, %320
  %323 = icmp ugt i64 %254, %322
  br i1 %323, label %324, label %337

324:                                              ; preds = %317, %314
  %325 = zext i32 %282 to i64
  %326 = add i64 %254, %325
  %327 = add i64 %326, -1
  %328 = call i64 @ext4_inode_table(ptr noundef %15, ptr noundef nonnull %294) #17
  %329 = icmp ult i64 %327, %328
  br i1 %329, label %338, label %330

330:                                              ; preds = %324
  %331 = call i64 @ext4_inode_table(ptr noundef %15, ptr noundef nonnull %294) #17
  %332 = load i32, ptr %234, align 4
  %333 = zext i32 %332 to i64
  %334 = add i64 %331, -1
  %335 = add i64 %334, %333
  %336 = icmp ugt i64 %327, %335
  br i1 %336, label %338, label %337

337:                                              ; preds = %330, %317, %308, %299
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %15, ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 5988, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.42, i64 noundef %254, i32 noundef %282) #17
  br label %651

338:                                              ; preds = %330, %324
  %339 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 5995, ptr noundef %0, ptr noundef %15, ptr noundef %288, i32 noundef 1) #17
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %651

341:                                              ; preds = %338
  %342 = load ptr, ptr %11, align 4
  %343 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 6005, ptr noundef %0, ptr noundef %15, ptr noundef %342, i32 noundef 1) #17
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %651

345:                                              ; preds = %341
  %346 = load i32, ptr %12, align 4
  %347 = load i32, ptr %10, align 4
  %348 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mballoc_free, i32 0, i32 1), align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %364

350:                                              ; preds = %345
  %351 = tail call ptr @llvm.thread.pointer() #17
  %352 = getelementptr inbounds %struct.thread_info, ptr %351, i32 0, i32 2
  %353 = load i32, ptr %352, align 8
  %354 = lshr i32 %353, 5
  %355 = getelementptr i32, ptr @__cpu_online_mask, i32 %354
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %353, 31
  %358 = shl nuw i32 1, %357
  %359 = and i32 %358, %356
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %350
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !101
  %362 = call i32 @__traceiter_ext4_mballoc_free(ptr noundef null, ptr noundef %15, ptr noundef %1, i32 noundef %346, i32 noundef %347, i32 noundef %286) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !102
  %363 = load i32, ptr %12, align 4
  br label %364

364:                                              ; preds = %361, %350, %345
  %365 = phi i32 [ %346, %345 ], [ %346, %350 ], [ %363, %361 ]
  %366 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %15, i32 noundef %365, ptr noundef nonnull %13, i32 noundef 35904)
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %651

368:                                              ; preds = %364
  br i1 %235, label %442, label %369

369:                                              ; preds = %368
  br i1 %237, label %370, label %374

370:                                              ; preds = %369
  %371 = call i32 @ext4_inode_journal_mode(ptr noundef %1) #17
  %372 = and i32 %371, 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %442

374:                                              ; preds = %370, %369
  %375 = load ptr, ptr @ext4_free_data_cachep, align 4
  %376 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %375, i32 noundef 35904) #17
  %377 = load i32, ptr %10, align 4
  %378 = getelementptr inbounds %struct.ext4_free_data, ptr %376, i32 0, i32 3
  store i32 %377, ptr %378, align 8
  %379 = load i32, ptr %12, align 4
  %380 = getelementptr inbounds %struct.ext4_free_data, ptr %376, i32 0, i32 2
  store i32 %379, ptr %380, align 4
  %381 = getelementptr inbounds %struct.ext4_free_data, ptr %376, i32 0, i32 4
  store i32 %286, ptr %381, align 4
  %382 = load ptr, ptr %0, align 4
  %383 = getelementptr inbounds %struct.transaction_s, ptr %382, i32 0, i32 1
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr inbounds %struct.ext4_free_data, ptr %376, i32 0, i32 5
  store i32 %384, ptr %385, align 8
  %386 = load ptr, ptr %16, align 4
  %387 = getelementptr inbounds %struct.ext4_sb_info, ptr %386, i32 0, i32 41
  %388 = load ptr, ptr %387, align 16
  %389 = and i32 %379, 63
  %390 = getelementptr [64 x %struct.bgl_lock], ptr %388, i32 0, i32 %389
  %391 = call i32 @_raw_spin_trylock(ptr noundef %390) #17
  %392 = icmp eq i32 %391, 0
  %393 = load ptr, ptr %16, align 4
  %394 = getelementptr inbounds %struct.ext4_sb_info, ptr %393, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %394) #17
  br i1 %392, label %400, label %395

395:                                              ; preds = %374
  %396 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %394, ptr %394, i32 0, i32 -1, ptr elementtype(i32) %394) #17, !srcloc !34
  %397 = extractvalue { i32, i32, i32 } %396, 0
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %406, label %399

399:                                              ; preds = %395
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %406

400:                                              ; preds = %374
  %401 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %394, ptr %394, i32 8, i32 1, ptr elementtype(i32) %394) #17, !srcloc !34
  %402 = extractvalue { i32, i32, i32 } %401, 0
  %403 = icmp eq i32 %402, 8
  br i1 %403, label %405, label %404

404:                                              ; preds = %400
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %405

405:                                              ; preds = %404, %400
  call void @_raw_spin_lock(ptr noundef %390) #17
  br label %406

406:                                              ; preds = %405, %399, %395
  %407 = getelementptr inbounds %struct.buffer_head, ptr %288, i32 0, i32 5
  %408 = load ptr, ptr %407, align 4
  %409 = load i32, ptr %10, align 4
  %410 = add i32 %409, %286
  %411 = icmp sgt i32 %410, %409
  br i1 %411, label %412, label %441

412:                                              ; preds = %406
  %413 = ptrtoint ptr %408 to i32
  %414 = shl i32 %413, 3
  %415 = and i32 %414, 24
  %416 = and i32 %413, -4
  %417 = inttoptr i32 %416 to ptr
  br label %418

418:                                              ; preds = %428, %412
  %419 = phi i32 [ %409, %412 ], [ %430, %428 ]
  %420 = and i32 %419, 31
  %421 = icmp eq i32 %420, 0
  %422 = sub i32 %410, %419
  %423 = icmp sgt i32 %422, 31
  %424 = and i1 %421, %423
  br i1 %424, label %425, label %432

425:                                              ; preds = %418
  %426 = ashr i32 %419, 3
  %427 = getelementptr i8, ptr %408, i32 %426
  store i32 0, ptr %427, align 4
  br label %428

428:                                              ; preds = %432, %425
  %429 = phi i32 [ 32, %425 ], [ 1, %432 ]
  %430 = add i32 %429, %419
  %431 = icmp sgt i32 %410, %430
  br i1 %431, label %418, label %441

432:                                              ; preds = %418
  %433 = add i32 %419, %415
  %434 = and i32 %433, 31
  %435 = shl nuw i32 1, %434
  %436 = lshr i32 %433, 5
  %437 = getelementptr i32, ptr %417, i32 %436
  %438 = xor i32 %435, -1
  %439 = load i32, ptr %437, align 4
  %440 = and i32 %439, %438
  store i32 %440, ptr %437, align 4
  br label %428

441:                                              ; preds = %428, %406
  call fastcc void @ext4_mb_free_metadata(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %376)
  br label %559

442:                                              ; preds = %370, %368
  %443 = load ptr, ptr %16, align 4
  %444 = getelementptr inbounds %struct.ext4_sb_info, ptr %443, i32 0, i32 17
  %445 = load i32, ptr %444, align 4
  %446 = and i32 %445, 1073741824
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %496, label %448

448:                                              ; preds = %442
  %449 = load i32, ptr %12, align 4
  %450 = load i32, ptr %10, align 4
  %451 = getelementptr inbounds %struct.ext4_sb_info, ptr %443, i32 0, i32 12
  %452 = load i32, ptr %451, align 16
  %453 = shl i32 %450, %452
  %454 = sext i32 %453 to i64
  %455 = zext i32 %449 to i64
  %456 = getelementptr inbounds %struct.ext4_sb_info, ptr %443, i32 0, i32 2
  %457 = load i32, ptr %456, align 8
  %458 = zext i32 %457 to i64
  %459 = mul nuw i64 %458, %455
  %460 = getelementptr inbounds %struct.ext4_sb_info, ptr %443, i32 0, i32 15
  %461 = load ptr, ptr %460, align 4
  %462 = getelementptr inbounds %struct.ext4_super_block, ptr %461, i32 0, i32 5
  %463 = load i32, ptr %462, align 4
  %464 = zext i32 %463 to i64
  %465 = add i64 %459, %454
  %466 = add i64 %465, %464
  %467 = shl i32 %282, %452
  %468 = sext i32 %467 to i64
  %469 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_discard_blocks, i32 0, i32 1), align 4
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %484

471:                                              ; preds = %448
  %472 = tail call ptr @llvm.thread.pointer() #17
  %473 = getelementptr inbounds %struct.thread_info, ptr %472, i32 0, i32 2
  %474 = load i32, ptr %473, align 8
  %475 = lshr i32 %474, 5
  %476 = getelementptr i32, ptr @__cpu_online_mask, i32 %475
  %477 = load volatile i32, ptr %476, align 4
  %478 = and i32 %474, 31
  %479 = shl nuw i32 1, %478
  %480 = and i32 %479, %477
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %484, label %482

482:                                              ; preds = %471
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !103
  %483 = call i32 @__traceiter_ext4_discard_blocks(ptr noundef null, ptr noundef %15, i64 noundef %466, i64 noundef %468) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !104
  br label %484

484:                                              ; preds = %482, %471, %448
  %485 = load ptr, ptr %238, align 4
  %486 = load i8, ptr %239, align 4
  %487 = zext i8 %486 to i32
  %488 = add nsw i32 %487, -9
  %489 = zext i32 %488 to i64
  %490 = shl i64 %466, %489
  %491 = shl i64 %468, %489
  %492 = call i32 @blkdev_issue_discard(ptr noundef %485, i64 noundef %490, i64 noundef %491, i32 noundef 3136, i32 noundef 0) #17
  switch i32 %492, label %493 [
    i32 -95, label %498
    i32 0, label %498
  ]

493:                                              ; preds = %484
  %494 = load i32, ptr %12, align 4
  %495 = load i32, ptr %10, align 4
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %15, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %494, i32 noundef %495, i32 noundef %282, i32 noundef %492) #17
  br label %498

496:                                              ; preds = %442
  %497 = load ptr, ptr %240, align 4
  call void @_clear_bit(i32 noundef 1, ptr noundef %497) #17
  br label %498

498:                                              ; preds = %496, %493, %484, %484
  %499 = load i32, ptr %12, align 4
  %500 = load ptr, ptr %16, align 4
  %501 = getelementptr inbounds %struct.ext4_sb_info, ptr %500, i32 0, i32 41
  %502 = load ptr, ptr %501, align 16
  %503 = and i32 %499, 63
  %504 = getelementptr [64 x %struct.bgl_lock], ptr %502, i32 0, i32 %503
  %505 = call i32 @_raw_spin_trylock(ptr noundef %504) #17
  %506 = icmp eq i32 %505, 0
  %507 = load ptr, ptr %16, align 4
  %508 = getelementptr inbounds %struct.ext4_sb_info, ptr %507, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %508) #17
  br i1 %506, label %514, label %509

509:                                              ; preds = %498
  %510 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %508, ptr %508, i32 0, i32 -1, ptr elementtype(i32) %508) #17, !srcloc !34
  %511 = extractvalue { i32, i32, i32 } %510, 0
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %520, label %513

513:                                              ; preds = %509
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %520

514:                                              ; preds = %498
  %515 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %508, ptr %508, i32 8, i32 1, ptr elementtype(i32) %508) #17, !srcloc !34
  %516 = extractvalue { i32, i32, i32 } %515, 0
  %517 = icmp eq i32 %516, 8
  br i1 %517, label %519, label %518

518:                                              ; preds = %514
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %519

519:                                              ; preds = %518, %514
  call void @_raw_spin_lock(ptr noundef %504) #17
  br label %520

520:                                              ; preds = %519, %513, %509
  %521 = getelementptr inbounds %struct.buffer_head, ptr %288, i32 0, i32 5
  %522 = load ptr, ptr %521, align 4
  %523 = load i32, ptr %10, align 4
  %524 = add i32 %523, %286
  %525 = icmp sgt i32 %524, %523
  br i1 %525, label %526, label %557

526:                                              ; preds = %520
  %527 = ptrtoint ptr %522 to i32
  %528 = shl i32 %527, 3
  %529 = and i32 %528, 24
  %530 = and i32 %527, -4
  %531 = inttoptr i32 %530 to ptr
  br label %532

532:                                              ; preds = %542, %526
  %533 = phi i32 [ %523, %526 ], [ %544, %542 ]
  %534 = and i32 %533, 31
  %535 = icmp eq i32 %534, 0
  %536 = sub i32 %524, %533
  %537 = icmp sgt i32 %536, 31
  %538 = and i1 %535, %537
  br i1 %538, label %539, label %546

539:                                              ; preds = %532
  %540 = ashr i32 %533, 3
  %541 = getelementptr i8, ptr %522, i32 %540
  store i32 0, ptr %541, align 4
  br label %542

542:                                              ; preds = %546, %539
  %543 = phi i32 [ 32, %539 ], [ 1, %546 ]
  %544 = add i32 %543, %533
  %545 = icmp sgt i32 %524, %544
  br i1 %545, label %532, label %555

546:                                              ; preds = %532
  %547 = add i32 %533, %529
  %548 = and i32 %547, 31
  %549 = shl nuw i32 1, %548
  %550 = lshr i32 %547, 5
  %551 = getelementptr i32, ptr %531, i32 %550
  %552 = xor i32 %549, -1
  %553 = load i32, ptr %551, align 4
  %554 = and i32 %553, %552
  store i32 %554, ptr %551, align 4
  br label %542

555:                                              ; preds = %542
  %556 = load i32, ptr %10, align 4
  br label %557

557:                                              ; preds = %555, %520
  %558 = phi i32 [ %556, %555 ], [ %523, %520 ]
  call fastcc void @mb_free_blocks(ptr noundef %1, ptr noundef nonnull %13, i32 noundef %558, i32 noundef %286)
  br label %559

559:                                              ; preds = %557, %441
  %560 = call i32 @ext4_free_group_clusters(ptr noundef %15, ptr noundef nonnull %294) #17
  %561 = add i32 %560, %286
  call void @ext4_free_group_clusters_set(ptr noundef %15, ptr noundef nonnull %294, i32 noundef %561) #17
  %562 = load i32, ptr %12, align 4
  call void @ext4_block_bitmap_csum_set(ptr noundef %15, i32 noundef %562, ptr noundef nonnull %294, ptr noundef %288) #17
  %563 = load i32, ptr %12, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %15, i32 noundef %563, ptr noundef nonnull %294) #17
  %564 = load i32, ptr %12, align 4
  %565 = load ptr, ptr %16, align 4
  %566 = getelementptr inbounds %struct.ext4_sb_info, ptr %565, i32 0, i32 41
  %567 = load ptr, ptr %566, align 16
  %568 = and i32 %564, 63
  %569 = getelementptr [64 x %struct.bgl_lock], ptr %567, i32 0, i32 %568
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %570 = load i16, ptr %569, align 4
  %571 = add i16 %570, 1
  store i16 %571, ptr %569, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %572 = load i32, ptr %241, align 4
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %582, label %574

574:                                              ; preds = %559
  %575 = load i32, ptr %12, align 4
  %576 = lshr i32 %575, %572
  %577 = zext i32 %286 to i64
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %578 = load volatile ptr, ptr %242, align 8
  %579 = getelementptr ptr, ptr %578, i32 %576
  %580 = load ptr, ptr %579, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %580) #17, !srcloc !20
  %581 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %580, ptr %580, i64 %577, ptr elementtype(i64) %580) #17, !srcloc !87
  br label %582

582:                                              ; preds = %574, %559
  br i1 %244, label %583, label %594

583:                                              ; preds = %582
  br i1 %246, label %584, label %591

584:                                              ; preds = %583
  %585 = load i32, ptr %233, align 16
  %586 = shl i32 %286, %585
  %587 = zext i32 %586 to i64
  %588 = load i8, ptr %247, align 2
  %589 = zext i8 %588 to i64
  %590 = shl i64 %587, %589
  call void @inode_sub_bytes(ptr noundef %1, i64 noundef %590) #17
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #17
  br label %591

591:                                              ; preds = %584, %583
  %592 = zext i32 %286 to i64
  %593 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %248, i64 noundef %592, i32 noundef %593) #17
  br label %594

594:                                              ; preds = %591, %582
  %595 = load ptr, ptr %249, align 4
  %596 = icmp eq ptr %595, null
  br i1 %596, label %614, label %597

597:                                              ; preds = %594
  %598 = getelementptr inbounds %struct.page, ptr %595, i32 0, i32 1
  %599 = load volatile i32, ptr %598, align 4
  %600 = and i32 %599, 1
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602, !prof !11

602:                                              ; preds = %597
  %603 = add i32 %599, -1
  br label %606

604:                                              ; preds = %597
  %605 = ptrtoint ptr %595 to i32
  br label %606

606:                                              ; preds = %604, %602
  %607 = phi i32 [ %603, %602 ], [ %605, %604 ]
  %608 = inttoptr i32 %607 to ptr
  %609 = getelementptr inbounds %struct.page, ptr %608, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %609) #17, !srcloc !20
  %610 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %609, ptr %609, i32 1, ptr elementtype(i32) %609) #17, !srcloc !21
  %611 = extractvalue { i32, i32 } %610, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %606
  call void @__put_page(ptr noundef %608) #17
  br label %614

614:                                              ; preds = %613, %606, %594
  %615 = load ptr, ptr %13, align 4
  %616 = icmp eq ptr %615, null
  br i1 %616, label %634, label %617

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct.page, ptr %615, i32 0, i32 1
  %619 = load volatile i32, ptr %618, align 4
  %620 = and i32 %619, 1
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %624, label %622, !prof !11

622:                                              ; preds = %617
  %623 = add i32 %619, -1
  br label %626

624:                                              ; preds = %617
  %625 = ptrtoint ptr %615 to i32
  br label %626

626:                                              ; preds = %624, %622
  %627 = phi i32 [ %623, %622 ], [ %625, %624 ]
  %628 = inttoptr i32 %627 to ptr
  %629 = getelementptr inbounds %struct.page, ptr %628, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %629) #17, !srcloc !20
  %630 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %629, ptr %629, i32 1, ptr elementtype(i32) %629) #17, !srcloc !21
  %631 = extractvalue { i32, i32 } %630, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %626
  call void @__put_page(ptr noundef %628) #17
  br label %634

634:                                              ; preds = %633, %626, %614
  %635 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 6097, ptr noundef %0, ptr noundef null, ptr noundef %288) #17
  %636 = load ptr, ptr %11, align 4
  %637 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 6101, ptr noundef %0, ptr noundef null, ptr noundef %636) #17
  %638 = icmp eq i32 %635, 0
  %639 = select i1 %638, i32 %637, i32 %635
  %640 = icmp ule i32 %277, %280
  %641 = icmp ne i32 %639, 0
  %642 = select i1 %640, i1 true, i1 %641
  br i1 %642, label %651, label %643

643:                                              ; preds = %634
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !43
  %644 = getelementptr inbounds %struct.buffer_head, ptr %288, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %644) #17, !srcloc !20
  %645 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %644, ptr %644, i32 1, ptr elementtype(i32) %644) #17, !srcloc !41
  call void @ext4_get_group_no_and_offset(ptr noundef %15, i64 noundef %326, ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  %646 = load i32, ptr %12, align 4
  %647 = load ptr, ptr %16, align 4
  %648 = getelementptr inbounds %struct.ext4_sb_info, ptr %647, i32 0, i32 8
  %649 = load i32, ptr %648, align 32
  %650 = icmp ugt i32 %649, %646
  br i1 %650, label %251, label %250, !prof !11

651:                                              ; preds = %634, %364, %341, %338, %337, %292
  %652 = phi i32 [ 0, %337 ], [ -5, %292 ], [ %639, %634 ], [ %366, %364 ], [ %343, %341 ], [ %339, %338 ]
  %653 = icmp eq ptr %288, null
  br i1 %653, label %655, label %654

654:                                              ; preds = %651
  call void @__brelse(ptr noundef nonnull %288) #17
  br label %655

655:                                              ; preds = %654, %651, %290
  %656 = phi i32 [ %652, %651 ], [ %652, %654 ], [ %291, %290 ]
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %659, label %658

658:                                              ; preds = %655
  call void @__ext4_std_error(ptr noundef %15, ptr noundef nonnull @__func__.ext4_free_blocks, i32 noundef 6113, i32 noundef %656) #17
  br label %659

659:                                              ; preds = %658, %655, %251, %188, %168, %130, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_block_valid(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_forget(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mb_clear_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = add i32 %2, %1
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i32
  %8 = shl i32 %7, 3
  %9 = and i32 %8, 24
  %10 = and i32 %7, -4
  %11 = inttoptr i32 %10 to ptr
  br label %12

12:                                               ; preds = %22, %6
  %13 = phi i32 [ %1, %6 ], [ %24, %22 ]
  %14 = and i32 %13, 31
  %15 = icmp eq i32 %14, 0
  %16 = sub i32 %4, %13
  %17 = icmp sgt i32 %16, 31
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = ashr i32 %13, 3
  %21 = getelementptr i8, ptr %0, i32 %20
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %26, %19
  %23 = phi i32 [ 32, %19 ], [ 1, %26 ]
  %24 = add i32 %13, %23
  %25 = icmp sgt i32 %4, %24
  br i1 %25, label %12, label %35

26:                                               ; preds = %12
  %27 = add i32 %13, %9
  %28 = and i32 %27, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %27, 5
  %31 = getelementptr i32, ptr %11, i32 %30
  %32 = xor i32 %29, -1
  %33 = load i32, ptr %31, align 4
  %34 = and i32 %33, %32
  store i32 %34, ptr %31, align 4
  br label %22

35:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_free_metadata(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_group_info, ptr %9, i32 0, i32 1
  %15 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %15, label %16, label %17, !prof !15

16:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5686, 0\0A.popsection", ""() #17, !srcloc !105
  unreachable

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !15

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5687, 0\0A.popsection", ""() #17, !srcloc !106
  unreachable

22:                                               ; preds = %17
  %23 = load ptr, ptr %1, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !15

25:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5688, 0\0A.popsection", ""() #17, !srcloc !107
  unreachable

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !11

37:                                               ; preds = %32
  %38 = add i32 %34, -1
  br label %41

39:                                               ; preds = %32
  %40 = ptrtoint ptr %23 to i32
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #17, !srcloc !20
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #17, !srcloc !52
  %46 = load ptr, ptr %18, align 4
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %41
  %52 = add i32 %48, -1
  br label %55

53:                                               ; preds = %41
  %54 = ptrtoint ptr %46 to i32
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #17, !srcloc !20
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #17, !srcloc !52
  %60 = load ptr, ptr %14, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %55, %26
  %63 = phi ptr [ %30, %26 ], [ %60, %55 ]
  br label %64

64:                                               ; preds = %97, %62
  %65 = phi ptr [ %99, %97 ], [ %63, %62 ]
  %66 = getelementptr i8, ptr %65, i32 16
  %67 = load i32, ptr %66, align 4
  %68 = icmp slt i32 %29, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2
  br label %97

71:                                               ; preds = %64
  %72 = getelementptr i8, ptr %65, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %67
  %75 = icmp slt i32 %29, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 1
  br label %97

78:                                               ; preds = %71
  %79 = zext i32 %5 to i64
  %80 = load ptr, ptr %12, align 4
  %81 = getelementptr inbounds %struct.ext4_sb_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = zext i32 %82 to i64
  %84 = mul nuw i64 %83, %79
  %85 = getelementptr inbounds %struct.ext4_sb_info, ptr %80, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ext4_super_block, ptr %86, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  %90 = add nuw i64 %84, %89
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 12
  %92 = load i32, ptr %91, align 16
  %93 = shl i32 %29, %92
  %94 = sext i32 %93 to i64
  %95 = add i64 %90, %94
  tail call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_free_metadata, i32 noundef 5713, ptr noundef %11, i32 noundef %5, i32 noundef 0, i64 noundef %95, ptr noundef nonnull @.str.86) #17
  %96 = load ptr, ptr @ext4_free_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %96, ptr noundef %2) #17
  br label %128

97:                                               ; preds = %76, %69
  %98 = phi ptr [ %70, %69 ], [ %77, %76 ]
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %64

101:                                              ; preds = %97
  %102 = ptrtoint ptr %65 to i32
  br label %103

103:                                              ; preds = %101, %55
  %104 = phi ptr [ %98, %101 ], [ %14, %55 ]
  %105 = phi i32 [ %102, %101 ], [ 0, %55 ]
  store i32 %105, ptr %27, align 4
  %106 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 1, i32 1
  store ptr null, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 1, i32 2
  store ptr null, ptr %107, align 4
  store ptr %27, ptr %104, align 4
  tail call void @rb_insert_color(ptr noundef %27, ptr noundef %14) #17
  %108 = tail call ptr @rb_prev(ptr noundef %27) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = getelementptr i8, ptr %108, i32 -8
  tail call fastcc void @ext4_try_merge_freed_extent(ptr noundef %13, ptr noundef %111, ptr noundef %2, ptr noundef %14)
  br label %112

112:                                              ; preds = %110, %103
  %113 = tail call ptr @rb_next(ptr noundef %27) #17
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = getelementptr i8, ptr %113, i32 -8
  tail call fastcc void @ext4_try_merge_freed_extent(ptr noundef %13, ptr noundef %116, ptr noundef %2, ptr noundef %14)
  br label %117

117:                                              ; preds = %115, %112
  %118 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %118) #17
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 65
  %120 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 65, i32 1
  %121 = load ptr, ptr %120, align 4
  store ptr %2, ptr %120, align 4
  store ptr %119, ptr %2, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %121, ptr %122, align 4
  store volatile ptr %2, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 64
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, %7
  store i32 %125, ptr %123, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %126 = load i16, ptr %118, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %118, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %128

128:                                              ; preds = %117, %78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mb_free_blocks(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = add i32 %3, %2
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %11, label %12, !prof !15

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1790, i32 noundef 9, ptr noundef null) #17
  br label %404

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %14 = load i32, ptr %13, align 16
  %15 = shl i32 %14, 3
  %16 = icmp ult i32 %7, %15
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1792, 0\0A.popsection", ""() #17, !srcloc !108
  unreachable

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 41
  %24 = load ptr, ptr %23, align 16
  %25 = and i32 %20, 63
  %26 = getelementptr [64 x %struct.bgl_lock], ptr %24, i32 0, i32 %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %27 = load volatile i32, ptr %26, align 4
  store volatile i32 %27, ptr %5, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %27, 65535
  %30 = icmp eq i32 %29, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %30, label %31, label %32, !prof !15

31:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #17, !srcloc !109
  unreachable

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %404, !prof !11

38:                                               ; preds = %32
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !57
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #16, !srcloc !58
  %43 = add i32 %42, ptrtoint (ptr @discard_pa_seq to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, ptr %44, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #17, !srcloc !59
  %47 = load ptr, ptr %33, align 4
  %48 = getelementptr inbounds %struct.ext4_group_info, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %3
  store i32 %50, ptr %48, align 4
  %51 = load ptr, ptr %33, align 4
  %52 = getelementptr inbounds %struct.ext4_group_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, %2
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  store i32 %2, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %38
  %57 = icmp eq i32 %2, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  br label %78

61:                                               ; preds = %56
  %62 = add i32 %2, -1
  %63 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = shl i32 %65, 3
  %67 = and i32 %66, 24
  %68 = add i32 %62, %67
  %69 = and i32 %65, -4
  %70 = inttoptr i32 %69 to ptr
  %71 = lshr i32 %68, 5
  %72 = getelementptr i32, ptr %70, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %68, 31
  %75 = xor i32 %73, -1
  %76 = lshr i32 %75, %74
  %77 = and i32 %76, 1
  br label %78

78:                                               ; preds = %61, %58
  %79 = phi ptr [ %64, %61 ], [ %60, %58 ]
  %80 = phi i32 [ %77, %61 ], [ 0, %58 ]
  %81 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 3
  %82 = icmp sgt i32 %6, %2
  br i1 %82, label %83, label %136

83:                                               ; preds = %78
  %84 = ptrtoint ptr %79 to i32
  %85 = shl i32 %84, 3
  %86 = and i32 %85, 24
  %87 = and i32 %84, -4
  %88 = inttoptr i32 %87 to ptr
  br label %89

89:                                               ; preds = %117, %83
  %90 = phi i32 [ -1, %83 ], [ %119, %117 ]
  %91 = phi i32 [ %2, %83 ], [ %120, %117 ]
  %92 = and i32 %91, 31
  %93 = icmp eq i32 %92, 0
  %94 = sub i32 %6, %91
  %95 = icmp sgt i32 %94, 31
  %96 = and i1 %93, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %89
  %98 = ashr i32 %91, 3
  %99 = getelementptr i8, ptr %79, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = icmp ne i32 %100, -1
  %102 = icmp eq i32 %90, -1
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = ptrtoint ptr %99 to i32
  %106 = shl i32 %105, 3
  %107 = and i32 %106, 24
  %108 = and i32 %105, -4
  %109 = inttoptr i32 %108 to ptr
  %110 = or i32 %107, 32
  %111 = tail call i32 @_find_next_zero_bit_le(ptr noundef %109, i32 noundef %110, i32 noundef %107) #17
  %112 = sub i32 %111, %107
  %113 = tail call i32 @llvm.smin.i32(i32 %112, i32 32) #17
  %114 = add i32 %113, %91
  br label %115

115:                                              ; preds = %104, %97
  %116 = phi i32 [ %114, %104 ], [ %90, %97 ]
  store i32 0, ptr %99, align 4
  br label %117

117:                                              ; preds = %122, %115
  %118 = phi i32 [ 32, %115 ], [ 1, %122 ]
  %119 = phi i32 [ %116, %115 ], [ %135, %122 ]
  %120 = add i32 %118, %91
  %121 = icmp sgt i32 %6, %120
  br i1 %121, label %89, label %136

122:                                              ; preds = %89
  %123 = add i32 %91, %86
  %124 = and i32 %123, 31
  %125 = shl nuw i32 1, %124
  %126 = lshr i32 %123, 5
  %127 = getelementptr i32, ptr %88, i32 %126
  %128 = load i32, ptr %127, align 4
  %129 = xor i32 %125, -1
  %130 = and i32 %128, %129
  store i32 %130, ptr %127, align 4
  %131 = and i32 %128, %125
  %132 = icmp eq i32 %131, 0
  %133 = icmp eq i32 %90, -1
  %134 = select i1 %132, i1 %133, i1 false
  %135 = select i1 %134, i32 %91, i32 %90
  br label %117

136:                                              ; preds = %117, %78
  %137 = phi i32 [ -1, %78 ], [ %119, %117 ]
  %138 = load ptr, ptr %21, align 4
  %139 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 62
  %140 = load ptr, ptr %139, align 4
  %141 = load i32, ptr %140, align 4
  %142 = icmp ult i32 %6, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %136
  %144 = load ptr, ptr %81, align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = shl i32 %145, 3
  %147 = and i32 %146, 24
  %148 = add i32 %147, %6
  %149 = and i32 %145, -4
  %150 = inttoptr i32 %149 to ptr
  %151 = lshr i32 %148, 5
  %152 = getelementptr i32, ptr %150, i32 %151
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %148, 31
  %155 = xor i32 %153, -1
  %156 = lshr i32 %155, %154
  %157 = and i32 %156, 1
  br label %158

158:                                              ; preds = %143, %136
  %159 = phi i32 [ %157, %143 ], [ 0, %136 ]
  %160 = icmp eq i32 %137, -1
  br i1 %160, label %191, label %161, !prof !11

161:                                              ; preds = %158
  %162 = load i32, ptr %19, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 2
  %165 = load i32, ptr %164, align 8
  %166 = zext i32 %165 to i64
  %167 = mul nuw i64 %166, %163
  %168 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 15
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.ext4_super_block, ptr %169, i32 0, i32 5
  %171 = load i32, ptr %170, align 4
  %172 = zext i32 %171 to i64
  %173 = add nuw i64 %167, %172
  %174 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 12
  %175 = load i32, ptr %174, align 16
  %176 = shl i32 %137, %175
  %177 = sext i32 %176 to i64
  %178 = add i64 %173, %177
  %179 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 25
  %180 = load i16, ptr %179, align 8
  %181 = and i16 %180, 32
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %401

183:                                              ; preds = %161
  %184 = icmp eq ptr %0, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %187 = load i32, ptr %186, align 4
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi i32 [ %187, %185 ], [ 0, %183 ]
  tail call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.mb_free_blocks, i32 noundef 1826, ptr noundef %9, i32 noundef %162, i32 noundef %189, i64 noundef %178, ptr noundef nonnull @.str.87, i32 noundef %137) #17
  %190 = load i32, ptr %19, align 4
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %9, i32 noundef %190, i32 noundef 4) #17
  br label %401

191:                                              ; preds = %158
  %192 = icmp ne i32 %80, 0
  %193 = icmp ne i32 %159, 0
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = select i1 %192, i1 true, i1 %193
  br i1 %196, label %203, label %197

197:                                              ; preds = %195, %191
  %198 = phi i32 [ -1, %191 ], [ 1, %195 ]
  %199 = load ptr, ptr %33, align 4
  %200 = getelementptr inbounds %struct.ext4_group_info, ptr %199, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, %198
  store i32 %202, ptr %200, align 4
  br label %203

203:                                              ; preds = %197, %195
  %204 = and i32 %2, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %203
  %207 = xor i1 %192, true
  %208 = zext i1 %207 to i32
  %209 = add i32 %208, %2
  %210 = select i1 %192, i32 -1, i32 1
  %211 = load ptr, ptr %33, align 4
  %212 = getelementptr inbounds %struct.ext4_group_info, ptr %211, i32 0, i32 11
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %210
  store i32 %214, ptr %212, align 4
  br label %215

215:                                              ; preds = %206, %203
  %216 = phi i32 [ %209, %206 ], [ %2, %203 ]
  %217 = and i32 %7, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %215
  %220 = xor i1 %193, true
  %221 = sext i1 %220 to i32
  %222 = add i32 %7, %221
  %223 = select i1 %193, i32 -1, i32 1
  %224 = load ptr, ptr %33, align 4
  %225 = getelementptr inbounds %struct.ext4_group_info, ptr %224, i32 0, i32 11
  %226 = load i32, ptr %225, align 4
  %227 = add i32 %226, %223
  store i32 %227, ptr %225, align 4
  br label %228

228:                                              ; preds = %219, %215
  %229 = phi i32 [ %7, %215 ], [ %222, %219 ]
  %230 = icmp sgt i32 %216, %229
  br i1 %230, label %401, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr %81, align 4
  %233 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %232, %234
  br i1 %235, label %236, label %237, !prof !15

236:                                              ; preds = %231
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 6
  %239 = load ptr, ptr %8, align 4
  %240 = getelementptr inbounds %struct.super_block, ptr %239, i32 0, i32 27
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.ext4_sb_info, ptr %241, i32 0, i32 61
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr i16, ptr %243, i32 1
  %245 = load i16, ptr %244, align 2
  %246 = zext i16 %245 to i32
  %247 = getelementptr i8, ptr %234, i32 %246
  %248 = icmp eq ptr %247, null
  br i1 %248, label %401, label %249

249:                                              ; preds = %358, %237
  %250 = phi ptr [ %359, %358 ], [ %247, %237 ]
  %251 = phi i32 [ %334, %358 ], [ 1, %237 ]
  %252 = phi i32 [ %331, %358 ], [ %229, %237 ]
  %253 = phi i32 [ %293, %358 ], [ %216, %237 ]
  %254 = ashr i32 %253, 1
  %255 = ashr i32 %252, 1
  %256 = and i32 %253, 2
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %292, label %258

258:                                              ; preds = %249
  %259 = add nsw i32 %254, -1
  %260 = ptrtoint ptr %250 to i32
  %261 = shl i32 %260, 3
  %262 = and i32 %261, 24
  %263 = add nsw i32 %259, %262
  %264 = and i32 %260, -4
  %265 = inttoptr i32 %264 to ptr
  %266 = lshr i32 %263, 5
  %267 = getelementptr i32, ptr %265, i32 %266
  %268 = load volatile i32, ptr %267, align 4
  %269 = and i32 %263, 31
  %270 = shl nuw i32 1, %269
  %271 = and i32 %268, %270
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %258
  %274 = add nsw i32 %254, %262
  %275 = and i32 %274, 31
  %276 = shl nuw i32 1, %275
  %277 = lshr i32 %274, 5
  %278 = getelementptr i32, ptr %265, i32 %277
  %279 = xor i32 %276, -1
  %280 = load i32, ptr %278, align 4
  %281 = and i32 %280, %279
  store i32 %281, ptr %278, align 4
  %282 = add nsw i32 %254, 1
  br label %285

283:                                              ; preds = %258
  %284 = or i32 %268, %270
  store i32 %284, ptr %267, align 4
  br label %285

285:                                              ; preds = %283, %273
  %286 = phi i32 [ %259, %283 ], [ %282, %273 ]
  %287 = phi i32 [ -1, %283 ], [ 1, %273 ]
  %288 = load ptr, ptr %33, align 4
  %289 = getelementptr %struct.ext4_group_info, ptr %288, i32 0, i32 11, i32 %251
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, %287
  store i32 %291, ptr %289, align 4
  br label %292

292:                                              ; preds = %285, %249
  %293 = phi i32 [ %254, %249 ], [ %286, %285 ]
  %294 = and i32 %252, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %330

296:                                              ; preds = %292
  %297 = add nuw nsw i32 %255, 1
  %298 = ptrtoint ptr %250 to i32
  %299 = shl i32 %298, 3
  %300 = and i32 %299, 24
  %301 = add nsw i32 %297, %300
  %302 = and i32 %298, -4
  %303 = inttoptr i32 %302 to ptr
  %304 = lshr i32 %301, 5
  %305 = getelementptr i32, ptr %303, i32 %304
  %306 = load volatile i32, ptr %305, align 4
  %307 = and i32 %301, 31
  %308 = shl nuw i32 1, %307
  %309 = and i32 %306, %308
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %321, label %311

311:                                              ; preds = %296
  %312 = add nsw i32 %300, %255
  %313 = and i32 %312, 31
  %314 = shl nuw i32 1, %313
  %315 = lshr i32 %312, 5
  %316 = getelementptr i32, ptr %303, i32 %315
  %317 = xor i32 %314, -1
  %318 = load i32, ptr %316, align 4
  %319 = and i32 %318, %317
  store i32 %319, ptr %316, align 4
  %320 = add nsw i32 %255, -1
  br label %323

321:                                              ; preds = %296
  %322 = or i32 %306, %308
  store i32 %322, ptr %305, align 4
  br label %323

323:                                              ; preds = %321, %311
  %324 = phi i32 [ %297, %321 ], [ %320, %311 ]
  %325 = phi i32 [ -1, %321 ], [ 1, %311 ]
  %326 = load ptr, ptr %33, align 4
  %327 = getelementptr %struct.ext4_group_info, ptr %326, i32 0, i32 11, i32 %251
  %328 = load i32, ptr %327, align 4
  %329 = add i32 %328, %325
  store i32 %329, ptr %327, align 4
  br label %330

330:                                              ; preds = %323, %292
  %331 = phi i32 [ %324, %323 ], [ %255, %292 ]
  %332 = icmp slt i32 %331, %293
  br i1 %332, label %401, label %333

333:                                              ; preds = %330
  %334 = add i32 %251, 1
  %335 = icmp eq i32 %331, %293
  br i1 %335, label %361, label %336

336:                                              ; preds = %333
  %337 = load ptr, ptr %81, align 4
  %338 = load ptr, ptr %233, align 4
  %339 = icmp eq ptr %337, %338
  br i1 %339, label %340, label %341, !prof !15

340:                                              ; preds = %336
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

341:                                              ; preds = %336
  %342 = load i16, ptr %238, align 4
  %343 = zext i16 %342 to i32
  %344 = add nuw nsw i32 %343, 1
  %345 = icmp slt i32 %344, %334
  br i1 %345, label %361, label %346

346:                                              ; preds = %341
  %347 = icmp eq i32 %334, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %346
  %349 = load ptr, ptr %8, align 4
  %350 = getelementptr inbounds %struct.super_block, ptr %349, i32 0, i32 27
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.ext4_sb_info, ptr %351, i32 0, i32 61
  %353 = load ptr, ptr %352, align 8
  %354 = getelementptr i16, ptr %353, i32 %334
  %355 = load i16, ptr %354, align 2
  %356 = zext i16 %355 to i32
  %357 = getelementptr i8, ptr %338, i32 %356
  br label %358

358:                                              ; preds = %348, %346
  %359 = phi ptr [ %357, %348 ], [ %337, %346 ]
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %249

361:                                              ; preds = %358, %341, %333
  %362 = phi i32 [ %331, %341 ], [ %331, %358 ], [ %293, %333 ]
  %363 = add i32 %362, 1
  %364 = icmp sgt i32 %363, %293
  br i1 %364, label %365, label %394

365:                                              ; preds = %361
  %366 = ptrtoint ptr %250 to i32
  %367 = shl i32 %366, 3
  %368 = and i32 %367, 24
  %369 = and i32 %366, -4
  %370 = inttoptr i32 %369 to ptr
  br label %371

371:                                              ; preds = %381, %365
  %372 = phi i32 [ %293, %365 ], [ %383, %381 ]
  %373 = and i32 %372, 31
  %374 = icmp eq i32 %373, 0
  %375 = sub i32 %363, %372
  %376 = icmp sgt i32 %375, 31
  %377 = and i1 %374, %376
  br i1 %377, label %378, label %385

378:                                              ; preds = %371
  %379 = ashr i32 %372, 3
  %380 = getelementptr i8, ptr %250, i32 %379
  store i32 0, ptr %380, align 4
  br label %381

381:                                              ; preds = %385, %378
  %382 = phi i32 [ 32, %378 ], [ 1, %385 ]
  %383 = add i32 %382, %372
  %384 = icmp sgt i32 %363, %383
  br i1 %384, label %371, label %394

385:                                              ; preds = %371
  %386 = add i32 %372, %368
  %387 = and i32 %386, 31
  %388 = shl nuw i32 1, %387
  %389 = lshr i32 %386, 5
  %390 = getelementptr i32, ptr %370, i32 %389
  %391 = xor i32 %388, -1
  %392 = load i32, ptr %390, align 4
  %393 = and i32 %392, %391
  store i32 %393, ptr %390, align 4
  br label %381

394:                                              ; preds = %381, %361
  %395 = load ptr, ptr %33, align 4
  %396 = getelementptr %struct.ext4_group_info, ptr %395, i32 0, i32 11, i32 %251
  %397 = load i32, ptr %396, align 4
  %398 = sub i32 1, %293
  %399 = add i32 %398, %362
  %400 = add i32 %399, %397
  store i32 %400, ptr %396, align 4
  br label %401

401:                                              ; preds = %394, %330, %237, %228, %188, %161
  %402 = load ptr, ptr %33, align 4
  tail call fastcc void @mb_set_largest_free_order(ptr noundef %9, ptr noundef %402)
  %403 = load ptr, ptr %33, align 4
  tail call fastcc void @mb_update_avg_fragment_size(ptr noundef %9, ptr noundef %403)
  br label %404

404:                                              ; preds = %401, %32, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_group_add_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_buddy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !10
  %9 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i32 32, i1 false), !annotation !10
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 12
  %12 = load i32, ptr %11, align 16
  %13 = zext i32 %12 to i64
  %14 = lshr i64 %2, %13
  %15 = zext i32 %3 to i64
  %16 = add i64 %2, -1
  %17 = add i64 %16, %15
  %18 = lshr i64 %17, %13
  %19 = sub i64 %18, %14
  %20 = trunc i64 %19 to i32
  %21 = add i32 %20, 1
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %167, label %23

23:                                               ; preds = %4
  call void @ext4_get_group_no_and_offset(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %24, %21
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %25, %28
  %30 = load i32, ptr %6, align 4
  br i1 %29, label %31, label %32

31:                                               ; preds = %23
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %1, ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6155, ptr noundef nonnull @.str.45, i32 noundef %30) #17
  br label %165

32:                                               ; preds = %23
  %33 = call ptr @ext4_read_block_bitmap(ptr noundef %1, i32 noundef %30) #17
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = ptrtoint ptr %33 to i32
  br label %162

37:                                               ; preds = %32
  %38 = load i32, ptr %6, align 4
  %39 = call ptr @ext4_get_group_desc(ptr noundef %1, i32 noundef %38, ptr noundef nonnull %5) #17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %158, label %41

41:                                               ; preds = %37
  %42 = call i64 @ext4_block_bitmap(ptr noundef %1, ptr noundef nonnull %39) #17
  %43 = icmp ult i64 %42, %2
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i64 @ext4_block_bitmap(ptr noundef %1, ptr noundef nonnull %39) #17
  %46 = icmp ugt i64 %45, %17
  br i1 %46, label %47, label %75

47:                                               ; preds = %44, %41
  %48 = call i64 @ext4_inode_bitmap(ptr noundef %1, ptr noundef nonnull %39) #17
  %49 = icmp ult i64 %48, %2
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = call i64 @ext4_inode_bitmap(ptr noundef %1, ptr noundef nonnull %39) #17
  %52 = icmp ugt i64 %51, %17
  br i1 %52, label %53, label %75

53:                                               ; preds = %50, %47
  %54 = call i64 @ext4_inode_table(ptr noundef %1, ptr noundef nonnull %39) #17
  %55 = icmp ugt i64 %54, %2
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = call i64 @ext4_inode_table(ptr noundef %1, ptr noundef nonnull %39) #17
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 %57, -1
  %62 = add i64 %61, %60
  %63 = icmp ult i64 %62, %2
  br i1 %63, label %64, label %75

64:                                               ; preds = %56, %53
  %65 = call i64 @ext4_inode_table(ptr noundef %1, ptr noundef nonnull %39) #17
  %66 = icmp ult i64 %17, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = call i64 @ext4_inode_table(ptr noundef %1, ptr noundef nonnull %39) #17
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %70 to i64
  %72 = add i64 %68, -1
  %73 = add i64 %72, %71
  %74 = icmp ugt i64 %17, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %67, %56, %50, %44
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %1, ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6180, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.46, i64 noundef %2, i32 noundef %3) #17
  br label %158

76:                                               ; preds = %67, %64
  %77 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6187, ptr noundef %0, ptr noundef %1, ptr noundef %33, i32 noundef 1) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %158

79:                                               ; preds = %76
  %80 = load ptr, ptr %5, align 4
  %81 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6197, ptr noundef %0, ptr noundef %1, ptr noundef %80, i32 noundef 1) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %158

83:                                               ; preds = %79
  %84 = icmp eq i32 %21, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  br label %87

87:                                               ; preds = %111, %85
  %88 = phi i32 [ 0, %85 ], [ %113, %111 ]
  %89 = phi i32 [ 0, %85 ], [ %112, %111 ]
  %90 = load i32, ptr %7, align 4
  %91 = add i32 %90, %88
  %92 = load ptr, ptr %86, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = shl i32 %93, 3
  %95 = and i32 %94, 24
  %96 = add i32 %91, %95
  %97 = and i32 %93, -4
  %98 = inttoptr i32 %97 to ptr
  %99 = lshr i32 %96, 5
  %100 = getelementptr i32, ptr %98, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %96, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = zext i32 %88 to i64
  %108 = add i64 %107, %2
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %1, ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6205, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.47, i64 noundef %108) #17
  br label %111

109:                                              ; preds = %87
  %110 = add i32 %89, 1
  br label %111

111:                                              ; preds = %109, %106
  %112 = phi i32 [ %110, %109 ], [ %89, %106 ]
  %113 = add nuw i32 %88, 1
  %114 = icmp eq i32 %88, %20
  br i1 %114, label %115, label %87

115:                                              ; preds = %111, %83
  %116 = phi i32 [ 0, %83 ], [ %112, %111 ]
  %117 = load i32, ptr %6, align 4
  %118 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %1, i32 noundef %117, ptr noundef nonnull %8, i32 noundef 3136) #17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %115
  %121 = load i32, ptr %6, align 4
  call fastcc void @ext4_lock_group(ptr noundef %1, i32 noundef %121)
  %122 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = load i32, ptr %7, align 4
  call fastcc void @mb_clear_bits(ptr noundef %123, i32 noundef %124, i32 noundef %21)
  %125 = load i32, ptr %7, align 4
  call fastcc void @mb_free_blocks(ptr noundef null, ptr noundef nonnull %8, i32 noundef %125, i32 noundef %21)
  %126 = call i32 @ext4_free_group_clusters(ptr noundef %1, ptr noundef nonnull %39) #17
  %127 = add i32 %126, %116
  call void @ext4_free_group_clusters_set(ptr noundef %1, ptr noundef nonnull %39, i32 noundef %127) #17
  %128 = load i32, ptr %6, align 4
  call void @ext4_block_bitmap_csum_set(ptr noundef %1, i32 noundef %128, ptr noundef nonnull %39, ptr noundef %33) #17
  %129 = load i32, ptr %6, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %1, i32 noundef %129, ptr noundef nonnull %39) #17
  %130 = load i32, ptr %6, align 4
  %131 = load ptr, ptr %9, align 4
  %132 = getelementptr inbounds %struct.ext4_sb_info, ptr %131, i32 0, i32 41
  %133 = load ptr, ptr %132, align 16
  %134 = and i32 %130, 63
  %135 = getelementptr [64 x %struct.bgl_lock], ptr %133, i32 0, i32 %134
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %136 = load i16, ptr %135, align 4
  %137 = add i16 %136, 1
  store i16 %137, ptr %135, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 36
  %139 = sext i32 %116 to i64
  %140 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %138, i64 noundef %139, i32 noundef %140) #17
  %141 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 110
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %120
  %145 = load i32, ptr %6, align 4
  %146 = lshr i32 %145, %142
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %147 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 111
  %148 = load volatile ptr, ptr %147, align 8
  %149 = getelementptr ptr, ptr %148, i32 %146
  %150 = load ptr, ptr %149, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %150) #17, !srcloc !20
  %151 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %150, ptr %150, i64 %139, ptr elementtype(i64) %150) #17, !srcloc !87
  br label %152

152:                                              ; preds = %144, %120
  call fastcc void @ext4_mb_unload_buddy(ptr noundef nonnull %8)
  %153 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6244, ptr noundef %0, ptr noundef null, ptr noundef %33) #17
  %154 = load ptr, ptr %5, align 4
  %155 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6248, ptr noundef %0, ptr noundef null, ptr noundef %154) #17
  %156 = icmp eq i32 %153, 0
  %157 = select i1 %156, i32 %155, i32 %153
  br label %158

158:                                              ; preds = %152, %115, %79, %76, %75, %37
  %159 = phi i32 [ -22, %75 ], [ %77, %76 ], [ %81, %79 ], [ %118, %115 ], [ -5, %37 ], [ %157, %152 ]
  %160 = icmp eq ptr %33, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call void @__brelse(ptr noundef nonnull %33) #17
  br label %162

162:                                              ; preds = %161, %158, %35
  %163 = phi i32 [ %159, %158 ], [ %159, %161 ], [ %36, %35 ]
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162, %31
  %166 = phi i32 [ -22, %31 ], [ %163, %162 ]
  call void @__ext4_std_error(ptr noundef %1, ptr noundef nonnull @__func__.ext4_group_add_blocks, i32 noundef 6254, i32 noundef %166) #17
  br label %167

167:                                              ; preds = %165, %162, %4
  %168 = phi i32 [ 0, %4 ], [ %166, %165 ], [ 0, %162 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %168
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_trim_fs(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ext4_buddy, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !10
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 29
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 50
  %25 = load i32, ptr %24, align 8
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i64 [ %27, %23 ], [ 0, %2 ]
  %30 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = or i64 %29, %32
  %34 = load i64, ptr %1, align 8
  %35 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i64
  %38 = lshr i64 %34, %37
  %39 = getelementptr inbounds %struct.fstrim_range, ptr %1, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = lshr i64 %40, %37
  %42 = add i64 %41, -1
  %43 = add i64 %42, %38
  %44 = getelementptr inbounds %struct.fstrim_range, ptr %1, i32 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = lshr i64 %45, %37
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 11
  %48 = load i32, ptr %47, align 4
  %49 = zext i32 %48 to i64
  %50 = add i64 %46, -1
  %51 = add i64 %50, %49
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 12
  %53 = load i32, ptr %52, align 16
  %54 = zext i32 %53 to i64
  %55 = lshr i64 %51, %54
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = zext i32 %57 to i64
  %59 = icmp ule i64 %55, %58
  %60 = icmp ult i64 %38, %33
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %277

62:                                               ; preds = %28
  %63 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %64 = load i32, ptr %63, align 16
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %40, %65
  br i1 %66, label %277, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 32, i32 18
  %69 = load i32, ptr %68, align 4
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %45, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = zext i8 %36 to i32
  %74 = lshr i32 %69, %73
  %75 = add i32 %48, -1
  %76 = add i32 %75, %74
  %77 = lshr i32 %76, %53
  %78 = zext i32 %77 to i64
  %79 = icmp ugt i32 %77, %57
  br i1 %79, label %266, label %80

80:                                               ; preds = %72, %67
  %81 = phi i64 [ %78, %72 ], [ %55, %67 ]
  %82 = icmp ult i64 %43, %33
  %83 = add i64 %33, -1
  %84 = select i1 %82, i64 %43, i64 %83
  %85 = icmp ugt i64 %84, %18
  br i1 %85, label %86, label %266

86:                                               ; preds = %80
  %87 = tail call i64 @llvm.umax.i64(i64 %38, i64 %18)
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %87, ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %84, ptr noundef nonnull %5, ptr noundef nonnull %7) #17
  %88 = load i32, ptr %4, align 4
  %89 = load i32, ptr %5, align 4
  %90 = icmp ugt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = trunc i64 %81 to i32
  br label %261

93:                                               ; preds = %86
  %94 = load ptr, ptr %12, align 4
  %95 = trunc i64 %81 to i32
  %96 = getelementptr inbounds %struct.ext4_buddy, ptr %3, i32 0, i32 4
  %97 = getelementptr inbounds %struct.ext4_buddy, ptr %3, i32 0, i32 2
  %98 = getelementptr inbounds %struct.ext4_sb_info, ptr %94, i32 0, i32 8
  %99 = load i32, ptr %98, align 32
  %100 = icmp ugt i32 %99, %88
  br i1 %100, label %101, label %105, !prof !11

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.ext4_sb_info, ptr %94, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, -1
  br label %106

105:                                              ; preds = %255, %93
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

106:                                              ; preds = %255, %101
  %107 = phi i32 [ %88, %101 ], [ %256, %255 ]
  %108 = phi i32 [ %104, %101 ], [ %135, %255 ]
  %109 = phi i64 [ 0, %101 ], [ %253, %255 ]
  %110 = phi ptr [ %94, %101 ], [ %257, %255 ]
  %111 = getelementptr inbounds %struct.ext4_sb_info, ptr %110, i32 0, i32 28
  %112 = load i32, ptr %111, align 64
  %113 = lshr i32 %107, %112
  %114 = getelementptr inbounds %struct.ext4_sb_info, ptr %110, i32 0, i32 7
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, -1
  %117 = and i32 %116, %107
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %118 = load ptr, ptr %12, align 4
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %118, i32 0, i32 58
  %120 = load volatile ptr, ptr %119, align 4
  %121 = getelementptr ptr, ptr %120, i32 %113
  %122 = load ptr, ptr %121, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %123 = getelementptr ptr, ptr %122, i32 %117
  %124 = load ptr, ptr %123, align 4
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128, !prof !11

128:                                              ; preds = %106
  %129 = call fastcc i32 @ext4_mb_init_group(ptr noundef %0, i32 noundef %107, i32 noundef 3136)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %266

131:                                              ; preds = %128, %106
  %132 = load i32, ptr %5, align 4
  %133 = icmp eq i32 %107, %132
  %134 = load i32, ptr %7, align 4
  %135 = select i1 %133, i32 %134, i32 %108
  %136 = getelementptr inbounds %struct.ext4_group_info, ptr %124, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp ugt i64 %81, %138
  br i1 %139, label %251, label %140

140:                                              ; preds = %131
  %141 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #17, !annotation !10
  %142 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_trim_all_free, i32 0, i32 1), align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = tail call ptr @llvm.thread.pointer() #17
  %146 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %147 = load i32, ptr %146, align 8
  %148 = lshr i32 %147, 5
  %149 = getelementptr i32, ptr @__cpu_online_mask, i32 %148
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %147, 31
  %152 = shl nuw i32 1, %151
  %153 = and i32 %152, %150
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %144
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !111
  %156 = call i32 @__traceiter_ext4_trim_all_free(ptr noundef null, ptr noundef %0, i32 noundef %107, i32 noundef %141, i32 noundef %135) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !112
  br label %157

157:                                              ; preds = %155, %144, %140
  %158 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %107, ptr noundef nonnull %3, i32 noundef 3136) #17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_trim_all_free, i32 noundef 6373, ptr noundef nonnull @.str.39, i32 noundef %158, i32 noundef %107) #17
  br label %244

161:                                              ; preds = %157
  %162 = load ptr, ptr %12, align 4
  %163 = getelementptr inbounds %struct.ext4_sb_info, ptr %162, i32 0, i32 41
  %164 = load ptr, ptr %163, align 16
  %165 = and i32 %107, 63
  %166 = getelementptr [64 x %struct.bgl_lock], ptr %164, i32 0, i32 %165
  %167 = call i32 @_raw_spin_trylock(ptr noundef %166) #17
  %168 = icmp eq i32 %167, 0
  %169 = load ptr, ptr %12, align 4
  %170 = getelementptr inbounds %struct.ext4_sb_info, ptr %169, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #17
  br i1 %168, label %176, label %171

171:                                              ; preds = %161
  %172 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 0, i32 -1, ptr elementtype(i32) %170) #17, !srcloc !34
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %171
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %182

176:                                              ; preds = %161
  %177 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 8, i32 1, ptr elementtype(i32) %170) #17, !srcloc !34
  %178 = extractvalue { i32, i32, i32 } %177, 0
  %179 = icmp eq i32 %178, 8
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %181

181:                                              ; preds = %180, %176
  call void @_raw_spin_lock(ptr noundef %166) #17
  br label %182

182:                                              ; preds = %181, %175, %171
  %183 = load ptr, ptr %96, align 4
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load ptr, ptr %12, align 4
  %189 = getelementptr inbounds %struct.ext4_sb_info, ptr %188, i32 0, i32 118
  %190 = load i32, ptr %189, align 4
  %191 = icmp ugt i32 %190, %95
  br i1 %191, label %192, label %197

192:                                              ; preds = %187, %182
  %193 = call fastcc i32 @ext4_try_to_trim_range(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %141, i32 noundef %135, i32 noundef %95) #17
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load ptr, ptr %96, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %196) #17
  br label %197

197:                                              ; preds = %195, %192, %187
  %198 = phi i32 [ %193, %195 ], [ %193, %192 ], [ 0, %187 ]
  %199 = load ptr, ptr %12, align 4
  %200 = getelementptr inbounds %struct.ext4_sb_info, ptr %199, i32 0, i32 41
  %201 = load ptr, ptr %200, align 16
  %202 = getelementptr [64 x %struct.bgl_lock], ptr %201, i32 0, i32 %165
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %203 = load i16, ptr %202, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %202, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %205 = load ptr, ptr %97, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %224, label %207

207:                                              ; preds = %197
  %208 = getelementptr inbounds %struct.page, ptr %205, i32 0, i32 1
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212, !prof !11

212:                                              ; preds = %207
  %213 = add i32 %209, -1
  br label %216

214:                                              ; preds = %207
  %215 = ptrtoint ptr %205 to i32
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  %218 = inttoptr i32 %217 to ptr
  %219 = getelementptr inbounds %struct.page, ptr %218, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %219) #17, !srcloc !20
  %220 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %219, ptr %219, i32 1, ptr elementtype(i32) %219) #17, !srcloc !21
  %221 = extractvalue { i32, i32 } %220, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  call void @__put_page(ptr noundef %218) #17
  br label %224

224:                                              ; preds = %223, %216, %197
  %225 = load ptr, ptr %3, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %244, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.page, ptr %225, i32 0, i32 1
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232, !prof !11

232:                                              ; preds = %227
  %233 = add i32 %229, -1
  br label %236

234:                                              ; preds = %227
  %235 = ptrtoint ptr %225 to i32
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = inttoptr i32 %237 to ptr
  %239 = getelementptr inbounds %struct.page, ptr %238, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #17, !srcloc !20
  %240 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #17, !srcloc !21
  %241 = extractvalue { i32, i32 } %240, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  call void @__put_page(ptr noundef %238) #17
  br label %244

244:                                              ; preds = %243, %236, %224, %160
  %245 = phi i32 [ %158, %160 ], [ %198, %224 ], [ %198, %236 ], [ %198, %243 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %266, label %247

247:                                              ; preds = %244
  %248 = zext i32 %245 to i64
  %249 = add i64 %109, %248
  %250 = load i32, ptr %5, align 4
  br label %251

251:                                              ; preds = %247, %131
  %252 = phi i32 [ %250, %247 ], [ %132, %131 ]
  %253 = phi i64 [ %249, %247 ], [ %109, %131 ]
  store i32 0, ptr %6, align 4
  %254 = icmp ult i32 %107, %252
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = add nuw i32 %107, 1
  %257 = load ptr, ptr %12, align 4
  %258 = getelementptr inbounds %struct.ext4_sb_info, ptr %257, i32 0, i32 8
  %259 = load i32, ptr %258, align 32
  %260 = icmp ugt i32 %259, %256
  br i1 %260, label %106, label %105, !prof !11

261:                                              ; preds = %251, %91
  %262 = phi i32 [ %92, %91 ], [ %95, %251 ]
  %263 = phi i64 [ 0, %91 ], [ %253, %251 ]
  %264 = load ptr, ptr %12, align 4
  %265 = getelementptr inbounds %struct.ext4_sb_info, ptr %264, i32 0, i32 118
  store i32 %262, ptr %265, align 4
  br label %266

266:                                              ; preds = %261, %244, %128, %80, %72
  %267 = phi i64 [ 0, %72 ], [ 0, %80 ], [ %263, %261 ], [ %109, %128 ], [ %109, %244 ]
  %268 = phi i32 [ 0, %72 ], [ 0, %80 ], [ 0, %261 ], [ %245, %244 ], [ %129, %128 ]
  %269 = load ptr, ptr %12, align 4
  %270 = getelementptr inbounds %struct.ext4_sb_info, ptr %269, i32 0, i32 12
  %271 = load i32, ptr %270, align 16
  %272 = zext i32 %271 to i64
  %273 = shl i64 %267, %272
  %274 = load i8, ptr %35, align 4
  %275 = zext i8 %274 to i64
  %276 = shl i64 %273, %275
  store i64 %276, ptr %39, align 8
  br label %277

277:                                              ; preds = %266, %62, %28
  %278 = phi i32 [ %268, %266 ], [ -22, %62 ], [ -22, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %278
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mballoc_query_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ext4_buddy, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !10
  %8 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 3136) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %150

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ext4_buddy, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 41
  %16 = load ptr, ptr %15, align 16
  %17 = and i32 %1, 63
  %18 = getelementptr [64 x %struct.bgl_lock], ptr %16, i32 0, i32 %17
  %19 = tail call i32 @_raw_spin_trylock(ptr noundef %18) #17
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #17
  br i1 %20, label %28, label %23

23:                                               ; preds = %10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 -1, ptr elementtype(i32) %22) #17, !srcloc !34
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %34

28:                                               ; preds = %10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 8, i32 1, ptr elementtype(i32) %22) #17, !srcloc !34
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %33

33:                                               ; preds = %32, %28
  tail call void @_raw_spin_lock(ptr noundef %18) #17
  br label %34

34:                                               ; preds = %33, %27, %23
  %35 = getelementptr inbounds %struct.ext4_buddy, ptr %7, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ext4_group_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 %2)
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, %3
  %44 = add i32 %42, -1
  %45 = select i1 %43, i32 %3, i32 %44
  %46 = icmp sgt i32 %39, %45
  br i1 %46, label %101, label %47

47:                                               ; preds = %34
  %48 = add i32 %45, 1
  %49 = ptrtoint ptr %12 to i32
  %50 = shl i32 %49, 3
  %51 = and i32 %50, 24
  %52 = and i32 %49, -4
  %53 = inttoptr i32 %52 to ptr
  %54 = add i32 %48, %51
  br label %55

55:                                               ; preds = %96, %47
  %56 = phi i32 [ %39, %47 ], [ %97, %96 ]
  %57 = add i32 %56, %51
  %58 = tail call i32 @_find_next_zero_bit_le(ptr noundef %53, i32 noundef %54, i32 noundef %57) #17
  %59 = sub i32 %58, %51
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 %48) #17
  %61 = icmp sgt i32 %60, %45
  br i1 %61, label %99, label %62

62:                                               ; preds = %55
  %63 = add i32 %60, %51
  %64 = tail call i32 @_find_next_bit_le(ptr noundef %53, i32 noundef %54, i32 noundef %63) #17
  %65 = sub i32 %64, %51
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 %48) #17
  %67 = load ptr, ptr %13, align 4
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 41
  %69 = load ptr, ptr %68, align 16
  %70 = getelementptr [64 x %struct.bgl_lock], ptr %69, i32 0, i32 %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %71 = load i16, ptr %70, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %73 = sub i32 %66, %60
  %74 = tail call i32 %4(ptr noundef %0, i32 noundef %1, i32 noundef %60, i32 noundef %73, ptr noundef %5) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %62
  %77 = load ptr, ptr %13, align 4
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 41
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr [64 x %struct.bgl_lock], ptr %79, i32 0, i32 %17
  %81 = tail call i32 @_raw_spin_trylock(ptr noundef %80) #17
  %82 = icmp eq i32 %81, 0
  %83 = load ptr, ptr %13, align 4
  %84 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #17
  br i1 %82, label %90, label %85

85:                                               ; preds = %76
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 0, i32 -1, ptr elementtype(i32) %84) #17, !srcloc !34
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %96

90:                                               ; preds = %76
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 8, i32 1, ptr elementtype(i32) %84) #17, !srcloc !34
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 8
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %95

95:                                               ; preds = %94, %90
  tail call void @_raw_spin_lock(ptr noundef %80) #17
  br label %96

96:                                               ; preds = %95, %89, %85
  %97 = add i32 %66, 1
  %98 = icmp sgt i32 %97, %45
  br i1 %98, label %99, label %55

99:                                               ; preds = %96, %55
  %100 = load ptr, ptr %13, align 4
  br label %101

101:                                              ; preds = %99, %34
  %102 = phi ptr [ %100, %99 ], [ %40, %34 ]
  %103 = getelementptr inbounds %struct.ext4_sb_info, ptr %102, i32 0, i32 41
  %104 = load ptr, ptr %103, align 16
  %105 = getelementptr [64 x %struct.bgl_lock], ptr %104, i32 0, i32 %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %106 = load i16, ptr %105, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %105, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %108

108:                                              ; preds = %101, %62
  %109 = phi i32 [ 0, %101 ], [ %74, %62 ]
  %110 = getelementptr inbounds %struct.ext4_buddy, ptr %7, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.page, ptr %111, i32 0, i32 1
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118, !prof !11

118:                                              ; preds = %113
  %119 = add i32 %115, -1
  br label %122

120:                                              ; preds = %113
  %121 = ptrtoint ptr %111 to i32
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = inttoptr i32 %123 to ptr
  %125 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %125) #17, !srcloc !20
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %125, ptr %125, i32 1, ptr elementtype(i32) %125) #17, !srcloc !21
  %127 = extractvalue { i32, i32 } %126, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  tail call void @__put_page(ptr noundef %124) #17
  br label %130

130:                                              ; preds = %129, %122, %108
  %131 = load ptr, ptr %7, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %150, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.page, ptr %131, i32 0, i32 1
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138, !prof !11

138:                                              ; preds = %133
  %139 = add i32 %135, -1
  br label %142

140:                                              ; preds = %133
  %141 = ptrtoint ptr %131 to i32
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = inttoptr i32 %143 to ptr
  %145 = getelementptr inbounds %struct.page, ptr %144, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %145) #17, !srcloc !20
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %145, ptr %145, i32 1, ptr elementtype(i32) %145) #17, !srcloc !21
  %147 = extractvalue { i32, i32 } %146, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  tail call void @__put_page(ptr noundef %144) #17
  br label %150

150:                                              ; preds = %149, %142, %130, %6
  %151 = phi i32 [ %8, %6 ], [ %109, %130 ], [ %109, %142 ], [ %109, %149 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_mb_init_cache(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 8
  %13 = load i32, ptr %12, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !9
  %14 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 19
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  %18 = lshr i32 4096, %16
  %19 = lshr i32 %18, 1
  %20 = icmp ugt i8 %15, 11
  %21 = select i1 %20, i32 1, i32 %19
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = or i32 %2, 256
  %25 = shl nuw nsw i32 %21, 2
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef %24) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %351, label %28

28:                                               ; preds = %23, %3
  %29 = phi ptr [ %26, %23 ], [ %4, %3 ]
  %30 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, %18
  %33 = lshr i32 %32, 1
  %34 = icmp ne i32 %21, 0
  %35 = icmp ult i32 %33, %13
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %39 = ptrtoint ptr %0 to i32
  br label %42

40:                                               ; preds = %28
  %41 = icmp eq i32 %21, 0
  br i1 %41, label %112, label %95

42:                                               ; preds = %89, %37
  %43 = phi i32 [ %33, %37 ], [ %91, %89 ]
  %44 = phi i32 [ 0, %37 ], [ %90, %89 ]
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 8
  %47 = load i32, ptr %46, align 32
  %48 = icmp ugt i32 %47, %43
  br i1 %48, label %50, label %49, !prof !11

49:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 28
  %52 = load i32, ptr %51, align 64
  %53 = lshr i32 %43, %52
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  %57 = and i32 %56, %43
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr inbounds %struct.ext4_sb_info, ptr %58, i32 0, i32 58
  %60 = load volatile ptr, ptr %59, align 4
  %61 = getelementptr ptr, ptr %60, i32 %53
  %62 = load ptr, ptr %61, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %63 = getelementptr ptr, ptr %62, i32 %57
  %64 = load ptr, ptr %63, align 4
  %65 = load volatile i32, ptr %38, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !11

68:                                               ; preds = %50
  %69 = add i32 %65, -1
  br label %70

70:                                               ; preds = %68, %50
  %71 = phi i32 [ %69, %68 ], [ %39, %50 ]
  %72 = inttoptr i32 %71 to ptr
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  %77 = load volatile i32, ptr %64, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr ptr, ptr %29, i32 %44
  store ptr null, ptr %81, align 4
  br label %89

82:                                               ; preds = %76, %70
  %83 = tail call ptr @ext4_read_block_bitmap_nowait(ptr noundef %9, i32 noundef %43, i1 noundef zeroext false) #17
  %84 = getelementptr ptr, ptr %29, i32 %44
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr ptr, ptr %29, i32 %44
  %88 = ptrtoint ptr %83 to i32
  store ptr null, ptr %87, align 4
  br label %334

89:                                               ; preds = %82, %80
  %90 = add nuw nsw i32 %44, 1
  %91 = add nuw i32 %43, 1
  %92 = icmp ult i32 %90, %21
  %93 = icmp ult i32 %91, %13
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %42, label %95

95:                                               ; preds = %89, %40
  br label %96

96:                                               ; preds = %107, %95
  %97 = phi i32 [ %110, %107 ], [ %33, %95 ]
  %98 = phi i32 [ %109, %107 ], [ 0, %95 ]
  %99 = phi i32 [ %108, %107 ], [ 0, %95 ]
  %100 = getelementptr ptr, ptr %29, i32 %98
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = tail call i32 @ext4_wait_block_bitmap(ptr noundef %9, i32 noundef %97, ptr noundef nonnull %101) #17
  %105 = icmp eq i32 %99, 0
  %106 = select i1 %105, i32 %104, i32 %99
  br label %107

107:                                              ; preds = %103, %96
  %108 = phi i32 [ %106, %103 ], [ %99, %96 ]
  %109 = add nuw nsw i32 %98, 1
  %110 = add nuw i32 %97, 1
  %111 = icmp eq i32 %109, %21
  br i1 %111, label %112, label %96

112:                                              ; preds = %107, %40
  %113 = phi i32 [ 0, %40 ], [ %108, %107 ]
  %114 = load i32, ptr %30, align 4
  %115 = mul i32 %114, %18
  %116 = icmp ugt i8 %15, 12
  br i1 %116, label %332, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %119 = call i32 @llvm.smax.i32(i32 %18, i32 1)
  br label %120

120:                                              ; preds = %327, %117
  %121 = phi ptr [ %1, %117 ], [ %329, %327 ]
  %122 = phi i32 [ 0, %117 ], [ %330, %327 ]
  %123 = phi i32 [ %113, %117 ], [ %328, %327 ]
  %124 = add i32 %122, %115
  %125 = ashr i32 %124, 1
  %126 = icmp ult i32 %125, %13
  br i1 %126, label %127, label %332

127:                                              ; preds = %120
  %128 = sub i32 %125, %33
  %129 = getelementptr ptr, ptr %29, i32 %128
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %327, label %132

132:                                              ; preds = %127
  %133 = load volatile i32, ptr %130, align 4
  %134 = and i32 %133, 16777216
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %327, label %136

136:                                              ; preds = %132
  %137 = tail call ptr @page_address(ptr noundef %0) #17
  %138 = shl i32 %122, %16
  %139 = getelementptr i8, ptr %137, i32 %138
  %140 = load ptr, ptr %129, align 4
  %141 = getelementptr inbounds %struct.buffer_head, ptr %140, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = and i32 %124, 1
  %144 = icmp eq i32 %143, 0
  %145 = icmp eq ptr %121, null
  br i1 %144, label %218, label %146

146:                                              ; preds = %136
  br i1 %145, label %147, label %148, !prof !15

147:                                              ; preds = %146
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1292, 0\0A.popsection", ""() #17, !srcloc !113
  unreachable

148:                                              ; preds = %146
  %149 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mb_buddy_bitmap_load, i32 0, i32 1), align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = tail call ptr @llvm.thread.pointer() #17
  %153 = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 8
  %155 = lshr i32 %154, 5
  %156 = getelementptr i32, ptr @__cpu_online_mask, i32 %155
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %154, 31
  %159 = shl nuw i32 1, %158
  %160 = and i32 %159, %157
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %151
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !114
  %163 = tail call i32 @__traceiter_ext4_mb_buddy_bitmap_load(ptr noundef null, ptr noundef %9, i32 noundef %125) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !115
  br label %164

164:                                              ; preds = %162, %151, %148
  %165 = load ptr, ptr %10, align 4
  %166 = getelementptr inbounds %struct.ext4_sb_info, ptr %165, i32 0, i32 8
  %167 = load i32, ptr %166, align 32
  %168 = icmp ugt i32 %167, %125
  br i1 %168, label %170, label %169, !prof !11

169:                                              ; preds = %164
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.ext4_sb_info, ptr %165, i32 0, i32 28
  %172 = load i32, ptr %171, align 64
  %173 = lshr i32 %125, %172
  %174 = getelementptr inbounds %struct.ext4_sb_info, ptr %165, i32 0, i32 7
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, -1
  %177 = and i32 %176, %125
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %178 = load ptr, ptr %10, align 4
  %179 = getelementptr inbounds %struct.ext4_sb_info, ptr %178, i32 0, i32 58
  %180 = load volatile ptr, ptr %179, align 4
  %181 = getelementptr ptr, ptr %180, i32 %173
  %182 = load ptr, ptr %181, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %183 = getelementptr ptr, ptr %182, i32 %177
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.ext4_group_info, ptr %184, i32 0, i32 4
  store i32 0, ptr %185, align 4
  %186 = getelementptr inbounds %struct.ext4_group_info, ptr %184, i32 0, i32 11
  %187 = load i8, ptr %118, align 4
  %188 = zext i8 %187 to i32
  %189 = shl nuw nsw i32 %188, 2
  %190 = add nuw nsw i32 %189, 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %186, i8 0, i32 %190, i1 false)
  %191 = load ptr, ptr %10, align 4
  %192 = getelementptr inbounds %struct.ext4_sb_info, ptr %191, i32 0, i32 41
  %193 = load ptr, ptr %192, align 16
  %194 = and i32 %125, 63
  %195 = getelementptr [64 x %struct.bgl_lock], ptr %193, i32 0, i32 %194
  %196 = tail call i32 @_raw_spin_trylock(ptr noundef %195) #17
  %197 = icmp eq i32 %196, 0
  %198 = load ptr, ptr %10, align 4
  %199 = getelementptr inbounds %struct.ext4_sb_info, ptr %198, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %199) #17
  br i1 %197, label %205, label %200

200:                                              ; preds = %170
  %201 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %199, ptr %199, i32 0, i32 -1, ptr elementtype(i32) %199) #17, !srcloc !34
  %202 = extractvalue { i32, i32, i32 } %201, 0
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %200
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %211

205:                                              ; preds = %170
  %206 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %199, ptr %199, i32 8, i32 1, ptr elementtype(i32) %199) #17, !srcloc !34
  %207 = extractvalue { i32, i32, i32 } %206, 0
  %208 = icmp eq i32 %207, 8
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %210

210:                                              ; preds = %209, %205
  tail call void @_raw_spin_lock(ptr noundef %195) #17
  br label %211

211:                                              ; preds = %210, %204, %200
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %139, i8 -1, i32 %17, i1 false)
  tail call fastcc void @ext4_mb_generate_buddy(ptr noundef %9, ptr noundef %139, ptr noundef nonnull %121, i32 noundef %125)
  %212 = load ptr, ptr %10, align 4
  %213 = getelementptr inbounds %struct.ext4_sb_info, ptr %212, i32 0, i32 41
  %214 = load ptr, ptr %213, align 16
  %215 = getelementptr [64 x %struct.bgl_lock], ptr %214, i32 0, i32 %194
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %216 = load i16, ptr %215, align 4
  %217 = add i16 %216, 1
  store i16 %217, ptr %215, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %327

218:                                              ; preds = %136
  br i1 %145, label %220, label %219, !prof !11

219:                                              ; preds = %218
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1312, 0\0A.popsection", ""() #17, !srcloc !116
  unreachable

220:                                              ; preds = %218
  %221 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mb_bitmap_load, i32 0, i32 1), align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %220
  %224 = tail call ptr @llvm.thread.pointer() #17
  %225 = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 2
  %226 = load i32, ptr %225, align 8
  %227 = lshr i32 %226, 5
  %228 = getelementptr i32, ptr @__cpu_online_mask, i32 %227
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %226, 31
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %229
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %223
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !117
  %235 = tail call i32 @__traceiter_ext4_mb_bitmap_load(ptr noundef null, ptr noundef %9, i32 noundef %125) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !118
  br label %236

236:                                              ; preds = %234, %223, %220
  %237 = load ptr, ptr %10, align 4
  %238 = getelementptr inbounds %struct.ext4_sb_info, ptr %237, i32 0, i32 41
  %239 = load ptr, ptr %238, align 16
  %240 = and i32 %125, 63
  %241 = getelementptr [64 x %struct.bgl_lock], ptr %239, i32 0, i32 %240
  %242 = tail call i32 @_raw_spin_trylock(ptr noundef %241) #17
  %243 = icmp eq i32 %242, 0
  %244 = load ptr, ptr %10, align 4
  %245 = getelementptr inbounds %struct.ext4_sb_info, ptr %244, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %245) #17
  br i1 %243, label %251, label %246

246:                                              ; preds = %236
  %247 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %245, ptr %245, i32 0, i32 -1, ptr elementtype(i32) %245) #17, !srcloc !34
  %248 = extractvalue { i32, i32, i32 } %247, 0
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %246
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %257

251:                                              ; preds = %236
  %252 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %245, ptr %245, i32 8, i32 1, ptr elementtype(i32) %245) #17, !srcloc !34
  %253 = extractvalue { i32, i32, i32 } %252, 0
  %254 = icmp eq i32 %253, 8
  br i1 %254, label %256, label %255

255:                                              ; preds = %251
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %256

256:                                              ; preds = %255, %251
  tail call void @_raw_spin_lock(ptr noundef %241) #17
  br label %257

257:                                              ; preds = %256, %250, %246
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %139, ptr noundef align 1 %142, i32 %17, i1 false)
  tail call fastcc void @ext4_mb_generate_from_pa(ptr noundef %9, ptr noundef %139, i32 noundef %125)
  %258 = load ptr, ptr %10, align 4
  %259 = getelementptr inbounds %struct.ext4_sb_info, ptr %258, i32 0, i32 8
  %260 = load i32, ptr %259, align 32
  %261 = icmp ugt i32 %260, %125
  br i1 %261, label %263, label %262, !prof !11

262:                                              ; preds = %257
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.ext4_sb_info, ptr %258, i32 0, i32 28
  %265 = load i32, ptr %264, align 64
  %266 = lshr i32 %125, %265
  %267 = getelementptr inbounds %struct.ext4_sb_info, ptr %258, i32 0, i32 7
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, -1
  %270 = and i32 %269, %125
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %271 = load ptr, ptr %10, align 4
  %272 = getelementptr inbounds %struct.ext4_sb_info, ptr %271, i32 0, i32 58
  %273 = load volatile ptr, ptr %272, align 4
  %274 = getelementptr ptr, ptr %273, i32 %266
  %275 = load ptr, ptr %274, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %276 = getelementptr ptr, ptr %275, i32 %270
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.ext4_group_info, ptr %277, i32 0, i32 1
  %279 = tail call ptr @rb_first(ptr noundef %278) #17
  %280 = icmp eq ptr %279, null
  br i1 %280, label %320, label %281

281:                                              ; preds = %263
  %282 = ptrtoint ptr %139 to i32
  %283 = shl i32 %282, 3
  %284 = and i32 %283, 24
  %285 = and i32 %282, -4
  %286 = inttoptr i32 %285 to ptr
  br label %287

287:                                              ; preds = %317, %281
  %288 = phi ptr [ %279, %281 ], [ %318, %317 ]
  %289 = getelementptr i8, ptr %288, i32 16
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr i8, ptr %288, i32 20
  %292 = load i32, ptr %291, align 4
  %293 = add i32 %292, %290
  %294 = icmp sgt i32 %293, %290
  br i1 %294, label %295, label %317

295:                                              ; preds = %305, %287
  %296 = phi i32 [ %307, %305 ], [ %290, %287 ]
  %297 = and i32 %296, 31
  %298 = icmp eq i32 %297, 0
  %299 = sub i32 %293, %296
  %300 = icmp sgt i32 %299, 31
  %301 = and i1 %298, %300
  br i1 %301, label %302, label %309

302:                                              ; preds = %295
  %303 = ashr i32 %296, 3
  %304 = getelementptr i8, ptr %139, i32 %303
  store i32 -1, ptr %304, align 4
  br label %305

305:                                              ; preds = %309, %302
  %306 = phi i32 [ 32, %302 ], [ 1, %309 ]
  %307 = add i32 %306, %296
  %308 = icmp sgt i32 %293, %307
  br i1 %308, label %295, label %317

309:                                              ; preds = %295
  %310 = add i32 %296, %284
  %311 = and i32 %310, 31
  %312 = shl nuw i32 1, %311
  %313 = lshr i32 %310, 5
  %314 = getelementptr i32, ptr %286, i32 %313
  %315 = load i32, ptr %314, align 4
  %316 = or i32 %315, %312
  store i32 %316, ptr %314, align 4
  br label %305

317:                                              ; preds = %305, %287
  %318 = tail call ptr @rb_next(ptr noundef nonnull %288) #17
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %287

320:                                              ; preds = %317, %263
  %321 = load ptr, ptr %10, align 4
  %322 = getelementptr inbounds %struct.ext4_sb_info, ptr %321, i32 0, i32 41
  %323 = load ptr, ptr %322, align 16
  %324 = getelementptr [64 x %struct.bgl_lock], ptr %323, i32 0, i32 %240
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %325 = load i16, ptr %324, align 4
  %326 = add i16 %325, 1
  store i16 %326, ptr %324, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %327

327:                                              ; preds = %320, %211, %132, %127
  %328 = phi i32 [ 0, %211 ], [ 0, %320 ], [ %123, %132 ], [ %123, %127 ]
  %329 = phi ptr [ null, %211 ], [ %139, %320 ], [ %121, %132 ], [ %121, %127 ]
  %330 = add nuw nsw i32 %122, 1
  %331 = icmp eq i32 %330, %119
  br i1 %331, label %332, label %120

332:                                              ; preds = %327, %120, %112
  %333 = phi i32 [ %113, %112 ], [ %123, %120 ], [ %328, %327 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !119
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #17
  br label %334

334:                                              ; preds = %332, %86
  %335 = phi i32 [ %333, %332 ], [ %88, %86 ]
  %336 = icmp eq ptr %29, null
  br i1 %336, label %351, label %337

337:                                              ; preds = %334
  %338 = icmp eq i32 %21, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %345, %337
  %340 = phi i32 [ %346, %345 ], [ 0, %337 ]
  %341 = getelementptr ptr, ptr %29, i32 %340
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  call void @__brelse(ptr noundef nonnull %342) #17
  br label %345

345:                                              ; preds = %344, %339
  %346 = add nuw nsw i32 %340, 1
  %347 = icmp eq i32 %346, %21
  br i1 %347, label %348, label %339

348:                                              ; preds = %345, %337
  %349 = icmp eq ptr %29, %4
  br i1 %349, label %351, label %350

350:                                              ; preds = %348
  call void @kfree(ptr noundef nonnull %29) #17
  br label %351

351:                                              ; preds = %350, %348, %334, %23
  %352 = phi i32 [ %335, %348 ], [ %335, %350 ], [ %335, %334 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %352
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_wait_block_bitmap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_generate_buddy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 32
  %11 = icmp ugt i32 %10, %3
  br i1 %11, label %13, label %12, !prof !11

12:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 28
  %15 = load i32, ptr %14, align 64
  %16 = lshr i32 %3, %15
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = and i32 %19, %3
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 58
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %23, i32 %16
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %26 = getelementptr ptr, ptr %25, i32 %20
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !10
  %31 = call i32 @read_current_timer(ptr noundef nonnull %5) #17
  %32 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %33 = ptrtoint ptr %2 to i32
  %34 = shl i32 %33, 3
  %35 = and i32 %34, 24
  %36 = and i32 %33, -4
  %37 = inttoptr i32 %36 to ptr
  %38 = add i32 %30, %35
  %39 = call i32 @_find_next_zero_bit_le(ptr noundef %37, i32 noundef %38, i32 noundef %35) #17
  %40 = sub i32 %39, %35
  %41 = call i32 @llvm.smin.i32(i32 %40, i32 %30) #17
  %42 = getelementptr inbounds %struct.ext4_group_info, ptr %27, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = icmp sgt i32 %30, %40
  br i1 %43, label %44, label %122

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.ext4_group_info, ptr %27, i32 0, i32 11
  %46 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  br label %47

47:                                               ; preds = %119, %44
  %48 = phi i32 [ 0, %44 ], [ %51, %119 ]
  %49 = phi i32 [ 0, %44 ], [ %57, %119 ]
  %50 = phi i32 [ %41, %44 ], [ %120, %119 ]
  %51 = add i32 %48, 1
  %52 = add i32 %50, %35
  %53 = call i32 @_find_next_bit_le(ptr noundef %37, i32 noundef %38, i32 noundef %52) #17
  %54 = sub i32 %53, %35
  %55 = call i32 @llvm.smin.i32(i32 %54, i32 %30) #17
  %56 = sub i32 %55, %50
  %57 = add i32 %56, %49
  %58 = icmp sgt i32 %56, 1
  br i1 %58, label %59, label %109

59:                                               ; preds = %47
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp ult i32 %62, %56
  br i1 %63, label %64, label %65, !prof !15

64:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #17, !srcloc !120
  unreachable

65:                                               ; preds = %59
  %66 = load i8, ptr %46, align 4
  %67 = zext i8 %66 to i32
  %68 = shl i32 2, %67
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 61
  br label %70

70:                                               ; preds = %105, %65
  %71 = phi i32 [ %50, %65 ], [ %107, %105 ]
  %72 = phi i32 [ %56, %65 ], [ %106, %105 ]
  %73 = or i32 %71, %68
  %74 = call i32 @llvm.cttz.i32(i32 %73, i1 true) #17, !range !29
  %75 = icmp eq i32 %73, 0
  %76 = select i1 %75, i32 -1, i32 %74
  %77 = call i32 @llvm.ctlz.i32(i32 %72, i1 true) #17, !range !29
  %78 = xor i32 %77, 31
  %79 = call i32 @llvm.smin.i32(i32 %76, i32 %78) #17
  %80 = shl nuw i32 1, %79
  %81 = getelementptr %struct.ext4_group_info, ptr %27, i32 0, i32 11, i32 %79
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  %84 = icmp sgt i32 %79, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %70
  %86 = ashr i32 %71, %79
  %87 = load ptr, ptr %69, align 8
  %88 = getelementptr i16, ptr %87, i32 %79
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr i8, ptr %1, i32 %90
  %92 = ptrtoint ptr %91 to i32
  %93 = shl i32 %92, 3
  %94 = and i32 %93, 24
  %95 = add nsw i32 %94, %86
  %96 = and i32 %92, -4
  %97 = inttoptr i32 %96 to ptr
  %98 = and i32 %95, 31
  %99 = shl nuw i32 1, %98
  %100 = lshr i32 %95, 5
  %101 = getelementptr i32, ptr %97, i32 %100
  %102 = xor i32 %99, -1
  %103 = load i32, ptr %101, align 4
  %104 = and i32 %103, %102
  store i32 %104, ptr %101, align 4
  br label %105

105:                                              ; preds = %85, %70
  %106 = sub i32 %72, %80
  %107 = add i32 %80, %71
  %108 = icmp sgt i32 %106, 0
  br i1 %108, label %70, label %112

109:                                              ; preds = %47
  %110 = load i32, ptr %45, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %45, align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = icmp sgt i32 %30, %54
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  %115 = add i32 %55, %35
  %116 = call i32 @_find_next_zero_bit_le(ptr noundef %37, i32 noundef %38, i32 noundef %115) #17
  %117 = sub i32 %116, %35
  %118 = call i32 @llvm.smin.i32(i32 %117, i32 %30) #17
  br label %119

119:                                              ; preds = %114, %112
  %120 = phi i32 [ %118, %114 ], [ %55, %112 ]
  %121 = icmp slt i32 %120, %30
  br i1 %121, label %47, label %122

122:                                              ; preds = %119, %13
  %123 = phi i32 [ 0, %13 ], [ %57, %119 ]
  %124 = phi i32 [ 0, %13 ], [ %51, %119 ]
  %125 = getelementptr inbounds %struct.ext4_group_info, ptr %27, i32 0, i32 4
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.ext4_group_info, ptr %27, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %123, %127
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_generate_buddy, i32 noundef 1144, ptr noundef %0, i32 noundef %3, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %123, i32 noundef %127) #17
  store i32 %123, ptr %126, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %3, i32 noundef 4) #17
  br label %130

130:                                              ; preds = %129, %122
  %131 = icmp eq i32 %31, 0
  %132 = select i1 %131, i32 %32, i32 0
  %133 = zext i32 %132 to i64
  call fastcc void @mb_set_largest_free_order(ptr noundef %0, ptr noundef %27)
  call void @_clear_bit(i32 noundef 0, ptr noundef %27) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !10
  %134 = call i32 @read_current_timer(ptr noundef nonnull %6) #17
  %135 = icmp eq i32 %134, 0
  %136 = load i32, ptr %6, align 4
  %137 = select i1 %135, i32 %136, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %138 = zext i32 %137 to i64
  %139 = sub nsw i64 %138, %133
  %140 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 100
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #17, !srcloc !20
  %141 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #17, !srcloc !52
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 101
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %142) #17, !srcloc !20
  %143 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %142, ptr %142, i64 %139, ptr elementtype(i64) %142) #17, !srcloc !87
  call fastcc void @mb_update_avg_fragment_size(ptr noundef %0, ptr noundef %27)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_generate_from_pa(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 32
  %10 = icmp ugt i32 %9, %2
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 28
  %14 = load i32, ptr %13, align 64
  %15 = lshr i32 %2, %14
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = and i32 %18, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 58
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr ptr, ptr %22, i32 %15
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %25 = getelementptr ptr, ptr %24, i32 %19
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !10
  %27 = getelementptr inbounds %struct.ext4_group_info, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %79, label %30

30:                                               ; preds = %12
  %31 = ptrtoint ptr %1 to i32
  %32 = shl i32 %31, 3
  %33 = and i32 %32, 24
  %34 = and i32 %31, -4
  %35 = inttoptr i32 %34 to ptr
  br label %36

36:                                               ; preds = %76, %30
  %37 = phi ptr [ %28, %30 ], [ %77, %76 ]
  %38 = getelementptr i8, ptr %37, i32 16
  call void @_raw_spin_lock(ptr noundef %38) #17
  %39 = getelementptr i8, ptr %37, i32 32
  %40 = load i64, ptr %39, align 8
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %40, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %41 = getelementptr i8, ptr %37, i32 44
  %42 = load i32, ptr %41, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %43 = load i16, ptr %38, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %38, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %76, label %46, !prof !15

46:                                               ; preds = %36
  %47 = load i32, ptr %4, align 4
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %50, label %49, !prof !11

49:                                               ; preds = %46
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4476, 0\0A.popsection", ""() #17, !srcloc !121
  unreachable

50:                                               ; preds = %46
  %51 = load i32, ptr %5, align 4
  %52 = add i32 %51, %42
  %53 = icmp sgt i32 %52, %51
  br i1 %53, label %54, label %76

54:                                               ; preds = %64, %50
  %55 = phi i32 [ %66, %64 ], [ %51, %50 ]
  %56 = and i32 %55, 31
  %57 = icmp eq i32 %56, 0
  %58 = sub i32 %52, %55
  %59 = icmp sgt i32 %58, 31
  %60 = and i1 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = ashr i32 %55, 3
  %63 = getelementptr i8, ptr %1, i32 %62
  store i32 -1, ptr %63, align 4
  br label %64

64:                                               ; preds = %68, %61
  %65 = phi i32 [ 32, %61 ], [ 1, %68 ]
  %66 = add i32 %65, %55
  %67 = icmp sgt i32 %52, %66
  br i1 %67, label %54, label %76

68:                                               ; preds = %54
  %69 = add i32 %55, %33
  %70 = and i32 %69, 31
  %71 = shl nuw i32 1, %70
  %72 = lshr i32 %69, 5
  %73 = getelementptr i32, ptr %35, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, ptr %73, align 4
  br label %64

76:                                               ; preds = %64, %50, %36
  %77 = load ptr, ptr %37, align 4
  %78 = icmp eq ptr %77, %27
  br i1 %78, label %79, label %36

79:                                               ; preds = %76, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mb_buddy_bitmap_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_grp_locked_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_group_bitmap_corrupted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mb_set_largest_free_order(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 72
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr %struct.rwlock_t, ptr %15, i32 %11
  tail call void @_raw_write_lock(ptr noundef %16) #17
  %17 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 10
  %18 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 10, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %18, align 4
  %22 = load ptr, ptr %14, align 8
  %23 = load i32, ptr %10, align 4
  %24 = getelementptr %struct.rwlock_t, ptr %22, i32 %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !122
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %24, i32 0) #17, !srcloc !123
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !124
  br label %25

25:                                               ; preds = %13, %9, %2
  %26 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 5
  store i32 -1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 1
  br label %31

31:                                               ; preds = %36, %25
  %32 = phi i32 [ %37, %36 ], [ %30, %25 ]
  %33 = getelementptr %struct.ext4_group_info, ptr %1, i32 0, i32 11, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = add nsw i32 %32, -1
  %38 = icmp sgt i32 %32, 0
  br i1 %38, label %31, label %64

39:                                               ; preds = %31
  store i32 %32, ptr %26, align 4
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 18
  %42 = load i32, ptr %41, align 16
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 72
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr %struct.rwlock_t, ptr %51, i32 %32
  tail call void @_raw_write_lock(ptr noundef %52) #17
  %53 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 10
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 71
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %26, align 4
  %57 = getelementptr %struct.list_head, ptr %55, i32 %56
  %58 = getelementptr %struct.list_head, ptr %55, i32 %56, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %53, ptr %58, align 4
  store ptr %57, ptr %53, align 4
  %60 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 10, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %53, ptr %59, align 4
  %61 = load ptr, ptr %50, align 8
  %62 = load i32, ptr %26, align 4
  %63 = getelementptr %struct.rwlock_t, ptr %61, i32 %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !122
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %63, i32 0) #17, !srcloc !123
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !124
  br label %64

64:                                               ; preds = %49, %45, %39, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mb_update_avg_fragment_size(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.ext4_group_info, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 70
  tail call void @_raw_write_lock(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = ptrtoint ptr %15 to i32
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 69
  tail call void @rb_erase(ptr noundef %15, ptr noundef %20) #17
  store i32 %17, ptr %15, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 69
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.ext4_group_info, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %43, %25
  %30 = phi ptr [ %23, %25 ], [ %50, %43 ]
  br i1 %28, label %34, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %10, align 4
  %33 = sdiv i32 %32, %27
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %33, %31 ], [ 0, %29 ]
  %36 = getelementptr i8, ptr %30, i32 -44
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %30, i32 -48
  %41 = load i32, ptr %40, align 4
  %42 = sdiv i32 %41, %37
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i32 [ %42, %39 ], [ 0, %34 ]
  %45 = sub i32 %44, %35
  %46 = icmp sgt i32 %45, 0
  %47 = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 2
  %48 = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 1
  %49 = select i1 %46, ptr %47, ptr %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %29

52:                                               ; preds = %43
  %53 = ptrtoint ptr %30 to i32
  br label %54

54:                                               ; preds = %52, %21
  %55 = phi ptr [ %49, %52 ], [ %22, %21 ]
  %56 = phi i32 [ %53, %52 ], [ 0, %21 ]
  store i32 %56, ptr %15, align 4
  %57 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 9, i32 1
  store ptr null, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ext4_group_info, ptr %1, i32 0, i32 9, i32 2
  store ptr null, ptr %58, align 4
  store ptr %15, ptr %55, align 4
  tail call void @rb_insert_color(ptr noundef %15, ptr noundef %22) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !122
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %14, i32 0) #17, !srcloc !123
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !124
  br label %59

59:                                               ; preds = %54, %9, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mb_bitmap_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_try_to_trim_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_free_extent, align 4
  %8 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_group_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 %2)
  %15 = add i32 %3, 1
  %16 = ptrtoint ptr %9 to i32
  %17 = shl i32 %16, 3
  %18 = and i32 %17, 24
  %19 = and i32 %16, -4
  %20 = inttoptr i32 %19 to ptr
  %21 = add i32 %18, %15
  %22 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %23 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %24 = getelementptr inbounds %struct.ext4_free_extent, ptr %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.ext4_free_extent, ptr %7, i32 0, i32 2
  %26 = getelementptr inbounds %struct.ext4_free_extent, ptr %7, i32 0, i32 3
  %27 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %28 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  br label %29

29:                                               ; preds = %196, %5
  %30 = phi i32 [ 0, %5 ], [ %149, %196 ]
  %31 = phi i32 [ 0, %5 ], [ %150, %196 ]
  %32 = phi i32 [ %14, %5 ], [ %151, %196 ]
  %33 = icmp sgt i32 %32, %3
  br i1 %33, label %202, label %34

34:                                               ; preds = %29
  %35 = add i32 %32, %18
  %36 = tail call i32 @_find_next_zero_bit_le(ptr noundef %20, i32 noundef %21, i32 noundef %35) #17
  %37 = sub i32 %36, %18
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 %15) #17
  %39 = icmp sgt i32 %38, %3
  br i1 %39, label %202, label %40

40:                                               ; preds = %34
  %41 = add i32 %38, %18
  %42 = tail call i32 @_find_next_bit_le(ptr noundef %20, i32 noundef %21, i32 noundef %41) #17
  %43 = sub i32 %42, %18
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %15) #17
  %45 = sub i32 %44, %38
  %46 = icmp slt i32 %45, %4
  br i1 %46, label %148, label %47

47:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !10
  %48 = load i32, ptr %22, align 4
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_trim_extent, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #17
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !125
  %63 = tail call i32 @__traceiter_ext4_trim_extent(ptr noundef null, ptr noundef %0, i32 noundef %48, i32 noundef %38, i32 noundef %45) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !126
  br label %64

64:                                               ; preds = %62, %51, %47
  %65 = load ptr, ptr %23, align 4
  %66 = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 41
  %67 = load ptr, ptr %66, align 16
  %68 = and i32 %48, 63
  %69 = getelementptr [64 x %struct.bgl_lock], ptr %67, i32 0, i32 %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %70 = load volatile i32, ptr %69, align 4
  store volatile i32 %70, ptr %6, align 4
  %71 = lshr i32 %70, 16
  %72 = and i32 %70, 65535
  %73 = icmp eq i32 %72, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %73, label %74, label %75, !prof !15

74:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6280, 0\0A.popsection", ""() #17, !srcloc !127
  unreachable

75:                                               ; preds = %64
  store i32 %38, ptr %24, align 4
  store i32 %48, ptr %25, align 4
  store i32 %45, ptr %26, align 4
  %76 = call fastcc i32 @mb_mark_used(ptr noundef %1, ptr noundef nonnull %7) #17
  %77 = load ptr, ptr %23, align 4
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 41
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr [64 x %struct.bgl_lock], ptr %79, i32 0, i32 %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %81 = load i16, ptr %80, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %80, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %83 = load ptr, ptr %23, align 4
  %84 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 12
  %85 = load i32, ptr %84, align 16
  %86 = shl i32 %38, %85
  %87 = sext i32 %86 to i64
  %88 = zext i32 %48 to i64
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = zext i32 %90 to i64
  %92 = mul nuw i64 %91, %88
  %93 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 15
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ext4_super_block, ptr %94, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = zext i32 %96 to i64
  %98 = add i64 %92, %87
  %99 = add i64 %98, %97
  %100 = shl i32 %45, %85
  %101 = sext i32 %100 to i64
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_discard_blocks, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %75
  %105 = tail call ptr @llvm.thread.pointer() #17
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 5
  %109 = getelementptr i32, ptr @__cpu_online_mask, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %107, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !103
  %116 = tail call i32 @__traceiter_ext4_discard_blocks(ptr noundef null, ptr noundef %0, i64 noundef %99, i64 noundef %101) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !104
  br label %117

117:                                              ; preds = %115, %104, %75
  %118 = load ptr, ptr %27, align 4
  %119 = load i8, ptr %28, align 4
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %120, -9
  %122 = zext i32 %121 to i64
  %123 = shl i64 %99, %122
  %124 = shl i64 %101, %122
  %125 = tail call i32 @blkdev_issue_discard(ptr noundef %118, i64 noundef %123, i64 noundef %124, i32 noundef 3136, i32 noundef 0) #17
  %126 = load ptr, ptr %23, align 4
  %127 = getelementptr inbounds %struct.ext4_sb_info, ptr %126, i32 0, i32 41
  %128 = load ptr, ptr %127, align 16
  %129 = getelementptr [64 x %struct.bgl_lock], ptr %128, i32 0, i32 %68
  %130 = tail call i32 @_raw_spin_trylock(ptr noundef %129) #17
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr %23, align 4
  %133 = getelementptr inbounds %struct.ext4_sb_info, ptr %132, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #17
  br i1 %131, label %139, label %134

134:                                              ; preds = %117
  %135 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 0, i32 -1, ptr elementtype(i32) %133) #17, !srcloc !34
  %136 = extractvalue { i32, i32, i32 } %135, 0
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %145

139:                                              ; preds = %117
  %140 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 8, i32 1, ptr elementtype(i32) %133) #17, !srcloc !34
  %141 = extractvalue { i32, i32, i32 } %140, 0
  %142 = icmp eq i32 %141, 8
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %144

144:                                              ; preds = %143, %139
  tail call void @_raw_spin_lock(ptr noundef %129) #17
  br label %145

145:                                              ; preds = %144, %138, %134
  tail call fastcc void @mb_free_blocks(ptr noundef null, ptr noundef %1, i32 noundef %38, i32 noundef %45) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  switch i32 %125, label %202 [
    i32 -95, label %146
    i32 0, label %146
  ]

146:                                              ; preds = %145, %145
  %147 = add i32 %45, %30
  br label %148

148:                                              ; preds = %146, %40
  %149 = phi i32 [ %30, %40 ], [ %147, %146 ]
  %150 = add i32 %45, %31
  %151 = add i32 %44, 1
  %152 = tail call ptr @llvm.thread.pointer() #17
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 98, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %202

161:                                              ; preds = %156, %148
  %162 = load volatile i32, ptr %152, align 4
  %163 = and i32 %162, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %196, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %22, align 4
  %167 = load ptr, ptr %23, align 4
  %168 = getelementptr inbounds %struct.ext4_sb_info, ptr %167, i32 0, i32 41
  %169 = load ptr, ptr %168, align 16
  %170 = and i32 %166, 63
  %171 = getelementptr [64 x %struct.bgl_lock], ptr %169, i32 0, i32 %170
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %172 = load i16, ptr %171, align 4
  %173 = add i16 %172, 1
  store i16 %173, ptr %171, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %174 = tail call i32 @__cond_resched() #17
  %175 = load i32, ptr %22, align 4
  %176 = load ptr, ptr %23, align 4
  %177 = getelementptr inbounds %struct.ext4_sb_info, ptr %176, i32 0, i32 41
  %178 = load ptr, ptr %177, align 16
  %179 = and i32 %175, 63
  %180 = getelementptr [64 x %struct.bgl_lock], ptr %178, i32 0, i32 %179
  %181 = tail call i32 @_raw_spin_trylock(ptr noundef %180) #17
  %182 = icmp eq i32 %181, 0
  %183 = load ptr, ptr %23, align 4
  %184 = getelementptr inbounds %struct.ext4_sb_info, ptr %183, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %184) #17
  br i1 %182, label %190, label %185

185:                                              ; preds = %165
  %186 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %184, ptr %184, i32 0, i32 -1, ptr elementtype(i32) %184) #17, !srcloc !34
  %187 = extractvalue { i32, i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %196

190:                                              ; preds = %165
  %191 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %184, ptr %184, i32 8, i32 1, ptr elementtype(i32) %184) #17, !srcloc !34
  %192 = extractvalue { i32, i32, i32 } %191, 0
  %193 = icmp eq i32 %192, 8
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %195

195:                                              ; preds = %194, %190
  tail call void @_raw_spin_lock(ptr noundef %180) #17
  br label %196

196:                                              ; preds = %195, %189, %185, %161
  %197 = load ptr, ptr %10, align 4
  %198 = getelementptr inbounds %struct.ext4_group_info, ptr %197, i32 0, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = sub i32 %199, %150
  %201 = icmp slt i32 %200, %4
  br i1 %201, label %202, label %29

202:                                              ; preds = %196, %156, %145, %34, %29
  %203 = phi i32 [ %30, %34 ], [ %149, %196 ], [ %30, %29 ], [ -512, %156 ], [ %30, %145 ]
  ret i32 %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb_mark_used(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ext4_free_extent, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_free_extent, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 16
  %13 = shl i32 %12, 3
  %14 = icmp ugt i32 %8, %13
  br i1 %14, label %15, label %16, !prof !15

15:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1940, 0\0A.popsection", ""() #17, !srcloc !128
  unreachable

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_free_extent, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1941, 0\0A.popsection", ""() #17, !srcloc !129
  unreachable

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 41
  %27 = load ptr, ptr %26, align 16
  %28 = and i32 %18, 63
  %29 = getelementptr [64 x %struct.bgl_lock], ptr %27, i32 0, i32 %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %30 = load volatile i32, ptr %29, align 4
  store volatile i32 %30, ptr %3, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %33, label %34, label %35, !prof !15

34:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1942, 0\0A.popsection", ""() #17, !srcloc !130
  unreachable

35:                                               ; preds = %23
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !57
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #16, !srcloc !58
  %40 = add i32 %39, ptrtoint (ptr @discard_pa_seq to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #17, !srcloc !59
  %44 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ext4_group_info, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %47, %7
  store i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.ext4_group_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %5
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  store i32 %8, ptr %50, align 4
  br label %54

54:                                               ; preds = %53, %35
  %55 = icmp eq i32 %5, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %54
  %57 = add i32 %5, -1
  %58 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = shl i32 %60, 3
  %62 = and i32 %61, 24
  %63 = add i32 %57, %62
  %64 = and i32 %60, -4
  %65 = inttoptr i32 %64 to ptr
  %66 = lshr i32 %63, 5
  %67 = getelementptr i32, ptr %65, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %63, 31
  %70 = xor i32 %68, -1
  %71 = lshr i32 %70, %69
  %72 = and i32 %71, 1
  br label %73

73:                                               ; preds = %56, %54
  %74 = phi i32 [ %72, %56 ], [ 0, %54 ]
  %75 = load ptr, ptr %9, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 27
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 62
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %79, align 4
  %81 = icmp ult i32 %8, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = icmp ne i32 %74, 0
  br label %102

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = shl i32 %87, 3
  %89 = and i32 %88, 24
  %90 = add i32 %89, %8
  %91 = and i32 %87, -4
  %92 = inttoptr i32 %91 to ptr
  %93 = lshr i32 %90, 5
  %94 = getelementptr i32, ptr %92, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %90, 31
  %97 = icmp ne i32 %74, 0
  %98 = shl nuw i32 1, %96
  %99 = and i32 %98, %95
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %97, i1 %100, i1 false
  br i1 %101, label %106, label %102

102:                                              ; preds = %84, %82
  %103 = phi i1 [ false, %82 ], [ %100, %84 ]
  %104 = phi i1 [ %83, %82 ], [ %97, %84 ]
  %105 = select i1 %104, i1 true, i1 %103
  br i1 %105, label %112, label %106

106:                                              ; preds = %102, %84
  %107 = phi i32 [ 1, %84 ], [ -1, %102 ]
  %108 = load ptr, ptr %44, align 4
  %109 = getelementptr inbounds %struct.ext4_group_info, ptr %108, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %107
  store i32 %111, ptr %109, align 4
  br label %112

112:                                              ; preds = %106, %102
  %113 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 3
  %114 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 1
  %115 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 6
  br label %116

116:                                              ; preds = %268, %112
  %117 = phi i32 [ %216, %268 ], [ 0, %112 ]
  %118 = phi i32 [ %121, %268 ], [ %7, %112 ]
  %119 = phi i32 [ %122, %268 ], [ %5, %112 ]
  br label %120

120:                                              ; preds = %191, %116
  %121 = phi i32 [ %209, %191 ], [ %118, %116 ]
  %122 = phi i32 [ %208, %191 ], [ %119, %116 ]
  %123 = icmp eq i32 %121, 0
  br i1 %123, label %300, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %113, align 4
  %126 = load ptr, ptr %114, align 4
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %129, !prof !15

128:                                              ; preds = %124
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1633, 0\0A.popsection", ""() #17, !srcloc !131
  unreachable

129:                                              ; preds = %124
  %130 = load i16, ptr %115, align 4
  %131 = zext i16 %130 to i32
  %132 = shl i32 8, %131
  %133 = icmp sgt i32 %132, %122
  br i1 %133, label %134, label %141, !prof !11

134:                                              ; preds = %129
  %135 = load ptr, ptr %9, align 4
  %136 = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 27
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %137, i32 0, i32 61
  %139 = load ptr, ptr %138, align 8
  %140 = add nuw nsw i32 %131, 1
  br label %142

141:                                              ; preds = %129
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1634, 0\0A.popsection", ""() #17, !srcloc !132
  unreachable

142:                                              ; preds = %162, %134
  %143 = phi i32 [ 1, %134 ], [ %163, %162 ]
  %144 = getelementptr i16, ptr %139, i32 %143
  %145 = load i16, ptr %144, align 2
  %146 = zext i16 %145 to i32
  %147 = getelementptr i8, ptr %126, i32 %146
  %148 = ashr i32 %122, %143
  %149 = ptrtoint ptr %147 to i32
  %150 = shl i32 %149, 3
  %151 = and i32 %150, 24
  %152 = add nsw i32 %151, %148
  %153 = and i32 %149, -4
  %154 = inttoptr i32 %153 to ptr
  %155 = lshr i32 %152, 5
  %156 = getelementptr i32, ptr %154, i32 %155
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %152, 31
  %159 = shl nuw i32 1, %158
  %160 = and i32 %159, %157
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %142
  %163 = add nuw nsw i32 %143, 1
  %164 = icmp eq i32 %143, %140
  br i1 %164, label %165, label %142

165:                                              ; preds = %162, %142
  %166 = phi i32 [ 0, %162 ], [ %143, %142 ]
  %167 = ashr i32 %122, %166
  %168 = shl i32 %167, %166
  %169 = icmp eq i32 %168, %122
  br i1 %169, label %170, label %212

170:                                              ; preds = %165
  %171 = shl nuw i32 1, %166
  %172 = icmp slt i32 %121, %171
  br i1 %172, label %212, label %173

173:                                              ; preds = %170
  %174 = icmp ult i32 %140, %166
  br i1 %174, label %186, label %175

175:                                              ; preds = %173
  %176 = icmp eq i32 %166, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %175
  %178 = getelementptr i16, ptr %139, i32 %166
  %179 = load i16, ptr %178, align 2
  %180 = zext i16 %179 to i32
  %181 = getelementptr i8, ptr %126, i32 %180
  %182 = getelementptr inbounds %struct.ext4_sb_info, ptr %137, i32 0, i32 62
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i32, ptr %183, i32 %166
  %185 = load i32, ptr %184, align 4
  br label %186

186:                                              ; preds = %177, %175, %173
  %187 = phi i32 [ %185, %177 ], [ 0, %173 ], [ %132, %175 ]
  %188 = phi ptr [ %181, %177 ], [ null, %173 ], [ %125, %175 ]
  %189 = icmp slt i32 %167, %187
  br i1 %189, label %191, label %190, !prof !11

190:                                              ; preds = %186
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1969, 0\0A.popsection", ""() #17, !srcloc !133
  unreachable

191:                                              ; preds = %186
  %192 = ptrtoint ptr %188 to i32
  %193 = shl i32 %192, 3
  %194 = and i32 %193, 24
  %195 = add i32 %194, %167
  %196 = and i32 %192, -4
  %197 = inttoptr i32 %196 to ptr
  %198 = and i32 %195, 31
  %199 = shl nuw i32 1, %198
  %200 = lshr i32 %195, 5
  %201 = getelementptr i32, ptr %197, i32 %200
  %202 = load i32, ptr %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, ptr %201, align 4
  %204 = load ptr, ptr %44, align 4
  %205 = getelementptr %struct.ext4_group_info, ptr %204, i32 0, i32 11, i32 %166
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, -1
  store i32 %207, ptr %205, align 4
  %208 = add i32 %171, %122
  %209 = sub i32 %121, %171
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %120, !prof !15

211:                                              ; preds = %191
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1974, 0\0A.popsection", ""() #17, !srcloc !134
  unreachable

212:                                              ; preds = %170, %165
  %213 = icmp eq i32 %117, 0
  %214 = shl i32 %166, 16
  %215 = or i32 %214, %121
  %216 = select i1 %213, i32 %215, i32 %117
  %217 = icmp eq i32 %166, 0
  br i1 %217, label %218, label %219, !prof !15

218:                                              ; preds = %212
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #17, !srcloc !135
  unreachable

219:                                              ; preds = %212
  %220 = icmp ult i32 %140, %166
  br i1 %220, label %226, label %221

221:                                              ; preds = %219
  %222 = getelementptr i16, ptr %139, i32 %166
  %223 = load i16, ptr %222, align 2
  %224 = zext i16 %223 to i32
  %225 = getelementptr i8, ptr %126, i32 %224
  br label %226

226:                                              ; preds = %221, %219
  %227 = phi ptr [ %225, %221 ], [ null, %219 ]
  %228 = ptrtoint ptr %227 to i32
  %229 = shl i32 %228, 3
  %230 = and i32 %229, 24
  %231 = add i32 %230, %167
  %232 = and i32 %228, -4
  %233 = inttoptr i32 %232 to ptr
  %234 = and i32 %231, 31
  %235 = shl nuw i32 1, %234
  %236 = lshr i32 %231, 5
  %237 = getelementptr i32, ptr %233, i32 %236
  %238 = load i32, ptr %237, align 4
  %239 = or i32 %235, %238
  store i32 %239, ptr %237, align 4
  %240 = load ptr, ptr %44, align 4
  %241 = getelementptr %struct.ext4_group_info, ptr %240, i32 0, i32 11, i32 %166
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, -1
  store i32 %243, ptr %241, align 4
  %244 = add nsw i32 %166, -1
  %245 = ashr i32 %122, %244
  %246 = and i32 %245, -2
  %247 = load ptr, ptr %113, align 4
  %248 = load ptr, ptr %114, align 4
  %249 = icmp eq ptr %247, %248
  br i1 %249, label %250, label %251, !prof !15

250:                                              ; preds = %226
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

251:                                              ; preds = %226
  %252 = load i16, ptr %115, align 4
  %253 = zext i16 %252 to i32
  %254 = add nuw nsw i32 %253, 1
  %255 = icmp ult i32 %254, %244
  br i1 %255, label %268, label %256

256:                                              ; preds = %251
  %257 = icmp eq i32 %244, 0
  br i1 %257, label %268, label %258

258:                                              ; preds = %256
  %259 = load ptr, ptr %9, align 4
  %260 = getelementptr inbounds %struct.super_block, ptr %259, i32 0, i32 27
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.ext4_sb_info, ptr %261, i32 0, i32 61
  %263 = load ptr, ptr %262, align 8
  %264 = getelementptr i16, ptr %263, i32 %244
  %265 = load i16, ptr %264, align 2
  %266 = zext i16 %265 to i32
  %267 = getelementptr i8, ptr %248, i32 %266
  br label %268

268:                                              ; preds = %258, %256, %251
  %269 = phi ptr [ %267, %258 ], [ null, %251 ], [ %247, %256 ]
  %270 = ptrtoint ptr %269 to i32
  %271 = shl i32 %270, 3
  %272 = and i32 %271, 24
  %273 = add i32 %272, %246
  %274 = and i32 %270, -4
  %275 = inttoptr i32 %274 to ptr
  %276 = and i32 %273, 30
  %277 = shl nuw nsw i32 1, %276
  %278 = lshr i32 %273, 5
  %279 = getelementptr i32, ptr %275, i32 %278
  %280 = xor i32 %277, -1
  %281 = load i32, ptr %279, align 4
  %282 = and i32 %281, %280
  store i32 %282, ptr %279, align 4
  %283 = or i32 %245, 1
  %284 = add i32 %272, %283
  %285 = and i32 %284, 31
  %286 = shl nuw i32 1, %285
  %287 = lshr i32 %284, 5
  %288 = getelementptr i32, ptr %275, i32 %287
  %289 = xor i32 %286, -1
  %290 = load i32, ptr %288, align 4
  %291 = and i32 %290, %289
  store i32 %291, ptr %288, align 4
  %292 = load ptr, ptr %44, align 4
  %293 = getelementptr %struct.ext4_group_info, ptr %292, i32 0, i32 11, i32 %244
  %294 = load i32, ptr %293, align 4
  %295 = add i32 %294, 1
  store i32 %295, ptr %293, align 4
  %296 = load ptr, ptr %44, align 4
  %297 = getelementptr %struct.ext4_group_info, ptr %296, i32 0, i32 11, i32 %244
  %298 = load i32, ptr %297, align 4
  %299 = add i32 %298, 1
  store i32 %299, ptr %297, align 4
  br label %116

300:                                              ; preds = %120
  %301 = load ptr, ptr %9, align 4
  %302 = load ptr, ptr %44, align 4
  tail call fastcc void @mb_set_largest_free_order(ptr noundef %301, ptr noundef %302)
  %303 = load ptr, ptr %9, align 4
  %304 = load ptr, ptr %44, align 4
  tail call fastcc void @mb_update_avg_fragment_size(ptr noundef %303, ptr noundef %304)
  %305 = load ptr, ptr %113, align 4
  %306 = load i32, ptr %4, align 4
  %307 = add i32 %306, %7
  %308 = icmp sgt i32 %307, %306
  br i1 %308, label %309, label %337

309:                                              ; preds = %300
  %310 = ptrtoint ptr %305 to i32
  %311 = shl i32 %310, 3
  %312 = and i32 %311, 24
  %313 = and i32 %310, -4
  %314 = inttoptr i32 %313 to ptr
  br label %315

315:                                              ; preds = %325, %309
  %316 = phi i32 [ %306, %309 ], [ %327, %325 ]
  %317 = and i32 %316, 31
  %318 = icmp eq i32 %317, 0
  %319 = sub i32 %307, %316
  %320 = icmp sgt i32 %319, 31
  %321 = and i1 %318, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %315
  %323 = ashr i32 %316, 3
  %324 = getelementptr i8, ptr %305, i32 %323
  store i32 -1, ptr %324, align 4
  br label %325

325:                                              ; preds = %329, %322
  %326 = phi i32 [ 32, %322 ], [ 1, %329 ]
  %327 = add i32 %326, %316
  %328 = icmp sgt i32 %307, %327
  br i1 %328, label %315, label %337

329:                                              ; preds = %315
  %330 = add i32 %316, %312
  %331 = and i32 %330, 31
  %332 = shl nuw i32 1, %331
  %333 = lshr i32 %330, 5
  %334 = getelementptr i32, ptr %314, i32 %333
  %335 = load i32, ptr %334, align 4
  %336 = or i32 %335, %332
  store i32 %336, ptr %334, align 4
  br label %325

337:                                              ; preds = %325, %300
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_trim_extent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_discard_preallocations(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mballoc_discard(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mb_release_inode_pa(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_request_blocks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_use_inode_pa(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 6
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  %15 = add i64 %8, %14
  %16 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %19 = load i32, ptr %18, align 16
  %20 = shl i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = add i64 %8, %21
  %23 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, %19
  %26 = sext i32 %25 to i64
  %27 = add i64 %15, %26
  %28 = tail call i64 @llvm.umin.i64(i64 %22, i64 %27)
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  %32 = xor i64 %15, -1
  %33 = add i64 %32, %31
  %34 = add i64 %33, %28
  %35 = zext i32 %19 to i64
  %36 = lshr i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %39 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  tail call void @ext4_get_group_no_and_offset(ptr noundef %4, i64 noundef %15, ptr noundef %38, ptr noundef %39) #17
  %40 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  store i32 %37, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  store i8 2, ptr %41, align 2
  %42 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 20
  store ptr %1, ptr %42, align 4
  %43 = load i64, ptr %7, align 8
  %44 = icmp ult i64 %15, %43
  br i1 %44, label %45, label %46, !prof !15

45:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4267, 0\0A.popsection", ""() #17, !srcloc !136
  unreachable

46:                                               ; preds = %2
  %47 = load i32, ptr %16, align 4
  %48 = load i32, ptr %18, align 16
  %49 = shl i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %43, %50
  %52 = icmp ugt i64 %28, %51
  br i1 %52, label %53, label %54, !prof !15

53:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4268, 0\0A.popsection", ""() #17, !srcloc !137
  unreachable

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 9
  %56 = load i32, ptr %55, align 8
  %57 = icmp slt i32 %56, %37
  br i1 %57, label %58, label %59, !prof !15

58:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4269, 0\0A.popsection", ""() #17, !srcloc !138
  unreachable

59:                                               ; preds = %54
  %60 = sub i32 %56, %37
  store i32 %60, ptr %55, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_mb_find_by_goal(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.ext4_free_extent, align 4
  %4 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 32
  %12 = icmp ugt i32 %11, %5
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 28
  %16 = load i32, ptr %15, align 64
  %17 = lshr i32 %5, %16
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = and i32 %20, %5
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 58
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr ptr, ptr %24, i32 %17
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %27 = getelementptr ptr, ptr %26, i32 %21
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  %29 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %170, label %33

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.ext4_group_info, ptr %28, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %170, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %6, align 4
  %39 = tail call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %38, i32 noundef %5, ptr noundef %1, i32 noundef 3136) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %170

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !11

47:                                               ; preds = %41
  tail call fastcc void @ext4_mb_unload_buddy(ptr noundef %1)
  br label %170

48:                                               ; preds = %41
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 41
  %53 = load ptr, ptr %52, align 16
  %54 = and i32 %5, 63
  %55 = getelementptr [64 x %struct.bgl_lock], ptr %53, i32 0, i32 %54
  %56 = tail call i32 @_raw_spin_trylock(ptr noundef %55) #17
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr %50, align 4
  %59 = getelementptr inbounds %struct.ext4_sb_info, ptr %58, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #17
  br i1 %57, label %65, label %60

60:                                               ; preds = %48
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 0, i32 -1, ptr elementtype(i32) %59) #17, !srcloc !34
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %71

65:                                               ; preds = %48
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 8, i32 1, ptr elementtype(i32) %59) #17, !srcloc !34
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %70

70:                                               ; preds = %69, %65
  tail call void @_raw_spin_lock(ptr noundef %55) #17
  br label %71

71:                                               ; preds = %70, %64, %60
  %72 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = call fastcc i32 @mb_find_extent(ptr noundef %1, i32 noundef %73, i32 noundef %75, ptr noundef nonnull %3)
  store i32 -559023599, ptr %3, align 4
  %77 = load i32, ptr %74, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %133, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 73
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %77, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 27
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = zext i32 %91 to i64
  %93 = mul nuw i64 %92, %87
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 15
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ext4_super_block, ptr %95, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = zext i32 %97 to i64
  %99 = add nuw i64 %93, %98
  %100 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %99, %102
  %104 = icmp ult i64 %103, 4294967296
  br i1 %104, label %105, label %108, !prof !11

105:                                              ; preds = %83
  %106 = trunc i64 %103 to i32
  %107 = urem i32 %106, %77
  br label %113

108:                                              ; preds = %83
  %109 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %77, i64 %103) #21, !srcloc !139
  %110 = extractvalue { i64, i64 } %109, 0
  %111 = lshr i64 %110, 32
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %108, %105
  %114 = phi i32 [ %107, %105 ], [ %112, %108 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %156, label %161

116:                                              ; preds = %79
  %117 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %121, !prof !15

120:                                              ; preds = %116
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2236, 0\0A.popsection", ""() #17, !srcloc !140
  unreachable

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %4, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %127, label %126, !prof !11

126:                                              ; preds = %121
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2237, 0\0A.popsection", ""() #17, !srcloc !141
  unreachable

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = load i32, ptr %72, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %156, label %132, !prof !11

132:                                              ; preds = %127
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2238, 0\0A.popsection", ""() #17, !srcloc !142
  unreachable

133:                                              ; preds = %71
  %134 = icmp sgt i32 %76, 0
  br i1 %134, label %135, label %161

135:                                              ; preds = %133
  %136 = load i32, ptr %29, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %161, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %143, label %144, !prof !15

143:                                              ; preds = %139
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2245, 0\0A.popsection", ""() #17, !srcloc !143
  unreachable

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = load i32, ptr %4, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %150, label %149, !prof !11

149:                                              ; preds = %144
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2246, 0\0A.popsection", ""() #17, !srcloc !144
  unreachable

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %72, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %156, label %155, !prof !11

155:                                              ; preds = %150
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2247, 0\0A.popsection", ""() #17, !srcloc !145
  unreachable

156:                                              ; preds = %150, %127, %113
  %157 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 11
  %158 = load i16, ptr %157, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %157, align 4
  %160 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %160, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1)
  br label %161

161:                                              ; preds = %156, %135, %133, %113
  %162 = load ptr, ptr %6, align 4
  %163 = getelementptr inbounds %struct.super_block, ptr %162, i32 0, i32 27
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.ext4_sb_info, ptr %164, i32 0, i32 41
  %166 = load ptr, ptr %165, align 16
  %167 = getelementptr [64 x %struct.bgl_lock], ptr %166, i32 0, i32 %54
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %168 = load i16, ptr %167, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr %167, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  call fastcc void @ext4_mb_unload_buddy(ptr noundef %1)
  br label %170

170:                                              ; preds = %161, %47, %37, %33, %14
  %171 = phi i32 [ 0, %47 ], [ 0, %161 ], [ 0, %14 ], [ 0, %33 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext4_mb_good_group(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 110
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 8
  %12 = load i32, ptr %11, align 32
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %15, label %14, !prof !11

14:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 28
  %17 = load i32, ptr %16, align 64
  %18 = lshr i32 %1, %17
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = and i32 %21, %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 58
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr ptr, ptr %25, i32 %18
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %28 = getelementptr ptr, ptr %27, i32 %22
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ugt i32 %2, 3
  br i1 %30, label %31, label %32, !prof !15

31:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2427, 0\0A.popsection", ""() #17, !srcloc !146
  unreachable

32:                                               ; preds = %15
  %33 = load volatile i32, ptr %29, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %88, !prof !11

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ext4_group_info, ptr %29, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %88, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ext4_group_info, ptr %29, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %40
  switch i32 %2, label %86 [
    i32 0, label %45
    i32 1, label %77
    i32 2, label %82
    i32 3, label %88
  ]

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 16
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50, !prof !15

49:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2442, 0\0A.popsection", ""() #17, !srcloc !89
  unreachable

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 32
  %54 = icmp ne i32 %53, 0
  %55 = icmp sgt i32 %10, 3
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = add nsw i32 %10, -1
  %59 = and i32 %58, %1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %57, %50
  %62 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %38, %63
  br i1 %64, label %88, label %65

65:                                               ; preds = %61
  %66 = zext i8 %47 to i32
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 2
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %70, 2
  %72 = icmp ugt i32 %71, %66
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ext4_group_info, ptr %29, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp sge i32 %75, %66
  br label %88

77:                                               ; preds = %44
  %78 = sdiv i32 %38, %42
  %79 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %87, label %88

82:                                               ; preds = %44
  %83 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp slt i32 %38, %84
  br i1 %85, label %87, label %88

86:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2471, 0\0A.popsection", ""() #17, !srcloc !147
  unreachable

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %82, %77, %73, %65, %61, %57, %44, %40, %36, %32
  %89 = phi i1 [ false, %87 ], [ false, %32 ], [ false, %36 ], [ false, %40 ], [ false, %57 ], [ false, %61 ], [ true, %65 ], [ %76, %73 ], [ true, %77 ], [ true, %82 ], [ true, %44 ]
  ret i1 %89
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_simple_scan_group(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 16
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !15

10:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2273, 0\0A.popsection", ""() #17, !srcloc !148
  unreachable

11:                                               ; preds = %2
  %12 = zext i8 %8 to i32
  %13 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 2
  %17 = icmp ugt i32 %16, %12
  br i1 %17, label %18, label %99

18:                                               ; preds = %96, %11
  %19 = phi i32 [ %97, %96 ], [ %12, %11 ]
  %20 = getelementptr %struct.ext4_group_info, ptr %6, i32 0, i32 11, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %96, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %30, !prof !15

29:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 6
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = add nuw nsw i32 %33, 1
  %35 = icmp ult i32 %34, %19
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 27
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 61
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i16, ptr %42, i32 %19
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %27, i32 %45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !15

48:                                               ; preds = %36, %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2279, 0\0A.popsection", ""() #17, !srcloc !149
  unreachable

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 62
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i32, ptr %51, i32 %19
  %53 = load i32, ptr %52, align 4
  %54 = ptrtoint ptr %46 to i32
  %55 = shl i32 %54, 3
  %56 = and i32 %55, 24
  %57 = and i32 %54, -4
  %58 = inttoptr i32 %57 to ptr
  %59 = add i32 %56, %53
  %60 = tail call i32 @_find_next_zero_bit_le(ptr noundef %58, i32 noundef %59, i32 noundef %56) #17
  %61 = sub i32 %60, %56
  %62 = icmp sgt i32 %53, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %49
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %20, align 4
  tail call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_simple_scan_group, i32 noundef 2285, ptr noundef %64, i32 noundef %66, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.80, i32 noundef %67, i32 noundef %19) #17
  %68 = load ptr, ptr %3, align 4
  %69 = load i32, ptr %65, align 4
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %68, i32 noundef %69, i32 noundef 4) #17
  br label %99

70:                                               ; preds = %49
  %71 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 11
  %72 = load i16, ptr %71, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %71, align 4
  %74 = shl nuw i32 1, %19
  %75 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  store i32 %74, ptr %75, align 4
  %76 = shl i32 %61, %19
  %77 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  store i32 %79, ptr %80, align 4
  tail call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1)
  %81 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %87, label %86, !prof !11

86:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2299, 0\0A.popsection", ""() #17, !srcloc !150
  unreachable

87:                                               ; preds = %70
  %88 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 78
  %91 = load i32, ptr %90, align 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 94
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #17, !srcloc !20
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #17, !srcloc !52
  br label %99

96:                                               ; preds = %18
  %97 = add nuw nsw i32 %19, 1
  %98 = icmp eq i32 %97, %16
  br i1 %98, label %99, label %18

99:                                               ; preds = %96, %93, %87, %63, %11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_scan_aligned(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.ext4_free_extent, align 4
  %4 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 73
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !15

13:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2391, 0\0A.popsection", ""() #17, !srcloc !151
  unreachable

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %20, %17
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = add nuw i64 %21, %26
  %28 = zext i32 %11 to i64
  %29 = add nsw i64 %28, -1
  %30 = add nuw i64 %29, %27
  %31 = icmp ult i64 %30, 4294967296
  br i1 %31, label %32, label %36, !prof !11

32:                                               ; preds = %14
  %33 = trunc i64 %30 to i32
  %34 = udiv i32 %33, %11
  %35 = zext i32 %34 to i64
  br label %39

36:                                               ; preds = %14
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %30) #21, !srcloc !139
  %38 = extractvalue { i64, i64 } %37, 1
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %35, %32 ], [ %38, %36 ]
  %41 = mul i64 %40, %28
  %42 = sub i64 %41, %27
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, %43
  br i1 %46, label %47, label %83

47:                                               ; preds = %39
  %48 = ptrtoint ptr %9 to i32
  %49 = shl i32 %48, 3
  %50 = and i32 %49, 24
  %51 = and i32 %48, -4
  %52 = inttoptr i32 %51 to ptr
  br label %53

53:                                               ; preds = %76, %47
  %54 = phi ptr [ %7, %47 ], [ %77, %76 ]
  %55 = phi i32 [ %11, %47 ], [ %78, %76 ]
  %56 = phi i32 [ %43, %47 ], [ %79, %76 ]
  %57 = add i32 %56, %50
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr %52, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %53
  %66 = call fastcc i32 @mb_find_extent(ptr noundef %1, i32 noundef %56, i32 noundef %55, ptr noundef nonnull %3)
  %67 = load i32, ptr %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load ptr, ptr %6, align 4
  br label %76

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 11
  %73 = load i16, ptr %72, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4
  store i32 -559026163, ptr %3, align 4
  %75 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %75, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1)
  br label %83

76:                                               ; preds = %69, %53
  %77 = phi ptr [ %70, %69 ], [ %54, %53 ]
  %78 = phi i32 [ %67, %69 ], [ %55, %53 ]
  %79 = add i32 %78, %56
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %53, label %83

83:                                               ; preds = %76, %71, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_complex_scan_group(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.ext4_free_extent, align 4
  %4 = alloca %struct.ext4_free_extent, align 4
  %5 = alloca %struct.ext4_free_extent, align 4
  %6 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  %10 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_group_info, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16, !prof !15

15:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 2324, i32 noundef 9, ptr noundef null) #17
  br label %172

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ext4_group_info, ptr %11, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  %20 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %21 = ptrtoint ptr %9 to i32
  %22 = shl i32 %21, 3
  %23 = and i32 %22, 24
  %24 = and i32 %21, -4
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %27 = getelementptr inbounds %struct.ext4_free_extent, ptr %5, i32 0, i32 3
  %28 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  %29 = getelementptr inbounds %struct.ext4_free_extent, ptr %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 11
  %31 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %32 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  %33 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %34 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %35 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  br label %36

36:                                               ; preds = %133, %16
  %37 = phi i32 [ %13, %16 ], [ %136, %133 ]
  %38 = phi i32 [ %18, %16 ], [ %135, %133 ]
  %39 = load i8, ptr %19, align 2
  %40 = icmp eq i8 %39, 1
  br i1 %40, label %41, label %140

41:                                               ; preds = %36
  %42 = load ptr, ptr %20, align 4
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %23
  %46 = add i32 %38, %23
  %47 = call i32 @_find_next_zero_bit_le(ptr noundef %25, i32 noundef %45, i32 noundef %46) #17
  %48 = sub i32 %47, %23
  %49 = call i32 @llvm.smin.i32(i32 %48, i32 %44) #17
  %50 = load ptr, ptr %20, align 4
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, ptr %34, align 4
  call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_complex_scan_group, i32 noundef 2341, ptr noundef %7, i32 noundef %55, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.81, i32 noundef %37) #17
  %56 = load i32, ptr %34, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %7, i32 noundef %56, i32 noundef 4) #17
  br label %138

57:                                               ; preds = %41
  %58 = load i32, ptr %26, align 4
  %59 = call fastcc i32 @mb_find_extent(ptr noundef %1, i32 noundef %49, i32 noundef %58, ptr noundef nonnull %5)
  %60 = load i32, ptr %27, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %63, !prof !15

62:                                               ; preds = %57
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 2348, i32 noundef 9, ptr noundef null) #17
  br label %138

63:                                               ; preds = %57
  %64 = icmp slt i32 %37, %60
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i32, ptr %34, align 4
  call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_complex_scan_group, i32 noundef 2354, ptr noundef %7, i32 noundef %66, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.82, i32 noundef %37, i32 noundef %60) #17
  %67 = load i32, ptr %34, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %7, i32 noundef %67, i32 noundef 4) #17
  br label %138

68:                                               ; preds = %63
  store i32 -559038242, ptr %5, align 4
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %60, %73
  br i1 %74, label %75, label %76, !prof !15

75:                                               ; preds = %68
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2115, 0\0A.popsection", ""() #17, !srcloc !152
  unreachable

76:                                               ; preds = %68
  %77 = load i32, ptr %29, align 4
  %78 = icmp ult i32 %77, %73
  br i1 %78, label %80, label %79, !prof !11

79:                                               ; preds = %76
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2116, 0\0A.popsection", ""() #17, !srcloc !153
  unreachable

80:                                               ; preds = %76
  %81 = load i8, ptr %19, align 2
  %82 = icmp eq i8 %81, 1
  br i1 %82, label %84, label %83, !prof !11

83:                                               ; preds = %80
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2117, 0\0A.popsection", ""() #17, !srcloc !154
  unreachable

84:                                               ; preds = %80
  %85 = load i16, ptr %30, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %30, align 4
  %87 = load i32, ptr %31, align 4
  %88 = and i32 %87, 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !11

90:                                               ; preds = %84
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #17
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1) #17
  br label %133

91:                                               ; preds = %84
  %92 = load i32, ptr %26, align 4
  %93 = icmp eq i32 %60, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #17
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1) #17
  br label %133

95:                                               ; preds = %91
  %96 = load i32, ptr %32, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #17
  br label %133

99:                                               ; preds = %95
  %100 = icmp slt i32 %96, %92
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = icmp sgt i32 %60, %96
  br i1 %102, label %107, label %108

103:                                              ; preds = %99
  %104 = icmp sgt i32 %60, %92
  %105 = icmp slt i32 %60, %96
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %101
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #17
  br label %108

108:                                              ; preds = %107, %103, %101
  %109 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #17, !annotation !10
  %110 = zext i16 %86 to i32
  %111 = getelementptr inbounds %struct.ext4_sb_info, ptr %109, i32 0, i32 76
  %112 = load i32, ptr %111, align 8
  %113 = icmp ult i32 %112, %110
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i8 3, ptr %19, align 2
  br label %132

115:                                              ; preds = %108
  %116 = load i32, ptr %32, align 4
  %117 = icmp slt i32 %116, %92
  br i1 %117, label %132, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %109, i32 0, i32 77
  %120 = load i32, ptr %119, align 4
  %121 = icmp ult i32 %120, %110
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, ptr %33, align 4
  %124 = load i32, ptr %34, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i32, ptr %35, align 4
  %128 = call fastcc i32 @mb_find_extent(ptr noundef %1, i32 noundef %127, i32 noundef %92, ptr noundef nonnull %4) #17
  %129 = load i32, ptr %26, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1) #17
  br label %132

132:                                              ; preds = %131, %126, %122, %118, %115, %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %133

133:                                              ; preds = %132, %98, %94, %90
  %134 = load i32, ptr %27, align 4
  %135 = add i32 %134, %49
  %136 = sub i32 %37, %134
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %36

138:                                              ; preds = %133, %65, %62, %54
  %139 = load i8, ptr %19, align 2
  br label %140

140:                                              ; preds = %138, %36
  %141 = phi i8 [ %139, %138 ], [ %39, %36 ]
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr inbounds %struct.super_block, ptr %142, i32 0, i32 27
  %144 = load ptr, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #17, !annotation !10
  %145 = icmp eq i8 %141, 2
  br i1 %145, label %171, label %146

146:                                              ; preds = %140
  %147 = load i16, ptr %30, align 4
  %148 = zext i16 %147 to i32
  %149 = getelementptr inbounds %struct.ext4_sb_info, ptr %144, i32 0, i32 76
  %150 = load i32, ptr %149, align 8
  %151 = icmp ult i32 %150, %148
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load i32, ptr %31, align 4
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i8 3, ptr %19, align 2
  br label %171

157:                                              ; preds = %152, %146
  %158 = load i32, ptr %32, align 4
  %159 = load i32, ptr %26, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %171, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %33, align 4
  %163 = load i32, ptr %34, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load i32, ptr %35, align 4
  %167 = call fastcc i32 @mb_find_extent(ptr noundef %1, i32 noundef %166, i32 noundef %159, ptr noundef nonnull %3) #17
  %168 = load i32, ptr %26, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1) #17
  br label %171

171:                                              ; preds = %170, %165, %161, %157, %156, %140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %172

172:                                              ; preds = %171, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_try_best_found(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca %struct.ext4_free_extent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11, !prof !15

10:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2175, 0\0A.popsection", ""() #17, !srcloc !155
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %13, i32 noundef %6, ptr noundef %1, i32 noundef 3136) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 41
  %21 = load ptr, ptr %20, align 16
  %22 = and i32 %6, 63
  %23 = getelementptr [64 x %struct.bgl_lock], ptr %21, i32 0, i32 %22
  %24 = tail call i32 @_raw_spin_trylock(ptr noundef %23) #17
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #17
  br i1 %25, label %33, label %28

28:                                               ; preds = %16
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 0, i32 -1, ptr elementtype(i32) %27) #17, !srcloc !34
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %39

33:                                               ; preds = %16
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 8, i32 1, ptr elementtype(i32) %27) #17, !srcloc !34
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %38

38:                                               ; preds = %37, %33
  tail call void @_raw_spin_lock(ptr noundef %23) #17
  br label %39

39:                                               ; preds = %38, %32, %28
  %40 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = call fastcc i32 @mb_find_extent(ptr noundef %1, i32 noundef %41, i32 noundef %8, ptr noundef nonnull %3)
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1)
  br label %45

45:                                               ; preds = %44, %39
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 27
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 41
  %50 = load ptr, ptr %49, align 16
  %51 = getelementptr [64 x %struct.bgl_lock], ptr %50, i32 0, i32 %22
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %52 = load i16, ptr %51, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  call fastcc void @ext4_mb_unload_buddy(ptr noundef %1)
  br label %54

54:                                               ; preds = %45, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb_find_extent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 41
  %13 = load ptr, ptr %12, align 16
  %14 = and i32 %9, 63
  %15 = getelementptr [64 x %struct.bgl_lock], ptr %13, i32 0, i32 %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %16 = load volatile i32, ptr %15, align 4
  store volatile i32 %16, ptr %5, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %16, 65535
  %19 = icmp eq i32 %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %19, label %20, label %21, !prof !15

20:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1871, 0\0A.popsection", ""() #17, !srcloc !156
  unreachable

21:                                               ; preds = %4
  %22 = icmp eq ptr %3, null
  br i1 %22, label %23, label %24, !prof !15

23:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1872, 0\0A.popsection", ""() #17, !srcloc !157
  unreachable

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %31, !prof !15

30:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 6
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp eq ptr %26, null
  br i1 %35, label %36, label %37, !prof !15

36:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1875, 0\0A.popsection", ""() #17, !srcloc !158
  unreachable

37:                                               ; preds = %31
  %38 = shl i32 8, %34
  %39 = icmp sgt i32 %38, %1
  br i1 %39, label %41, label %40, !prof !11

40:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1876, 0\0A.popsection", ""() #17, !srcloc !159
  unreachable

41:                                               ; preds = %37
  %42 = ptrtoint ptr %26 to i32
  %43 = shl i32 %42, 3
  %44 = and i32 %43, 24
  %45 = add i32 %44, %1
  %46 = and i32 %42, -4
  %47 = inttoptr i32 %46 to ptr
  %48 = lshr i32 %45, 5
  %49 = getelementptr i32, ptr %47, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %45, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 3
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 1
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 2
  br label %208

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 61
  %61 = load ptr, ptr %60, align 8
  %62 = add nuw nsw i32 %34, 1
  br label %63

63:                                               ; preds = %83, %59
  %64 = phi i32 [ 1, %59 ], [ %84, %83 ]
  %65 = getelementptr i16, ptr %61, i32 %64
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %28, i32 %67
  %69 = ashr i32 %1, %64
  %70 = ptrtoint ptr %68 to i32
  %71 = shl i32 %70, 3
  %72 = and i32 %71, 24
  %73 = add nsw i32 %72, %69
  %74 = and i32 %70, -4
  %75 = inttoptr i32 %74 to ptr
  %76 = lshr i32 %73, 5
  %77 = getelementptr i32, ptr %75, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %73, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %63
  %84 = add nuw nsw i32 %64, 1
  %85 = icmp eq i32 %64, %62
  br i1 %85, label %86, label %63

86:                                               ; preds = %83, %63
  %87 = phi i32 [ 0, %83 ], [ %64, %63 ]
  %88 = ashr i32 %1, %87
  %89 = shl nuw i32 1, %87
  %90 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 3
  store i32 %89, ptr %90, align 4
  %91 = shl i32 %88, %87
  %92 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 1
  store i32 %91, ptr %92, align 4
  %93 = load i32, ptr %8, align 4
  %94 = getelementptr inbounds %struct.ext4_free_extent, ptr %3, i32 0, i32 2
  store i32 %93, ptr %94, align 4
  %95 = sub i32 %89, %1
  %96 = add i32 %95, %91
  store i32 %96, ptr %90, align 4
  store i32 %1, ptr %92, align 4
  %97 = icmp slt i32 %96, %2
  br i1 %97, label %98, label %190

98:                                               ; preds = %184, %86
  %99 = phi i32 [ %188, %184 ], [ %96, %86 ]
  %100 = phi i32 [ %185, %184 ], [ %87, %86 ]
  %101 = phi i32 [ %186, %184 ], [ %88, %86 ]
  %102 = load ptr, ptr %25, align 4
  %103 = load ptr, ptr %27, align 4
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %105, label %106, !prof !15

105:                                              ; preds = %98
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #17, !srcloc !110
  unreachable

106:                                              ; preds = %98
  %107 = load i16, ptr %32, align 4
  %108 = zext i16 %107 to i32
  %109 = add nuw nsw i32 %108, 1
  %110 = icmp ult i32 %109, %100
  br i1 %110, label %190, label %111

111:                                              ; preds = %106
  %112 = icmp eq i32 %100, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  %114 = shl i32 8, %108
  br label %129

115:                                              ; preds = %111
  %116 = load ptr, ptr %6, align 4
  %117 = getelementptr inbounds %struct.super_block, ptr %116, i32 0, i32 27
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %118, i32 0, i32 61
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr i16, ptr %120, i32 %100
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = getelementptr i8, ptr %103, i32 %123
  %125 = getelementptr inbounds %struct.ext4_sb_info, ptr %118, i32 0, i32 62
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i32, ptr %126, i32 %100
  %128 = load i32, ptr %127, align 4
  br label %129

129:                                              ; preds = %115, %113
  %130 = phi i32 [ %114, %113 ], [ %128, %115 ]
  %131 = phi ptr [ %102, %113 ], [ %124, %115 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %190, label %133

133:                                              ; preds = %129
  %134 = add i32 %101, 1
  %135 = icmp slt i32 %134, %130
  br i1 %135, label %136, label %190

136:                                              ; preds = %133
  %137 = shl i32 %134, %100
  %138 = ptrtoint ptr %102 to i32
  %139 = shl i32 %138, 3
  %140 = and i32 %139, 24
  %141 = add i32 %140, %137
  %142 = and i32 %138, -4
  %143 = inttoptr i32 %142 to ptr
  %144 = lshr i32 %141, 5
  %145 = getelementptr i32, ptr %143, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %141, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %146, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %190

151:                                              ; preds = %136
  %152 = shl i32 8, %108
  %153 = icmp sgt i32 %152, %137
  br i1 %153, label %154, label %160, !prof !11

154:                                              ; preds = %151
  %155 = load ptr, ptr %6, align 4
  %156 = getelementptr inbounds %struct.super_block, ptr %155, i32 0, i32 27
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ext4_sb_info, ptr %157, i32 0, i32 61
  %159 = load ptr, ptr %158, align 8
  br label %161

160:                                              ; preds = %151
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1634, 0\0A.popsection", ""() #17, !srcloc !132
  unreachable

161:                                              ; preds = %181, %154
  %162 = phi i32 [ 1, %154 ], [ %182, %181 ]
  %163 = getelementptr i16, ptr %159, i32 %162
  %164 = load i16, ptr %163, align 2
  %165 = zext i16 %164 to i32
  %166 = getelementptr i8, ptr %103, i32 %165
  %167 = ashr i32 %137, %162
  %168 = ptrtoint ptr %166 to i32
  %169 = shl i32 %168, 3
  %170 = and i32 %169, 24
  %171 = add nsw i32 %170, %167
  %172 = and i32 %168, -4
  %173 = inttoptr i32 %172 to ptr
  %174 = lshr i32 %171, 5
  %175 = getelementptr i32, ptr %173, i32 %174
  %176 = load volatile i32, ptr %175, align 4
  %177 = and i32 %171, 31
  %178 = shl nuw i32 1, %177
  %179 = and i32 %178, %176
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %161
  %182 = add nuw nsw i32 %162, 1
  %183 = icmp eq i32 %162, %109
  br i1 %183, label %184, label %161

184:                                              ; preds = %181, %161
  %185 = phi i32 [ 0, %181 ], [ %162, %161 ]
  %186 = ashr i32 %137, %185
  %187 = shl nuw i32 1, %185
  %188 = add i32 %187, %99
  store i32 %188, ptr %90, align 4
  %189 = icmp slt i32 %188, %2
  br i1 %189, label %98, label %190

190:                                              ; preds = %184, %136, %133, %129, %106, %86
  %191 = phi i32 [ %88, %86 ], [ %101, %106 ], [ %186, %184 ], [ %101, %136 ], [ %101, %133 ], [ %101, %129 ]
  %192 = phi i32 [ %87, %86 ], [ %100, %106 ], [ %185, %184 ], [ %100, %136 ], [ %100, %133 ], [ %100, %129 ]
  %193 = phi i32 [ %96, %86 ], [ %99, %106 ], [ %188, %184 ], [ %99, %136 ], [ %99, %133 ], [ %99, %129 ]
  %194 = add i32 %193, %1
  %195 = load ptr, ptr %6, align 4
  %196 = getelementptr inbounds %struct.super_block, ptr %195, i32 0, i32 27
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.ext4_sb_info, ptr %197, i32 0, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = icmp ugt i32 %194, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %190
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1915, i32 noundef 9, ptr noundef null) #17
  %202 = load ptr, ptr %6, align 4
  %203 = load i32, ptr %8, align 4
  %204 = load i32, ptr %94, align 4
  %205 = load i32, ptr %92, align 4
  %206 = load i32, ptr %90, align 4
  %207 = load i32, ptr %3, align 4
  tail call void (ptr, i32, ptr, i32, i32, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.mb_find_extent, i32 noundef 1920, ptr noundef %202, i32 noundef %203, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.79, i32 noundef %191, i32 noundef %192, i32 noundef %2, i32 noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207) #17
  store i32 0, ptr %90, align 4
  store i32 0, ptr %92, align 4
  br label %208

208:                                              ; preds = %201, %55
  %209 = phi ptr [ %94, %201 ], [ %58, %55 ]
  store i32 0, ptr %209, align 4
  br label %210

210:                                              ; preds = %208, %190
  %211 = phi i32 [ %193, %190 ], [ 0, %208 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2014, 0\0A.popsection", ""() #17, !srcloc !160
  unreachable

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %18, label %19, !prof !15

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2015, 0\0A.popsection", ""() #17, !srcloc !161
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.smin.i32(i32 %21, i32 %24)
  store i32 %25, ptr %20, align 4
  %26 = load i32, ptr %22, align 4
  store i32 %26, ptr %7, align 4
  %27 = tail call fastcc i32 @mb_mark_used(ptr noundef %1, ptr noundef %7)
  %28 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false)
  store i8 2, ptr %15, align 2
  %29 = trunc i32 %27 to i16
  %30 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 12
  store i16 %29, ptr %30, align 2
  %31 = lshr i32 %27, 16
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 13
  store i16 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ext4_buddy, ptr %1, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 18
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %19
  %42 = add i32 %38, -1
  br label %45

43:                                               ; preds = %19
  %44 = ptrtoint ptr %35 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #17, !srcloc !20
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #17, !srcloc !52
  %50 = load ptr, ptr %1, align 4
  %51 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 19
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !11

56:                                               ; preds = %45
  %57 = add i32 %53, -1
  br label %60

58:                                               ; preds = %45
  %59 = ptrtoint ptr %50 to i32
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #17, !srcloc !20
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #17, !srcloc !52
  %65 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %70) #17
  %71 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 83
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 84
  store i32 %75, ptr %76, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %77 = load i16, ptr %70, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %79

79:                                               ; preds = %69, %60
  %80 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %20, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, ptr %65, align 4
  %86 = and i32 %85, 128
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call fastcc void @ext4_mb_new_group_pa(ptr noundef %0) #17
  br label %90

89:                                               ; preds = %84
  tail call fastcc void @ext4_mb_new_inode_pa(ptr noundef %0) #17
  br label %90

90:                                               ; preds = %89, %88, %79
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_new_group_pa(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4674, 0\0A.popsection", ""() #17, !srcloc !162
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %16, label %15, !prof !11

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4675, 0\0A.popsection", ""() #17, !srcloc !163
  unreachable

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, -32768
  br i1 %20, label %22, label %21, !prof !11

21:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4676, 0\0A.popsection", ""() #17, !srcloc !164
  unreachable

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !15

26:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4677, 0\0A.popsection", ""() #17, !srcloc !165
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef align 4 dereferenceable(16) %6, i32 16, i1 false)
  %29 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = zext i32 %35 to i64
  %37 = mul nuw i64 %36, %31
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_super_block, ptr %39, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = add nuw i64 %37, %42
  %44 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 12
  %47 = load i32, ptr %46, align 16
  %48 = shl i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = add i64 %43, %49
  %51 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 6
  store i64 %50, ptr %51, align 8
  %52 = trunc i64 %50 to i32
  %53 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 7
  store i32 %52, ptr %53, align 8
  %54 = load i32, ptr %7, align 4
  %55 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 8
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 9
  store i32 %54, ptr %56, align 8
  %57 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 3
  store i32 0, ptr %57, align 8
  store volatile ptr %24, ptr %24, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %24, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 1
  store volatile ptr %59, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 1, i32 1
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 5
  store i32 0, ptr %61, align 8
  %62 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 10
  store i16 1, ptr %62, align 4
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mb_new_group_pa, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %27
  %66 = tail call ptr @llvm.thread.pointer() #17
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !166
  %77 = tail call i32 @__traceiter_ext4_mb_new_group_pa(ptr noundef null, ptr noundef %0, ptr noundef nonnull %24) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !167
  %78 = load i64, ptr %51, align 8
  br label %79

79:                                               ; preds = %76, %65, %27
  %80 = phi i64 [ %50, %27 ], [ %50, %65 ], [ %78, %76 ]
  %81 = load i32, ptr %4, align 4
  %82 = load ptr, ptr %2, align 4
  tail call void @ext4_get_group_no_and_offset(ptr noundef %82, i64 noundef %80, ptr noundef %29, ptr noundef %44) #17
  store i32 %81, ptr %7, align 4
  store i8 2, ptr %12, align 2
  store ptr %24, ptr %23, align 4
  %83 = load i32, ptr %56, align 8
  %84 = load ptr, ptr %32, align 4
  %85 = getelementptr inbounds %struct.ext4_sb_info, ptr %84, i32 0, i32 103
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #17, !srcloc !20
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 %83, ptr elementtype(i32) %85) #17, !srcloc !52
  %87 = load i32, ptr %29, align 4
  %88 = load ptr, ptr %32, align 4
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 8
  %90 = load i32, ptr %89, align 32
  %91 = icmp ugt i32 %90, %87
  br i1 %91, label %93, label %92, !prof !11

92:                                               ; preds = %79
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 28
  %95 = load i32, ptr %94, align 64
  %96 = lshr i32 %87, %95
  %97 = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 7
  %98 = load i32, ptr %97, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %99 = load ptr, ptr %32, align 4
  %100 = getelementptr inbounds %struct.ext4_sb_info, ptr %99, i32 0, i32 58
  %101 = load volatile ptr, ptr %100, align 4
  %102 = getelementptr ptr, ptr %101, i32 %96
  %103 = load ptr, ptr %102, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %104 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 21
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108, !prof !15

107:                                              ; preds = %93
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4704, 0\0A.popsection", ""() #17, !srcloc !168
  unreachable

108:                                              ; preds = %93
  %109 = add i32 %98, -1
  %110 = and i32 %109, %87
  %111 = getelementptr ptr, ptr %103, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.ext4_locality_group, ptr %105, i32 0, i32 2
  %114 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 11
  store ptr %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %24, i32 0, i32 12
  store ptr null, ptr %115, align 4
  %116 = getelementptr inbounds %struct.ext4_group_info, ptr %112, i32 0, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %59, ptr %118, align 4
  store ptr %117, ptr %59, align 4
  store ptr %116, ptr %60, align 4
  store volatile ptr %59, ptr %116, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_new_inode_pa(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 2, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, %8
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4586, 0\0A.popsection", ""() #17, !srcloc !169
  unreachable

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 14
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4587, 0\0A.popsection", ""() #17, !srcloc !170
  unreachable

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 4
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, -4096
  %23 = icmp eq i16 %22, -32768
  br i1 %23, label %25, label %24, !prof !11

24:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4588, 0\0A.popsection", ""() #17, !srcloc !171
  unreachable

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 20
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !15

29:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4589, 0\0A.popsection", ""() #17, !srcloc !172
  unreachable

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %11, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %9, align 4
  br label %69

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %6, align 4
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %41, label %42, !prof !15

41:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4602, 0\0A.popsection", ""() #17, !srcloc !173
  unreachable

42:                                               ; preds = %36
  %43 = icmp slt i32 %32, %8
  br i1 %43, label %44, label %45, !prof !15

44:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4603, 0\0A.popsection", ""() #17, !srcloc !174
  unreachable

45:                                               ; preds = %42
  %46 = sub i32 %39, %38
  %47 = sub i32 %11, %8
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 12
  %49 = load i32, ptr %48, align 16
  %50 = shl i32 %47, %49
  %51 = tail call i32 @llvm.smin.i32(i32 %46, i32 %50)
  %52 = shl i32 %11, %49
  %53 = urem i32 %39, %52
  %54 = icmp ne i32 %53, 0
  %55 = icmp slt i32 %53, %51
  %56 = select i1 %54, i1 %55, i1 false
  %57 = select i1 %56, i32 %53, i32 %51
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  %61 = add i32 %60, %57
  %62 = lshr i32 %61, %49
  %63 = sub i32 %39, %62
  store i32 %63, ptr %9, align 4
  %64 = icmp ult i32 %39, %62
  br i1 %64, label %65, label %66, !prof !15

65:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4623, 0\0A.popsection", ""() #17, !srcloc !175
  unreachable

66:                                               ; preds = %45
  %67 = icmp slt i32 %11, %8
  br i1 %67, label %68, label %69, !prof !15

68:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4624, 0\0A.popsection", ""() #17, !srcloc !176
  unreachable

69:                                               ; preds = %66, %34
  %70 = phi i32 [ %35, %34 ], [ %63, %66 ]
  %71 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %71, ptr noundef align 4 dereferenceable(16) %9, i32 16, i1 false)
  %72 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 7
  store i32 %70, ptr %72, align 8
  %73 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = zext i32 %74 to i64
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = zext i32 %78 to i64
  %80 = mul nuw i64 %79, %75
  %81 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 15
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ext4_super_block, ptr %82, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = zext i32 %84 to i64
  %86 = add nuw i64 %80, %85
  %87 = getelementptr inbounds %struct.ext4_allocation_context, ptr %0, i32 0, i32 4, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 12
  %90 = load i32, ptr %89, align 16
  %91 = shl i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = add i64 %86, %92
  %94 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 6
  store i64 %93, ptr %94, align 8
  %95 = load i32, ptr %10, align 4
  %96 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 8
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 9
  store i32 %95, ptr %97, align 8
  %98 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 3
  store i32 0, ptr %98, align 8
  store volatile ptr %27, ptr %27, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %27, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 1
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 1, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 5
  store i32 0, ptr %102, align 8
  %103 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 10
  store i16 0, ptr %103, align 4
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mb_new_inode_pa, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %69
  %107 = tail call ptr @llvm.thread.pointer() #17
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !177
  %118 = tail call i32 @__traceiter_ext4_mb_new_inode_pa(ptr noundef null, ptr noundef %0, ptr noundef nonnull %27) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !178
  br label %119

119:                                              ; preds = %117, %106, %69
  tail call fastcc void @ext4_mb_use_inode_pa(ptr noundef %0, ptr noundef nonnull %27)
  %120 = load i32, ptr %97, align 8
  %121 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 103
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #17, !srcloc !20
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 %120, ptr elementtype(i32) %121) #17, !srcloc !52
  %123 = load i32, ptr %73, align 4
  %124 = load ptr, ptr %4, align 4
  %125 = getelementptr inbounds %struct.ext4_sb_info, ptr %124, i32 0, i32 8
  %126 = load i32, ptr %125, align 32
  %127 = icmp ugt i32 %126, %123
  br i1 %127, label %129, label %128, !prof !11

128:                                              ; preds = %119
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

129:                                              ; preds = %119
  %130 = load ptr, ptr %0, align 4
  %131 = getelementptr inbounds %struct.ext4_sb_info, ptr %124, i32 0, i32 28
  %132 = load i32, ptr %131, align 64
  %133 = lshr i32 %123, %132
  %134 = getelementptr inbounds %struct.ext4_sb_info, ptr %124, i32 0, i32 7
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, -1
  %137 = and i32 %136, %123
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %138 = load ptr, ptr %4, align 4
  %139 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 58
  %140 = load volatile ptr, ptr %139, align 4
  %141 = getelementptr ptr, ptr %140, i32 %133
  %142 = load ptr, ptr %141, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %143 = getelementptr ptr, ptr %142, i32 %137
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr i8, ptr %130, i32 428
  %146 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 11
  store ptr %145, ptr %146, align 8
  %147 = load ptr, ptr %0, align 4
  %148 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %27, i32 0, i32 12
  store ptr %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.ext4_group_info, ptr %144, i32 0, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  store ptr %100, ptr %151, align 4
  store ptr %150, ptr %100, align 4
  store ptr %149, ptr %101, align 4
  store volatile ptr %100, ptr %149, align 4
  %152 = load ptr, ptr %146, align 8
  tail call void @_raw_spin_lock(ptr noundef %152) #17
  %153 = getelementptr i8, ptr %130, i32 420
  %154 = load ptr, ptr %153, align 4
  store ptr %154, ptr %27, align 4
  store ptr %153, ptr %99, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !62
  store volatile ptr %27, ptr %153, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %27, ptr %155, align 4
  %156 = load ptr, ptr %146, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %157 = load i16, ptr %156, align 4
  %158 = add i16 %157, 1
  store i16 %158, ptr %156, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %159 = getelementptr i8, ptr %130, i32 416
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %159) #17, !srcloc !20
  %160 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %159, ptr %159, i32 1, ptr elementtype(i32) %159) #17, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mb_new_group_pa(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mb_new_inode_pa(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_mb_discard_group_preallocations(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.ext4_buddy, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 32
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 28
  %14 = load i32, ptr %13, align 64
  %15 = lshr i32 %1, %14
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = and i32 %18, %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 58
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr ptr, ptr %22, i32 %15
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %25 = getelementptr ptr, ptr %24, i32 %19
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !10
  %27 = getelementptr inbounds %struct.ext4_group_info, ptr %26, i32 0, i32 7
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %200, label %30

30:                                               ; preds = %12
  %31 = tail call ptr @ext4_read_block_bitmap(ptr noundef %0, i32 noundef %1) #17
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = ptrtoint ptr %31 to i32
  %35 = sub i32 0, %34
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_mb_discard_group_preallocations, i32 noundef 4836, i1 noundef zeroext false, i32 noundef %35, i64 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %34, i32 noundef %1) #17
  br label %200

36:                                               ; preds = %30
  %37 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 3136) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_mb_discard_group_preallocations, i32 noundef 4843, ptr noundef nonnull @.str.39, i32 noundef %37, i32 noundef %1) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !43
  %40 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #17, !srcloc !20
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #17, !srcloc !41
  br label %200

42:                                               ; preds = %36
  store volatile ptr %4, ptr %4, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %43, align 4
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 41
  %46 = load ptr, ptr %45, align 16
  %47 = and i32 %1, 63
  %48 = getelementptr [64 x %struct.bgl_lock], ptr %46, i32 0, i32 %47
  %49 = call i32 @_raw_spin_trylock(ptr noundef %48) #17
  %50 = icmp eq i32 %49, 0
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #17
  br i1 %50, label %58, label %53

53:                                               ; preds = %42
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 0, i32 -1, ptr elementtype(i32) %52) #17, !srcloc !34
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %64

58:                                               ; preds = %42
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 8, i32 1, ptr elementtype(i32) %52) #17, !srcloc !34
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %63

63:                                               ; preds = %62, %58
  call void @_raw_spin_lock(ptr noundef %48) #17
  br label %64

64:                                               ; preds = %63, %57, %53
  %65 = load ptr, ptr %27, align 4
  %66 = icmp eq ptr %65, %27
  br i1 %66, label %122, label %67

67:                                               ; preds = %119, %64
  %68 = phi ptr [ %70, %119 ], [ %65, %64 ]
  %69 = phi i32 [ %120, %119 ], [ 0, %64 ]
  %70 = load ptr, ptr %68, align 8
  %71 = getelementptr i8, ptr %68, i32 16
  call void @_raw_spin_lock(ptr noundef %71) #17
  %72 = getelementptr i8, ptr %68, i32 20
  %73 = load volatile i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %76 = load i16, ptr %71, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %71, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  store i32 1, ptr %2, align 4
  br label %119

78:                                               ; preds = %67
  %79 = getelementptr i8, ptr %68, i32 24
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %83 = load i16, ptr %71, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %71, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %119

85:                                               ; preds = %78
  store i32 1, ptr %79, align 8
  %86 = getelementptr i8, ptr %68, i32 52
  %87 = load i16, ptr %86, align 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %68, i32 60
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 416
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #17, !srcloc !20
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #17, !srcloc !41
  br label %94

94:                                               ; preds = %89, %85
  %95 = icmp eq i32 %69, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %94
  %97 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !57
  %98 = call i32 @llvm.read_register.i32(metadata !0) #17
  %99 = inttoptr i32 %98 to ptr
  %100 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %99) #16, !srcloc !58
  %101 = add i32 %100, ptrtoint (ptr @discard_pa_seq to i32)
  %102 = inttoptr i32 %101 to ptr
  %103 = load i64, ptr %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, ptr %102, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %97) #17, !srcloc !59
  br label %105

105:                                              ; preds = %96, %94
  %106 = getelementptr i8, ptr %68, i32 48
  %107 = load i32, ptr %106, align 8
  %108 = add i32 %107, %69
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %109 = load i16, ptr %71, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %71, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %111 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %68, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %68, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %111, align 4
  %115 = getelementptr i8, ptr %68, i32 8
  %116 = load ptr, ptr %4, align 8
  %117 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  store ptr %115, ptr %117, align 4
  store ptr %116, ptr %115, align 4
  %118 = getelementptr i8, ptr %68, i32 12
  store ptr %4, ptr %118, align 4
  store volatile ptr %115, ptr %4, align 8
  br label %119

119:                                              ; preds = %105, %82, %75
  %120 = phi i32 [ %69, %75 ], [ %69, %82 ], [ %108, %105 ]
  %121 = icmp eq ptr %70, %27
  br i1 %121, label %122, label %67

122:                                              ; preds = %119, %64
  %123 = phi i32 [ 0, %64 ], [ %120, %119 ]
  %124 = load ptr, ptr %4, align 8
  %125 = icmp eq ptr %124, %4
  br i1 %125, label %150, label %126

126:                                              ; preds = %144, %122
  %127 = phi ptr [ %129, %144 ], [ %124, %122 ]
  %128 = getelementptr i8, ptr %127, i32 -16
  %129 = load ptr, ptr %127, align 8
  %130 = getelementptr i8, ptr %127, i32 48
  %131 = load ptr, ptr %130, align 8
  call void @_raw_spin_lock(ptr noundef %131) #17
  %132 = getelementptr i8, ptr %127, i32 -12
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %128, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  store ptr %133, ptr %135, align 4
  store volatile ptr %134, ptr %133, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %132, align 4
  %136 = load ptr, ptr %130, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %137 = load i16, ptr %136, align 4
  %138 = add i16 %137, 1
  store i16 %138, ptr %136, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %139 = getelementptr i8, ptr %127, i32 44
  %140 = load i16, ptr %139, align 4
  %141 = icmp eq i16 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %126
  call fastcc void @ext4_mb_release_group_pa(ptr noundef nonnull %5, ptr noundef %128)
  br label %144

143:                                              ; preds = %126
  call fastcc void @ext4_mb_release_inode_pa(ptr noundef nonnull %5, ptr noundef %31, ptr noundef %128)
  br label %144

144:                                              ; preds = %143, %142
  %145 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %127, align 4
  %148 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  store ptr %146, ptr %148, align 4
  store volatile ptr %147, ptr %146, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %127, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %145, align 4
  call void @call_rcu(ptr noundef %127, ptr noundef nonnull @ext4_mb_pa_callback) #17
  %149 = icmp eq ptr %129, %4
  br i1 %149, label %150, label %126

150:                                              ; preds = %144, %122
  %151 = load ptr, ptr %6, align 4
  %152 = getelementptr inbounds %struct.ext4_sb_info, ptr %151, i32 0, i32 41
  %153 = load ptr, ptr %152, align 16
  %154 = getelementptr [64 x %struct.bgl_lock], ptr %153, i32 0, i32 %47
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %155 = load i16, ptr %154, align 4
  %156 = add i16 %155, 1
  store i16 %156, ptr %154, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %157 = getelementptr inbounds %struct.ext4_buddy, ptr %5, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %177, label %160

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.page, ptr %158, i32 0, i32 1
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165, !prof !11

165:                                              ; preds = %160
  %166 = add i32 %162, -1
  br label %169

167:                                              ; preds = %160
  %168 = ptrtoint ptr %158 to i32
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  %171 = inttoptr i32 %170 to ptr
  %172 = getelementptr inbounds %struct.page, ptr %171, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %172) #17, !srcloc !20
  %173 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %172, ptr %172, i32 1, ptr elementtype(i32) %172) #17, !srcloc !21
  %174 = extractvalue { i32, i32 } %173, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  call void @__put_page(ptr noundef %171) #17
  br label %177

177:                                              ; preds = %176, %169, %150
  %178 = load ptr, ptr %5, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %197, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 1
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185, !prof !11

185:                                              ; preds = %180
  %186 = add i32 %182, -1
  br label %189

187:                                              ; preds = %180
  %188 = ptrtoint ptr %178 to i32
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = inttoptr i32 %190 to ptr
  %192 = getelementptr inbounds %struct.page, ptr %191, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %192) #17, !srcloc !20
  %193 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %192, ptr %192, i32 1, ptr elementtype(i32) %192) #17, !srcloc !21
  %194 = extractvalue { i32, i32 } %193, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  call void @__put_page(ptr noundef %191) #17
  br label %197

197:                                              ; preds = %196, %189, %177
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !43
  %198 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %198) #17, !srcloc !20
  %199 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %198, ptr %198, i32 1, ptr elementtype(i32) %198) #17, !srcloc !41
  br label %200

200:                                              ; preds = %197, %39, %33, %12
  %201 = phi i32 [ 0, %12 ], [ 0, %33 ], [ 0, %39 ], [ %123, %197 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i32 %201
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mb_discard_preallocations(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_release_group_pa(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !10
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mb_release_group_pa, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #17
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !179
  %21 = tail call i32 @__traceiter_ext4_mb_release_group_pa(ptr noundef null, ptr noundef %6, ptr noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !180
  br label %22

22:                                               ; preds = %20, %9, %2
  %23 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27, !prof !15

26:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4796, 0\0A.popsection", ""() #17, !srcloc !181
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 6
  %29 = load i64, ptr %28, align 8
  call void @ext4_get_group_no_and_offset(ptr noundef %6, i64 noundef %29, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.ext4_buddy, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  %34 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  br i1 %33, label %39, label %36

36:                                               ; preds = %27
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %39, label %38, !prof !11

38:                                               ; preds = %36
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4798, 0\0A.popsection", ""() #17, !srcloc !182
  unreachable

39:                                               ; preds = %36, %27
  %40 = phi i32 [ 0, %36 ], [ %35, %27 ]
  %41 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %4, align 4
  %44 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %1, i32 0, i32 8
  call fastcc void @mb_free_blocks(ptr noundef %42, ptr noundef %0, i32 noundef %43, i32 noundef %40)
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %47, i32 0, i32 104
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #17, !srcloc !20
  %49 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 %45, ptr elementtype(i32) %48) #17, !srcloc !52
  %50 = load i32, ptr %3, align 4
  %51 = load i32, ptr %4, align 4
  %52 = load i32, ptr %44, align 4
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mballoc_discard, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %39
  %56 = tail call ptr @llvm.thread.pointer() #17
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !48
  %67 = call i32 @__traceiter_ext4_mballoc_discard(ptr noundef null, ptr noundef %6, ptr noundef null, i32 noundef %50, i32 noundef %51, i32 noundef %52) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !49
  br label %68

68:                                               ; preds = %66, %55, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mb_release_group_pa(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_mb_discard_lg_preallocations(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = alloca %struct.ext4_buddy, align 4
  %6 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store volatile ptr %6, ptr %6, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ext4_locality_group, ptr %1, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %8) #17
  %9 = getelementptr %struct.ext4_locality_group, ptr %1, i32 0, i32 1, i32 %2
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %51, label %12

12:                                               ; preds = %47, %4
  %13 = phi ptr [ %49, %47 ], [ %10, %4 ]
  %14 = phi i32 [ %48, %47 ], [ %3, %4 ]
  %15 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %13, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %13, i32 0, i32 4
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %20 = load i16, ptr %15, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %47

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %13, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %27 = load i16, ptr %15, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  br label %47

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %13, i32 0, i32 10
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %34, label %33, !prof !11

33:                                               ; preds = %29
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/mballoc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5265, 0\0A.popsection", ""() #17, !srcloc !183
  unreachable

34:                                               ; preds = %29
  store i32 1, ptr %23, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %35 = load i16, ptr %15, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %37 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %13, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  %41 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %13, i32 0, i32 2
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store ptr %42, ptr %41, align 4
  %44 = getelementptr inbounds %struct.ext4_prealloc_space, ptr %13, i32 0, i32 2, i32 0, i32 1
  store ptr %6, ptr %44, align 4
  store volatile ptr %41, ptr %6, align 8
  %45 = add i32 %14, -1
  %46 = icmp slt i32 %45, 6
  br i1 %46, label %51, label %47

47:                                               ; preds = %34, %26, %19
  %48 = phi i32 [ %14, %19 ], [ %14, %26 ], [ %45, %34 ]
  %49 = load volatile ptr, ptr %13, align 4
  %50 = icmp eq ptr %49, %9
  br i1 %50, label %51, label %12

51:                                               ; preds = %47, %34, %4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %52 = load i16, ptr %8, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %54 = load ptr, ptr %6, align 8
  %55 = icmp eq ptr %54, %6
  br i1 %55, label %149, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %58 = getelementptr inbounds %struct.ext4_buddy, ptr %5, i32 0, i32 2
  br label %59

59:                                               ; preds = %147, %56
  %60 = phi ptr [ %54, %56 ], [ %62, %147 ]
  %61 = getelementptr i8, ptr %60, i32 -16
  %62 = load ptr, ptr %60, align 8
  %63 = getelementptr i8, ptr %60, i32 24
  %64 = load i64, ptr %63, align 8
  %65 = call i32 @ext4_get_group_number(ptr noundef %0, i64 noundef %64) #17
  %66 = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %65, ptr noundef nonnull %5, i32 noundef 35904)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = sub i32 0, %66
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_mb_discard_lg_preallocations, i32 noundef 5295, i1 noundef zeroext false, i32 noundef %69, i64 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %66, i32 noundef %65) #17
  br label %147

70:                                               ; preds = %59
  %71 = load ptr, ptr %57, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 41
  %73 = load ptr, ptr %72, align 16
  %74 = and i32 %65, 63
  %75 = getelementptr [64 x %struct.bgl_lock], ptr %73, i32 0, i32 %74
  %76 = call i32 @_raw_spin_trylock(ptr noundef %75) #17
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr %57, align 4
  %79 = getelementptr inbounds %struct.ext4_sb_info, ptr %78, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #17
  br i1 %77, label %85, label %80

80:                                               ; preds = %70
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 0, i32 -1, ptr elementtype(i32) %79) #17, !srcloc !34
  %82 = extractvalue { i32, i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %91

85:                                               ; preds = %70
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 8, i32 1, ptr elementtype(i32) %79) #17, !srcloc !34
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %90

90:                                               ; preds = %89, %85
  call void @_raw_spin_lock(ptr noundef %75) #17
  br label %91

91:                                               ; preds = %90, %84, %80
  %92 = getelementptr i8, ptr %60, i32 -8
  %93 = getelementptr i8, ptr %60, i32 -4
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %92, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %94, ptr %96, align 4
  store volatile ptr %95, ptr %94, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %92, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %93, align 4
  call fastcc void @ext4_mb_release_group_pa(ptr noundef nonnull %5, ptr noundef %61)
  %97 = load ptr, ptr %57, align 4
  %98 = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 41
  %99 = load ptr, ptr %98, align 16
  %100 = getelementptr [64 x %struct.bgl_lock], ptr %99, i32 0, i32 %74
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %101 = load i16, ptr %100, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %103 = load ptr, ptr %58, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %122, label %105

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.page, ptr %103, i32 0, i32 1
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110, !prof !11

110:                                              ; preds = %105
  %111 = add i32 %107, -1
  br label %114

112:                                              ; preds = %105
  %113 = ptrtoint ptr %103 to i32
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = inttoptr i32 %115 to ptr
  %117 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %117) #17, !srcloc !20
  %118 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %117, ptr %117, i32 1, ptr elementtype(i32) %117) #17, !srcloc !21
  %119 = extractvalue { i32, i32 } %118, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  call void @__put_page(ptr noundef %116) #17
  br label %122

122:                                              ; preds = %121, %114, %91
  %123 = load ptr, ptr %5, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %142, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.page, ptr %123, i32 0, i32 1
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130, !prof !11

130:                                              ; preds = %125
  %131 = add i32 %127, -1
  br label %134

132:                                              ; preds = %125
  %133 = ptrtoint ptr %123 to i32
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = inttoptr i32 %135 to ptr
  %137 = getelementptr inbounds %struct.page, ptr %136, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #17, !srcloc !20
  %138 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #17, !srcloc !21
  %139 = extractvalue { i32, i32 } %138, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  call void @__put_page(ptr noundef %136) #17
  br label %142

142:                                              ; preds = %141, %134, %122
  %143 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %60, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  store ptr %144, ptr %146, align 4
  store volatile ptr %145, ptr %144, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %143, align 4
  call void @call_rcu(ptr noundef %60, ptr noundef nonnull @ext4_mb_pa_callback) #17
  br label %147

147:                                              ; preds = %142, %68
  %148 = icmp eq ptr %62, %6
  br i1 %148, label %149, label %59

149:                                              ; preds = %147, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mballoc_alloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mballoc_prealloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_allocate_blocks(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ext4_fc_replay_check_excluded(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_free_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mballoc_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_try_merge_freed_extent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.ext4_free_data, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ext4_free_data, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ext4_free_data, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_free_data, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  store i32 %18, ptr %22, align 4
  %26 = load i32, ptr %19, align 4
  %27 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %27, align 4
  br label %37

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.ext4_free_data, ptr %2, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %23
  %34 = icmp eq i32 %33, %18
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = add i32 %32, %20
  store i32 %36, ptr %31, align 4
  br label %37

37:                                               ; preds = %35, %25
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %38) #17
  %39 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %43 = load i16, ptr %38, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !33
  %45 = getelementptr inbounds %struct.ext4_free_data, ptr %1, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %45, ptr noundef %3) #17
  %46 = load ptr, ptr @ext4_free_data_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef %1) #17
  br label %47

47:                                               ; preds = %37, %30, %10, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_discard_blocks(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_trim_all_free(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone }

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
!9 = !{i64 2153943844}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2153938146, i64 2153938626, i64 2153938183, i64 2153938239, i64 2153938273, i64 2153938297, i64 2153938338, i64 2153938359, i64 2153938387, i64 2153938421}
!13 = !{i64 2149351648}
!14 = !{i64 2149351865}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156707713, i64 2156708196, i64 2156707750, i64 2156707806, i64 2156707840, i64 2156707864, i64 2156707905, i64 2156707926, i64 2156707954, i64 2156707988}
!17 = !{i64 2156708771, i64 2156709254, i64 2156708808, i64 2156708864, i64 2156708898, i64 2156708922, i64 2156708963, i64 2156708984, i64 2156709012, i64 2156709046}
!18 = !{i64 2150365751}
!19 = !{i64 2148632405}
!20 = !{i64 1030340, i64 2148520311, i64 2148520337, i64 2148520384, i64 2148520406, i64 2148520434, i64 2148520454}
!21 = !{i64 2148534767, i64 2148534799, i64 2148534828, i64 2148534862, i64 2148534893, i64 2148534916}
!22 = !{i64 2148632608}
!23 = !{i64 1019954, i64 1019975}
!24 = !{i64 2149206826}
!25 = !{i64 1710250, i64 1710273, i64 1710293, i64 1710317, i64 1710333}
!26 = !{i64 2149194768}
!27 = !{i64 2149194843, i64 2149194870, i64 2149194917, i64 2149194939, i64 2149194967, i64 2149194987}
!28 = !{i64 2149244429}
!29 = !{i32 0, i32 33}
!30 = !{i64 2156818723}
!31 = !{i64 2156803612, i64 2156804095, i64 2156803649, i64 2156803705, i64 2156803739, i64 2156803763, i64 2156803804, i64 2156803825, i64 2156803853, i64 2156803887}
!32 = !{i64 2149198944}
!33 = !{i64 2149221947}
!34 = !{i64 1016909, i64 1016934, i64 1016956, i64 1016972, i64 1016984, i64 1017004, i64 1017028, i64 1017044, i64 1017056}
!35 = !{i64 2148531359}
!36 = !{i64 2156871868, i64 2156872351, i64 2156871905, i64 2156871961, i64 2156871995, i64 2156872019, i64 2156872060, i64 2156872081, i64 2156872109, i64 2156872143}
!37 = !{i64 2148545444, i64 2148545472, i64 2148545506, i64 2148545540, i64 2148545574, i64 2148545610, i64 2148545633}
!38 = !{i64 2155142322}
!39 = !{i64 2155142524}
!40 = !{i64 2157160052, i64 2157160535, i64 2157160089, i64 2157160145, i64 2157160179, i64 2157160203, i64 2157160244, i64 2157160265, i64 2157160293, i64 2157160327}
!41 = !{i64 2148534083, i64 2148534109, i64 2148534138, i64 2148534172, i64 2148534203, i64 2148534226}
!42 = !{i64 2157166828, i64 2157167311, i64 2157166865, i64 2157166921, i64 2157166955, i64 2157166979, i64 2157167020, i64 2157167041, i64 2157167069, i64 2157167103}
!43 = !{i64 2152765321}
!44 = !{i64 2156711158, i64 2156711641, i64 2156711195, i64 2156711251, i64 2156711285, i64 2156711309, i64 2156711350, i64 2156711371, i64 2156711399, i64 2156711433}
!45 = !{i64 2156712265, i64 2156712748, i64 2156712302, i64 2156712358, i64 2156712392, i64 2156712416, i64 2156712457, i64 2156712478, i64 2156712506, i64 2156712540}
!46 = !{i64 2157127416, i64 2157131960, i64 2157127453, i64 2157127509, i64 2157127543, i64 2157127567, i64 2157127608, i64 2157127629, i64 2157127657, i64 2157127691}
!47 = !{i64 2157132593, i64 2157133076, i64 2157132630, i64 2157132686, i64 2157132720, i64 2157132744, i64 2157132785, i64 2157132806, i64 2157132834, i64 2157132868}
!48 = !{i64 2155338663}
!49 = !{i64 2155338871}
!50 = !{i64 2155103431}
!51 = !{i64 2155103623}
!52 = !{i64 2148531726, i64 2148531752, i64 2148531781, i64 2148531815, i64 2148531846, i64 2148531869}
!53 = !{i64 2157106262, i64 2157106745, i64 2157106299, i64 2157106355, i64 2157106389, i64 2157106413, i64 2157106454, i64 2157106475, i64 2157106503, i64 2157106537}
!54 = !{i64 2157107289, i64 2157107772, i64 2157107326, i64 2157107382, i64 2157107416, i64 2157107440, i64 2157107481, i64 2157107502, i64 2157107530, i64 2157107564}
!55 = !{i64 2155180865}
!56 = !{i64 2155181019}
!57 = !{i64 936018, i64 936079}
!58 = !{i64 954718}
!59 = !{i64 939035}
!60 = !{i64 2157168366, i64 2157168849, i64 2157168403, i64 2157168459, i64 2157168493, i64 2157168517, i64 2157168558, i64 2157168579, i64 2157168607, i64 2157168641}
!61 = !{i64 2157169501, i64 2157169984, i64 2157169538, i64 2157169594, i64 2157169628, i64 2157169652, i64 2157169693, i64 2157169714, i64 2157169742, i64 2157169776}
!62 = !{i64 2149376889}
!63 = !{i64 2155304397}
!64 = !{i64 2155304549}
!65 = !{i64 2155320784}
!66 = !{i64 2155320942}
!67 = !{i64 2155197693}
!68 = !{i64 2155197863}
!69 = !{!"branch_weights", i32 2000, i32 2002}
!70 = !{i64 2151482981}
!71 = !{i64 2151482823}
!72 = !{i64 2151483125}
!73 = !{i64 2149677368}
!74 = !{i64 2157172854, i64 2157173337, i64 2157172891, i64 2157172947, i64 2157172981, i64 2157173005, i64 2157173046, i64 2157173067, i64 2157173095, i64 2157173129}
!75 = !{!"branch_weights", i32 2000, i32 6004}
!76 = !{i64 2156900032, i64 2156900515, i64 2156900069, i64 2156900125, i64 2156900159, i64 2156900183, i64 2156900224, i64 2156900245, i64 2156900273, i64 2156900307}
!77 = !{!"branch_weights", i32 4001, i32 1}
!78 = !{i64 2156945112, i64 2156945595, i64 2156945149, i64 2156945205, i64 2156945239, i64 2156945263, i64 2156945304, i64 2156945325, i64 2156945353, i64 2156945387}
!79 = !{i64 2156946179, i64 2156946662, i64 2156946216, i64 2156946272, i64 2156946306, i64 2156946330, i64 2156946371, i64 2156946392, i64 2156946420, i64 2156946454}
!80 = !{i64 2156948223, i64 2156948706, i64 2156948260, i64 2156948316, i64 2156948350, i64 2156948374, i64 2156948415, i64 2156948436, i64 2156948464, i64 2156948498}
!81 = !{i64 2156990689, i64 2156991172, i64 2156990726, i64 2156990782, i64 2156990816, i64 2156990840, i64 2156990881, i64 2156990902, i64 2156990930, i64 2156990964}
!82 = !{i64 2156991809, i64 2156992292, i64 2156991846, i64 2156991902, i64 2156991936, i64 2156991960, i64 2156992001, i64 2156992022, i64 2156992050, i64 2156992084}
!83 = !{i64 2156992965, i64 2156993448, i64 2156993002, i64 2156993058, i64 2156993092, i64 2156993116, i64 2156993157, i64 2156993178, i64 2156993206, i64 2156993240}
!84 = !{i64 2156786452, i64 2156786935, i64 2156786489, i64 2156786545, i64 2156786579, i64 2156786603, i64 2156786644, i64 2156786665, i64 2156786693, i64 2156786727}
!85 = !{i64 672720, i64 672737, i64 2148156807}
!86 = !{!"branch_weights", i32 2002, i32 2000}
!87 = !{i64 2148542958, i64 2148542986, i64 2148543020, i64 2148543054, i64 2148543088, i64 2148543124, i64 2148543147}
!88 = !{!"branch_weights", i32 1073205, i32 2146410443}
!89 = !{i64 2156783219, i64 2156783702, i64 2156783256, i64 2156783312, i64 2156783346, i64 2156783370, i64 2156783411, i64 2156783432, i64 2156783460, i64 2156783494}
!90 = !{i64 2148629572}
!91 = !{i64 2148532410, i64 2148532442, i64 2148532471, i64 2148532505, i64 2148532536, i64 2148532559}
!92 = !{i64 2148629775}
!93 = !{i64 2156887035, i64 2156887518, i64 2156887072, i64 2156887128, i64 2156887162, i64 2156887186, i64 2156887227, i64 2156887248, i64 2156887276, i64 2156887310}
!94 = !{i64 2156888070, i64 2156888553, i64 2156888107, i64 2156888163, i64 2156888197, i64 2156888221, i64 2156888262, i64 2156888283, i64 2156888311, i64 2156888345}
!95 = !{i64 2155159783}
!96 = !{i64 2155159975}
!97 = !{i64 2157355427, i64 2157355910, i64 2157355464, i64 2157355520, i64 2157355554, i64 2157355578, i64 2157355619, i64 2157355640, i64 2157355668, i64 2157355702}
!98 = !{i64 2155214782}
!99 = !{i64 2155214978}
!100 = !{i64 2157357030, i64 2157357513, i64 2157357067, i64 2157357123, i64 2157357157, i64 2157357181, i64 2157357222, i64 2157357243, i64 2157357271, i64 2157357305}
!101 = !{i64 2155356744}
!102 = !{i64 2155356946}
!103 = !{i64 2155051778}
!104 = !{i64 2155051956}
!105 = !{i64 2157344971, i64 2157345454, i64 2157345008, i64 2157345064, i64 2157345098, i64 2157345122, i64 2157345163, i64 2157345184, i64 2157345212, i64 2157345246}
!106 = !{i64 2157346040, i64 2157346523, i64 2157346077, i64 2157346133, i64 2157346167, i64 2157346191, i64 2157346232, i64 2157346253, i64 2157346281, i64 2157346315}
!107 = !{i64 2157347107, i64 2157347590, i64 2157347144, i64 2157347200, i64 2157347234, i64 2157347258, i64 2157347299, i64 2157347320, i64 2157347348, i64 2157347382}
!108 = !{i64 2156716267, i64 2156716750, i64 2156716304, i64 2156716360, i64 2156716394, i64 2156716418, i64 2156716459, i64 2156716480, i64 2156716508, i64 2156716542}
!109 = !{i64 2156717682, i64 2156718165, i64 2156717719, i64 2156717775, i64 2156717809, i64 2156717833, i64 2156717874, i64 2156717895, i64 2156717923, i64 2156717957}
!110 = !{i64 2156683861, i64 2156684343, i64 2156683898, i64 2156683954, i64 2156683988, i64 2156684012, i64 2156684053, i64 2156684074, i64 2156684102, i64 2156684136}
!111 = !{i64 2155871639}
!112 = !{i64 2155871829}
!113 = !{i64 2156704239, i64 2156704722, i64 2156704276, i64 2156704332, i64 2156704366, i64 2156704390, i64 2156704431, i64 2156704452, i64 2156704480, i64 2156704514}
!114 = !{i64 2155466034}
!115 = !{i64 2155466214}
!116 = !{i64 2156705946, i64 2156706429, i64 2156705983, i64 2156706039, i64 2156706073, i64 2156706097, i64 2156706138, i64 2156706159, i64 2156706187, i64 2156706221}
!117 = !{i64 2155449178}
!118 = !{i64 2155449346}
!119 = !{i64 2150366772}
!120 = !{i64 2156686862, i64 2156687344, i64 2156686899, i64 2156686955, i64 2156686989, i64 2156687013, i64 2156687054, i64 2156687075, i64 2156687103, i64 2156687137}
!121 = !{i64 2157101837, i64 2157102320, i64 2157101874, i64 2157101930, i64 2157101964, i64 2157101988, i64 2157102029, i64 2157102050, i64 2157102078, i64 2157102112}
!122 = !{i64 2149206021}
!123 = !{i64 1709235}
!124 = !{i64 2149243990}
!125 = !{i64 2155854239}
!126 = !{i64 2155854425}
!127 = !{i64 2157372941, i64 2157373424, i64 2157372978, i64 2157373034, i64 2157373068, i64 2157373092, i64 2157373133, i64 2157373154, i64 2157373182, i64 2157373216}
!128 = !{i64 2156736108, i64 2156736591, i64 2156736145, i64 2156736201, i64 2156736235, i64 2156736259, i64 2156736300, i64 2156736321, i64 2156736349, i64 2156736383}
!129 = !{i64 2156737155, i64 2156737638, i64 2156737192, i64 2156737248, i64 2156737282, i64 2156737306, i64 2156737347, i64 2156737368, i64 2156737396, i64 2156737430}
!130 = !{i64 2156738610, i64 2156739093, i64 2156738647, i64 2156738703, i64 2156738737, i64 2156738761, i64 2156738802, i64 2156738823, i64 2156738851, i64 2156738885}
!131 = !{i64 2156713494, i64 2156713977, i64 2156713531, i64 2156713587, i64 2156713621, i64 2156713645, i64 2156713686, i64 2156713707, i64 2156713735, i64 2156713769}
!132 = !{i64 2156714557, i64 2156715040, i64 2156714594, i64 2156714650, i64 2156714684, i64 2156714708, i64 2156714749, i64 2156714770, i64 2156714798, i64 2156714832}
!133 = !{i64 2156747033, i64 2156747516, i64 2156747070, i64 2156747126, i64 2156747160, i64 2156747184, i64 2156747225, i64 2156747246, i64 2156747274, i64 2156747308}
!134 = !{i64 2156748036, i64 2156748519, i64 2156748073, i64 2156748129, i64 2156748163, i64 2156748187, i64 2156748228, i64 2156748249, i64 2156748277, i64 2156748311}
!135 = !{i64 2156749041, i64 2156749524, i64 2156749078, i64 2156749134, i64 2156749168, i64 2156749192, i64 2156749233, i64 2156749254, i64 2156749282, i64 2156749316}
!136 = !{i64 2156998107, i64 2156998590, i64 2156998144, i64 2156998200, i64 2156998234, i64 2156998258, i64 2156998299, i64 2156998320, i64 2156998348, i64 2156998382}
!137 = !{i64 2156999278, i64 2156999761, i64 2156999315, i64 2156999371, i64 2156999405, i64 2156999429, i64 2156999470, i64 2156999491, i64 2156999519, i64 2156999553}
!138 = !{i64 2157000301, i64 2157000784, i64 2157000338, i64 2157000394, i64 2157000428, i64 2157000452, i64 2157000493, i64 2157000514, i64 2157000542, i64 2157000576}
!139 = !{i64 2148381123, i64 2148381403, i64 2148381737, i64 2148382071}
!140 = !{i64 2156764591, i64 2156765074, i64 2156764628, i64 2156764684, i64 2156764718, i64 2156764742, i64 2156764783, i64 2156764804, i64 2156764832, i64 2156764866}
!141 = !{i64 2156765650, i64 2156766133, i64 2156765687, i64 2156765743, i64 2156765777, i64 2156765801, i64 2156765842, i64 2156765863, i64 2156765891, i64 2156765925}
!142 = !{i64 2156766709, i64 2156767192, i64 2156766746, i64 2156766802, i64 2156766836, i64 2156766860, i64 2156766901, i64 2156766922, i64 2156766950, i64 2156766984}
!143 = !{i64 2156767733, i64 2156768216, i64 2156767770, i64 2156767826, i64 2156767860, i64 2156767884, i64 2156767925, i64 2156767946, i64 2156767974, i64 2156768008}
!144 = !{i64 2156768792, i64 2156769275, i64 2156768829, i64 2156768885, i64 2156768919, i64 2156768943, i64 2156768984, i64 2156769005, i64 2156769033, i64 2156769067}
!145 = !{i64 2156769851, i64 2156770334, i64 2156769888, i64 2156769944, i64 2156769978, i64 2156770002, i64 2156770043, i64 2156770064, i64 2156770092, i64 2156770126}
!146 = !{i64 2156782034, i64 2156782517, i64 2156782071, i64 2156782127, i64 2156782161, i64 2156782185, i64 2156782226, i64 2156782247, i64 2156782275, i64 2156782309}
!147 = !{i64 2156784178, i64 2156784661, i64 2156784215, i64 2156784271, i64 2156784305, i64 2156784329, i64 2156784370, i64 2156784391, i64 2156784419, i64 2156784453}
!148 = !{i64 2156770915, i64 2156771398, i64 2156770952, i64 2156771008, i64 2156771042, i64 2156771066, i64 2156771107, i64 2156771128, i64 2156771156, i64 2156771190}
!149 = !{i64 2156771988, i64 2156772471, i64 2156772025, i64 2156772081, i64 2156772115, i64 2156772139, i64 2156772180, i64 2156772201, i64 2156772229, i64 2156772263}
!150 = !{i64 2156773293, i64 2156773776, i64 2156773330, i64 2156773386, i64 2156773420, i64 2156773444, i64 2156773485, i64 2156773506, i64 2156773534, i64 2156773568}
!151 = !{i64 2156775934, i64 2156776417, i64 2156775971, i64 2156776027, i64 2156776061, i64 2156776085, i64 2156776126, i64 2156776147, i64 2156776175, i64 2156776209}
!152 = !{i64 2156754962, i64 2156755445, i64 2156754999, i64 2156755055, i64 2156755089, i64 2156755113, i64 2156755154, i64 2156755175, i64 2156755203, i64 2156755237}
!153 = !{i64 2156756116, i64 2156756599, i64 2156756153, i64 2156756209, i64 2156756243, i64 2156756267, i64 2156756308, i64 2156756329, i64 2156756357, i64 2156756391}
!154 = !{i64 2156757143, i64 2156757626, i64 2156757180, i64 2156757236, i64 2156757270, i64 2156757294, i64 2156757335, i64 2156757356, i64 2156757384, i64 2156757418}
!155 = !{i64 2156758255, i64 2156758738, i64 2156758292, i64 2156758348, i64 2156758382, i64 2156758406, i64 2156758447, i64 2156758468, i64 2156758496, i64 2156758530}
!156 = !{i64 2156727059, i64 2156727542, i64 2156727096, i64 2156727152, i64 2156727186, i64 2156727210, i64 2156727251, i64 2156727272, i64 2156727300, i64 2156727334}
!157 = !{i64 2156728094, i64 2156728577, i64 2156728131, i64 2156728187, i64 2156728221, i64 2156728245, i64 2156728286, i64 2156728307, i64 2156728335, i64 2156728369}
!158 = !{i64 2156733196, i64 2156733679, i64 2156733233, i64 2156733289, i64 2156733323, i64 2156733347, i64 2156733388, i64 2156733409, i64 2156733437, i64 2156733471}
!159 = !{i64 2156734209, i64 2156734692, i64 2156734246, i64 2156734302, i64 2156734336, i64 2156734360, i64 2156734401, i64 2156734422, i64 2156734450, i64 2156734484}
!160 = !{i64 2156750104, i64 2156750587, i64 2156750141, i64 2156750197, i64 2156750231, i64 2156750255, i64 2156750296, i64 2156750317, i64 2156750345, i64 2156750379}
!161 = !{i64 2156751131, i64 2156751614, i64 2156751168, i64 2156751224, i64 2156751258, i64 2156751282, i64 2156751323, i64 2156751344, i64 2156751372, i64 2156751406}
!162 = !{i64 2157121003, i64 2157121486, i64 2157121040, i64 2157121096, i64 2157121130, i64 2157121154, i64 2157121195, i64 2157121216, i64 2157121244, i64 2157121278}
!163 = !{i64 2157122030, i64 2157122513, i64 2157122067, i64 2157122123, i64 2157122157, i64 2157122181, i64 2157122222, i64 2157122243, i64 2157122271, i64 2157122305}
!164 = !{i64 2157123193, i64 2157123676, i64 2157123230, i64 2157123286, i64 2157123320, i64 2157123344, i64 2157123385, i64 2157123406, i64 2157123434, i64 2157123468}
!165 = !{i64 2157124242, i64 2157124725, i64 2157124279, i64 2157124335, i64 2157124369, i64 2157124393, i64 2157124434, i64 2157124455, i64 2157124483, i64 2157124517}
!166 = !{i64 2155085966}
!167 = !{i64 2155086130}
!168 = !{i64 2157126331, i64 2157126814, i64 2157126368, i64 2157126424, i64 2157126458, i64 2157126482, i64 2157126523, i64 2157126544, i64 2157126572, i64 2157126606}
!169 = !{i64 2157108397, i64 2157108880, i64 2157108434, i64 2157108490, i64 2157108524, i64 2157108548, i64 2157108589, i64 2157108610, i64 2157108638, i64 2157108672}
!170 = !{i64 2157109424, i64 2157109907, i64 2157109461, i64 2157109517, i64 2157109551, i64 2157109575, i64 2157109616, i64 2157109637, i64 2157109665, i64 2157109699}
!171 = !{i64 2157110587, i64 2157111070, i64 2157110624, i64 2157110680, i64 2157110714, i64 2157110738, i64 2157110779, i64 2157110800, i64 2157110828, i64 2157110862}
!172 = !{i64 2157111636, i64 2157112119, i64 2157111673, i64 2157111729, i64 2157111763, i64 2157111787, i64 2157111828, i64 2157111849, i64 2157111877, i64 2157111911}
!173 = !{i64 2157112719, i64 2157113202, i64 2157112756, i64 2157112812, i64 2157112846, i64 2157112870, i64 2157112911, i64 2157112932, i64 2157112960, i64 2157112994}
!174 = !{i64 2157113786, i64 2157114269, i64 2157113823, i64 2157113879, i64 2157113913, i64 2157113937, i64 2157113978, i64 2157113999, i64 2157114027, i64 2157114061}
!175 = !{i64 2157116374, i64 2157116857, i64 2157116411, i64 2157116467, i64 2157116501, i64 2157116525, i64 2157116566, i64 2157116587, i64 2157116615, i64 2157116649}
!176 = !{i64 2157117441, i64 2157117924, i64 2157117478, i64 2157117534, i64 2157117568, i64 2157117592, i64 2157117633, i64 2157117654, i64 2157117682, i64 2157117716}
!177 = !{i64 2155068883}
!178 = !{i64 2155069047}
!179 = !{i64 2155124833}
!180 = !{i64 2155125005}
!181 = !{i64 2157134942, i64 2157135425, i64 2157134979, i64 2157135035, i64 2157135069, i64 2157135093, i64 2157135134, i64 2157135155, i64 2157135183, i64 2157135217}
!182 = !{i64 2157136013, i64 2157136496, i64 2157136050, i64 2157136106, i64 2157136140, i64 2157136164, i64 2157136205, i64 2157136226, i64 2157136254, i64 2157136288}
!183 = !{i64 2157219593, i64 2157220076, i64 2157219630, i64 2157219686, i64 2157219720, i64 2157219744, i64 2157219785, i64 2157219806, i64 2157219834, i64 2157219868}
