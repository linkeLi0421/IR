; ModuleID = '/llk/IR/fs/ext4/inode.c_pt.bc'
source_filename = "../fs/ext4/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.76, [15 x i32], i32, i32, i32, i32, %union.anon.80, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i32 }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i16, i16, i16, i16, i32 }
%struct.ext4_inode_info = type { [15 x i32], i32, i64, i32, i32, i32, i32, %struct.rw_semaphore, %union.anon.84, %struct.list_head, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, i64, %struct.rw_semaphore, %struct.inode, ptr, %struct.spinlock, %struct.timespec64, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.ext4_es_tree, %struct.rwlock_t, %struct.list_head, i32, i32, i32, i32, i32, %struct.ext4_pending_tree, i16, i16, i16, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, i32, i32, i32, %struct.kprojid_t }
%union.anon.84 = type { %struct.list_head }
%struct.ext4_es_tree = type { %struct.rb_root, ptr }
%struct.ext4_pending_tree = type { %struct.rb_root }
%struct.kprojid_t = type { i32 }
%struct.anon.87 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.44 }
%struct.llist_node = type { ptr }
%union.anon.44 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.jbd2_journal_handle = type { %union.anon.86, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.86 = type { ptr }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.extent_status = type { %struct.rb_node, i32, i32, i64 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.39, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.39 = type { %struct.atomic_t }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.vm_fault = type { %struct.anon.16, i32, ptr, ptr, %union.anon.17, ptr, ptr, ptr, ptr, ptr }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%union.anon.17 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ext4_io_submit = type { ptr, ptr, ptr, i64 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.mpage_da_data = type { ptr, ptr, i32, i32, i32, %struct.ext4_map_blocks, %struct.ext4_io_submit, i8 }
%struct.ext4_io_end_vec = type { %struct.list_head, i64, i32 }
%struct.ext4_io_end = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.list_head }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }

@ext4_evict_inode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"fs/ext4/inode.c\00", align 1
@__func__.ext4_evict_inode = private unnamed_addr constant [17 x i8] c"ext4_evict_inode\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"couldn't mark inode dirty (err %d)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"couldn't truncate inode %lu (err %d)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"xattr delete (err %d)\00", align 1
@__func__.ext4_da_update_reserve_space = private unnamed_addr constant [29 x i8] c"ext4_da_update_reserve_space\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"%s: ino %lu, used %d with only %d reserved data blocks\00", align 1
@__func__.ext4_map_blocks = private unnamed_addr constant [16 x i8] c"ext4_map_blocks\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"ES len assertion failed for inode %lu: retval %d != map->m_len %d\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", align 1
@__func__.ext4_getblk = private unnamed_addr constant [12 x i8] c"ext4_getblk\00", align 1
@.str.7 = private unnamed_addr constant [88 x i8] c"(EXT4_SB(inode->i_sb)->s_mount_state & EXT4_FC_REPLAY) || handle != NULL || create == 0\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"create != 0\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"(EXT4_SB(inode->i_sb)->s_mount_state & EXT4_FC_REPLAY) || (handle != NULL)\00", align 1
@__func__.do_journal_get_write_access = private unnamed_addr constant [28 x i8] c"do_journal_get_write_access\00", align 1
@__func__.ext4_da_release_space = private unnamed_addr constant [22 x i8] c"ext4_da_release_space\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"ext4_da_release_space: ino %lu, to_free %d with only %d reserved data blocks\00", align 1
@ext4_iomap_ops = dso_local constant %struct.iomap_ops { ptr @ext4_iomap_begin, ptr @ext4_iomap_end }, align 4
@ext4_iomap_overwrite_ops = dso_local local_unnamed_addr constant %struct.iomap_ops { ptr @ext4_iomap_overwrite_begin, ptr @ext4_iomap_end }, align 4
@ext4_iomap_report_ops = dso_local constant %struct.iomap_ops { ptr @ext4_iomap_begin_report, ptr null }, align 4
@ext4_journalled_aops = internal constant %struct.address_space_operations { ptr @ext4_writepage, ptr @ext4_readpage, ptr @ext4_writepages, ptr @ext4_journalled_set_page_dirty, ptr null, ptr @ext4_readahead, ptr @ext4_write_begin, ptr @ext4_journalled_write_end, ptr @ext4_bmap, ptr @ext4_journalled_invalidatepage, ptr @ext4_releasepage, ptr null, ptr @noop_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr @ext4_iomap_swap_activate, ptr null }, align 4
@ext4_da_aops = internal constant %struct.address_space_operations { ptr @ext4_writepage, ptr @ext4_readpage, ptr @ext4_writepages, ptr @ext4_set_page_dirty, ptr null, ptr @ext4_readahead, ptr @ext4_da_write_begin, ptr @ext4_da_write_end, ptr @ext4_bmap, ptr @ext4_invalidatepage, ptr @ext4_releasepage, ptr null, ptr @noop_direct_IO, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr @ext4_iomap_swap_activate, ptr null }, align 4
@ext4_aops = internal constant %struct.address_space_operations { ptr @ext4_writepage, ptr @ext4_readpage, ptr @ext4_writepages, ptr @ext4_set_page_dirty, ptr null, ptr @ext4_readahead, ptr @ext4_write_begin, ptr @ext4_write_end, ptr @ext4_bmap, ptr @ext4_invalidatepage, ptr @ext4_releasepage, ptr null, ptr @noop_direct_IO, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr @ext4_iomap_swap_activate, ptr null }, align 4
@__func__.ext4_update_disksize_before_punch = private unnamed_addr constant [34 x i8] c"ext4_update_disksize_before_punch\00", align 1
@ext4_break_layouts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_punch_hole = private unnamed_addr constant [16 x i8] c"ext4_punch_hole\00", align 1
@__func__.ext4_truncate = private unnamed_addr constant [14 x i8] c"ext4_truncate\00", align 1
@__func__.ext4_get_inode_loc = private unnamed_addr constant [19 x i8] c"ext4_get_inode_loc\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"unable to read itable block\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"inode #%lu: comm %s: iget: illegal inode #\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"iget: root inode unallocated\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"iget: bad extra_isize %u (inode size %u)\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"iget: checksum invalid\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"iget: bad i_size value: %lld\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"iget: Dir with htree data on filesystem without dir_index feature.\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"iget: bad extended attribute block %llu\00", align 1
@__func__.__ext4_iget = private unnamed_addr constant [12 x i8] c"__ext4_iget\00", align 1
@ext4_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_file_operations = external dso_local constant %struct.file_operations, align 4
@ext4_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.19 = private unnamed_addr constant [56 x i8] c"iget: immutable or append flags not allowed on symlinks\00", align 1
@ext4_encrypted_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_fast_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ext4_special_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str.20 = private unnamed_addr constant [24 x i8] c"iget: bogus i_mode (%o)\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"casefold flag without casefold feature\00", align 1
@ext4_write_inode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_write_inode = private unnamed_addr constant [17 x i8] c"ext4_write_inode\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"IO error syncing inode\00", align 1
@__func__.ext4_setattr = private unnamed_addr constant [13 x i8] c"ext4_setattr\00", align 1
@__func__.ext4_reserve_inode_write = private unnamed_addr constant [25 x i8] c"ext4_reserve_inode_write\00", align 1
@__func__.ext4_expand_extra_isize = private unnamed_addr constant [24 x i8] c"ext4_expand_extra_isize\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"mark_inode_dirty error\00", align 1
@__func__.ext4_dirty_inode = private unnamed_addr constant [17 x i8] c"ext4_dirty_inode\00", align 1
@__func__.ext4_change_inode_journal_flag = private unnamed_addr constant [31 x i8] c"ext4_change_inode_journal_flag\00", align 1
@__func__.ext4_page_mkwrite = private unnamed_addr constant [18 x i8] c"ext4_page_mkwrite\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__tracepoint_ext4_evict_inode = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_ext4_begin_ordered_truncate = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_da_update_reserve_space = external dso_local global %struct.tracepoint, align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [53 x i8] c"lblock %lu mapped to illegal pblock %llu (length %d)\00", align 1
@__tracepoint_ext4_da_release_space = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_da_map_blocks = private unnamed_addr constant [19 x i8] c"ext4_da_map_blocks\00", align 1
@__tracepoint_ext4_da_reserve_space = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_alloc_da_blocks = external dso_local global %struct.tracepoint, align 4
@ext4_iomap_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_iomap_alloc = private unnamed_addr constant [17 x i8] c"ext4_iomap_alloc\00", align 1
@ext4_iomap_overwrite_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ext4_writepage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ext4_writepage = external dso_local global %struct.tracepoint, align 4
@__func__.__ext4_journalled_writepage = private unnamed_addr constant [28 x i8] c"__ext4_journalled_writepage\00", align 1
@__tracepoint_ext4_readpage = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_writepages = private unnamed_addr constant [16 x i8] c"ext4_writepages\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\012\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"%s: jbd2_start: %ld pages, ino %lu; err %d\00", align 1
@__tracepoint_ext4_writepages = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_da_write_pages = external dso_local global %struct.tracepoint, align 4
@.str.29 = private unnamed_addr constant [102 x i8] c"Delayed block allocation failed for inode %lu at logical offset %llu with max blocks %u with error %d\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"This should not happen!! Data will be lost\0A\00", align 1
@__func__.mpage_map_and_submit_extent = private unnamed_addr constant [28 x i8] c"mpage_map_and_submit_extent\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Failed to mark inode %lu dirty\00", align 1
@__tracepoint_ext4_da_write_pages_extent = external dso_local global %struct.tracepoint, align 4
@.str.32 = private unnamed_addr constant [29 x i8] c"Total free blocks count %lld\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Free/Dirty block details\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"free_blocks=%lld\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"dirty_blocks=%lld\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Block reservation details\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"i_reserved_data_blocks=%u\00", align 1
@__tracepoint_ext4_writepages_result = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_write_begin = private unnamed_addr constant [17 x i8] c"ext4_write_begin\00", align 1
@__tracepoint_ext4_write_begin = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_journalled_write_end = private unnamed_addr constant [26 x i8] c"ext4_journalled_write_end\00", align 1
@__tracepoint_ext4_journalled_write_end = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_journalled_invalidatepage = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_releasepage = external dso_local global %struct.tracepoint, align 4
@ext4_set_page_dirty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ext4_set_page_dirty.__already_done.38 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ext4_da_write_begin = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_write_end = private unnamed_addr constant [15 x i8] c"ext4_write_end\00", align 1
@__tracepoint_ext4_write_end = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_da_write_end = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_invalidatepage = external dso_local global %struct.tracepoint, align 4
@__func__.__ext4_block_zero_page_range = private unnamed_addr constant [29 x i8] c"__ext4_block_zero_page_range\00", align 1
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ext4_punch_hole = external dso_local global %struct.tracepoint, align 4
@jbd2_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_ext4_truncate_enter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_truncate_exit = external dso_local global %struct.tracepoint, align 4
@fs_overflowuid = external dso_local local_unnamed_addr global i32, align 4
@fs_overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_ext4_load_inode = external dso_local global %struct.tracepoint, align 4
@__func__.__ext4_get_inode_loc_noinmem = private unnamed_addr constant [29 x i8] c"__ext4_get_inode_loc_noinmem\00", align 1
@__func__.ext4_do_update_inode = private unnamed_addr constant [21 x i8] c"ext4_do_update_inode\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"corrupted inode contents\00", align 1
@__tracepoint_ext4_other_inode_update_time = external dso_local global %struct.tracepoint, align 4
@__func__.__ext4_expand_extra_isize = private unnamed_addr constant [26 x i8] c"__ext4_expand_extra_isize\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"bad extra_isize %u (inode size %u)\00", align 1
@__tracepoint_ext4_mark_inode_dirty = external dso_local global %struct.tracepoint, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__func__.write_end_fn = private unnamed_addr constant [13 x i8] c"write_end_fn\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_inode_csum_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 21
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 30
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 119
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  %22 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %36, !prof !9

25:                                               ; preds = %18
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3289, i32 noundef 9, ptr noundef null) #16
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 30
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 119
  %35 = load ptr, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %18
  %37 = phi ptr [ %35, %33 ], [ %20, %18 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @ext4_inode_csum(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17, i32 0, i32 4
  store i16 %41, ptr %42, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 29
  %47 = load i32, ptr %46, align 4
  %48 = icmp sgt i32 %47, 128
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.ext4_inode_info, ptr %2, i32 0, i32 33
  %51 = load i16, ptr %50, align 4
  %52 = icmp ugt i16 %51, 3
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = lshr i32 %40, 16
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 19
  store i16 %55, ptr %56, align 2
  br label %57

57:                                               ; preds = %53, %49, %39, %36, %25, %13, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_metadata_csum(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 119
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %25, !prof !9

17:                                               ; preds = %10
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3289, i32 noundef 9, ptr noundef null) #16
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_super_block, ptr %20, i32 0, i32 30
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17, %10
  %26 = phi ptr [ %18, %17 ], [ %3, %10 ]
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 119
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %25, %17, %1
  %32 = phi i32 [ 0, %17 ], [ %30, %25 ], [ 0, %1 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_inode_csum(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.anon.87, align 8
  %5 = alloca %struct.anon.87, align 8
  %6 = alloca %struct.anon.87, align 8
  %7 = alloca %struct.anon.87, align 8
  %8 = alloca %struct.anon.87, align 8
  %9 = alloca %struct.anon.87, align 8
  %10 = alloca i16, align 2
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #16
  store i16 0, ptr %10, align 2
  %15 = getelementptr inbounds %struct.ext4_inode_info, ptr %2, i32 0, i32 43
  %16 = load i32, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false) #16, !annotation !10
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 119
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %18, align 64
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %22, label %21, !prof !11

21:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

22:                                               ; preds = %3
  store ptr %18, ptr %9, align 8
  %23 = getelementptr inbounds %struct.anon.87, ptr %9, i32 0, i32 1
  store i32 %16, ptr %23, align 8
  %24 = call i32 @crypto_shash_update(ptr noundef nonnull %9, ptr noundef %1, i32 noundef 124) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !11

26:                                               ; preds = %22
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #16, !srcloc !13
  unreachable

27:                                               ; preds = %22
  %28 = load i32, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #16, !annotation !10
  %29 = load ptr, ptr %17, align 8
  %30 = load i32, ptr %29, align 64
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %27
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

33:                                               ; preds = %27
  store ptr %29, ptr %8, align 8
  %34 = getelementptr inbounds %struct.anon.87, ptr %8, i32 0, i32 1
  store i32 %28, ptr %34, align 8
  %35 = call i32 @crypto_shash_update(ptr noundef nonnull %8, ptr noundef nonnull %10, i32 noundef 2) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !11

37:                                               ; preds = %33
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #16, !srcloc !13
  unreachable

38:                                               ; preds = %33
  %39 = load i32, ptr %34, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #16, !annotation !10
  %40 = load ptr, ptr %17, align 8
  %41 = load i32, ptr %40, align 64
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %38
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %1, i32 126
  store ptr %40, ptr %7, align 8
  %46 = getelementptr inbounds %struct.anon.87, ptr %7, i32 0, i32 1
  store i32 %39, ptr %46, align 8
  %47 = call i32 @crypto_shash_update(ptr noundef nonnull %7, ptr noundef %45, i32 noundef 2) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !11

49:                                               ; preds = %44
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #16, !srcloc !13
  unreachable

50:                                               ; preds = %44
  %51 = load i32, ptr %46, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  %52 = load ptr, ptr %11, align 4
  %53 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 27
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ext4_sb_info, ptr %54, i32 0, i32 29
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 128
  br i1 %57, label %58, label %107

58:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #16, !annotation !10
  %59 = load ptr, ptr %17, align 8
  %60 = load i32, ptr %59, align 64
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %63, label %62, !prof !11

62:                                               ; preds = %58
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %1, i32 128
  store ptr %59, ptr %6, align 8
  %65 = getelementptr inbounds %struct.anon.87, ptr %6, i32 0, i32 1
  store i32 %51, ptr %65, align 8
  %66 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %64, i32 noundef 2) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !11

68:                                               ; preds = %63
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #16, !srcloc !13
  unreachable

69:                                               ; preds = %63
  %70 = load i32, ptr %65, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %71 = getelementptr inbounds %struct.ext4_inode_info, ptr %2, i32 0, i32 33
  %72 = load i16, ptr %71, align 4
  %73 = icmp ugt i16 %72, 3
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #16, !annotation !10
  %75 = load ptr, ptr %17, align 8
  %76 = load i32, ptr %75, align 64
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %79, label %78, !prof !11

78:                                               ; preds = %74
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

79:                                               ; preds = %74
  store ptr %75, ptr %5, align 8
  %80 = getelementptr inbounds %struct.anon.87, ptr %5, i32 0, i32 1
  store i32 %70, ptr %80, align 8
  %81 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef nonnull %10, i32 noundef 2) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83, !prof !11

83:                                               ; preds = %79
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #16, !srcloc !13
  unreachable

84:                                               ; preds = %79
  %85 = load i32, ptr %80, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %86

86:                                               ; preds = %84, %69
  %87 = phi i32 [ %85, %84 ], [ %70, %69 ]
  %88 = phi i32 [ 132, %84 ], [ 130, %69 ]
  %89 = load ptr, ptr %11, align 4
  %90 = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 27
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ext4_sb_info, ptr %91, i32 0, i32 29
  %93 = load i32, ptr %92, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #16, !annotation !10
  %94 = load ptr, ptr %17, align 8
  %95 = load i32, ptr %94, align 64
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %98, label %97, !prof !11

97:                                               ; preds = %86
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

98:                                               ; preds = %86
  %99 = sub i32 %93, %88
  %100 = getelementptr i8, ptr %1, i32 %88
  store ptr %94, ptr %4, align 8
  %101 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 1
  store i32 %87, ptr %101, align 8
  %102 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %100, i32 noundef %99) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104, !prof !11

104:                                              ; preds = %98
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #16, !srcloc !13
  unreachable

105:                                              ; preds = %98
  %106 = load i32, ptr %101, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %107

107:                                              ; preds = %105, %50
  %108 = phi i32 [ %106, %105 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #16
  ret i32 %108
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ext4_inode_is_fast_symlink(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr i8, ptr %0, i32 -124
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -144
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 16
  %15 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 12
  %18 = load i32, ptr %17, align 16
  %19 = shl i32 %14, %18
  %20 = lshr i32 %19, 9
  br label %21

21:                                               ; preds = %10, %6
  %22 = phi i32 [ %20, %10 ], [ 0, %6 ]
  %23 = load volatile i32, ptr %2, align 4
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 478
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26, %21
  %31 = load i16, ptr %0, align 8
  %32 = and i16 %31, -4096
  %33 = icmp eq i16 %32, -24576
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %36 = load i64, ptr %35, align 8
  %37 = zext i32 %22 to i64
  %38 = icmp eq i64 %36, %37
  br label %49

39:                                               ; preds = %1
  %40 = load i16, ptr %0, align 8
  %41 = and i16 %40, -4096
  %42 = icmp eq i16 %41, -24576
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %45 = load i64, ptr %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = icmp slt i64 %45, 60
  %48 = and i1 %46, %47
  br label %49

49:                                               ; preds = %43, %39, %34, %30, %26
  %50 = phi i1 [ false, %26 ], [ false, %30 ], [ %38, %34 ], [ false, %39 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_evict_inode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_evict_inode, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %17 = tail call i32 @__traceiter_ext4_evict_inode(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %0, align 8
  %32 = and i16 %31, -4096
  switch i16 %32, label %49 [
    i16 -24576, label %33
    i16 -32768, label %33
  ]

33:                                               ; preds = %30, %30
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 7
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %42, i32 0, i32 47
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %0, i32 524
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @jbd2_complete_transaction(ptr noundef %44, i32 noundef %46) #16
  %48 = tail call i32 @filemap_write_and_wait_range(ptr noundef %38, i64 noundef 0, i64 noundef 9223372036854775807) #16
  br label %49

49:                                               ; preds = %37, %33, %30, %26, %22
  %50 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %50) #16
  br label %335

51:                                               ; preds = %18
  %52 = tail call zeroext i1 @is_bad_inode(ptr noundef %0) #16
  br i1 %52, label %335, label %53

53:                                               ; preds = %51
  %54 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %53
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_begin_ordered_truncate, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = tail call ptr @llvm.thread.pointer() #16
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %72 = tail call i32 @__traceiter_ext4_begin_ordered_truncate(ptr noundef null, ptr noundef %0, i64 noundef 0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %73

73:                                               ; preds = %71, %60, %57
  %74 = getelementptr i8, ptr %0, i32 392
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 27
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.ext4_sb_info, ptr %81, i32 0, i32 47
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @jbd2_journal_begin_ordered_truncate(ptr noundef %83, ptr noundef nonnull %75, i64 noundef 0) #16
  br label %85

85:                                               ; preds = %77, %73, %53
  %86 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %86) #16
  %87 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28
  %88 = load volatile ptr, ptr %87, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %87
  br i1 %93, label %103, label %94

94:                                               ; preds = %90, %85
  %95 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  %98 = load i1, ptr @ext4_evict_inode.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !9

101:                                              ; preds = %94
  store i1 true, ptr @ext4_evict_inode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #16
  br label %102

102:                                              ; preds = %101, %94
  tail call void @inode_io_list_del(ptr noundef %0) #16
  br label %103

103:                                              ; preds = %102, %90
  %104 = tail call ptr @llvm.thread.pointer() #16
  %105 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 113
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr %struct.super_block, ptr %110, i32 0, i32 26, i32 2, i32 2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %112 = load volatile i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126, !prof !11

114:                                              ; preds = %108
  %115 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %116 = getelementptr %struct.super_block, ptr %110, i32 0, i32 26, i32 2, i32 2, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = ptrtoint ptr %117 to i32
  %119 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %120 = inttoptr i32 %119 to ptr
  %121 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %120) #14, !srcloc !21
  %122 = add i32 %121, %118
  %123 = inttoptr i32 %122 to ptr
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %115) #16, !srcloc !22
  br label %128

126:                                              ; preds = %108
  %127 = tail call zeroext i1 @__percpu_down_read(ptr noundef %111, i1 noundef zeroext false) #16
  br label %128

128:                                              ; preds = %126, %114
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %129

129:                                              ; preds = %128, %103
  %130 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %131 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %132 = load i64, ptr %131, align 8
  %133 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.super_block, ptr %134, i32 0, i32 2
  %136 = load i8, ptr %135, align 4
  %137 = zext i8 %136 to i32
  %138 = add nsw i32 %137, -9
  %139 = zext i32 %138 to i64
  %140 = lshr i64 %132, %139
  %141 = trunc i64 %140 to i32
  %142 = tail call i32 @llvm.umax.i32(i32 %141, i32 2) #16
  %143 = tail call i32 @llvm.umin.i32(i32 %142, i32 64) #16
  %144 = getelementptr inbounds %struct.super_block, ptr %134, i32 0, i32 27
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.ext4_sb_info, ptr %145, i32 0, i32 15
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.ext4_super_block, ptr %147, i32 0, i32 29
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 64
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i32 15, i32 27
  %153 = add nuw nsw i32 %152, %143
  %154 = getelementptr inbounds %struct.ext4_sb_info, ptr %145, i32 0, i32 11
  %155 = load i32, ptr %154, align 4
  %156 = shl i32 %155, 3
  %157 = tail call ptr @__ext4_journal_start_sb(ptr noundef %134, i32 noundef 254, i32 noundef 5, i32 noundef %153, i32 noundef 0, i32 noundef %156) #16
  %158 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %195

159:                                              ; preds = %129
  %160 = ptrtoint ptr %157 to i32
  %161 = load ptr, ptr %133, align 4
  tail call void @__ext4_std_error(ptr noundef %161, ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 256, i32 noundef %160) #16
  %162 = tail call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %0) #16
  br i1 %107, label %163, label %335

163:                                              ; preds = %159
  %164 = load ptr, ptr %133, align 4
  %165 = getelementptr %struct.super_block, ptr %164, i32 0, i32 26, i32 2, i32 2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %166 = load volatile i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %180, !prof !11

168:                                              ; preds = %163
  %169 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %170 = getelementptr %struct.super_block, ptr %164, i32 0, i32 26, i32 2, i32 2, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = ptrtoint ptr %171 to i32
  %173 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %174 = inttoptr i32 %173 to ptr
  %175 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %174) #14, !srcloc !21
  %176 = add i32 %175, %172
  %177 = inttoptr i32 %176 to ptr
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, -1
  store i32 %179, ptr %177, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %169) #16, !srcloc !22
  br label %194

180:                                              ; preds = %163
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %181 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %182 = getelementptr %struct.super_block, ptr %164, i32 0, i32 26, i32 2, i32 2, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = ptrtoint ptr %183 to i32
  %185 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %186 = inttoptr i32 %185 to ptr
  %187 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %186) #14, !srcloc !21
  %188 = add i32 %187, %184
  %189 = inttoptr i32 %188 to ptr
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, -1
  store i32 %191, ptr %189, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %181) #16, !srcloc !22
  %192 = getelementptr %struct.super_block, ptr %164, i32 0, i32 26, i32 2, i32 2, i32 2
  %193 = tail call i32 @rcuwait_wake_up(ptr noundef %192) #16
  br label %194

194:                                              ; preds = %180, %168
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %335

195:                                              ; preds = %129
  %196 = load ptr, ptr %133, align 4
  %197 = getelementptr inbounds %struct.super_block, ptr %196, i32 0, i32 10
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 16
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load i32, ptr %130, align 4
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  %205 = icmp ult ptr %157, inttoptr (i32 4096 to ptr)
  %206 = select i1 %204, i1 true, i1 %205
  br i1 %206, label %213, label %209

207:                                              ; preds = %195
  %208 = icmp ult ptr %157, inttoptr (i32 4096 to ptr)
  br i1 %208, label %213, label %209

209:                                              ; preds = %207, %201
  %210 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %157, i32 0, i32 7
  %211 = load i32, ptr %210, align 4
  %212 = or i32 %211, 1
  store i32 %212, ptr %210, align 4
  br label %213

213:                                              ; preds = %209, %207, %201
  %214 = getelementptr i8, ptr %0, i32 -124
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 2097152
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %249

218:                                              ; preds = %213
  %219 = getelementptr i8, ptr %0, i32 -144
  %220 = load i64, ptr %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %133, align 4
  %224 = getelementptr inbounds %struct.super_block, ptr %223, i32 0, i32 3
  %225 = load i32, ptr %224, align 16
  %226 = getelementptr inbounds %struct.super_block, ptr %223, i32 0, i32 27
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.ext4_sb_info, ptr %227, i32 0, i32 12
  %229 = load i32, ptr %228, align 16
  %230 = shl i32 %225, %229
  %231 = lshr i32 %230, 9
  br label %232

232:                                              ; preds = %222, %218
  %233 = phi i32 [ %231, %222 ], [ 0, %218 ]
  %234 = load volatile i32, ptr %214, align 4
  %235 = and i32 %234, 268435456
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %232
  %238 = getelementptr i8, ptr %0, i32 478
  %239 = load i16, ptr %238, align 2
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %241, label %261

241:                                              ; preds = %237, %232
  %242 = load i16, ptr %0, align 8
  %243 = and i16 %242, -4096
  %244 = icmp eq i16 %243, -24576
  br i1 %244, label %245, label %261

245:                                              ; preds = %241
  %246 = load i64, ptr %131, align 8
  %247 = zext i32 %233 to i64
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %259, label %261

249:                                              ; preds = %213
  %250 = load i16, ptr %0, align 8
  %251 = and i16 %250, -4096
  %252 = icmp eq i16 %251, -24576
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %255 = load i64, ptr %254, align 8
  %256 = icmp ne i64 %255, 0
  %257 = icmp slt i64 %255, 60
  %258 = and i1 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %253, %245
  %260 = getelementptr i8, ptr %0, i32 -208
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(60) %260, i8 0, i32 60, i1 false)
  br label %261

261:                                              ; preds = %259, %253, %249, %245, %241, %237
  %262 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %262, align 8
  %263 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %157, ptr noundef %0, ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 281)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %261
  %266 = load ptr, ptr %133, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %266, ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 284, ptr noundef nonnull @.str.1, i32 noundef %263) #16
  br label %283

267:                                              ; preds = %261
  %268 = load i64, ptr %131, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %267
  %271 = tail call i32 @ext4_truncate(ptr noundef %0)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load ptr, ptr %133, align 4
  %275 = sub i32 0, %271
  %276 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %277 = load i32, ptr %276, align 4
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %274, ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 292, i1 noundef zeroext false, i32 noundef %275, i64 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %277, i32 noundef %271) #16
  br label %283

278:                                              ; preds = %270, %267
  %279 = call i32 @ext4_xattr_delete_inode(ptr noundef %157, ptr noundef %0, ptr noundef nonnull %2, i32 noundef 6) #16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %320, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %133, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %282, ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 301, ptr noundef nonnull @.str.3, i32 noundef %279) #16
  br label %283

283:                                              ; preds = %281, %273, %265
  %284 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 303, ptr noundef %157) #16
  %285 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %0) #16
  br i1 %107, label %286, label %318

286:                                              ; preds = %283
  %287 = load ptr, ptr %133, align 4
  %288 = getelementptr %struct.super_block, ptr %287, i32 0, i32 26, i32 2, i32 2
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %289 = load volatile i32, ptr %288, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %303, !prof !11

291:                                              ; preds = %286
  %292 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %293 = getelementptr %struct.super_block, ptr %287, i32 0, i32 26, i32 2, i32 2, i32 1
  %294 = load ptr, ptr %293, align 4
  %295 = ptrtoint ptr %294 to i32
  %296 = call i32 @llvm.read_register.i32(metadata !0) #16
  %297 = inttoptr i32 %296 to ptr
  %298 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %297) #14, !srcloc !21
  %299 = add i32 %298, %295
  %300 = inttoptr i32 %299 to ptr
  %301 = load i32, ptr %300, align 4
  %302 = add i32 %301, -1
  store i32 %302, ptr %300, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %292) #16, !srcloc !22
  br label %317

303:                                              ; preds = %286
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %304 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %305 = getelementptr %struct.super_block, ptr %287, i32 0, i32 26, i32 2, i32 2, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = ptrtoint ptr %306 to i32
  %308 = call i32 @llvm.read_register.i32(metadata !0) #16
  %309 = inttoptr i32 %308 to ptr
  %310 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %309) #14, !srcloc !21
  %311 = add i32 %310, %307
  %312 = inttoptr i32 %311 to ptr
  %313 = load i32, ptr %312, align 4
  %314 = add i32 %313, -1
  store i32 %314, ptr %312, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %304) #16, !srcloc !22
  %315 = getelementptr %struct.super_block, ptr %287, i32 0, i32 26, i32 2, i32 2, i32 2
  %316 = call i32 @rcuwait_wake_up(ptr noundef %315) #16
  br label %317

317:                                              ; preds = %303, %291
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %318

318:                                              ; preds = %317, %283
  %319 = load ptr, ptr %2, align 4
  call void @ext4_xattr_inode_array_free(ptr noundef %319) #16
  br label %335

320:                                              ; preds = %278
  %321 = call i32 @ext4_orphan_del(ptr noundef %157, ptr noundef %0) #16
  %322 = call i64 @ktime_get_real_seconds() #16
  %323 = trunc i64 %322 to i32
  %324 = getelementptr i8, ptr %0, i32 -148
  store i32 %323, ptr %324, align 4
  %325 = call i32 @__ext4_mark_inode_dirty(ptr noundef %157, ptr noundef %0, ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 329)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %320
  call void @ext4_clear_inode(ptr noundef %0) #16
  br label %329

328:                                              ; preds = %320
  call void @ext4_free_inode(ptr noundef %157, ptr noundef %0) #16
  br label %329

329:                                              ; preds = %328, %327
  %330 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_evict_inode, i32 noundef 334, ptr noundef %157) #16
  br i1 %107, label %331, label %333

331:                                              ; preds = %329
  %332 = load ptr, ptr %133, align 4
  call fastcc void @sb_end_intwrite(ptr noundef %332)
  br label %333

333:                                              ; preds = %331, %329
  %334 = load ptr, ptr %2, align 4
  call void @ext4_xattr_inode_array_free(ptr noundef %334) #16
  br label %343

335:                                              ; preds = %318, %194, %159, %51, %49
  %336 = getelementptr i8, ptr %0, i32 -88
  %337 = load volatile ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, %336
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %341 = load ptr, ptr %340, align 4
  call void @ext4_fc_mark_ineligible(ptr noundef %341, i32 noundef 3, ptr noundef null) #16
  br label %342

342:                                              ; preds = %339, %335
  call void @ext4_clear_inode(ptr noundef %0) #16
  br label %343

343:                                              ; preds = %342, %333
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_complete_transaction(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_begin_ordered_truncate(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_begin_ordered_truncate, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %17 = tail call i32 @__traceiter_ext4_begin_ordered_truncate(ptr noundef null, ptr noundef %0, i64 noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr i8, ptr %0, i32 392
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 47
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @jbd2_journal_begin_ordered_truncate(ptr noundef %28, ptr noundef nonnull %20, i64 noundef %1) #16
  br label %30

30:                                               ; preds = %22, %18
  %31 = phi i32 [ %29, %22 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_io_list_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sb_end_intwrite(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17, !prof !11

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %7 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #14, !srcloc !21
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !22
  br label %31

17:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %19 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #14, !srcloc !21
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #16, !srcloc !22
  %29 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2, i32 2
  %30 = tail call i32 @rcuwait_wake_up(ptr noundef %29) #16
  br label %31

31:                                               ; preds = %17, %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_iloc, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @llvm.returnaddress(i32 0)
  %11 = ptrtoint ptr %10 to i32
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_mark_inode_dirty, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %26 = tail call i32 @__traceiter_ext4_mark_inode_dirty(ptr noundef null, ptr noundef %1, i32 noundef %11) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  br label %27

27:                                               ; preds = %25, %14, %4
  %28 = call i32 @ext4_reserve_inode_write(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %1, i32 476
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 56
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %33
  br i1 %36, label %37, label %114

37:                                               ; preds = %30
  %38 = load i32, ptr %5, align 4
  %39 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = inttoptr i32 %38 to ptr
  %42 = getelementptr i8, ptr %1, i32 -128
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %114

46:                                               ; preds = %37
  %47 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %47, label %61, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 29
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 12, i32 24
  %59 = tail call i32 @jbd2_journal_extend(ptr noundef %0, i32 noundef %58, i32 noundef 0) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %114

61:                                               ; preds = %48, %46
  %62 = getelementptr i8, ptr %1, i32 -120
  %63 = tail call i32 @down_write_trylock(ptr noundef %62) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %114, label %65

65:                                               ; preds = %61
  %66 = load volatile i32, ptr %42, align 4
  %67 = lshr i32 %66, 3
  %68 = and i32 %67, 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %42) #16
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 29
  %73 = load i32, ptr %72, align 4
  %74 = load i16, ptr %31, align 4
  %75 = zext i16 %74 to i32
  %76 = add nuw nsw i32 %75, 128
  %77 = icmp ule i32 %76, %73
  %78 = and i32 %75, 3
  %79 = icmp eq i32 %78, 0
  %80 = and i1 %77, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %65
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.__ext4_expand_extra_isize, i32 noundef 5726, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %75, i32 noundef %73) #16
  br label %110

82:                                               ; preds = %65
  %83 = icmp ult i32 %35, %75
  %84 = icmp ult i32 %35, 4
  %85 = or i1 %84, %83
  %86 = add i32 %73, -128
  %87 = icmp ult i32 %86, %35
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %110, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 %40
  %93 = getelementptr i8, ptr %92, i32 128
  %94 = load volatile i32, ptr %42, align 4
  %95 = and i32 %94, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = getelementptr i8, ptr %93, i32 %75
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, -368967680
  br i1 %100, label %105, label %101

101:                                              ; preds = %97, %89
  %102 = getelementptr i8, ptr %93, i32 %75
  %103 = sub i32 %35, %75
  tail call void @llvm.memset.p0.i32(ptr align 1 %102, i8 0, i32 %103, i1 false) #16
  %104 = trunc i32 %35 to i16
  store i16 %104, ptr %31, align 4
  br label %110

105:                                              ; preds = %97
  %106 = tail call i32 @ext4_expand_extra_isize_ea(ptr noundef %1, i32 noundef %35, ptr noundef %92, ptr noundef %0) #16
  %107 = icmp eq i32 %106, 0
  %108 = icmp eq i32 %68, 0
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %112, label %113

110:                                              ; preds = %101, %82, %81
  %111 = icmp eq i32 %68, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %110, %105
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %42) #16
  br label %113

113:                                              ; preds = %112, %110, %105
  tail call void @up_write(ptr noundef %62) #16
  br label %114

114:                                              ; preds = %113, %61, %48, %37, %30
  %115 = call i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117, !prof !11

117:                                              ; preds = %114, %27
  %118 = phi i32 [ %115, %114 ], [ %28, %27 ]
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef 0, i32 noundef %118, ptr noundef nonnull @.str.23) #16
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i32 [ %118, %117 ], [ 0, %114 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_truncate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 40
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4135, i32 noundef 9, ptr noundef null) #16
  br label %15

15:                                               ; preds = %14, %10, %1
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_truncate_enter, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #16
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %30 = tail call i32 @__traceiter_ext4_truncate_enter(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  br label %31

31:                                               ; preds = %29, %18, %15
  %32 = load i16, ptr %0, align 8
  %33 = and i16 %32, -4096
  switch i16 %33, label %236 [
    i16 -32768, label %74
    i16 16384, label %74
    i16 -24576, label %34
  ]

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %0, i32 -124
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %0, i32 -144
  %41 = load i64, ptr %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 16
  %48 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 27
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 12
  %51 = load i32, ptr %50, align 16
  %52 = shl i32 %47, %51
  %53 = lshr i32 %52, 9
  br label %54

54:                                               ; preds = %43, %39
  %55 = phi i32 [ %53, %43 ], [ 0, %39 ]
  %56 = load volatile i32, ptr %35, align 4
  %57 = and i32 %56, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %0, i32 478
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59, %54
  %64 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %65 = load i64, ptr %64, align 8
  %66 = zext i32 %55 to i64
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %236, label %74

68:                                               ; preds = %34
  %69 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %70 = load i64, ptr %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = icmp slt i64 %70, 60
  %73 = and i1 %71, %72
  br i1 %73, label %236, label %74

74:                                               ; preds = %68, %63, %59, %31, %31
  %75 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %76 = load i64, ptr %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 27
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %82, i32 0, i32 17
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 65536
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = getelementptr i8, ptr %0, i32 -128
  tail call void @_set_bit(i32 noundef 4, ptr noundef %88) #16
  br label %89

89:                                               ; preds = %87, %78, %74
  %90 = getelementptr i8, ptr %0, i32 -124
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %91, 268435456
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = getelementptr i8, ptr %0, i32 478
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 1, ptr %2, align 4
  %99 = call i32 @ext4_inline_data_truncate(ptr noundef %0, ptr noundef nonnull %2) #16
  %100 = icmp ne i32 %99, 0
  %101 = load i32, ptr %2, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br i1 %103, label %236, label %104

104:                                              ; preds = %98, %94, %89
  %105 = load i64, ptr %75, align 8
  %106 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 3
  %109 = load i32, ptr %108, align 16
  %110 = add i32 %109, -1
  %111 = zext i32 %110 to i64
  %112 = and i64 %105, %111
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %104
  %115 = call i32 @ext4_inode_attach_jinode(ptr noundef %0)
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %236, label %117

117:                                              ; preds = %114, %104
  %118 = load volatile i32, ptr %90, align 4
  %119 = and i32 %118, 524288
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = call i32 @ext4_writepage_trans_blocks(ptr noundef %0)
  %123 = load ptr, ptr %106, align 4
  %124 = getelementptr inbounds %struct.super_block, ptr %123, i32 0, i32 27
  %125 = load ptr, ptr %124, align 4
  br label %149

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %128 = load i64, ptr %127, align 8
  %129 = load ptr, ptr %106, align 4
  %130 = getelementptr inbounds %struct.super_block, ptr %129, i32 0, i32 2
  %131 = load i8, ptr %130, align 4
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %132, -9
  %134 = zext i32 %133 to i64
  %135 = lshr i64 %128, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @llvm.umax.i32(i32 %136, i32 2) #16
  %138 = call i32 @llvm.umin.i32(i32 %137, i32 64) #16
  %139 = getelementptr inbounds %struct.super_block, ptr %129, i32 0, i32 27
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.ext4_sb_info, ptr %140, i32 0, i32 15
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.ext4_super_block, ptr %142, i32 0, i32 29
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 64
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 12, i32 24
  %148 = add nuw nsw i32 %138, %147
  br label %149

149:                                              ; preds = %126, %121
  %150 = phi ptr [ %125, %121 ], [ %140, %126 ]
  %151 = phi ptr [ %123, %121 ], [ %129, %126 ]
  %152 = phi i32 [ %122, %121 ], [ %148, %126 ]
  %153 = getelementptr inbounds %struct.ext4_sb_info, ptr %150, i32 0, i32 11
  %154 = load i32, ptr %153, align 4
  %155 = shl i32 %154, 3
  %156 = call ptr @__ext4_journal_start_sb(ptr noundef %151, i32 noundef 4163, i32 noundef 5, i32 noundef %152, i32 noundef 0, i32 noundef %155) #16
  %157 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = ptrtoint ptr %156 to i32
  br label %236

160:                                              ; preds = %149
  %161 = load i64, ptr %75, align 8
  %162 = load ptr, ptr %106, align 4
  %163 = getelementptr inbounds %struct.super_block, ptr %162, i32 0, i32 3
  %164 = load i32, ptr %163, align 16
  %165 = add i32 %164, -1
  %166 = zext i32 %165 to i64
  %167 = and i64 %161, %166
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %187, label %169

169:                                              ; preds = %160
  %170 = load ptr, ptr %5, align 4
  %171 = getelementptr inbounds %struct.inode, ptr %170, i32 0, i32 4
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 16384
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = trunc i64 %161 to i32
  %177 = and i32 %176, 4095
  %178 = getelementptr inbounds %struct.inode, ptr %170, i32 0, i32 8
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.super_block, ptr %179, i32 0, i32 3
  %181 = load i32, ptr %180, align 16
  %182 = add i32 %181, -1
  %183 = and i32 %177, %182
  %184 = sub i32 %181, %183
  %185 = zext i32 %184 to i64
  %186 = call fastcc i32 @ext4_block_zero_page_range(ptr noundef %156, ptr noundef %5, i64 noundef %161, i64 noundef %185) #16
  br label %187

187:                                              ; preds = %175, %169, %160
  %188 = call i32 @ext4_orphan_add(ptr noundef %156, ptr noundef %0) #16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %187
  %191 = getelementptr i8, ptr %0, i32 -24
  call void @down_write(ptr noundef %191) #16
  call void @ext4_discard_preallocations(ptr noundef %0, i32 noundef 0) #16
  %192 = load volatile i32, ptr %90, align 4
  %193 = and i32 %192, 524288
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  call void @ext4_ind_truncate(ptr noundef %156, ptr noundef %0) #16
  call void @up_write(ptr noundef %191) #16
  br label %199

196:                                              ; preds = %190
  %197 = call i32 @ext4_ext_truncate(ptr noundef %156, ptr noundef %0) #16
  call void @up_write(ptr noundef %191) #16
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %196, %195
  %200 = load ptr, ptr %106, align 4
  %201 = getelementptr inbounds %struct.super_block, ptr %200, i32 0, i32 10
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 16
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  %210 = icmp ult ptr %156, inttoptr (i32 4096 to ptr)
  %211 = select i1 %209, i1 true, i1 %210
  br i1 %211, label %218, label %214

212:                                              ; preds = %199
  %213 = icmp ult ptr %156, inttoptr (i32 4096 to ptr)
  br i1 %213, label %218, label %214

214:                                              ; preds = %212, %205
  %215 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %156, i32 0, i32 7
  %216 = load i32, ptr %215, align 4
  %217 = or i32 %216, 1
  store i32 %217, ptr %215, align 4
  br label %218

218:                                              ; preds = %214, %212, %205, %196, %187
  %219 = phi i32 [ %188, %187 ], [ %197, %196 ], [ 0, %205 ], [ 0, %212 ], [ 0, %214 ]
  %220 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %221 = load i32, ptr %220, align 8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %218
  %224 = call i32 @ext4_orphan_del(ptr noundef %156, ptr noundef %0) #16
  br label %225

225:                                              ; preds = %223, %218
  %226 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %227 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %0) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %227, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %226, ptr noundef align 8 dereferenceable(16) %227, i32 16, i1 false)
  %228 = call i32 @__ext4_mark_inode_dirty(ptr noundef %156, ptr noundef %0, ptr noundef nonnull @__func__.ext4_truncate, i32 noundef 4213)
  %229 = icmp ne i32 %228, 0
  %230 = icmp eq i32 %219, 0
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %233, !prof !9

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232, %225
  %234 = phi i32 [ %228, %232 ], [ %219, %225 ]
  %235 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_truncate, i32 noundef 4216, ptr noundef %156) #16
  br label %236

236:                                              ; preds = %233, %158, %114, %98, %68, %63, %31
  %237 = phi i32 [ %99, %98 ], [ 0, %114 ], [ %159, %158 ], [ %234, %233 ], [ 0, %68 ], [ 0, %31 ], [ 0, %63 ]
  %238 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_truncate_exit, i32 0, i32 1), align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  %241 = tail call ptr @llvm.thread.pointer() #16
  %242 = getelementptr inbounds %struct.thread_info, ptr %241, i32 0, i32 2
  %243 = load i32, ptr %242, align 8
  %244 = lshr i32 %243, 5
  %245 = getelementptr i32, ptr @__cpu_online_mask, i32 %244
  %246 = load volatile i32, ptr %245, align 4
  %247 = and i32 %243, 31
  %248 = shl nuw i32 1, %247
  %249 = and i32 %248, %246
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %240
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %252 = call i32 @__traceiter_ext4_truncate_exit(ptr noundef null, ptr noundef %0) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  br label %253

253:                                              ; preds = %251, %240, %236
  ret i32 %237
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_xattr_delete_inode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_xattr_inode_array_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_clear_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_mark_ineligible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_da_update_reserve_space(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 516
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_da_update_reserve_space, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %23 = tail call i32 @__traceiter_ext4_da_update_reserve_space(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %24

24:                                               ; preds = %22, %11, %3
  %25 = getelementptr i8, ptr %0, i32 468
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, %1
  br i1 %27, label %28, label %33, !prof !9

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %29, ptr noundef nonnull @__func__.ext4_da_update_reserve_space, i32 noundef 368, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ext4_da_update_reserve_space, i32 noundef %31, i32 noundef %1, i32 noundef %26) #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 9, ptr noundef null) #16
  %32 = load i32, ptr %25, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %32, %28 ], [ %26, %24 ]
  %35 = phi i32 [ %32, %28 ], [ %1, %24 ]
  %36 = sub i32 %34, %35
  store i32 %36, ptr %25, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 39
  %38 = sext i32 %35 to i64
  %39 = sub nsw i64 0, %38
  %40 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %37, i64 noundef %39, i32 noundef %40) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %41 = load i16, ptr %8, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 12
  %46 = load i32, ptr %45, align 16
  %47 = shl i32 %35, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %50 = load i8, ptr %49, align 2
  %51 = zext i8 %50 to i64
  %52 = shl i64 %48, %51
  tail call void @inode_add_bytes(ptr noundef %0, i64 noundef %52) #16
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 1) #16
  br label %53

53:                                               ; preds = %44, %33
  %54 = load i32, ptr %25, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 37
  %58 = load volatile i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @ext4_discard_preallocations(ptr noundef %0, i32 noundef 0) #16
  br label %61

61:                                               ; preds = %60, %56, %53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_issue_zeroout(ptr nocapture noundef readonly %0, i32 %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, -32768
  br i1 %12, label %28, label %13

13:                                               ; preds = %9, %4
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = zext i32 %3 to i64
  %17 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, -9
  %23 = zext i32 %22 to i64
  %24 = shl i64 %2, %23
  %25 = shl i64 %16, %23
  %26 = tail call i32 @blkdev_issue_zeroout(ptr noundef %18, i64 noundef %24, i64 noundef %25, i32 noundef 3136, i32 noundef 0) #16
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 0)
  br label %28

28:                                               ; preds = %13, %9
  %29 = phi i32 [ %27, %13 ], [ -95, %9 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.extent_status, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %4
  store i32 2147483647, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %354, label %15, !prof !9

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 25
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 32
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %15
  %25 = call i32 @ext4_es_lookup_extent(ptr noundef %1, i32 noundef %13, ptr noundef null, ptr noundef nonnull %5) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 576460752303423488
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = and i64 %29, 1152921504606846976
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ 2048, %32 ], [ 16, %27 ]
  %37 = and i64 %29, 576460752303423487
  %38 = load i32, ptr %12, align 8
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %37, %39
  %41 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  %44 = sub nsw i64 %40, %43
  store i64 %44, ptr %2, align 8
  %45 = load i32, ptr %6, align 8
  %46 = or i32 %45, %36
  store i32 %46, ptr %6, align 8
  %47 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = sub i32 %42, %38
  %50 = add i32 %49, %48
  %51 = load i32, ptr %7, align 4
  %52 = call i32 @llvm.umin.i32(i32 %50, i32 %51)
  store i32 %52, ptr %7, align 4
  br label %105

53:                                               ; preds = %32
  %54 = and i64 %29, 6917529027641081856
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %143

56:                                               ; preds = %53
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 548, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

57:                                               ; preds = %24, %15
  %58 = getelementptr i8, ptr %1, i32 -24
  call void @down_read(ptr noundef %58) #16
  %59 = getelementptr i8, ptr %1, i32 -124
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 524288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = call i32 @ext4_ext_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #16
  br label %67

65:                                               ; preds = %57
  %66 = call i32 @ext4_ind_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #16
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  %71 = load i32, ptr %7, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %77, label %73, !prof !11

73:                                               ; preds = %70
  %74 = load ptr, ptr %16, align 4
  %75 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %74, ptr noundef nonnull @__func__.ext4_map_blocks, i32 noundef 574, ptr noundef nonnull @.str.5, i32 noundef %76, i32 noundef %68, i32 noundef %71) #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 575, i32 noundef 9, ptr noundef null) #16
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, ptr %6, align 8
  %79 = and i32 %78, 2048
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 1, i32 2
  %82 = and i32 %3, 4
  %83 = icmp eq i32 %82, 0
  %84 = and i32 %81, 1
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = load i32, ptr %12, align 8
  %89 = load i32, ptr %7, align 4
  %90 = add i32 %88, -1
  %91 = add i32 %90, %89
  %92 = call zeroext i1 @ext4_es_scan_range(ptr noundef %1, ptr noundef nonnull @ext4_es_is_delayed, i32 noundef %88, i32 noundef %91) #16
  %93 = or i32 %81, 4
  %94 = select i1 %92, i32 %93, i32 %81
  br label %95

95:                                               ; preds = %87, %77
  %96 = phi i32 [ %81, %77 ], [ %94, %87 ]
  %97 = load i32, ptr %12, align 8
  %98 = load i32, ptr %7, align 4
  %99 = load i64, ptr %2, align 8
  %100 = call i32 @ext4_es_insert_extent(ptr noundef %1, i32 noundef %97, i32 noundef %98, i64 noundef %99, i32 noundef %96) #16
  %101 = icmp slt i32 %100, 0
  %102 = select i1 %101, i32 %100, i32 %68
  br label %103

103:                                              ; preds = %95, %67
  %104 = phi i32 [ %102, %95 ], [ %68, %67 ]
  call void @up_read(ptr noundef %58) #16
  br label %105

105:                                              ; preds = %103, %35
  %106 = phi i32 [ %104, %103 ], [ %52, %35 ]
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %105
  %109 = load i32, ptr %6, align 8
  %110 = and i32 %109, 16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %137, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %16, align 4
  %114 = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 27
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ext4_sb_info, ptr %115, i32 0, i32 15
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.ext4_super_block, ptr %117, i32 0, i32 28
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.ext4_super_block, ptr %117, i32 0, i32 39
  %126 = load i32, ptr %125, align 8
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %122, %112
  %129 = load i64, ptr %2, align 8
  %130 = load i32, ptr %7, align 4
  %131 = call i32 @ext4_inode_block_valid(ptr noundef %1, i64 noundef %129, i32 noundef %130) #16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i64, ptr %2, align 8
  %135 = load i32, ptr %12, align 8
  %136 = load i32, ptr %7, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_map_blocks, i32 noundef 594, i64 noundef %134, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %135, i64 noundef %134, i32 noundef %136) #16
  br label %354

137:                                              ; preds = %128, %122, %108
  %138 = and i32 %3, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %354, label %155

140:                                              ; preds = %105
  %141 = and i32 %3, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %354, label %162

143:                                              ; preds = %53
  store i64 0, ptr %2, align 8
  %144 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = load i32, ptr %12, align 8
  %147 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = sub i32 %145, %146
  %150 = add i32 %149, %148
  %151 = load i32, ptr %7, align 4
  %152 = call i32 @llvm.umin.i32(i32 %150, i32 %151)
  store i32 %152, ptr %7, align 4
  %153 = and i32 %3, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %354, label %162

155:                                              ; preds = %137
  %156 = load i32, ptr %6, align 8
  %157 = and i32 %156, 16
  %158 = icmp ne i32 %157, 0
  %159 = and i32 %3, 256
  %160 = icmp eq i32 %159, 0
  %161 = and i1 %160, %158
  br i1 %161, label %354, label %162

162:                                              ; preds = %155, %143, %140
  %163 = load i32, ptr %6, align 8
  %164 = and i32 %163, -2609
  store i32 %164, ptr %6, align 8
  %165 = getelementptr i8, ptr %1, i32 -24
  call void @down_write(ptr noundef %165) #16
  %166 = getelementptr i8, ptr %1, i32 -124
  %167 = load volatile i32, ptr %166, align 4
  %168 = and i32 %167, 524288
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %162
  %171 = call i32 @ext4_ind_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %267

173:                                              ; preds = %170
  %174 = load i32, ptr %6, align 8
  %175 = and i32 %174, 32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = getelementptr i8, ptr %1, i32 -128
  call void @_clear_bit(i32 noundef 5, ptr noundef %178) #16
  br label %179

179:                                              ; preds = %177, %173
  %180 = and i32 %3, 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  call void @ext4_da_update_reserve_space(ptr noundef %1, i32 noundef %171, i32 noundef 1)
  br label %186

183:                                              ; preds = %162
  %184 = call i32 @ext4_ext_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %267

186:                                              ; preds = %183, %182, %179
  %187 = phi i32 [ %184, %183 ], [ %171, %182 ], [ %171, %179 ]
  %188 = load i32, ptr %7, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190, !prof !11

190:                                              ; preds = %186
  %191 = load ptr, ptr %16, align 4
  %192 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %193 = load i32, ptr %192, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %191, ptr noundef nonnull @__func__.ext4_map_blocks, i32 noundef 669, ptr noundef nonnull @.str.5, i32 noundef %193, i32 noundef %187, i32 noundef %188) #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 670, i32 noundef 9, ptr noundef null) #16
  br label %194

194:                                              ; preds = %190, %186
  %195 = and i32 %3, 512
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %227, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %6, align 8
  %199 = and i32 %198, 48
  %200 = icmp eq i32 %199, 48
  br i1 %200, label %201, label %227

201:                                              ; preds = %197
  %202 = load i64, ptr %2, align 8
  %203 = load i32, ptr %7, align 4
  %204 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 16384
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %201
  %209 = load i16, ptr %1, align 8
  %210 = and i16 %209, -4096
  %211 = icmp eq i16 %210, -32768
  br i1 %211, label %267, label %212

212:                                              ; preds = %208, %201
  %213 = load ptr, ptr %16, align 4
  %214 = zext i32 %203 to i64
  %215 = getelementptr inbounds %struct.super_block, ptr %213, i32 0, i32 20
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.super_block, ptr %213, i32 0, i32 2
  %218 = load i8, ptr %217, align 4
  %219 = zext i8 %218 to i32
  %220 = add nsw i32 %219, -9
  %221 = zext i32 %220 to i64
  %222 = shl i64 %202, %221
  %223 = shl i64 %214, %221
  %224 = call i32 @blkdev_issue_zeroout(ptr noundef %216, i64 noundef %222, i64 noundef %223, i32 noundef 3136, i32 noundef 0) #16
  %225 = call i32 @llvm.smin.i32(i32 %224, i32 0) #16
  %226 = icmp sgt i32 %224, -1
  br i1 %226, label %227, label %267

227:                                              ; preds = %212, %197, %194
  %228 = and i32 %3, 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %240, label %230

230:                                              ; preds = %227
  %231 = load i32, ptr %12, align 8
  %232 = call i32 @ext4_es_lookup_extent(ptr noundef %1, i32 noundef %231, ptr noundef null, ptr noundef nonnull %5) #16
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 3
  %236 = load i64, ptr %235, align 8
  %237 = and i64 %236, 576460752303423488
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %234
  call void @up_write(ptr noundef %165) #16
  br label %269

240:                                              ; preds = %234, %230, %227
  %241 = load i32, ptr %6, align 8
  %242 = and i32 %241, 2048
  %243 = icmp eq i32 %242, 0
  %244 = select i1 %243, i32 1, i32 2
  %245 = and i32 %3, 4
  %246 = icmp eq i32 %245, 0
  %247 = and i32 %244, 1
  %248 = icmp eq i32 %247, 0
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %250, label %258

250:                                              ; preds = %240
  %251 = load i32, ptr %12, align 8
  %252 = load i32, ptr %7, align 4
  %253 = add i32 %251, -1
  %254 = add i32 %253, %252
  %255 = call zeroext i1 @ext4_es_scan_range(ptr noundef %1, ptr noundef nonnull @ext4_es_is_delayed, i32 noundef %251, i32 noundef %254) #16
  %256 = or i32 %244, 4
  %257 = select i1 %255, i32 %256, i32 %244
  br label %258

258:                                              ; preds = %250, %240
  %259 = phi i32 [ %244, %240 ], [ %257, %250 ]
  %260 = load i32, ptr %12, align 8
  %261 = load i32, ptr %7, align 4
  %262 = load i64, ptr %2, align 8
  %263 = call i32 @ext4_es_insert_extent(ptr noundef %1, i32 noundef %260, i32 noundef %261, i64 noundef %262, i32 noundef %259) #16
  %264 = icmp slt i32 %263, 0
  %265 = select i1 %264, i32 %263, i32 %187
  call void @up_write(ptr noundef %165) #16
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %269, label %354

267:                                              ; preds = %212, %208, %183, %170
  %268 = phi i32 [ %225, %212 ], [ %184, %183 ], [ %171, %170 ], [ -95, %208 ]
  call void @up_write(ptr noundef %165) #16
  br label %354

269:                                              ; preds = %258, %239
  %270 = phi i32 [ %187, %239 ], [ %265, %258 ]
  %271 = load i32, ptr %6, align 8
  %272 = and i32 %271, 16
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %345, label %274

274:                                              ; preds = %269
  %275 = load ptr, ptr %16, align 4
  %276 = getelementptr inbounds %struct.super_block, ptr %275, i32 0, i32 27
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.ext4_sb_info, ptr %277, i32 0, i32 15
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.ext4_super_block, ptr %279, i32 0, i32 28
  %281 = load i32, ptr %280, align 4
  %282 = and i32 %281, 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %274
  %285 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr inbounds %struct.ext4_super_block, ptr %279, i32 0, i32 39
  %288 = load i32, ptr %287, align 8
  %289 = icmp eq i32 %286, %288
  br i1 %289, label %301, label %290

290:                                              ; preds = %284, %274
  %291 = load i64, ptr %2, align 8
  %292 = load i32, ptr %7, align 4
  %293 = call i32 @ext4_inode_block_valid(ptr noundef %1, i64 noundef %291, i32 noundef %292) #16
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %290
  %296 = load i32, ptr %6, align 8
  br label %301

297:                                              ; preds = %290
  %298 = load i64, ptr %2, align 8
  %299 = load i32, ptr %12, align 8
  %300 = load i32, ptr %7, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_map_blocks, i32 noundef 718, i64 noundef %298, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %299, i64 noundef %298, i32 noundef %300) #16
  br label %354

301:                                              ; preds = %295, %284
  %302 = phi i32 [ %296, %295 ], [ %271, %284 ]
  %303 = and i32 %302, 2080
  %304 = icmp eq i32 %303, 32
  %305 = and i1 %196, %304
  br i1 %305, label %306, label %345

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %308 = load i32, ptr %307, align 4
  %309 = and i32 %308, 32
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %306
  %312 = load i32, ptr %166, align 4
  %313 = and i32 %312, 2097152
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %345, label %315

315:                                              ; preds = %311, %306
  %316 = call i32 @ext4_inode_journal_mode(ptr noundef %1) #16
  %317 = and i32 %316, 2
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %345, label %319

319:                                              ; preds = %315
  %320 = load i32, ptr %12, align 8
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %323 = load i8, ptr %322, align 2
  %324 = zext i8 %323 to i64
  %325 = shl i64 %321, %324
  %326 = load i32, ptr %7, align 4
  %327 = zext i32 %326 to i64
  %328 = shl i64 %327, %324
  %329 = and i32 %3, 1024
  %330 = icmp eq i32 %329, 0
  %331 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %330, label %337, label %332

332:                                              ; preds = %319
  br i1 %331, label %345, label %333

333:                                              ; preds = %332
  %334 = getelementptr i8, ptr %1, i32 392
  %335 = load ptr, ptr %334, align 8
  %336 = call i32 @jbd2_journal_inode_ranged_wait(ptr noundef %0, ptr noundef %335, i64 noundef %325, i64 noundef %328) #16
  br label %342

337:                                              ; preds = %319
  br i1 %331, label %345, label %338

338:                                              ; preds = %337
  %339 = getelementptr i8, ptr %1, i32 392
  %340 = load ptr, ptr %339, align 8
  %341 = call i32 @jbd2_journal_inode_ranged_write(ptr noundef %0, ptr noundef %340, i64 noundef %325, i64 noundef %328) #16
  br label %342

342:                                              ; preds = %338, %333
  %343 = phi i32 [ %336, %333 ], [ %341, %338 ]
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %342, %337, %332, %315, %311, %301, %269
  %346 = load i32, ptr %6, align 8
  %347 = and i32 %346, 2064
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %345
  %350 = load i32, ptr %12, align 8
  %351 = load i32, ptr %7, align 4
  %352 = add i32 %350, -1
  %353 = add i32 %352, %351
  call void @ext4_fc_track_range(ptr noundef %0, ptr noundef %1, i32 noundef %350, i32 noundef %353) #16
  br label %354

354:                                              ; preds = %349, %345, %342, %297, %267, %258, %155, %143, %140, %137, %133, %11
  %355 = phi i32 [ %343, %342 ], [ -117, %11 ], [ -117, %133 ], [ %106, %137 ], [ %106, %155 ], [ -117, %297 ], [ 0, %143 ], [ %268, %267 ], [ %265, %258 ], [ %270, %345 ], [ %270, %349 ], [ %106, %140 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %355
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_lookup_extent(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ext4_es_is_delayed(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.extent_status, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = lshr i64 %3, 61
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ind_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ext4_es_scan_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_insert_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_track_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_get_block(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp ne i32 %3, 0
  %6 = zext i1 %5 to i32
  %7 = tail call fastcc i32 @_ext4_get_block(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_ext4_get_block(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  %6 = getelementptr i8, ptr %0, i32 -124
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 478
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %10, %4
  %15 = trunc i64 %1 to i32
  %16 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 1
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %18, %21
  %23 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = tail call ptr @llvm.thread.pointer() #16
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 113
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @ext4_map_blocks(ptr noundef %26, ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = load i64, ptr %5, align 8
  %33 = load volatile i32, ptr %2, align 4
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #16
  br label %37

37:                                               ; preds = %36, %29
  %38 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 20
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %32, ptr %41, align 8
  %42 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 3
  %43 = load i32, ptr %42, align 16
  store i32 %43, ptr %17, align 8
  %44 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 2608
  %47 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i32, ptr %2, align 8
  %52 = and i32 %51, -2609
  %53 = or i32 %52, %46
  store i32 %53, ptr %2, align 8
  br label %69

54:                                               ; preds = %62, %37
  %55 = load volatile i32, ptr %2, align 8
  %56 = and i32 %55, -2609
  %57 = or i32 %56, %46
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !41
  br label %58

58:                                               ; preds = %58, %54
  %59 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %55, i32 %57) #16, !srcloc !42
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %58

62:                                               ; preds = %58
  %63 = extractvalue { i32, i32 } %59, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %64 = icmp eq i32 %63, %55
  br i1 %64, label %69, label %54, !prof !11

65:                                               ; preds = %14
  %66 = icmp eq i32 %27, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  br label %69

69:                                               ; preds = %67, %62, %50
  %70 = phi ptr [ %68, %67 ], [ %30, %50 ], [ %30, %62 ]
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 16
  %74 = load i32, ptr %23, align 4
  %75 = mul i32 %74, %73
  store i32 %75, ptr %17, align 8
  br label %76

76:                                               ; preds = %69, %65, %10
  %77 = phi i32 [ -34, %10 ], [ %27, %65 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_get_block_unwritten(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = tail call fastcc i32 @_ext4_get_block(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 11)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_getblk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  %6 = and i32 %3, 1
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 25
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 32
  %14 = icmp ne i16 %13, 0
  %15 = icmp ne ptr %0, null
  %16 = or i1 %15, %14
  %17 = icmp eq i32 %6, 0
  %18 = or i1 %17, %16
  br i1 %18, label %21, label %19, !prof !11

19:                                               ; preds = %4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ext4_getblk, ptr noundef nonnull @.str, i32 noundef 845, ptr noundef nonnull @.str.7) #17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 845, 0\0A.popsection", ""() #16, !srcloc !44
  unreachable

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 1
  store i32 %2, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 2
  store i32 1, ptr %23, align 4
  %24 = call i32 @ext4_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = select i1 %17, ptr null, ptr inttoptr (i32 -28 to ptr)
  br label %95

28:                                               ; preds = %21
  %29 = icmp slt i32 %24, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = inttoptr i32 %24 to ptr
  br label %95

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 4
  %34 = load i64, ptr %5, align 8
  %35 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %38 = load i32, ptr %37, align 16
  %39 = call ptr @__getblk_gfp(ptr noundef %36, i64 noundef %34, i32 noundef %38, i32 noundef 8) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %95, label %41, !prof !9

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %95, label %46

46:                                               ; preds = %41
  br i1 %17, label %47, label %49, !prof !9

47:                                               ; preds = %46
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ext4_getblk, ptr noundef nonnull @.str, i32 noundef 860, ptr noundef nonnull @.str.8) #17
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 860, 0\0A.popsection", ""() #16, !srcloc !45
  unreachable

49:                                               ; preds = %46
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 27
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 25
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 32
  %56 = icmp ne i16 %55, 0
  %57 = or i1 %15, %56
  br i1 %57, label %60, label %58, !prof !11

58:                                               ; preds = %49
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ext4_getblk, ptr noundef nonnull @.str, i32 noundef 862, ptr noundef nonnull @.str.9) #17
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 862, 0\0A.popsection", ""() #16, !srcloc !46
  unreachable

60:                                               ; preds = %49
  %61 = load volatile i32, ptr %39, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %39) #16, !srcloc !41
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %39, ptr nonnull %39, i32 4, ptr nonnull elementtype(i32) %39) #16, !srcloc !47
  %66 = extractvalue { i32, i32, i32 } %65, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %60
  call void @__lock_buffer(ptr noundef nonnull %39) #16
  br label %70

70:                                               ; preds = %69, %64
  %71 = load ptr, ptr %7, align 4
  %72 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_getblk, i32 noundef 874, ptr noundef %0, ptr noundef %71, ptr noundef nonnull %39, i32 noundef 1) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74, !prof !11

74:                                               ; preds = %70
  call void @unlock_buffer(ptr noundef nonnull %39) #16
  br label %92

75:                                               ; preds = %70
  %76 = load volatile i32, ptr %39, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 16
  call void @llvm.memset.p0.i32(ptr align 1 %81, i8 0, i32 %84, i1 false)
  %85 = load volatile i32, ptr %39, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %39) #16
  br label %89

89:                                               ; preds = %88, %79, %75
  call void @unlock_buffer(ptr noundef nonnull %39) #16
  %90 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_getblk, i32 noundef 885, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %39) #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92, !prof !11

92:                                               ; preds = %89, %74
  %93 = phi i32 [ %72, %74 ], [ %90, %89 ]
  call void @__brelse(ptr noundef nonnull %39) #16
  %94 = inttoptr i32 %93 to ptr
  br label %95

95:                                               ; preds = %92, %89, %41, %32, %30, %26
  %96 = phi ptr [ %31, %30 ], [ %94, %92 ], [ %39, %41 ], [ %39, %89 ], [ inttoptr (i32 -12 to ptr), %32 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret ptr %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_bread(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @ext4_getblk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %4
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %5) #16
  br label %18

18:                                               ; preds = %17, %13, %9
  %19 = load volatile i32, ptr %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = tail call i32 @ext4_read_bh_lock(ptr noundef nonnull %5, i32 noundef 12288, i1 noundef zeroext true) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  %26 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #16, !srcloc !41
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #16, !srcloc !50
  %28 = inttoptr i32 %23 to ptr
  br label %29

29:                                               ; preds = %25, %22, %18, %4
  %30 = phi ptr [ %28, %25 ], [ %5, %4 ], [ %5, %18 ], [ %5, %22 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_bread_batch(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %8, label %43

7:                                                ; preds = %16
  br i1 %6, label %19, label %43

8:                                                ; preds = %16, %5
  %9 = phi i32 [ %17, %16 ], [ 0, %5 ]
  %10 = add i32 %9, %1
  %11 = tail call ptr @ext4_getblk(ptr noundef null, ptr noundef %0, i32 noundef %10, i32 noundef 0)
  %12 = getelementptr ptr, ptr %4, i32 %9
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = ptrtoint ptr %11 to i32
  br label %71

16:                                               ; preds = %8
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %7, label %8

19:                                               ; preds = %40, %7
  %20 = phi i32 [ %41, %40 ], [ 0, %7 ]
  %21 = getelementptr ptr, ptr %4, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr %22, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load volatile i32, ptr %22, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %22) #16
  br label %33

33:                                               ; preds = %32, %28, %24
  %34 = load volatile i32, ptr %22, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr %21, align 4
  %39 = tail call i32 @ext4_read_bh_lock(ptr noundef %38, i32 noundef 12288, i1 noundef zeroext false) #16
  br label %40

40:                                               ; preds = %37, %33, %19
  %41 = add nuw nsw i32 %20, 1
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %43, label %19

43:                                               ; preds = %40, %7, %5
  %44 = and i1 %6, %3
  br i1 %44, label %46, label %84

45:                                               ; preds = %56
  br i1 %6, label %59, label %84

46:                                               ; preds = %56, %43
  %47 = phi i32 [ %57, %56 ], [ 0, %43 ]
  %48 = getelementptr ptr, ptr %4, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load volatile i32, ptr %49, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @__wait_on_buffer(ptr noundef nonnull %49) #16
  br label %56

56:                                               ; preds = %55, %51, %46
  %57 = add nuw nsw i32 %47, 1
  %58 = icmp eq i32 %57, %2
  br i1 %58, label %45, label %46

59:                                               ; preds = %68, %45
  %60 = phi i32 [ %69, %68 ], [ 0, %45 ]
  %61 = getelementptr ptr, ptr %4, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load volatile i32, ptr %62, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %59
  %69 = add nuw nsw i32 %60, 1
  %70 = icmp eq i32 %69, %2
  br i1 %70, label %84, label %59

71:                                               ; preds = %64, %14
  %72 = phi i32 [ %9, %14 ], [ %2, %64 ]
  %73 = phi i32 [ %15, %14 ], [ -5, %64 ]
  %74 = icmp sgt i32 %72, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %81, %71
  %76 = phi i32 [ %82, %81 ], [ 0, %71 ]
  %77 = getelementptr ptr, ptr %4, i32 %76
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call void @__brelse(ptr noundef nonnull %78) #16
  br label %81

81:                                               ; preds = %80, %75
  store ptr null, ptr %77, align 4
  %82 = add nuw nsw i32 %76, 1
  %83 = icmp eq i32 %82, %72
  br i1 %83, label %84, label %75

84:                                               ; preds = %81, %71, %68, %45, %43
  %85 = phi i32 [ 0, %43 ], [ %73, %71 ], [ 0, %45 ], [ %73, %81 ], [ 0, %68 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_walk_page_buffers(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq ptr %5, null
  br label %11

11:                                               ; preds = %32, %7
  %12 = phi i32 [ 0, %7 ], [ %20, %32 ]
  %13 = phi ptr [ %2, %7 ], [ %19, %32 ]
  %14 = icmp ne ptr %13, %2
  %15 = icmp eq i32 %12, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = add i32 %12, %9
  %21 = icmp ugt i32 %20, %3
  %22 = icmp ult i32 %12, %4
  %23 = and i1 %22, %21
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  br i1 %10, label %32, label %25

25:                                               ; preds = %24
  %26 = load volatile i32, ptr %13, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  store i32 1, ptr %5, align 4
  br label %32

30:                                               ; preds = %17
  %31 = tail call i32 %6(ptr noundef %0, ptr noundef %1, ptr noundef %13) #16
  br label %32

32:                                               ; preds = %30, %29, %25, %24
  %33 = phi i32 [ 0, %25 ], [ 0, %29 ], [ 0, %24 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %11, label %35

35:                                               ; preds = %32, %11
  %36 = phi i32 [ %33, %32 ], [ 0, %11 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_journal_get_write_access(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load volatile i32, ptr %2, align 4
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = and i32 %4, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %2) #16
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1034, ptr noundef %0, ptr noundef %18, ptr noundef %2, i32 noundef 1) #16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i1 %14, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1036, ptr noundef %0, ptr noundef null, ptr noundef %2) #16
  br label %24

24:                                               ; preds = %22, %16, %8, %3
  %25 = phi i32 [ 0, %8 ], [ 0, %3 ], [ %23, %22 ], [ %19, %16 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_da_release_space(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 516
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_da_release_space, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #16
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !51
  %24 = tail call i32 @__traceiter_ext4_da_release_space(ptr noundef null, ptr noundef %0, i32 noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !52
  br label %25

25:                                               ; preds = %23, %12, %8
  %26 = getelementptr i8, ptr %0, i32 468
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %1
  br i1 %28, label %29, label %34, !prof !9

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %30, ptr noundef nonnull @__func__.ext4_da_release_space, i32 noundef 1508, ptr noundef nonnull @.str.10, i32 noundef %32, i32 noundef %1, i32 noundef %27) #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1509, i32 noundef 9, ptr noundef null) #16
  %33 = load i32, ptr %26, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %33, %29 ], [ %27, %25 ]
  %36 = phi i32 [ %33, %29 ], [ %1, %25 ]
  %37 = sub i32 %35, %36
  store i32 %37, ptr %26, align 4
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 39
  %39 = sext i32 %36 to i64
  %40 = sub nsw i64 0, %39
  %41 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %38, i64 noundef %40, i32 noundef %41) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %42 = load i16, ptr %9, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %44

44:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_da_get_block_prep(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.extent_status, align 8
  %6 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !10
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1818, 0\0A.popsection", ""() #16, !srcloc !53
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 16
  %16 = icmp eq i32 %11, %15
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1819, 0\0A.popsection", ""() #16, !srcloc !54
  unreachable

18:                                               ; preds = %9
  %19 = trunc i64 %1 to i32
  %20 = getelementptr inbounds %struct.ext4_map_blocks, ptr %6, i32 0, i32 1
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ext4_map_blocks, ptr %6, i32 0, i32 2
  store i32 1, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #16, !annotation !10
  %22 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 29
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 50
  %32 = load i32, ptr %31, align 8
  %33 = zext i32 %32 to i64
  %34 = shl nuw i64 %33, 32
  br label %35

35:                                               ; preds = %30, %18
  %36 = phi i64 [ %34, %30 ], [ 0, %18 ]
  %37 = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  %40 = or i64 %36, %39
  %41 = icmp ugt i64 %40, -65536
  %42 = select i1 %41, i64 -1, i64 -65536
  %43 = getelementptr inbounds %struct.ext4_map_blocks, ptr %6, i32 0, i32 3
  store i32 0, ptr %43, align 8
  %44 = call i32 @ext4_es_lookup_extent(ptr noundef %0, i32 noundef %19, ptr noundef null, ptr noundef nonnull %5) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %101, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 3
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 4611686018427387904
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %0, i32 -24
  call void @down_read(ptr noundef %52) #16
  br label %122

53:                                               ; preds = %46
  %54 = and i64 %48, 3458764513820540928
  %55 = icmp eq i64 %54, 2305843009213693952
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load ptr, ptr %12, align 4
  %58 = load volatile i32, ptr %2, align 4
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #16
  br label %62

62:                                               ; preds = %61, %56
  %63 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 20
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %42, ptr %66, align 8
  %67 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 3
  %68 = load i32, ptr %67, align 16
  store i32 %68, ptr %10, align 8
  %69 = load volatile i32, ptr %2, align 4
  %70 = and i32 %69, 32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  call void @_set_bit(i32 noundef 5, ptr noundef %2) #16
  br label %73

73:                                               ; preds = %72, %62
  %74 = load volatile i32, ptr %2, align 4
  %75 = and i32 %74, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %202

77:                                               ; preds = %73
  call void @_set_bit(i32 noundef 8, ptr noundef %2) #16
  br label %202

78:                                               ; preds = %53
  %79 = and i64 %48, 576460752303423487
  %80 = add i64 %79, %1
  %81 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  %84 = sub i64 %80, %83
  store i64 %84, ptr %6, align 8
  %85 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = sub i32 %82, %19
  %88 = add i32 %87, %86
  %89 = load i32, ptr %21, align 4
  %90 = call i32 @llvm.umin.i32(i32 %88, i32 %89) #16
  store i32 %90, ptr %21, align 4
  %91 = and i64 %48, 576460752303423488
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = and i64 %48, 1152921504606846976
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1736, 0\0A.popsection", ""() #16, !srcloc !55
  unreachable

97:                                               ; preds = %93, %78
  %98 = phi i32 [ 16, %78 ], [ 2048, %93 ]
  %99 = load i32, ptr %43, align 8
  %100 = or i32 %99, %98
  store i32 %100, ptr %43, align 8
  br label %203

101:                                              ; preds = %35
  %102 = getelementptr i8, ptr %0, i32 -24
  call void @down_read(ptr noundef %102) #16
  %103 = getelementptr i8, ptr %0, i32 -124
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 268435456
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = getelementptr i8, ptr %0, i32 478
  %109 = load i16, ptr %108, align 2
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %107, %101
  %112 = load volatile i32, ptr %103, align 4
  %113 = and i32 %112, 524288
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = call i32 @ext4_ext_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #16
  br label %119

117:                                              ; preds = %111
  %118 = call i32 @ext4_ind_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #16
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %178

122:                                              ; preds = %119, %107, %51
  %123 = load i32, ptr %20, align 8
  %124 = load ptr, ptr %12, align 4
  %125 = getelementptr inbounds %struct.super_block, ptr %124, i32 0, i32 27
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ext4_sb_info, ptr %126, i32 0, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = call fastcc i32 @ext4_da_reserve_space(ptr noundef %0) #16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %148, label %199

133:                                              ; preds = %122
  %134 = call zeroext i1 @ext4_es_scan_clu(ptr noundef %0, ptr noundef nonnull @ext4_es_is_delonly, i32 noundef %123) #16
  br i1 %134, label %152, label %135

135:                                              ; preds = %133
  %136 = call zeroext i1 @ext4_es_scan_clu(ptr noundef %0, ptr noundef nonnull @ext4_es_is_mapped, i32 noundef %123) #16
  br i1 %136, label %152, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %126, i32 0, i32 12
  %139 = load i32, ptr %138, align 16
  %140 = lshr i32 %123, %139
  %141 = call i32 @ext4_clu_mapped(ptr noundef %0, i32 noundef %140) #16
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %199, label %143

143:                                              ; preds = %137
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %143
  %146 = call fastcc i32 @ext4_da_reserve_space(ptr noundef %0) #16
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %199

148:                                              ; preds = %145, %130
  %149 = call i32 @ext4_es_insert_delayed_block(ptr noundef %0, i32 noundef %123, i1 noundef zeroext false) #16
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  call void @ext4_da_release_space(ptr noundef %0, i32 noundef 1) #16
  br label %199

152:                                              ; preds = %143, %135, %133
  %153 = xor i1 %134, true
  %154 = call i32 @ext4_es_insert_delayed_block(ptr noundef %0, i32 noundef %123, i1 noundef zeroext %153) #16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %199

156:                                              ; preds = %152, %148
  %157 = load ptr, ptr %12, align 4
  %158 = load volatile i32, ptr %2, align 4
  %159 = and i32 %158, 16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #16
  br label %162

162:                                              ; preds = %161, %156
  %163 = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 20
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %164, ptr %165, align 8
  %166 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %42, ptr %166, align 8
  %167 = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 3
  %168 = load i32, ptr %167, align 16
  store i32 %168, ptr %10, align 8
  %169 = load volatile i32, ptr %2, align 4
  %170 = and i32 %169, 32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  call void @_set_bit(i32 noundef 5, ptr noundef %2) #16
  br label %173

173:                                              ; preds = %172, %162
  %174 = load volatile i32, ptr %2, align 4
  %175 = and i32 %174, 256
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %173
  call void @_set_bit(i32 noundef 8, ptr noundef %2) #16
  br label %199

178:                                              ; preds = %119
  %179 = icmp sgt i32 %120, 0
  br i1 %179, label %180, label %199

180:                                              ; preds = %178
  %181 = load i32, ptr %21, align 4
  %182 = icmp eq i32 %120, %181
  br i1 %182, label %188, label %183, !prof !11

183:                                              ; preds = %180
  %184 = load ptr, ptr %12, align 4
  %185 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %186 = load i32, ptr %185, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %184, ptr noundef nonnull @__func__.ext4_da_map_blocks, i32 noundef 1782, ptr noundef nonnull @.str.5, i32 noundef %186, i32 noundef %120, i32 noundef %181) #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1783, i32 noundef 9, ptr noundef null) #16
  %187 = load i32, ptr %21, align 4
  br label %188

188:                                              ; preds = %183, %180
  %189 = phi i32 [ %187, %183 ], [ %120, %180 ]
  %190 = load i32, ptr %43, align 8
  %191 = and i32 %190, 2048
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i32 1, i32 2
  %194 = load i32, ptr %20, align 8
  %195 = load i64, ptr %6, align 8
  %196 = call i32 @ext4_es_insert_extent(ptr noundef %0, i32 noundef %194, i32 noundef %189, i64 noundef %195, i32 noundef %193) #16
  %197 = icmp eq i32 %196, 0
  %198 = select i1 %197, i32 %120, i32 %196
  br label %199

199:                                              ; preds = %188, %178, %177, %173, %152, %151, %145, %137, %130
  %200 = phi i32 [ %198, %188 ], [ %120, %178 ], [ %154, %152 ], [ 0, %173 ], [ 0, %177 ], [ %146, %145 ], [ %141, %137 ], [ %149, %151 ], [ %131, %130 ]
  %201 = getelementptr i8, ptr %0, i32 -24
  call void @up_read(ptr noundef %201) #16
  br label %203

202:                                              ; preds = %77, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %254

203:                                              ; preds = %199, %97
  %204 = phi i32 [ %200, %199 ], [ %90, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %254, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %12, align 4
  %208 = load i64, ptr %6, align 8
  %209 = load volatile i32, ptr %2, align 4
  %210 = and i32 %209, 16
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #16
  br label %213

213:                                              ; preds = %212, %206
  %214 = getelementptr inbounds %struct.super_block, ptr %207, i32 0, i32 20
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %215, ptr %216, align 8
  %217 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %208, ptr %217, align 8
  %218 = getelementptr inbounds %struct.super_block, ptr %207, i32 0, i32 3
  %219 = load i32, ptr %218, align 16
  store i32 %219, ptr %10, align 8
  %220 = load i32, ptr %43, align 8
  %221 = and i32 %220, 2608
  %222 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 2
  %223 = load ptr, ptr %222, align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %229

225:                                              ; preds = %213
  %226 = load i32, ptr %2, align 8
  %227 = and i32 %226, -2609
  %228 = or i32 %227, %221
  store i32 %228, ptr %2, align 8
  br label %240

229:                                              ; preds = %237, %213
  %230 = load volatile i32, ptr %2, align 8
  %231 = and i32 %230, -2609
  %232 = or i32 %231, %221
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !41
  br label %233

233:                                              ; preds = %233, %229
  %234 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %230, i32 %232) #16, !srcloc !42
  %235 = extractvalue { i32, i32 } %234, 0
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %233

237:                                              ; preds = %233
  %238 = extractvalue { i32, i32 } %234, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %239 = icmp eq i32 %238, %230
  br i1 %239, label %240, label %229, !prof !11

240:                                              ; preds = %237, %225
  %241 = load volatile i32, ptr %2, align 4
  %242 = and i32 %241, 2048
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %240
  %245 = load volatile i32, ptr %2, align 4
  %246 = and i32 %245, 32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  call void @_set_bit(i32 noundef 5, ptr noundef %2) #16
  br label %249

249:                                              ; preds = %248, %244
  %250 = load volatile i32, ptr %2, align 4
  %251 = and i32 %250, 16
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #16
  br label %254

254:                                              ; preds = %253, %249, %240, %203, %202
  %255 = phi i32 [ %204, %203 ], [ 0, %240 ], [ 0, %202 ], [ 0, %249 ], [ 0, %253 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret i32 %255
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_alloc_da_blocks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_alloc_da_blocks, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !56
  %16 = tail call i32 @__traceiter_ext4_alloc_da_blocks(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !57
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr i8, ptr %0, i32 468
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @filemap_flush(ptr noundef %23) #16
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %24, %21 ], [ 0, %17 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_iomap_begin(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !10
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i64
  %12 = ashr i64 %1, %11
  %13 = icmp sgt i64 %12, 4294967294
  br i1 %13, label %170, label %14

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %0, i32 -124
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 478
  %21 = load i16, ptr %20, align 2
  %22 = icmp ne i16 %21, 0
  %23 = load i1, ptr @ext4_iomap_begin.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %19
  store i1 true, ptr @ext4_iomap_begin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3382, i32 noundef 9, ptr noundef null) #16
  br label %170

27:                                               ; preds = %19
  br i1 %22, label %170, label %28

28:                                               ; preds = %27, %14
  %29 = trunc i64 %12 to i32
  %30 = getelementptr inbounds %struct.ext4_map_blocks, ptr %8, i32 0, i32 1
  store i32 %29, ptr %30, align 8
  %31 = add i64 %2, %1
  %32 = add i64 %31, -1
  %33 = ashr i64 %32, %11
  %34 = tail call i64 @llvm.smin.i64(i64 %33, i64 4294967294)
  %35 = sub i64 %34, %12
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, 1
  %38 = getelementptr inbounds %struct.ext4_map_blocks, ptr %8, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = and i32 %3, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %164, label %41

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %43 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %44

44:                                               ; preds = %52, %41
  %45 = load volatile i32, ptr %42, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %48, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %49 = load volatile i32, ptr %42, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %48

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %45, %44 ], [ %49, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %54 = load i64, ptr %43, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %55 = load volatile i32, ptr %42, align 4
  %56 = icmp eq i32 %55, %53
  br i1 %56, label %57, label %44

57:                                               ; preds = %52
  %58 = icmp sgt i64 %31, %54
  br i1 %58, label %67, label %59

59:                                               ; preds = %57
  %60 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.ext4_map_blocks, ptr %8, i32 0, i32 3
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %169

67:                                               ; preds = %62, %59, %57
  %68 = load i8, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4
  %69 = load i32, ptr %38, align 4
  %70 = icmp ugt i32 %69, 4096
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 4096, ptr %38, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ 4096, %71 ], [ %69, %67 ]
  %74 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 27
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 8
  %79 = load i32, ptr %78, align 32
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !62
  %80 = load volatile i32, ptr %15, align 4
  %81 = and i32 %80, 524288
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = call i32 @ext4_ind_trans_blocks(ptr noundef %0, i32 noundef %73) #16
  br label %87

85:                                               ; preds = %72
  %86 = call i32 @ext4_ext_index_trans_blocks(ptr noundef %0, i32 noundef 1) #16
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %86, %85 ], [ %84, %83 ]
  %89 = add i32 %88, 1
  %90 = call i32 @llvm.umin.i32(i32 %89, i32 %79) #16
  %91 = load ptr, ptr %74, align 4
  %92 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 27
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %93, i32 0, i32 6
  %95 = load i32, ptr %94, align 8
  %96 = icmp ugt i32 %90, %95
  %97 = select i1 %96, i32 %95, i32 %89
  %98 = add i32 %88, 6
  %99 = add i32 %98, %90
  %100 = add i32 %99, %97
  %101 = and i32 %3, 16
  %102 = icmp eq i32 %101, 0
  %103 = zext i8 %68 to i64
  %104 = getelementptr inbounds %struct.ext4_sb_info, ptr %93, i32 0, i32 11
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 3
  %107 = call ptr @__ext4_journal_start_sb(ptr noundef %91, i32 noundef 3332, i32 noundef 3, i32 noundef %100, i32 noundef 0, i32 noundef %106) #16
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %112

109:                                              ; preds = %153, %87
  %110 = phi ptr [ %107, %87 ], [ %160, %153 ]
  %111 = ptrtoint ptr %110 to i32
  br label %162

112:                                              ; preds = %153, %87
  %113 = phi ptr [ %160, %153 ], [ %107, %87 ]
  %114 = phi i32 [ %141, %153 ], [ 0, %87 ]
  br i1 %102, label %115, label %116, !prof !9

115:                                              ; preds = %112
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3340, i32 noundef 9, ptr noundef null) #16
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32, ptr %30, align 8
  br label %118

118:                                              ; preds = %126, %116
  %119 = load volatile i32, ptr %42, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %122, %118
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %123 = load volatile i32, ptr %42, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %122

126:                                              ; preds = %122, %118
  %127 = phi i32 [ %119, %118 ], [ %123, %122 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %128 = load i64, ptr %43, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %129 = load volatile i32, ptr %42, align 4
  %130 = icmp eq i32 %129, %127
  br i1 %130, label %131, label %118

131:                                              ; preds = %126
  %132 = zext i32 %117 to i64
  %133 = shl i64 %132, %103
  %134 = icmp slt i64 %133, %128
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load volatile i32, ptr %15, align 4
  %137 = and i32 %136, 524288
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 %114, i32 11
  br label %140

140:                                              ; preds = %135, %131
  %141 = phi i32 [ 1, %131 ], [ %139, %135 ]
  %142 = call i32 @ext4_map_blocks(ptr noundef %113, ptr noundef %0, ptr noundef nonnull %8, i32 noundef %141) #16
  %143 = icmp ne i32 %141, 0
  %144 = icmp ne i32 %142, 0
  %145 = select i1 %143, i1 true, i1 %144
  %146 = select i1 %145, i32 %142, i32 -15
  %147 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_iomap_alloc, i32 noundef 3364, ptr noundef %113) #16
  %148 = icmp eq i32 %146, -28
  br i1 %148, label %149, label %162

149:                                              ; preds = %140
  %150 = load ptr, ptr %74, align 4
  %151 = call i32 @ext4_should_retry_alloc(ptr noundef %150, ptr noundef nonnull %7) #16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %74, align 4
  %155 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 27
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.ext4_sb_info, ptr %156, i32 0, i32 11
  %158 = load i32, ptr %157, align 4
  %159 = shl i32 %158, 3
  %160 = call ptr @__ext4_journal_start_sb(ptr noundef %154, i32 noundef 3332, i32 noundef 3, i32 noundef %100, i32 noundef 0, i32 noundef %159) #16
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %109, label %112

162:                                              ; preds = %149, %140, %109
  %163 = phi i32 [ %111, %109 ], [ -28, %149 ], [ %146, %140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %166

164:                                              ; preds = %28
  %165 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %166, %62
  call fastcc void @ext4_set_iomap(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %8, i64 noundef %1, i64 noundef %2)
  br label %170

170:                                              ; preds = %169, %166, %27, %26, %6
  %171 = phi i32 [ 0, %169 ], [ -22, %6 ], [ -34, %27 ], [ %167, %166 ], [ -34, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret i32 %171
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ext4_iomap_end(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #8 {
  %7 = and i32 %4, 17
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %3, 0
  %10 = and i1 %9, %8
  %11 = select i1 %10, i32 -15, i32 0
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_iomap_overwrite_begin(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = and i32 %3, -2
  %8 = tail call i32 @ext4_iomap_begin(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %7, ptr noundef %4, ptr noundef %5)
  %9 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 3
  %10 = load i16, ptr %9, align 8
  %11 = icmp ne i16 %10, 2
  %12 = load i1, ptr @ext4_iomap_overwrite_begin.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %6
  store i1 true, ptr @ext4_iomap_overwrite_begin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3429, i32 noundef 9, ptr noundef null) #16
  br label %16

16:                                               ; preds = %15, %6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_iomap_begin_report(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca %struct.extent_status, align 8
  %8 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !10
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i64
  %12 = ashr i64 %1, %11
  %13 = icmp sgt i64 %12, 4294967294
  br i1 %13, label %84, label %14

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %0, i32 -124
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 478
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @ext4_inline_data_iomap(ptr noundef %0, ptr noundef %4) #16
  switch i32 %24, label %84 [
    i32 -11, label %30
    i32 0, label %25
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = icmp ugt i64 %27, %1
  %29 = select i1 %28, i32 0, i32 -2
  br label %84

30:                                               ; preds = %23, %19, %14
  %31 = trunc i64 %12 to i32
  %32 = getelementptr inbounds %struct.ext4_map_blocks, ptr %8, i32 0, i32 1
  store i32 %31, ptr %32, align 8
  %33 = add i64 %1, -1
  %34 = add i64 %33, %2
  %35 = ashr i64 %34, %11
  %36 = tail call i64 @llvm.smin.i64(i64 %35, i64 4294967294)
  %37 = sub i64 %36, %12
  %38 = trunc i64 %37 to i32
  %39 = add i32 %38, 1
  %40 = getelementptr inbounds %struct.ext4_map_blocks, ptr %8, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = load volatile i32, ptr %15, align 4
  %42 = and i32 %41, 524288
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 27
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 13
  %50 = load i64, ptr %49, align 8
  %51 = icmp sgt i64 %50, %1
  br i1 %51, label %52, label %82

52:                                               ; preds = %44, %30
  %53 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 32, i1 false) #16, !annotation !10
  %58 = load i32, ptr %32, align 8
  %59 = load i32, ptr %40, align 4
  %60 = add i32 %58, -1
  %61 = add i32 %60, %59
  call void @ext4_es_find_extent_range(ptr noundef %0, ptr noundef nonnull @ext4_es_is_delayed, i32 noundef %58, i32 noundef %61, ptr noundef nonnull %7) #16
  %62 = getelementptr inbounds %struct.extent_status, ptr %7, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.extent_status, ptr %7, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, %61
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call fastcc void @ext4_set_iomap(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %8, i64 noundef %1, i64 noundef %2)
  br label %84

70:                                               ; preds = %65
  %71 = load i32, ptr %32, align 8
  %72 = icmp ugt i32 %67, %71
  %73 = select i1 %72, i32 0, i32 %63
  %74 = sub i32 %67, %71
  %75 = add i32 %74, %73
  store i32 %75, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call fastcc void @ext4_set_iomap(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %8, i64 noundef %1, i64 noundef %2)
  br i1 %72, label %84, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 3
  %78 = load i16, ptr %77, align 8
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  store i16 1, ptr %77, align 8
  br label %84

81:                                               ; preds = %55
  call fastcc void @ext4_set_iomap(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %8, i64 noundef %1, i64 noundef %2)
  br label %84

82:                                               ; preds = %44
  %83 = getelementptr inbounds %struct.ext4_map_blocks, ptr %8, i32 0, i32 3
  store i32 0, ptr %83, align 8
  call fastcc void @ext4_set_iomap(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %8, i64 noundef %1, i64 noundef %2)
  br label %84

84:                                               ; preds = %82, %81, %80, %76, %70, %69, %52, %25, %23, %6
  %85 = phi i32 [ -22, %6 ], [ %24, %23 ], [ %29, %25 ], [ %53, %52 ], [ 0, %82 ], [ 0, %81 ], [ 0, %80 ], [ 0, %76 ], [ 0, %70 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_set_aops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  switch i32 %2, label %7 [
    i32 2, label %8
    i32 4, label %8
    i32 1, label %3
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  store ptr @ext4_journalled_aops, ptr %6, align 4
  br label %22

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3648, 0\0A.popsection", ""() #16, !srcloc !63
  unreachable

8:                                                ; preds = %1, %1
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 134217728
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 9
  br i1 %16, label %21, label %20

20:                                               ; preds = %8
  store ptr @ext4_da_aops, ptr %19, align 4
  br label %22

21:                                               ; preds = %8
  store ptr @ext4_aops, ptr %19, align 4
  br label %22

22:                                               ; preds = %21, %20, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_zero_partial_blocks(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = add i64 %2, -1
  %10 = add i64 %9, %3
  %11 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %12 = load i32, ptr %11, align 16
  %13 = add i32 %12, -1
  %14 = trunc i64 %2 to i32
  %15 = and i32 %13, %14
  %16 = trunc i64 %10 to i32
  %17 = and i32 %13, %16
  %18 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i64
  %21 = ashr i64 %2, %20
  %22 = ashr i64 %10, %20
  %23 = icmp eq i64 %21, %22
  %24 = icmp eq i32 %15, 0
  br i1 %23, label %25, label %30

25:                                               ; preds = %4
  %26 = icmp eq i32 %17, %13
  %27 = and i1 %24, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc i32 @ext4_block_zero_page_range(ptr noundef %0, ptr noundef %8, i64 noundef %2, i64 noundef %3)
  br label %47

30:                                               ; preds = %4
  br i1 %24, label %38, label %31

31:                                               ; preds = %30
  %32 = zext i32 %12 to i64
  %33 = tail call fastcc i32 @ext4_block_zero_page_range(ptr noundef %0, ptr noundef %8, i64 noundef %2, i64 noundef %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, ptr %11, align 16
  %37 = add i32 %36, -1
  br label %38

38:                                               ; preds = %35, %30, %25
  %39 = phi i32 [ %37, %35 ], [ %13, %25 ], [ %13, %30 ]
  %40 = icmp eq i32 %17, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = zext i32 %17 to i64
  %43 = sub i64 %10, %42
  %44 = add i32 %17, 1
  %45 = zext i32 %44 to i64
  %46 = tail call fastcc i32 @ext4_block_zero_page_range(ptr noundef %0, ptr noundef %8, i64 noundef %43, i64 noundef %45)
  br label %47

47:                                               ; preds = %41, %38, %31, %28
  %48 = phi i32 [ %29, %28 ], [ %33, %31 ], [ %46, %41 ], [ 0, %38 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_block_zero_page_range(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 4095
  %8 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 16
  %12 = add i32 %11, 4095
  %13 = and i32 %12, %7
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  %16 = tail call i64 @llvm.umin.i64(i64 %15, i64 %3)
  %17 = ashr i64 %2, 12
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -129
  %22 = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %18, i32 noundef 7, i32 noundef %21) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %145, label %24

24:                                               ; preds = %4
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 16
  %28 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 12, %30
  %32 = zext i32 %31 to i64
  %33 = shl i64 %17, %32
  %34 = trunc i64 %33 to i32
  %35 = load volatile i32, ptr %22, align 4
  %36 = and i32 %35, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  tail call void @create_empty_buffers(ptr noundef nonnull %22, i32 noundef %27, i32 noundef 0) #16
  br label %39

39:                                               ; preds = %38, %24
  %40 = load volatile i32, ptr %22, align 4
  %41 = and i32 %40, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44, !prof !9

43:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3683, 0\0A.popsection", ""() #16, !srcloc !64
  unreachable

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = inttoptr i32 %46 to ptr
  %48 = icmp ult i32 %7, %27
  br i1 %48, label %58, label %49

49:                                               ; preds = %49, %44
  %50 = phi ptr [ %54, %49 ], [ %47, %44 ]
  %51 = phi i32 [ %55, %49 ], [ %34, %44 ]
  %52 = phi i32 [ %56, %49 ], [ %27, %44 ]
  %53 = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = add i32 %51, 1
  %56 = add i32 %52, %27
  %57 = icmp ult i32 %7, %56
  br i1 %57, label %58, label %49

58:                                               ; preds = %49, %44
  %59 = phi i32 [ %34, %44 ], [ %55, %49 ]
  %60 = phi ptr [ %47, %44 ], [ %54, %49 ]
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 262144
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %127

64:                                               ; preds = %58
  %65 = load volatile i32, ptr %60, align 4
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = zext i32 %59 to i64
  %70 = tail call fastcc i32 @_ext4_get_block(ptr noundef %5, i64 noundef %69, ptr noundef %60, i32 noundef 0) #16
  %71 = load volatile i32, ptr %60, align 4
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %127, label %74

74:                                               ; preds = %68, %64
  %75 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !11

79:                                               ; preds = %74
  %80 = add i32 %76, -1
  br label %83

81:                                               ; preds = %74
  %82 = ptrtoint ptr %22 to i32
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = inttoptr i32 %84 to ptr
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !65
  %90 = load volatile i32, ptr %60, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  tail call void @_set_bit(i32 noundef 0, ptr noundef %60) #16
  br label %94

94:                                               ; preds = %93, %89, %83
  %95 = load volatile i32, ptr %60, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = tail call i32 @ext4_read_bh_lock(ptr noundef %60, i32 noundef 0, i1 noundef zeroext true) #16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %127

101:                                              ; preds = %98, %94
  %102 = tail call i32 @ext4_inode_journal_mode(ptr noundef %5) #16
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %8, align 4
  %107 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_block_zero_page_range, i32 noundef 3726, ptr noundef %0, ptr noundef %106, ptr noundef %60, i32 noundef 1) #16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %105, %101
  %110 = trunc i64 %16 to i32
  %111 = add i32 %7, %110
  tail call void @zero_user_segments(ptr noundef nonnull %22, i32 noundef %7, i32 noundef %111, i32 noundef 0, i32 noundef 0) #16
  %112 = tail call i32 @ext4_inode_journal_mode(ptr noundef %5) #16
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_block_zero_page_range, i32 noundef 3734, ptr noundef %0, ptr noundef %5, ptr noundef %60) #16
  br label %127

117:                                              ; preds = %109
  tail call void @mark_buffer_dirty(ptr noundef %60) #16
  %118 = tail call i32 @ext4_inode_journal_mode(ptr noundef %5) #16
  %119 = and i32 %118, 2
  %120 = icmp eq i32 %119, 0
  %121 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  %122 = or i1 %121, %120
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = getelementptr i8, ptr %5, i32 392
  %125 = load ptr, ptr %124, align 8
  %126 = tail call i32 @jbd2_journal_inode_ranged_write(ptr noundef %0, ptr noundef %125, i64 noundef %2, i64 noundef %16) #16
  br label %127

127:                                              ; preds = %123, %117, %115, %105, %98, %68, %58
  %128 = phi i32 [ 0, %58 ], [ %107, %105 ], [ %116, %115 ], [ 0, %117 ], [ %99, %98 ], [ 0, %68 ], [ %126, %123 ]
  tail call void @unlock_page(ptr noundef nonnull %22) #16
  %129 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133, !prof !11

133:                                              ; preds = %127
  %134 = add i32 %130, -1
  br label %137

135:                                              ; preds = %127
  %136 = ptrtoint ptr %22 to i32
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr inbounds %struct.page, ptr %139, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #16, !srcloc !41
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #16, !srcloc !67
  %142 = extractvalue { i32, i32 } %141, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  tail call void @__put_page(ptr noundef %139) #16
  br label %145

145:                                              ; preds = %144, %137, %4
  %146 = phi i32 [ -12, %4 ], [ %128, %137 ], [ %128, %144 ]
  ret i32 %146
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ext4_can_truncate(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, -4096
  switch i16 %3, label %48 [
    i16 -32768, label %49
    i16 16384, label %49
    i16 -24576, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -124
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -144
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 16
  %18 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 12
  %21 = load i32, ptr %20, align 16
  %22 = shl i32 %17, %21
  %23 = lshr i32 %22, 9
  br label %24

24:                                               ; preds = %13, %9
  %25 = phi i32 [ %23, %13 ], [ 0, %9 ]
  %26 = load volatile i32, ptr %5, align 4
  %27 = and i32 %26, 268435456
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %0, i32 478
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29, %24
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %35 = load i64, ptr %34, align 8
  %36 = zext i32 %25 to i64
  %37 = icmp eq i64 %35, %36
  br label %44

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %40 = load i64, ptr %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = icmp slt i64 %40, 60
  %43 = and i1 %41, %42
  br label %44

44:                                               ; preds = %38, %33, %29
  %45 = phi i1 [ false, %29 ], [ %37, %33 ], [ %43, %38 ]
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  br label %49

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %48, %44, %1, %1
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_update_disksize_before_punch(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %6

6:                                                ; preds = %14, %3
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %11 = load volatile i32, ptr %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %7, %6 ], [ %11, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %16 = load i64, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %17 = load volatile i32, ptr %4, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %6

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3865, i32 noundef 9, ptr noundef null) #16
  br label %24

24:                                               ; preds = %23, %19
  %25 = icmp slt i64 %16, %1
  %26 = add i64 %2, %1
  %27 = icmp slt i64 %26, %16
  %28 = or i1 %25, %27
  br i1 %28, label %64, label %29

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %0, i32 -32
  %31 = load i64, ptr %30, align 8
  %32 = icmp slt i64 %31, %16
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 27
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 3
  %41 = tail call ptr @__ext4_journal_start_sb(ptr noundef %35, i32 noundef 3872, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %40) #16
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = ptrtoint ptr %41 to i32
  br label %64

45:                                               ; preds = %33
  %46 = load i16, ptr %0, align 8
  %47 = and i16 %46, -4096
  %48 = icmp eq i16 %47, -32768
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load volatile i32, ptr %20, align 4
  %51 = icmp eq i32 %50, 0
  %52 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !9

55:                                               ; preds = %49
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3415, i32 noundef 9, ptr noundef null) #16
  br label %56

56:                                               ; preds = %55, %49, %45
  %57 = getelementptr i8, ptr %0, i32 -24
  tail call void @down_write(ptr noundef %57) #16
  %58 = load i64, ptr %30, align 8
  %59 = icmp slt i64 %58, %16
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store volatile i64 %16, ptr %30, align 8
  br label %61

61:                                               ; preds = %60, %56
  tail call void @up_write(ptr noundef %57) #16
  %62 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %41, ptr noundef %0, ptr noundef nonnull @__func__.ext4_update_disksize_before_punch, i32 noundef 3876)
  %63 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_update_disksize_before_punch, i32 noundef 3877, ptr noundef %41) #16
  br label %64

64:                                               ; preds = %61, %43, %29, %24
  %65 = phi i32 [ %44, %43 ], [ %62, %61 ], [ 0, %24 ], [ 0, %29 ]
  ret i32 %65
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %4

4:                                                ; preds = %12, %1
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %5, %4 ], [ %9, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %14 = load i64, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %15 = load volatile i32, ptr %2, align 4
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %17, label %4

17:                                               ; preds = %12
  ret i64 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_break_layouts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ext4_break_layouts.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %1
  store i1 true, ptr @ext4_break_layouts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3894, i32 noundef 9, ptr noundef null) #16
  br label %11

11:                                               ; preds = %10, %1
  %12 = select i1 %6, i32 -22, i32 0
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_punch_hole(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_punch_hole, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !69
  %23 = tail call i32 @__traceiter_ext4_punch_hole(ptr noundef null, ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !70
  br label %24

24:                                               ; preds = %22, %11, %3
  %25 = getelementptr i8, ptr %0, i32 -128
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %25) #16
  %26 = getelementptr i8, ptr %0, i32 -124
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 268435456
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %0, i32 478
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 2
  tail call void @down_write(ptr noundef %35) #16
  %36 = tail call i32 @ext4_convert_inline_data(ptr noundef %0) #16
  tail call void @up_write(ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %214

38:                                               ; preds = %34, %30, %24
  %39 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 33554432
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = add i64 %1, -1
  %45 = add i64 %44, %2
  %46 = tail call i32 @filemap_write_and_wait_range(ptr noundef %8, i64 noundef %1, i64 noundef %45) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %214

48:                                               ; preds = %43, %38
  %49 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @down_write(ptr noundef %49) #16
  %50 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %51 = load i64, ptr %50, align 8
  %52 = icmp sgt i64 %51, %1
  br i1 %52, label %53, label %212

53:                                               ; preds = %48
  %54 = add i64 %2, %1
  %55 = icmp sgt i64 %54, %51
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = add i64 %51, 4096
  %58 = and i64 %57, -4096
  %59 = sub i64 %58, %1
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i64 [ %59, %56 ], [ %2, %53 ]
  %62 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %63 = load i32, ptr %62, align 16
  %64 = add i32 %63, -1
  %65 = zext i32 %64 to i64
  %66 = and i64 %65, %1
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = add i64 %61, %1
  %70 = and i64 %69, %65
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68, %60
  %73 = tail call i32 @ext4_inode_attach_jinode(ptr noundef %0)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %212, label %75

75:                                               ; preds = %72, %68
  tail call void @inode_dio_wait(ptr noundef %0) #16
  %76 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 2
  tail call void @down_write(ptr noundef %76) #16
  %77 = load ptr, ptr %7, align 8
  %78 = getelementptr inbounds %struct.address_space, ptr %77, i32 0, i32 2
  %79 = load volatile i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  %81 = load i1, ptr @ext4_break_layouts.__already_done, align 1
  %82 = xor i1 %81, true
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %85, !prof !9

84:                                               ; preds = %75
  store i1 true, ptr @ext4_break_layouts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3894, i32 noundef 9, ptr noundef null) #16
  br label %85

85:                                               ; preds = %84, %75
  br i1 %80, label %210, label %86

86:                                               ; preds = %85
  %87 = add i64 %1, -1
  %88 = load i32, ptr %62, align 16
  %89 = add i32 %88, -1
  %90 = zext i32 %89 to i64
  %91 = or i64 %87, %90
  %92 = add i64 %91, 1
  %93 = add i64 %61, %1
  %94 = xor i64 %90, -1
  %95 = and i64 %93, %94
  %96 = add i64 %95, -1
  %97 = icmp sgt i64 %96, %92
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = tail call i32 @ext4_update_disksize_before_punch(ptr noundef %0, i64 noundef %1, i64 noundef %61)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %210

101:                                              ; preds = %98
  tail call void @truncate_pagecache_range(ptr noundef %0, i64 noundef %92, i64 noundef %96) #16
  br label %102

102:                                              ; preds = %101, %86
  %103 = load volatile i32, ptr %26, align 4
  %104 = and i32 %103, 524288
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %0)
  %108 = load ptr, ptr %5, align 4
  %109 = getelementptr inbounds %struct.super_block, ptr %108, i32 0, i32 27
  %110 = load ptr, ptr %109, align 4
  br label %134

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %5, align 4
  %115 = getelementptr inbounds %struct.super_block, ptr %114, i32 0, i32 2
  %116 = load i8, ptr %115, align 4
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %117, -9
  %119 = zext i32 %118 to i64
  %120 = lshr i64 %113, %119
  %121 = trunc i64 %120 to i32
  %122 = tail call i32 @llvm.umax.i32(i32 %121, i32 2) #16
  %123 = tail call i32 @llvm.umin.i32(i32 %122, i32 64) #16
  %124 = getelementptr inbounds %struct.super_block, ptr %114, i32 0, i32 27
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %125, i32 0, i32 15
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.ext4_super_block, ptr %127, i32 0, i32 29
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 64
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, i32 12, i32 24
  %133 = add nuw nsw i32 %123, %132
  br label %134

134:                                              ; preds = %111, %106
  %135 = phi ptr [ %110, %106 ], [ %125, %111 ]
  %136 = phi ptr [ %108, %106 ], [ %114, %111 ]
  %137 = phi i32 [ %107, %106 ], [ %133, %111 ]
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 11
  %139 = load i32, ptr %138, align 4
  %140 = shl i32 %139, 3
  %141 = tail call ptr @__ext4_journal_start_sb(ptr noundef %136, i32 noundef 4011, i32 noundef 5, i32 noundef %137, i32 noundef 0, i32 noundef %140) #16
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = ptrtoint ptr %141 to i32
  tail call void @__ext4_std_error(ptr noundef %6, ptr noundef nonnull @__func__.ext4_punch_hole, i32 noundef 4014, i32 noundef %144) #16
  br label %210

145:                                              ; preds = %134
  %146 = tail call i32 @ext4_zero_partial_blocks(ptr noundef %141, ptr noundef %0, i64 noundef %1, i64 noundef %61)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %207

148:                                              ; preds = %145
  %149 = load i32, ptr %62, align 16
  %150 = zext i32 %149 to i64
  %151 = add i64 %87, %150
  %152 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 2
  %153 = load i8, ptr %152, align 4
  %154 = zext i8 %153 to i64
  %155 = ashr i64 %151, %154
  %156 = trunc i64 %155 to i32
  %157 = ashr i64 %93, %154
  %158 = trunc i64 %157 to i32
  %159 = icmp ugt i32 %158, %156
  br i1 %159, label %160, label %177

160:                                              ; preds = %148
  %161 = getelementptr i8, ptr %0, i32 -24
  tail call void @down_write(ptr noundef %161) #16
  tail call void @ext4_discard_preallocations(ptr noundef %0, i32 noundef 0) #16
  %162 = sub i32 %158, %156
  %163 = tail call i32 @ext4_es_remove_extent(ptr noundef %0, i32 noundef %156, i32 noundef %162) #16
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  tail call void @up_write(ptr noundef %161) #16
  br label %207

166:                                              ; preds = %160
  %167 = load volatile i32, ptr %26, align 4
  %168 = and i32 %167, 524288
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = add i32 %158, -1
  %172 = tail call i32 @ext4_ext_remove_space(ptr noundef %0, i32 noundef %156, i32 noundef %171) #16
  br label %175

173:                                              ; preds = %166
  %174 = tail call i32 @ext4_ind_remove_space(ptr noundef %141, ptr noundef %0, i32 noundef %156, i32 noundef %158) #16
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi i32 [ %172, %170 ], [ %174, %173 ]
  tail call void @up_write(ptr noundef %161) #16
  br label %177

177:                                              ; preds = %175, %148
  %178 = phi i32 [ %176, %175 ], [ 0, %148 ]
  tail call void @ext4_fc_track_range(ptr noundef %141, ptr noundef %0, i32 noundef %156, i32 noundef %158) #16
  %179 = load ptr, ptr %5, align 4
  %180 = getelementptr inbounds %struct.super_block, ptr %179, i32 0, i32 10
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  %189 = icmp ult ptr %141, inttoptr (i32 4096 to ptr)
  %190 = select i1 %188, i1 true, i1 %189
  br i1 %190, label %197, label %193

191:                                              ; preds = %177
  %192 = icmp ult ptr %141, inttoptr (i32 4096 to ptr)
  br i1 %192, label %197, label %193

193:                                              ; preds = %191, %184
  %194 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %141, i32 0, i32 7
  %195 = load i32, ptr %194, align 4
  %196 = or i32 %195, 1
  store i32 %196, ptr %194, align 4
  br label %197

197:                                              ; preds = %193, %191, %184
  %198 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %199 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %0) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %199, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %198, ptr noundef align 8 dereferenceable(16) %199, i32 16, i1 false)
  %200 = call i32 @__ext4_mark_inode_dirty(ptr noundef %141, ptr noundef %0, ptr noundef nonnull @__func__.ext4_punch_hole, i32 noundef 4054)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202, !prof !11

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202, %197
  %204 = phi i32 [ %200, %202 ], [ %178, %197 ]
  %205 = icmp sgt i32 %204, -1
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  call fastcc void @ext4_update_inode_fsync_trans(ptr noundef %141, ptr noundef %0, i32 noundef 1)
  br label %207

207:                                              ; preds = %206, %203, %165, %145
  %208 = phi i32 [ %146, %145 ], [ %163, %165 ], [ %204, %206 ], [ %204, %203 ]
  %209 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_punch_hole, i32 noundef 4060, ptr noundef %141) #16
  br label %210

210:                                              ; preds = %207, %143, %98, %85
  %211 = phi i32 [ -22, %85 ], [ %99, %98 ], [ %144, %143 ], [ %208, %207 ]
  call void @up_write(ptr noundef %76) #16
  br label %212

212:                                              ; preds = %210, %72, %48
  %213 = phi i32 [ 0, %48 ], [ %73, %72 ], [ %211, %210 ]
  call void @up_write(ptr noundef %49) #16
  br label %214

214:                                              ; preds = %212, %43, %34
  %215 = phi i32 [ %213, %212 ], [ %36, %34 ], [ %46, %43 ]
  ret i32 %215
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_convert_inline_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_inode_attach_jinode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 392
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @jbd2_inode_cache, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3264) #16
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %16) #16
  %17 = load ptr, ptr %2, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = icmp eq ptr %15, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %22 = load i16, ptr %16, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %32

24:                                               ; preds = %19
  store ptr %15, ptr %2, align 8
  tail call void @jbd2_journal_init_jbd_inode(ptr noundef nonnull %15, ptr noundef %0) #16
  br label %25

25:                                               ; preds = %24, %13
  %26 = phi ptr [ %15, %13 ], [ null, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %27 = load i16, ptr %16, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %29 = icmp eq ptr %26, null
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %25
  %31 = load ptr, ptr @jbd2_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef nonnull %26) #16
  br label %32

32:                                               ; preds = %30, %25, %21, %5, %1
  %33 = phi i32 [ -12, %21 ], [ 0, %5 ], [ 0, %1 ], [ 0, %30 ], [ 0, %25 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_writepage_trans_blocks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @jbd2_journal_blocks_per_page(ptr noundef %0) #16
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi ptr [ %13, %9 ], [ %5, %1 ]
  %16 = phi i32 [ %10, %9 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 8
  %18 = load i32, ptr %17, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !62
  %19 = getelementptr i8, ptr %0, i32 -124
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = tail call i32 @ext4_ind_trans_blocks(ptr noundef %0, i32 noundef %16) #16
  br label %27

25:                                               ; preds = %14
  %26 = tail call i32 @ext4_ext_index_trans_blocks(ptr noundef %0, i32 noundef %16) #16
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  %29 = add i32 %28, %16
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %18) #16
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = icmp ugt i32 %30, %35
  %37 = select i1 %36, i32 %35, i32 %29
  %38 = add i32 %28, 6
  %39 = add i32 %38, %30
  %40 = add i32 %39, %37
  %41 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 %16
  %45 = add i32 %40, %44
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_remove_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ind_remove_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ext4_update_inode_fsync_trans(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #10 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_init_jbd_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inline_data_truncate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_truncate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ind_truncate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_get_inode_loc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = call fastcc i32 @__ext4_get_inode_loc(ptr noundef %5, i32 noundef %7, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %9 = icmp eq i32 %8, -5
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, ptr %3, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_get_inode_loc, i32 noundef 4538, i64 noundef %11, i32 noundef 5, ptr noundef nonnull @.str.11) #16
  br label %12

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ext4_get_inode_loc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.blk_plug, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !10
  store ptr null, ptr %3, align 4
  %7 = icmp ult i32 %1, 2
  br i1 %7, label %191, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %191, label %15

15:                                               ; preds = %8
  %16 = add i32 %1, -1
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 4
  %18 = load i32, ptr %17, align 16
  %19 = udiv i32 %16, %18
  %20 = getelementptr inbounds %struct.ext4_iloc, ptr %3, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %19, ptr noundef null) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %191, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 4
  %28 = load i32, ptr %27, align 16
  %29 = urem i32 %16, %28
  %30 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef nonnull %21) #16
  %31 = freeze i32 %29
  %32 = freeze i32 %26
  %33 = sdiv i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add i64 %30, %34
  %36 = mul i32 %33, %32
  %37 = sub i32 %31, %36
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %38, i32 0, i32 29
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, %37
  %42 = getelementptr inbounds %struct.ext4_iloc, ptr %3, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 16
  %47 = tail call ptr @__getblk_gfp(ptr noundef %44, i64 noundef %35, i32 noundef %46, i32 noundef 8) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %191, label %49, !prof !9

49:                                               ; preds = %23
  %50 = load volatile i32, ptr %47, align 4
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load volatile i32, ptr %47, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %47) #16
  br label %58

58:                                               ; preds = %57, %53, %49
  %59 = load volatile i32, ptr %47, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %190

62:                                               ; preds = %58
  %63 = load volatile i32, ptr %47, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %47) #16, !srcloc !41
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %47, ptr nonnull %47, i32 4, ptr nonnull elementtype(i32) %47) #16, !srcloc !47
  %68 = extractvalue { i32, i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %62
  tail call void @__lock_buffer(ptr noundef nonnull %47) #16
  br label %72

72:                                               ; preds = %71, %66
  %73 = load volatile i32, ptr %47, align 4
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load volatile i32, ptr %47, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %47) #16
  br label %81

81:                                               ; preds = %80, %76, %72
  %82 = load volatile i32, ptr %47, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %189

85:                                               ; preds = %81
  %86 = icmp eq ptr %2, null
  br i1 %86, label %145, label %87

87:                                               ; preds = %85
  %88 = getelementptr i8, ptr %2, i32 -128
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %145

92:                                               ; preds = %87
  %93 = sub i32 0, %26
  %94 = and i32 %29, %93
  %95 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef nonnull %21) #16
  %96 = load ptr, ptr %43, align 4
  %97 = load i32, ptr %45, align 16
  %98 = tail call ptr @__getblk_gfp(ptr noundef %96, i64 noundef %95, i32 noundef %97, i32 noundef 8) #16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %145, label %100, !prof !9

100:                                              ; preds = %92
  %101 = load volatile i32, ptr %98, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.buffer_head, ptr %98, i32 0, i32 5
  %106 = add i32 %94, %26
  %107 = icmp slt i32 %94, %106
  br i1 %107, label %109, label %125

108:                                              ; preds = %100
  tail call void @__brelse(ptr noundef nonnull %98) #16
  br label %145

109:                                              ; preds = %121, %104
  %110 = phi i32 [ %122, %121 ], [ %94, %104 ]
  %111 = icmp eq i32 %110, %29
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %105, align 4
  %114 = lshr i32 %110, 5
  %115 = getelementptr i32, ptr %113, i32 %114
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %110, 31
  %118 = shl nuw i32 1, %117
  %119 = and i32 %116, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %112, %109
  %122 = add i32 %110, 1
  %123 = icmp eq i32 %122, %106
  br i1 %123, label %124, label %109

124:                                              ; preds = %121
  tail call void @__brelse(ptr noundef nonnull %98) #16
  br label %128

125:                                              ; preds = %112, %104
  %126 = phi i32 [ %94, %104 ], [ %110, %112 ]
  tail call void @__brelse(ptr noundef nonnull %98) #16
  %127 = icmp eq i32 %126, %106
  br i1 %127, label %128, label %145

128:                                              ; preds = %125, %124
  %129 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %42, align 4
  %132 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 4
  %133 = load i32, ptr %132, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %130, i8 0, i32 %133, i1 false)
  %134 = load volatile i32, ptr %88, align 4
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = getelementptr i8, ptr %130, i32 %131
  %139 = tail call fastcc i32 @ext4_fill_raw_inode(ptr noundef nonnull %2, ptr noundef %138)
  br label %140

140:                                              ; preds = %137, %128
  %141 = load volatile i32, ptr %47, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %189

144:                                              ; preds = %140
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %47) #16
  br label %189

145:                                              ; preds = %125, %108, %92, %87, %85
  call void @blk_start_plug(ptr noundef nonnull %6) #16
  %146 = load ptr, ptr %9, align 4
  %147 = getelementptr inbounds %struct.ext4_sb_info, ptr %146, i32 0, i32 31
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %176, label %150

150:                                              ; preds = %145
  %151 = call i64 @ext4_inode_table(ptr noundef %0, ptr noundef nonnull %21) #16
  %152 = zext i32 %148 to i64
  %153 = sub nsw i64 0, %152
  %154 = and i64 %35, %153
  %155 = call i64 @llvm.umax.i64(i64 %151, i64 %154)
  %156 = add i64 %155, %152
  %157 = load ptr, ptr %9, align 4
  %158 = getelementptr inbounds %struct.ext4_sb_info, ptr %157, i32 0, i32 4
  %159 = load i32, ptr %158, align 16
  %160 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %0)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %150
  %163 = call i32 @ext4_itable_unused_count(ptr noundef %0, ptr noundef nonnull %21) #16
  %164 = sub i32 %159, %163
  br label %165

165:                                              ; preds = %162, %150
  %166 = phi i32 [ %164, %162 ], [ %159, %150 ]
  %167 = udiv i32 %166, %26
  %168 = zext i32 %167 to i64
  %169 = add i64 %151, %168
  %170 = call i64 @llvm.umin.i64(i64 %156, i64 %169)
  %171 = icmp ugt i64 %155, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %172, %165
  %173 = phi i64 [ %174, %172 ], [ %155, %165 ]
  %174 = add i64 %173, 1
  call void @ext4_sb_breadahead_unmovable(ptr noundef %0, i64 noundef %173) #16
  %175 = icmp ugt i64 %174, %170
  br i1 %175, label %176, label %172

176:                                              ; preds = %172, %165, %145
  call fastcc void @trace_ext4_load_inode(ptr noundef %0, i32 noundef %1)
  call void @ext4_read_bh_nowait(ptr noundef nonnull %47, i32 noundef 12288, ptr noundef null) #16
  call void @blk_finish_plug(ptr noundef nonnull %6) #16
  %177 = load volatile i32, ptr %47, align 4
  %178 = and i32 %177, 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void @__wait_on_buffer(ptr noundef nonnull %47) #16
  br label %181

181:                                              ; preds = %180, %176
  %182 = load volatile i32, ptr %47, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = icmp eq ptr %4, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %185
  store i64 %35, ptr %4, align 8
  br label %188

188:                                              ; preds = %187, %185
  call void @__brelse(ptr noundef nonnull %47) #16
  br label %191

189:                                              ; preds = %144, %140, %81
  tail call void @unlock_buffer(ptr noundef nonnull %47) #16
  br label %190

190:                                              ; preds = %189, %181, %58
  store ptr %47, ptr %3, align 4
  br label %191

191:                                              ; preds = %190, %188, %23, %15, %8, %5
  %192 = phi i32 [ 0, %190 ], [ -5, %188 ], [ -117, %8 ], [ -117, %5 ], [ -5, %15 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_get_fc_inode_loc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__ext4_get_inode_loc(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_set_inode_flags(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -124
  %4 = load i32, ptr %3, align 4
  br i1 %1, label %5, label %45

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 18
  %11 = load i32, ptr %10, align 16
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %5
  %15 = load i16, ptr %0, align 8
  %16 = and i16 %15, -4096
  %17 = icmp eq i16 %16, -32768
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load volatile i32, ptr %3, align 4
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 478
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %22
  %31 = load volatile i32, ptr %3, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load volatile i32, ptr %3, align 4
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 48
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load volatile i32, ptr %3, align 4
  br label %45

45:                                               ; preds = %43, %38, %34, %30, %26, %18, %14, %5, %2
  %46 = lshr i32 %4, 6
  %47 = and i32 %46, 2
  %48 = lshr i32 %4, 1
  %49 = and i32 %48, 8
  %50 = lshr i32 %4, 3
  %51 = and i32 %50, 5
  %52 = or i32 %51, %49
  %53 = or i32 %52, %47
  %54 = lshr i32 %4, 10
  %55 = and i32 %54, 64
  %56 = or i32 %53, %55
  %57 = shl i32 %4, 3
  %58 = and i32 %57, 16384
  %59 = or i32 %56, %58
  %60 = lshr i32 %4, 15
  %61 = and i32 %60, 32768
  %62 = or i32 %59, %61
  %63 = lshr i32 %4, 4
  %64 = and i32 %63, 65536
  %65 = or i32 %62, %64
  tail call void @inode_set_flags(ptr noundef %0, i32 noundef %65, i32 noundef 114767) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ext4_get_projid(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %0, i32 532
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ 0, %13 ], [ -95, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ext4_iget(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext4_iloc, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  store i64 0, ptr %10, align 4, !annotation !10
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 47
  %16 = load ptr, ptr %15, align 4
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 30
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %21, %1
  %23 = icmp ne i32 %1, 2
  %24 = and i1 %23, %22
  br i1 %24, label %48, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 81
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 82
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 88
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 100
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, %1
  %41 = icmp ult i32 %1, 2
  %42 = or i1 %41, %40
  br i1 %42, label %48, label %45

43:                                               ; preds = %5
  %44 = icmp ult i32 %1, 2
  br i1 %44, label %48, label %45

45:                                               ; preds = %43, %37
  %46 = load i32, ptr %14, align 8
  %47 = icmp ult i32 %46, %1
  br i1 %47, label %48, label %54

48:                                               ; preds = %45, %43, %37, %33, %29, %25, %19
  %49 = and i32 %2, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %602

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #16
  %53 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 85
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef %3, i32 noundef %4, i1 noundef zeroext false, i32 noundef 117, i64 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %1, ptr noundef %53) #16
  br label %602

54:                                               ; preds = %45
  %55 = tail call ptr @iget_locked(ptr noundef %0, i32 noundef %1) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %602, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 23
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %602, label %62

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %55, i32 -208
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8
  %64 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = call fastcc i32 @__ext4_get_inode_loc(ptr noundef %65, i32 noundef %67, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %6) #16
  %69 = icmp eq i32 %68, -5
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, ptr %6, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef nonnull @__func__.__ext4_get_inode_loc_noinmem, i32 noundef 4523, i64 noundef %71, i32 noundef 5, ptr noundef nonnull @.str.11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %595

72:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %73 = icmp slt i32 %68, 0
  br i1 %73, label %595, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 4
  %76 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ext4_iloc, ptr %7, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %77, i32 %79
  %81 = icmp eq i32 %1, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 8
  %84 = load i16, ptr %83, align 2
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.13) #16
  br label %595

87:                                               ; preds = %82, %74
  %88 = and i32 %2, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 8
  %92 = load i16, ptr %91, align 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i16, ptr %80, align 4
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %595, label %97

97:                                               ; preds = %94, %90, %87
  %98 = load ptr, ptr %64, align 4
  %99 = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 27
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 29
  %102 = load i32, ptr %101, align 4
  %103 = icmp sgt i32 %102, 128
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 18
  %106 = load i16, ptr %105, align 4
  %107 = getelementptr i8, ptr %55, i32 476
  store i16 %106, ptr %107, align 4
  %108 = zext i16 %106 to i32
  %109 = add nuw nsw i32 %108, 128
  %110 = load ptr, ptr %99, align 4
  %111 = getelementptr inbounds %struct.ext4_sb_info, ptr %110, i32 0, i32 29
  %112 = load i32, ptr %111, align 4
  %113 = icmp sle i32 %109, %112
  %114 = and i16 %106, 3
  %115 = icmp eq i16 %114, 0
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %120, label %117

117:                                              ; preds = %104
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %108, i32 noundef %112) #16
  br label %595

118:                                              ; preds = %97
  %119 = getelementptr i8, ptr %55, i32 476
  store i16 0, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %104
  %121 = call fastcc i32 @ext4_has_metadata_csum(ptr noundef %0)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %64, align 4
  %125 = getelementptr inbounds %struct.super_block, ptr %124, i32 0, i32 27
  %126 = load ptr, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %127 = load i32, ptr %66, align 4
  store i32 %127, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !10
  %128 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 13
  %129 = load i32, ptr %128, align 4
  store i32 %129, ptr %9, align 4
  %130 = getelementptr inbounds %struct.ext4_sb_info, ptr %126, i32 0, i32 120
  %131 = load i32, ptr %130, align 4
  %132 = call fastcc i32 @ext4_chksum(ptr noundef %126, i32 noundef %131, ptr noundef nonnull %8, i32 noundef 4)
  %133 = call fastcc i32 @ext4_chksum(ptr noundef %126, i32 noundef %132, ptr noundef nonnull %9, i32 noundef 4)
  %134 = getelementptr i8, ptr %55, i32 528
  store i32 %133, ptr %134, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %135

135:                                              ; preds = %123, %120
  %136 = call fastcc i32 @ext4_inode_csum_verify(ptr noundef nonnull %55, ptr noundef %80, ptr noundef %63)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load ptr, ptr %11, align 4
  %140 = getelementptr inbounds %struct.ext4_sb_info, ptr %139, i32 0, i32 25
  %141 = load i16, ptr %140, align 8
  %142 = and i16 %141, 32
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 74, ptr noundef nonnull @.str.15) #16
  br label %595

145:                                              ; preds = %138, %135
  %146 = load i16, ptr %80, align 4
  store i16 %146, ptr %55, align 8
  %147 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 1
  %148 = load i16, ptr %147, align 2
  %149 = zext i16 %148 to i32
  %150 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 7
  %151 = load i16, ptr %150, align 4
  %152 = zext i16 %151 to i32
  %153 = load ptr, ptr %11, align 4
  %154 = getelementptr inbounds %struct.ext4_sb_info, ptr %153, i32 0, i32 15
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.ext4_super_block, ptr %155, i32 0, i32 30
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %157, 8192
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.ext4_sb_info, ptr %153, i32 0, i32 29
  %162 = load i32, ptr %161, align 4
  %163 = icmp sgt i32 %162, 128
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = getelementptr i8, ptr %55, i32 476
  %166 = load i16, ptr %165, align 4
  %167 = icmp ugt i16 %166, 31
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 26
  %170 = load i32, ptr %169, align 4
  br label %171

171:                                              ; preds = %168, %164, %160, %145
  %172 = phi i32 [ %170, %168 ], [ 0, %164 ], [ 0, %160 ], [ 0, %145 ]
  %173 = load ptr, ptr %64, align 4
  %174 = getelementptr inbounds %struct.super_block, ptr %173, i32 0, i32 27
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.ext4_sb_info, ptr %175, i32 0, i32 17
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 8192
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 17, i32 0, i32 2
  %182 = load i16, ptr %181, align 4
  %183 = zext i16 %182 to i32
  %184 = shl nuw i32 %183, 16
  %185 = or i32 %184, %149
  %186 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 17, i32 0, i32 3
  %187 = load i16, ptr %186, align 2
  %188 = zext i16 %187 to i32
  %189 = shl nuw i32 %188, 16
  %190 = or i32 %189, %152
  br label %191

191:                                              ; preds = %180, %171
  %192 = phi i32 [ %152, %171 ], [ %190, %180 ]
  %193 = phi i32 [ %149, %171 ], [ %185, %180 ]
  %194 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 2
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 3
  store i32 %192, ptr %195, align 8
  %196 = getelementptr i8, ptr %55, i32 532
  store i32 %172, ptr %196, align 4
  %197 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 8
  %198 = load i16, ptr %197, align 2
  %199 = zext i16 %198 to i32
  call void @set_nlink(ptr noundef nonnull %55, i32 noundef %199) #16
  %200 = getelementptr i8, ptr %55, i32 -128
  store i32 0, ptr %200, align 8
  %201 = getelementptr i8, ptr %55, i32 478
  store i16 0, ptr %201, align 2
  %202 = getelementptr i8, ptr %55, i32 -132
  store i32 0, ptr %202, align 4
  %203 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr i8, ptr %55, i32 -148
  store i32 %204, ptr %205, align 4
  %206 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 11
  %207 = load i32, ptr %206, align 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %224

209:                                              ; preds = %191
  %210 = load i16, ptr %55, align 8
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %64, align 4
  %214 = getelementptr inbounds %struct.super_block, ptr %213, i32 0, i32 27
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.ext4_sb_info, ptr %215, i32 0, i32 25
  %217 = load i16, ptr %216, align 8
  %218 = and i16 %217, 4
  %219 = icmp eq i16 %218, 0
  %220 = icmp ne i32 %1, 5
  %221 = and i1 %220, %219
  br i1 %221, label %595, label %224

222:                                              ; preds = %209
  %223 = icmp eq i32 %1, 5
  br i1 %223, label %224, label %595

224:                                              ; preds = %222, %212, %191
  %225 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 10
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr i8, ptr %55, i32 -124
  store i32 %226, ptr %227, align 4
  call void @ext4_set_inode_flags(ptr noundef nonnull %55, i1 noundef zeroext true)
  %228 = call fastcc i64 @ext4_inode_blocks(ptr noundef %80, ptr noundef %63)
  %229 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 21
  store i64 %228, ptr %229, align 8
  %230 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 14
  %231 = load i32, ptr %230, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr i8, ptr %55, i32 -144
  store i64 %232, ptr %233, align 8
  %234 = load ptr, ptr %11, align 4
  %235 = getelementptr inbounds %struct.ext4_sb_info, ptr %234, i32 0, i32 15
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.ext4_super_block, ptr %236, i32 0, i32 29
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 128
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %224
  %242 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 17, i32 0, i32 1
  %243 = load i16, ptr %242, align 2
  %244 = zext i16 %243 to i64
  %245 = shl nuw nsw i64 %244, 32
  %246 = or i64 %245, %232
  store i64 %246, ptr %233, align 8
  br label %247

247:                                              ; preds = %241, %224
  %248 = call fastcc i64 @ext4_isize(ptr noundef %0, ptr noundef %80)
  %249 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 13
  store i64 %248, ptr %249, align 8
  %250 = call fastcc i64 @i_size_read(ptr noundef nonnull %55)
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %247
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.16, i64 noundef %250) #16
  br label %595

253:                                              ; preds = %247
  %254 = load ptr, ptr %11, align 4
  %255 = getelementptr inbounds %struct.ext4_sb_info, ptr %254, i32 0, i32 15
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.ext4_super_block, ptr %256, i32 0, i32 28
  %258 = load i32, ptr %257, align 4
  %259 = and i32 %258, 32
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %253
  %262 = call fastcc i32 @ext4_has_metadata_csum(ptr noundef %0)
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %261
  %265 = load volatile i32, ptr %227, align 4
  %266 = and i32 %265, 4096
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.17) #16
  br label %595

269:                                              ; preds = %264, %261, %253
  %270 = load i64, ptr %249, align 8
  %271 = getelementptr i8, ptr %55, i32 -32
  store i64 %270, ptr %271, align 8
  %272 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 13
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 44
  store i32 %273, ptr %274, align 8
  %275 = getelementptr inbounds %struct.ext4_iloc, ptr %7, i32 0, i32 2
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr i8, ptr %55, i32 -136
  store i32 %276, ptr %277, align 8
  %278 = getelementptr i8, ptr %55, i32 464
  store i32 -1, ptr %278, align 8
  %279 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 0
  %280 = load i32, ptr %279, align 4
  store i32 %280, ptr %63, align 4
  %281 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 1
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr i8, ptr %55, i32 -204
  store i32 %282, ptr %283, align 4
  %284 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 2
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr i8, ptr %55, i32 -200
  store i32 %285, ptr %286, align 4
  %287 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 3
  %288 = load i32, ptr %287, align 4
  %289 = getelementptr i8, ptr %55, i32 -196
  store i32 %288, ptr %289, align 4
  %290 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 4
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr i8, ptr %55, i32 -192
  store i32 %291, ptr %292, align 4
  %293 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 5
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr i8, ptr %55, i32 -188
  store i32 %294, ptr %295, align 4
  %296 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 6
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr i8, ptr %55, i32 -184
  store i32 %297, ptr %298, align 4
  %299 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 7
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr i8, ptr %55, i32 -180
  store i32 %300, ptr %301, align 4
  %302 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 8
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr i8, ptr %55, i32 -176
  store i32 %303, ptr %304, align 4
  %305 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 9
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr i8, ptr %55, i32 -172
  store i32 %306, ptr %307, align 4
  %308 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 10
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr i8, ptr %55, i32 -168
  store i32 %309, ptr %310, align 4
  %311 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 11
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr i8, ptr %55, i32 -164
  store i32 %312, ptr %313, align 4
  %314 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 12
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr i8, ptr %55, i32 -160
  store i32 %315, ptr %316, align 4
  %317 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 13
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr i8, ptr %55, i32 -156
  store i32 %318, ptr %319, align 4
  %320 = getelementptr %struct.ext4_inode, ptr %80, i32 0, i32 12, i32 14
  %321 = load i32, ptr %320, align 4
  %322 = getelementptr i8, ptr %55, i32 -152
  store i32 %321, ptr %322, align 4
  %323 = getelementptr i8, ptr %55, i32 -96
  store volatile ptr %323, ptr %323, align 4
  %324 = getelementptr i8, ptr %55, i32 -92
  store ptr %323, ptr %324, align 4
  call void @ext4_fc_init_inode(ptr noundef nonnull %55) #16
  %325 = icmp eq ptr %16, null
  br i1 %325, label %348, label %326

326:                                              ; preds = %269
  %327 = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 7
  call void @_raw_read_lock(ptr noundef %327) #16
  %328 = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 10
  %329 = load ptr, ptr %328, align 8
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 11
  %333 = load ptr, ptr %332, align 4
  br label %334

334:                                              ; preds = %331, %326
  %335 = phi ptr [ %333, %331 ], [ %329, %326 ]
  %336 = icmp eq ptr %335, null
  %337 = getelementptr inbounds %struct.transaction_s, ptr %335, i32 0, i32 1
  %338 = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 43
  %339 = select i1 %336, ptr %338, ptr %337
  %340 = load i32, ptr %339, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !71
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %327) #16, !srcloc !41
  %341 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %327) #16, !srcloc !72
  %342 = extractvalue { i32, i32 } %341, 0
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %334
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  br label %345

345:                                              ; preds = %344, %334
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !73
  %346 = getelementptr i8, ptr %55, i32 520
  store i32 %340, ptr %346, align 8
  %347 = getelementptr i8, ptr %55, i32 524
  store i32 %340, ptr %347, align 4
  br label %348

348:                                              ; preds = %345, %269
  %349 = load ptr, ptr %64, align 4
  %350 = getelementptr inbounds %struct.super_block, ptr %349, i32 0, i32 27
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.ext4_sb_info, ptr %351, i32 0, i32 29
  %353 = load i32, ptr %352, align 4
  %354 = icmp sgt i32 %353, 128
  br i1 %354, label %355, label %363

355:                                              ; preds = %348
  %356 = getelementptr i8, ptr %55, i32 476
  %357 = load i16, ptr %356, align 4
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %355
  store i16 32, ptr %356, align 4
  br label %363

360:                                              ; preds = %355
  %361 = call fastcc i32 @ext4_iget_extra_inode(ptr noundef nonnull %55, ptr noundef %80, ptr noundef %63)
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %595

363:                                              ; preds = %360, %359, %348
  %364 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 4
  %365 = load i32, ptr %364, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 16
  store i64 %366, ptr %367, align 8
  %368 = getelementptr i8, ptr %55, i32 476
  %369 = load i16, ptr %368, align 4
  %370 = icmp ugt i16 %369, 7
  br i1 %370, label %371, label %380

371:                                              ; preds = %363
  %372 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 20
  %373 = load i32, ptr %372, align 4
  %374 = and i32 %373, 3
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %386, label %376, !prof !11

376:                                              ; preds = %371
  %377 = zext i32 %374 to i64
  %378 = shl nuw nsw i64 %377, 32
  %379 = add nsw i64 %378, %366
  store i64 %379, ptr %367, align 8
  br label %386

380:                                              ; preds = %363
  %381 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 16, i32 1
  store i32 0, ptr %381, align 8
  %382 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 5
  %383 = load i32, ptr %382, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 15
  store i64 %384, ptr %385, align 8
  br label %403

386:                                              ; preds = %376, %371
  %387 = lshr i32 %373, 2
  %388 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 16, i32 1
  store i32 %387, ptr %388, align 8
  %389 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 5
  %390 = load i32, ptr %389, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 15
  store i64 %391, ptr %392, align 8
  %393 = icmp ugt i16 %369, 11
  br i1 %393, label %394, label %403

394:                                              ; preds = %386
  %395 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 21
  %396 = load i32, ptr %395, align 4
  %397 = and i32 %396, 3
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %409, label %399, !prof !11

399:                                              ; preds = %394
  %400 = zext i32 %397 to i64
  %401 = shl nuw nsw i64 %400, 32
  %402 = add nsw i64 %401, %391
  store i64 %402, ptr %392, align 8
  br label %409

403:                                              ; preds = %386, %380
  %404 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 15, i32 1
  store i32 0, ptr %404, align 8
  %405 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 3
  %406 = load i32, ptr %405, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 14
  store i64 %407, ptr %408, align 8
  br label %426

409:                                              ; preds = %399, %394
  %410 = lshr i32 %396, 2
  %411 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 15, i32 1
  store i32 %410, ptr %411, align 8
  %412 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 3
  %413 = load i32, ptr %412, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 14
  store i64 %414, ptr %415, align 8
  %416 = icmp ugt i16 %369, 15
  br i1 %416, label %417, label %426

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 22
  %419 = load i32, ptr %418, align 4
  %420 = and i32 %419, 3
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %428, label %422, !prof !11

422:                                              ; preds = %417
  %423 = zext i32 %420 to i64
  %424 = shl nuw nsw i64 %423, 32
  %425 = add nsw i64 %424, %414
  store i64 %425, ptr %415, align 8
  br label %428

426:                                              ; preds = %409, %403
  %427 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 14, i32 1
  store i32 0, ptr %427, align 8
  br label %432

428:                                              ; preds = %422, %417
  %429 = lshr i32 %419, 2
  %430 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 14, i32 1
  store i32 %429, ptr %430, align 8
  %431 = icmp ugt i16 %369, 19
  br i1 %431, label %434, label %432

432:                                              ; preds = %428, %426
  %433 = getelementptr i8, ptr %55, i32 400
  store i64 0, ptr %433, align 8
  br label %452

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 23
  %436 = load i32, ptr %435, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr i8, ptr %55, i32 400
  store i64 %437, ptr %438, align 8
  %439 = icmp ugt i16 %369, 23
  br i1 %439, label %440, label %452

440:                                              ; preds = %434
  %441 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 24
  %442 = load i32, ptr %441, align 4
  %443 = and i32 %442, 3
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %450, label %445, !prof !11

445:                                              ; preds = %440
  %446 = getelementptr i8, ptr %55, i32 400
  %447 = zext i32 %443 to i64
  %448 = shl nuw nsw i64 %447, 32
  %449 = add nsw i64 %448, %437
  store i64 %449, ptr %446, align 8
  br label %450

450:                                              ; preds = %445, %440
  %451 = lshr i32 %442, 2
  br label %452

452:                                              ; preds = %450, %434, %432
  %453 = phi i32 [ %451, %450 ], [ 0, %432 ], [ 0, %434 ]
  %454 = getelementptr i8, ptr %55, i32 408
  store i32 %453, ptr %454, align 8
  %455 = load ptr, ptr %64, align 4
  %456 = getelementptr inbounds %struct.super_block, ptr %455, i32 0, i32 27
  %457 = load ptr, ptr %456, align 4
  %458 = getelementptr inbounds %struct.ext4_sb_info, ptr %457, i32 0, i32 18
  %459 = load i32, ptr %458, align 16
  %460 = and i32 %459, 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %479, !prof !11

462:                                              ; preds = %452
  %463 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 11
  %464 = load i32, ptr %463, align 4
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds %struct.ext4_sb_info, ptr %457, i32 0, i32 29
  %467 = load i32, ptr %466, align 4
  %468 = icmp sgt i32 %467, 128
  %469 = icmp ugt i16 %369, 27
  %470 = select i1 %468, i1 %469, i1 false
  br i1 %470, label %471, label %477

471:                                              ; preds = %462
  %472 = getelementptr inbounds %struct.ext4_inode, ptr %80, i32 0, i32 25
  %473 = load i32, ptr %472, align 4
  %474 = zext i32 %473 to i64
  %475 = shl nuw i64 %474, 32
  %476 = or i64 %475, %465
  br label %477

477:                                              ; preds = %471, %462
  %478 = phi i64 [ %476, %471 ], [ %465, %462 ]
  call fastcc void @ext4_inode_set_iversion_queried(ptr noundef nonnull %55, i64 noundef %478)
  br label %479

479:                                              ; preds = %477, %452
  %480 = load i64, ptr %233, align 8
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %487, label %482

482:                                              ; preds = %479
  %483 = call i32 @ext4_inode_block_valid(ptr noundef nonnull %55, i64 noundef %480, i32 noundef 1) #16
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  %486 = load i64, ptr %233, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.18, i64 noundef %486) #16
  br label %595

487:                                              ; preds = %482, %479
  %488 = load volatile i32, ptr %227, align 4
  %489 = and i32 %488, 268435456
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %487
  %492 = load i16, ptr %201, align 2
  %493 = icmp eq i16 %492, 0
  br i1 %493, label %494, label %517

494:                                              ; preds = %491, %487
  %495 = load ptr, ptr %11, align 4
  %496 = getelementptr inbounds %struct.ext4_sb_info, ptr %495, i32 0, i32 25
  %497 = load i16, ptr %496, align 8
  %498 = and i16 %497, 32
  %499 = icmp eq i16 %498, 0
  br i1 %499, label %500, label %517

500:                                              ; preds = %494
  %501 = load i16, ptr %55, align 8
  %502 = and i16 %501, -4096
  switch i16 %502, label %517 [
    i16 -32768, label %506
    i16 16384, label %506
    i16 -24576, label %503
  ]

503:                                              ; preds = %500
  %504 = call i32 @ext4_inode_is_fast_symlink(ptr noundef nonnull %55)
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %517

506:                                              ; preds = %503, %500, %500
  %507 = load volatile i32, ptr %227, align 4
  %508 = and i32 %507, 524288
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %512, label %510

510:                                              ; preds = %506
  %511 = call i32 @ext4_ext_check_inode(ptr noundef nonnull %55) #16
  br label %514

512:                                              ; preds = %506
  %513 = call i32 @ext4_check_blockref(ptr noundef nonnull @__func__.__ext4_iget, i32 noundef 4922, ptr noundef nonnull %55, ptr noundef %63, i32 noundef 12) #16
  br label %514

514:                                              ; preds = %512, %510
  %515 = phi i32 [ %511, %510 ], [ %513, %512 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %595

517:                                              ; preds = %514, %503, %500, %494, %491
  %518 = load i16, ptr %55, align 8
  %519 = zext i16 %518 to i32
  %520 = and i32 %519, 61440
  %521 = add nsw i32 %520, -4096
  %522 = lshr exact i32 %521, 12
  switch i32 %522, label %571 [
    i32 7, label %523
    i32 3, label %526
    i32 9, label %529
    i32 1, label %553
    i32 5, label %553
    i32 0, label %553
    i32 11, label %553
  ]

523:                                              ; preds = %517
  %524 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 7
  store ptr @ext4_file_inode_operations, ptr %524, align 8
  %525 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 39
  store ptr @ext4_file_operations, ptr %525, align 8
  call void @ext4_set_aops(ptr noundef nonnull %55)
  br label %575

526:                                              ; preds = %517
  %527 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 7
  store ptr @ext4_dir_inode_operations, ptr %527, align 8
  %528 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 39
  store ptr @ext4_dir_operations, ptr %528, align 8
  br label %575

529:                                              ; preds = %517
  %530 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 4
  %531 = load i32, ptr %530, align 4
  %532 = and i32 %531, 12
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %535, label %534

534:                                              ; preds = %529
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.19) #16
  br label %595

535:                                              ; preds = %529
  %536 = and i32 %531, 16384
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %535
  %539 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 7
  store ptr @ext4_encrypted_symlink_inode_operations, ptr %539, align 8
  call void @ext4_set_aops(ptr noundef nonnull %55)
  br label %552

540:                                              ; preds = %535
  %541 = call i32 @ext4_inode_is_fast_symlink(ptr noundef nonnull %55)
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %550, label %543

543:                                              ; preds = %540
  %544 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 43
  store ptr %63, ptr %544, align 4
  %545 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 7
  store ptr @ext4_fast_symlink_inode_operations, ptr %545, align 8
  %546 = load i64, ptr %249, align 8
  %547 = trunc i64 %546 to i32
  %548 = call i32 @llvm.umin.i32(i32 %547, i32 59) #16
  %549 = getelementptr i8, ptr %63, i32 %548
  store i8 0, ptr %549, align 1
  br label %552

550:                                              ; preds = %540
  %551 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 7
  store ptr @ext4_symlink_inode_operations, ptr %551, align 8
  call void @ext4_set_aops(ptr noundef nonnull %55)
  br label %552

552:                                              ; preds = %550, %543, %538
  call void @inode_nohighmem(ptr noundef nonnull %55) #16
  br label %575

553:                                              ; preds = %517, %517, %517, %517
  %554 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 7
  store ptr @ext4_special_inode_operations, ptr %554, align 8
  %555 = load i32, ptr %279, align 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %562, label %557

557:                                              ; preds = %553
  %558 = shl i32 %555, 12
  %559 = and i32 %558, 267386880
  %560 = and i32 %555, 255
  %561 = or i32 %559, %560
  call void @init_special_inode(ptr noundef nonnull %55, i16 noundef zeroext %518, i32 noundef %561) #16
  br label %575

562:                                              ; preds = %553
  %563 = load i32, ptr %281, align 4
  %564 = and i32 %563, 255
  %565 = lshr i32 %563, 12
  %566 = and i32 %565, 1048320
  %567 = or i32 %566, %564
  %568 = shl i32 %563, 12
  %569 = and i32 %568, -1048576
  %570 = or i32 %567, %569
  call void @init_special_inode(ptr noundef nonnull %55, i16 noundef zeroext %518, i32 noundef %570) #16
  br label %575

571:                                              ; preds = %517
  %572 = icmp eq i32 %1, 5
  br i1 %572, label %573, label %574

573:                                              ; preds = %571
  call void @make_bad_inode(ptr noundef nonnull %55) #16
  br label %575

574:                                              ; preds = %571
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %519) #16
  br label %595

575:                                              ; preds = %573, %562, %557, %552, %526, %523
  %576 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 4
  %577 = load i32, ptr %576, align 4
  %578 = and i32 %577, 32768
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %591, label %580

580:                                              ; preds = %575
  %581 = load ptr, ptr %64, align 4
  %582 = getelementptr inbounds %struct.super_block, ptr %581, i32 0, i32 27
  %583 = load ptr, ptr %582, align 4
  %584 = getelementptr inbounds %struct.ext4_sb_info, ptr %583, i32 0, i32 15
  %585 = load ptr, ptr %584, align 4
  %586 = getelementptr inbounds %struct.ext4_super_block, ptr %585, i32 0, i32 29
  %587 = load i32, ptr %586, align 8
  %588 = and i32 %587, 131072
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %580
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %55, ptr noundef %3, i32 noundef %4, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.21) #16
  br label %591

591:                                              ; preds = %590, %580, %575
  %592 = icmp eq ptr %75, null
  br i1 %592, label %594, label %593

593:                                              ; preds = %591
  call void @__brelse(ptr noundef nonnull %75) #16
  br label %594

594:                                              ; preds = %593, %591
  call void @unlock_new_inode(ptr noundef nonnull %55) #16
  br label %602

595:                                              ; preds = %574, %534, %514, %485, %360, %268, %252, %222, %212, %144, %117, %94, %86, %72, %70
  %596 = phi i32 [ %68, %72 ], [ -117, %86 ], [ -117, %117 ], [ -117, %252 ], [ %515, %514 ], [ -117, %534 ], [ -117, %574 ], [ -117, %485 ], [ %361, %360 ], [ -117, %268 ], [ -74, %144 ], [ -116, %94 ], [ -116, %212 ], [ -116, %222 ], [ -5, %70 ]
  %597 = load ptr, ptr %7, align 4
  %598 = icmp eq ptr %597, null
  br i1 %598, label %600, label %599

599:                                              ; preds = %595
  call void @__brelse(ptr noundef nonnull %597) #16
  br label %600

600:                                              ; preds = %599, %595
  call void @iget_failed(ptr noundef nonnull %55) #16
  %601 = inttoptr i32 %596 to ptr
  br label %602

602:                                              ; preds = %600, %594, %57, %54, %51, %48
  %603 = phi ptr [ inttoptr (i32 -117 to ptr), %51 ], [ %601, %600 ], [ %55, %594 ], [ %55, %57 ], [ inttoptr (i32 -116 to ptr), %48 ], [ inttoptr (i32 -12 to ptr), %54 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  ret ptr %603
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_chksum(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.anon.87, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 119
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %7, align 64
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #16, !srcloc !12
  unreachable

11:                                               ; preds = %4
  store ptr %7, ptr %5, align 8
  %12 = getelementptr inbounds %struct.anon.87, ptr %5, i32 0, i32 1
  store i32 %1, ptr %12, align 8
  %13 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !11

15:                                               ; preds = %11
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #16, !srcloc !13
  unreachable

16:                                               ; preds = %11
  %17 = load i32, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_inode_csum_verify(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 21
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 30
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 119
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  %22 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %36, !prof !9

25:                                               ; preds = %18
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3289, i32 noundef 9, ptr noundef null) #16
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 30
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 119
  %35 = load ptr, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %18
  %37 = phi ptr [ %35, %33 ], [ %20, %18 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17, i32 0, i32 4
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = tail call fastcc i32 @ext4_inode_csum(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 27
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %46, i32 0, i32 29
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 128
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.ext4_inode_info, ptr %2, i32 0, i32 33
  %52 = load i16, ptr %51, align 4
  %53 = icmp ugt i16 %52, 3
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 19
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = shl nuw i32 %57, 16
  %59 = or i32 %58, %42
  br label %62

60:                                               ; preds = %50, %39
  %61 = and i32 %43, 65535
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi i32 [ %59, %54 ], [ %42, %60 ]
  %64 = phi i32 [ %43, %54 ], [ %61, %60 ]
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  br label %67

67:                                               ; preds = %62, %36, %25, %13, %3
  %68 = phi i32 [ %66, %62 ], [ 1, %36 ], [ 1, %3 ], [ 1, %25 ], [ 1, %13 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i64 @ext4_inode_blocks(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ext4_inode_info, ptr %1, i32 0, i32 17, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ext4_inode, ptr %0, i32 0, i32 17
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = getelementptr inbounds %struct.ext4_inode, ptr %0, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = or i64 %17, %20
  %22 = getelementptr %struct.ext4_inode_info, ptr %1, i32 0, i32 6
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 262144
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ext4_inode_info, ptr %1, i32 0, i32 17, i32 19
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, -9
  %31 = zext i32 %30 to i64
  %32 = shl i64 %21, %31
  br label %37

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.ext4_inode, ptr %0, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %33, %26, %13
  %38 = phi i64 [ %32, %26 ], [ %36, %33 ], [ %21, %13 ]
  ret i64 %38
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i64 @ext4_isize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 29
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16384
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i16, ptr %1, align 4
  %13 = and i16 %12, -4096
  %14 = icmp eq i16 %13, -32768
  br i1 %14, label %15, label %24

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = shl nuw i64 %18, 32
  %20 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = or i64 %19, %22
  br label %28

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %24, %15
  %29 = phi i64 [ %23, %15 ], [ %27, %24 ]
  ret i64 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_init_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_iget_extra_inode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ext4_inode_info, ptr %2, i32 0, i32 33
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = add nuw nsw i32 %6, 132
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 29
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %7, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %1, i32 128
  %17 = getelementptr i8, ptr %16, i32 %6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -368967680
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -128
  tail call void @_set_bit(i32 noundef 2, ptr noundef %21) #16
  %22 = tail call i32 @ext4_find_inline_data_nolock(ptr noundef %0) #16
  br label %25

23:                                               ; preds = %15, %3
  %24 = getelementptr i8, ptr %0, i32 478
  store i16 0, ptr %24, align 2
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_inode_set_iversion_queried(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 -124
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !41
  %9 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %8, ptr %8, i64 %1) #16, !srcloc !74
  br label %15

10:                                               ; preds = %2
  %11 = shl i64 %1, 1
  %12 = or i64 %11, 1
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !41
  %14 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %13, ptr %13, i64 %12) #16, !srcloc !74
  br label %15

15:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_block_valid(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_check_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_check_blockref(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_write_inode(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ext4_iloc, align 4
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2048
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @ext4_write_inode.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %2
  store i1 true, ptr @ext4_write_inode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5160, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %2
  br i1 %9, label %92, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 48
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %92, !prof !11

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 47
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 113
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @dump_stack() #17
  br label %92

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 32
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %0, i32 520
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 @ext4_fc_commit(ptr noundef nonnull %31, i32 noundef %49) #16
  br label %92

51:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = call fastcc i32 @__ext4_get_inode_loc(ptr noundef %17, i32 noundef %53, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  %55 = icmp eq i32 %54, -5
  br i1 %55, label %90, label %56

56:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %92

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %65 = load i16, ptr %64, align 4
  %66 = and i16 %65, 32
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load ptr, ptr %4, align 4
  %70 = call i32 @sync_dirty_buffer(ptr noundef %69) #16
  br label %73

71:                                               ; preds = %63, %59
  %72 = load ptr, ptr %4, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi ptr [ %72, %71 ], [ %69, %68 ]
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load volatile i32, ptr %74, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.buffer_head, ptr %74, i32 0, i32 3
  %84 = load i64, ptr %83, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_write_inode, i32 noundef 5198, i64 noundef %84, i32 noundef 5, ptr noundef nonnull @.str.22) #16
  br label %85

85:                                               ; preds = %82, %78, %73
  %86 = phi i32 [ 0, %78 ], [ -5, %82 ], [ 0, %73 ]
  %87 = icmp eq ptr %74, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  call void @__brelse(ptr noundef nonnull %74) #16
  br label %89

89:                                               ; preds = %88, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %92

90:                                               ; preds = %51
  %91 = load i64, ptr %3, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.__ext4_get_inode_loc_noinmem, i32 noundef 4523, i64 noundef %91, i32 noundef 5, ptr noundef nonnull @.str.11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %92

92:                                               ; preds = %90, %89, %58, %47, %42, %38, %37, %22, %15, %14
  %93 = phi i32 [ -5, %37 ], [ -5, %90 ], [ 0, %15 ], [ 0, %14 ], [ -5, %22 ], [ 0, %42 ], [ 0, %38 ], [ %54, %58 ], [ %50, %47 ], [ %86, %89 ]
  ret i32 %93
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fc_commit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 48
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %261, !prof !11

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %261, !prof !11

21:                                               ; preds = %16
  %22 = and i32 %18, 4
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %7, 65543
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %261, label %27, !prof !9

27:                                               ; preds = %21
  %28 = tail call i32 @setattr_prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %261

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 81920
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %261

36:                                               ; preds = %30
  %37 = and i32 %7, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %41 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  %42 = load i32, ptr %40, align 8
  %43 = load i32, ptr %41, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39, %36
  %46 = and i32 %7, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %87, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %50 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %51 = load i32, ptr %49, align 4
  %52 = load i32, ptr %50, align 8
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %87, label %54

54:                                               ; preds = %48, %39
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 27
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %57, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 3
  %61 = tail call ptr @__ext4_journal_start_sb(ptr noundef %55, i32 noundef 5321, i32 noundef 6, i32 noundef 3, i32 noundef 0, i32 noundef %60) #16
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %85, label %63

63:                                               ; preds = %54
  %64 = getelementptr i8, ptr %6, i32 -120
  tail call void @down_read(ptr noundef %64) #16
  tail call void @up_read(ptr noundef %64) #16
  %65 = load i32, ptr %2, align 8
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  %70 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  store i32 %71, ptr %69, align 4
  %72 = load i32, ptr %2, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i32 [ %72, %68 ], [ %65, %63 ]
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %79 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %61, ptr noundef %6, ptr noundef nonnull @__func__.ext4_setattr, i32 noundef 5344)
  %83 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_setattr, i32 noundef 5345, ptr noundef %61) #16
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %87, label %261

85:                                               ; preds = %54
  %86 = ptrtoint ptr %61 to i32
  br label %254

87:                                               ; preds = %81, %48, %45
  %88 = load i32, ptr %2, align 8
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %232, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %95 = load i64, ptr %94, align 8
  %96 = icmp slt i64 %95, %93
  %97 = getelementptr i8, ptr %6, i32 -124
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 524288
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %91
  %102 = load ptr, ptr %8, align 4
  %103 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 27
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ext4_sb_info, ptr %104, i32 0, i32 13
  %106 = load i64, ptr %105, align 8
  %107 = icmp sgt i64 %95, %106
  br i1 %107, label %261, label %108

108:                                              ; preds = %101, %91
  %109 = load i16, ptr %6, align 8
  %110 = and i16 %109, -4096
  %111 = icmp eq i16 %110, -32768
  br i1 %111, label %112, label %261

112:                                              ; preds = %108
  %113 = load ptr, ptr %8, align 4
  %114 = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 10
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 8388608
  %117 = icmp eq i32 %116, 0
  %118 = icmp eq i64 %95, %93
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  tail call fastcc void @inode_inc_iversion(ptr noundef %6)
  br label %121

121:                                              ; preds = %120, %112
  br i1 %96, label %122, label %131

122:                                              ; preds = %121
  %123 = tail call i32 @ext4_inode_journal_mode(ptr noundef %6) #16
  %124 = and i32 %123, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i64, ptr %94, align 8
  %128 = tail call fastcc i32 @ext4_begin_ordered_truncate(ptr noundef %6, i64 noundef %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %258

130:                                              ; preds = %126, %122
  tail call void @inode_dio_wait(ptr noundef %6) #16
  br label %131

131:                                              ; preds = %130, %121
  %132 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.address_space, ptr %133, i32 0, i32 2
  tail call void @down_write(ptr noundef %134) #16
  %135 = tail call i32 @ext4_break_layouts(ptr noundef %6)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %132, align 8
  %139 = getelementptr inbounds %struct.address_space, ptr %138, i32 0, i32 2
  tail call void @up_write(ptr noundef %139) #16
  br label %261

140:                                              ; preds = %131
  %141 = load i64, ptr %94, align 8
  %142 = load i64, ptr %92, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %215, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %8, align 4
  %146 = getelementptr inbounds %struct.super_block, ptr %145, i32 0, i32 27
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.ext4_sb_info, ptr %147, i32 0, i32 11
  %149 = load i32, ptr %148, align 4
  %150 = shl i32 %149, 3
  %151 = tail call ptr @__ext4_journal_start_sb(ptr noundef %145, i32 noundef 5393, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef %150) #16
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = ptrtoint ptr %151 to i32
  br label %225

155:                                              ; preds = %144
  %156 = icmp uge ptr %151, inttoptr (i32 4096 to ptr)
  %157 = select i1 %156, i1 %96, i1 false
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = tail call i32 @ext4_orphan_add(ptr noundef %151, ptr noundef %6) #16
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i32 [ 1, %158 ], [ 0, %155 ]
  %162 = phi i32 [ %159, %158 ], [ 0, %155 ]
  br i1 %96, label %181, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %164, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  %165 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %165, ptr noundef align 8 dereferenceable(16) %164, i32 16, i1 false)
  %166 = icmp sgt i64 %93, 0
  %167 = sext i1 %166 to i64
  %168 = add i64 %93, %167
  %169 = load ptr, ptr %8, align 4
  %170 = getelementptr inbounds %struct.super_block, ptr %169, i32 0, i32 2
  %171 = load i8, ptr %170, align 4
  %172 = zext i8 %171 to i64
  %173 = ashr i64 %168, %172
  %174 = trunc i64 %173 to i32
  %175 = load i64, ptr %94, align 8
  %176 = icmp sgt i64 %175, 0
  %177 = add i64 %175, -1
  %178 = select i1 %176, i64 %177, i64 0
  %179 = lshr i64 %178, %172
  %180 = trunc i64 %179 to i32
  call void @ext4_fc_track_range(ptr noundef %151, ptr noundef %6, i32 noundef %174, i32 noundef %180) #16
  br label %192

181:                                              ; preds = %160
  %182 = load i64, ptr %94, align 8
  %183 = icmp sgt i64 %182, 0
  %184 = add i64 %182, -1
  %185 = select i1 %183, i64 %184, i64 0
  %186 = load ptr, ptr %8, align 4
  %187 = getelementptr inbounds %struct.super_block, ptr %186, i32 0, i32 2
  %188 = load i8, ptr %187, align 4
  %189 = zext i8 %188 to i64
  %190 = lshr i64 %185, %189
  %191 = trunc i64 %190 to i32
  tail call void @ext4_fc_track_range(ptr noundef %151, ptr noundef %6, i32 noundef %191, i32 noundef -2) #16
  br label %192

192:                                              ; preds = %181, %163
  %193 = getelementptr i8, ptr %6, i32 -24
  call void @down_write(ptr noundef %193) #16
  %194 = load i64, ptr %94, align 8
  %195 = getelementptr i8, ptr %6, i32 -32
  store i64 %194, ptr %195, align 8
  %196 = call i32 @__ext4_mark_inode_dirty(ptr noundef %151, ptr noundef %6, ptr noundef nonnull @__func__.ext4_setattr, i32 noundef 5426)
  %197 = icmp eq i32 %162, 0
  %198 = select i1 %197, i32 %196, i32 %162
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %223

200:                                              ; preds = %192
  %201 = load i64, ptr %94, align 8
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  %202 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %202, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !76
  store i64 %201, ptr %92, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !77
  %205 = load i32, ptr %202, align 4
  %206 = add i32 %205, 1
  store i32 %206, ptr %202, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !78
  call void @up_write(ptr noundef %193) #16
  %207 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_setattr, i32 noundef 5437, ptr noundef %151) #16
  br i1 %96, label %210, label %208

208:                                              ; preds = %200
  %209 = load i64, ptr %92, align 8
  call void @pagecache_isize_extended(ptr noundef %6, i64 noundef %93, i64 noundef %209) #16
  br label %215

210:                                              ; preds = %200
  %211 = call i32 @ext4_inode_journal_mode(ptr noundef %6) #16
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  call fastcc void @ext4_wait_for_tail_page_commit(ptr noundef %6)
  br label %215

215:                                              ; preds = %214, %210, %208, %140
  %216 = phi i32 [ %161, %214 ], [ %161, %210 ], [ %161, %208 ], [ 0, %140 ]
  %217 = phi i32 [ %196, %214 ], [ %196, %210 ], [ %196, %208 ], [ 0, %140 ]
  %218 = load i64, ptr %92, align 8
  call void @truncate_pagecache(ptr noundef %6, i64 noundef %218) #16
  %219 = load i64, ptr %94, align 8
  %220 = icmp sgt i64 %219, %93
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = call i32 @ext4_truncate(ptr noundef %6)
  br label %225

223:                                              ; preds = %192
  call void @up_write(ptr noundef %193) #16
  %224 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_setattr, i32 noundef 5437, ptr noundef %151) #16
  br label %225

225:                                              ; preds = %223, %221, %215, %153
  %226 = phi i32 [ 0, %153 ], [ %216, %215 ], [ %161, %223 ], [ %216, %221 ]
  %227 = phi i32 [ 0, %153 ], [ %217, %215 ], [ %196, %223 ], [ %222, %221 ]
  %228 = phi i32 [ %154, %153 ], [ 0, %215 ], [ %198, %223 ], [ %222, %221 ]
  %229 = load ptr, ptr %132, align 8
  %230 = getelementptr inbounds %struct.address_space, ptr %229, i32 0, i32 2
  call void @up_write(ptr noundef %230) #16
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225, %87
  %233 = phi i32 [ %227, %225 ], [ 0, %87 ]
  %234 = phi i32 [ %226, %225 ], [ 0, %87 ]
  call void @setattr_copy(ptr noundef %0, ptr noundef %6, ptr noundef %2) #16
  call void @__mark_inode_dirty(ptr noundef %6, i32 noundef 7) #16
  br label %235

235:                                              ; preds = %232, %225
  %236 = phi i1 [ true, %232 ], [ false, %225 ]
  %237 = phi i32 [ 0, %232 ], [ %228, %225 ]
  %238 = phi i32 [ %233, %232 ], [ %227, %225 ]
  %239 = phi i32 [ %234, %232 ], [ %226, %225 ]
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %243 = load i32, ptr %242, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %241
  %246 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %6) #16
  br label %247

247:                                              ; preds = %245, %241, %235
  br i1 %236, label %248, label %254

248:                                              ; preds = %247
  %249 = and i32 %7, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %248
  %252 = load i16, ptr %6, align 8
  %253 = call i32 @posix_acl_chmod(ptr noundef %0, ptr noundef %6, i16 noundef zeroext %252) #16
  br label %261

254:                                              ; preds = %247, %85
  %255 = phi i32 [ %238, %247 ], [ 0, %85 ]
  %256 = phi i32 [ %237, %247 ], [ %86, %85 ]
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %254, %126
  %259 = phi i32 [ %256, %254 ], [ %128, %126 ]
  %260 = load ptr, ptr %8, align 4
  call void @__ext4_std_error(ptr noundef %260, ptr noundef nonnull @__func__.ext4_setattr, i32 noundef 5483, i32 noundef %259) #16
  br label %261

261:                                              ; preds = %258, %254, %251, %248, %137, %108, %101, %81, %30, %27, %21, %16, %3
  %262 = phi i32 [ -5, %3 ], [ -1, %16 ], [ -1, %21 ], [ %28, %27 ], [ -95, %30 ], [ %259, %258 ], [ %255, %254 ], [ %82, %81 ], [ -22, %108 ], [ -27, %101 ], [ %238, %248 ], [ %253, %251 ], [ %135, %137 ]
  ret i32 %262
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %0) unnamed_addr #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !79
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %3 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %2, ptr elementtype(i64) %2) #16, !srcloc !80
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %3, %1 ], [ %13, %12 ]
  %6 = add i64 %5, 2
  %7 = and i64 %6, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !81
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !41
  br label %8

8:                                                ; preds = %8, %4
  %9 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2, ptr %2, i64 %5, i64 %7, ptr elementtype(i64) %2) #16, !srcloc !82
  %10 = extractvalue { i32, i64 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i64 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !83
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %4, !prof !11

15:                                               ; preds = %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_wait_for_tail_page_commit(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 4095
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %100, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = shl nsw i32 -1, %16
  %18 = add nsw i32 %17, 4096
  %19 = icmp ugt i32 %11, %18
  br i1 %19, label %100, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = lshr i64 %9, 12
  %24 = trunc i64 %23 to i32
  %25 = tail call ptr @pagecache_get_page(ptr noundef %22, i32 noundef %24, i32 noundef 2, i32 noundef 0) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %100, label %27

27:                                               ; preds = %20
  %28 = sub nuw nsw i32 4096, %11
  %29 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 7
  %30 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 11
  br label %31

31:                                               ; preds = %93, %27
  %32 = phi ptr [ %25, %27 ], [ %98, %93 ]
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 27
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 47
  %41 = load ptr, ptr %40, align 4
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journalled_invalidatepage, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %31
  %45 = tail call ptr @llvm.thread.pointer() #16
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !84
  %56 = tail call i32 @__traceiter_ext4_journalled_invalidatepage(ptr noundef null, ptr noundef nonnull %32, i32 noundef %11, i32 noundef %28) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !85
  br label %57

57:                                               ; preds = %55, %44, %31
  %58 = tail call i32 @jbd2_journal_invalidatepage(ptr noundef %41, ptr noundef nonnull %32, i32 noundef %11, i32 noundef %28) #16
  tail call void @unlock_page(ptr noundef nonnull %32) #16
  %59 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !11

63:                                               ; preds = %57
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %57
  %66 = ptrtoint ptr %32 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #16, !srcloc !41
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #16, !srcloc !67
  %72 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  tail call void @__put_page(ptr noundef %69) #16
  br label %75

75:                                               ; preds = %74, %67
  %76 = icmp eq i32 %58, -16
  br i1 %76, label %77, label %100

77:                                               ; preds = %75
  tail call void @_raw_read_lock(ptr noundef %29) #16
  %78 = load ptr, ptr %30, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.transaction_s, ptr %78, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i32 [ %82, %80 ], [ 0, %77 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !71
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #16, !srcloc !41
  %85 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %29) #16, !srcloc !72
  %86 = extractvalue { i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  br label %89

89:                                               ; preds = %88, %83
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !73
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = tail call i32 @jbd2_log_wait_commit(ptr noundef %7, i32 noundef %84) #16
  br label %93

93:                                               ; preds = %91, %89
  %94 = load ptr, ptr %21, align 8
  %95 = load i64, ptr %8, align 8
  %96 = lshr i64 %95, 12
  %97 = trunc i64 %96 to i32
  %98 = tail call ptr @pagecache_get_page(ptr noundef %94, i32 noundef %97, i32 noundef 2, i32 noundef 0) #16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %31

100:                                              ; preds = %93, %75, %20, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_getattr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = and i32 %3, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %9, i32 476
  %14 = load i16, ptr %13, align 4
  %15 = icmp ugt i16 %14, 19
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, ptr %2, align 8
  %18 = or i32 %17, 2048
  store i32 %18, ptr %2, align 8
  %19 = getelementptr i8, ptr %9, i32 400
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 15
  store i64 %20, ptr %21, align 8
  %22 = getelementptr i8, ptr %9, i32 408
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 15, i32 1
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %16, %12, %5
  %26 = getelementptr i8, ptr %9, i32 -124
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %32 = load i64, ptr %31, align 8
  %33 = or i64 %32, 32
  store i64 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = and i32 %27, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %39 = load i64, ptr %38, align 8
  %40 = or i64 %39, 4
  store i64 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = and i32 %27, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %46 = load i64, ptr %45, align 8
  %47 = or i64 %46, 2048
  store i64 %47, ptr %45, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = and i32 %27, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %53 = load i64, ptr %52, align 8
  %54 = or i64 %53, 16
  store i64 %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = and i32 %27, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %60 = load i64, ptr %59, align 8
  %61 = or i64 %60, 64
  store i64 %61, ptr %59, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = and i32 %27, 1048576
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %67 = load i64, ptr %66, align 8
  %68 = or i64 %67, 1048576
  store i64 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %65, %62
  %70 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 5
  %71 = load i64, ptr %70, align 8
  %72 = or i64 %71, 1050740
  store i64 %72, ptr %70, align 8
  tail call void @generic_fillattr(ptr noundef %0, ptr noundef %9, ptr noundef %2) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_file_getattr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @ext4_getattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 undef)
  %11 = getelementptr i8, ptr %9, i32 -124
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 268435456
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %9, i32 478
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %27, label %19, !prof !11

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 11
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, 511
  %23 = ashr i64 %22, 9
  %24 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 16
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %23, %25
  store i64 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %19, %15, %5
  %28 = getelementptr i8, ptr %9, i32 468
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_sb_info, ptr %33, i32 0, i32 12
  %35 = load i32, ptr %34, align 16
  %36 = shl i32 %29, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -9
  %42 = zext i32 %41 to i64
  %43 = shl i64 %37, %42
  %44 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 16
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %43, %45
  store i64 %46, ptr %44, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_chunk_trans_blocks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !62
  %9 = getelementptr i8, ptr %0, i32 -124
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 524288
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = tail call i32 @ext4_ind_trans_blocks(ptr noundef %0, i32 noundef %1) #16
  br label %17

15:                                               ; preds = %2
  %16 = tail call i32 @ext4_ext_index_trans_blocks(ptr noundef %0, i32 noundef 1) #16
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %16, %15 ], [ %14, %13 ]
  %19 = add i32 %18, 1
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %8) #16
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = icmp ugt i32 %20, %25
  %27 = select i1 %26, i32 %25, i32 %19
  %28 = add i32 %18, 6
  %29 = add i32 %28, %20
  %30 = add i32 %29, %27
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 48
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  %14 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #16, !srcloc !41
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #16, !srcloc !50
  br label %326

16:                                               ; preds = %3
  tail call void @ext4_fc_track_inode(ptr noundef %0, ptr noundef %1) #16
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !79
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 33
  %24 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %23, ptr elementtype(i64) %23) #16, !srcloc !80
  br label %25

25:                                               ; preds = %33, %22
  %26 = phi i64 [ %24, %22 ], [ %34, %33 ]
  %27 = add i64 %26, 2
  %28 = and i64 %27, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !81
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #16, !srcloc !41
  br label %29

29:                                               ; preds = %29, %25
  %30 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %23, ptr %23, i64 %26, i64 %28, ptr elementtype(i64) %23) #16, !srcloc !82
  %31 = extractvalue { i32, i64 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %29

33:                                               ; preds = %29
  %34 = extractvalue { i32, i64 } %30, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !83
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %25, !prof !11

36:                                               ; preds = %33, %16
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #16, !srcloc !41
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #16, !srcloc !86
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_iloc, ptr %2, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %1, i32 396
  tail call void @_raw_spin_lock(ptr noundef %47) #16
  %48 = getelementptr i8, ptr %1, i32 -128
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %36
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 27
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 29
  %57 = load i32, ptr %56, align 4
  tail call void @llvm.memset.p0.i32(ptr align 4 %45, i8 0, i32 %57, i1 false) #16
  br label %58

58:                                               ; preds = %52, %36
  %59 = getelementptr i8, ptr %1, i32 -32
  %60 = load volatile i64, ptr %59, align 8
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 27
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ext4_super_block, ptr %65, i32 0, i32 29
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 16384
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load i16, ptr %45, align 4
  %72 = and i16 %71, -4096
  %73 = icmp eq i16 %72, -32768
  br i1 %73, label %74, label %83

74:                                               ; preds = %70, %58
  %75 = getelementptr inbounds %struct.ext4_inode, ptr %45, i32 0, i32 15
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = shl nuw i64 %77, 32
  %79 = getelementptr inbounds %struct.ext4_inode, ptr %45, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = zext i32 %80 to i64
  %82 = or i64 %78, %81
  br label %87

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.ext4_inode, ptr %45, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = zext i32 %85 to i64
  br label %87

87:                                               ; preds = %83, %74
  %88 = phi i64 [ %82, %74 ], [ %86, %83 ]
  %89 = icmp eq i64 %60, %88
  %90 = icmp ugt i64 %60, 2147483647
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 27
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %93, i32 0, i32 15
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ext4_super_block, ptr %95, i32 0, i32 30
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.ext4_super_block, ptr %95, i32 0, i32 22
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %91
  br label %105

105:                                              ; preds = %104, %100, %87
  %106 = phi i1 [ true, %100 ], [ false, %104 ], [ true, %87 ]
  %107 = tail call fastcc i32 @ext4_fill_raw_inode(ptr noundef %1, ptr noundef %45) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %108 = load i16, ptr %47, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %110 = icmp eq i32 %107, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_do_update_inode, i32 noundef 5086, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.39) #16
  br label %318

112:                                              ; preds = %105
  %113 = load ptr, ptr %4, align 4
  %114 = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 10
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 33554432
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %244, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %41, align 4
  %122 = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 27
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.ext4_sb_info, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %123, i32 0, i32 29
  %127 = load i32, ptr %126, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !87
  %128 = icmp sgt i32 %125, 0
  br i1 %128, label %129, label %243

129:                                              ; preds = %118
  %130 = add i32 %120, -1
  %131 = sub nsw i32 0, %125
  %132 = and i32 %130, %131
  br label %133

133:                                              ; preds = %239, %129
  %134 = phi i32 [ %137, %239 ], [ %132, %129 ]
  %135 = phi i32 [ %240, %239 ], [ 0, %129 ]
  %136 = phi ptr [ %241, %239 ], [ %121, %129 ]
  %137 = add i32 %134, 1
  %138 = icmp eq i32 %137, %120
  br i1 %138, label %239, label %139

139:                                              ; preds = %133
  %140 = tail call ptr @find_inode_by_ino_rcu(ptr noundef %113, i32 noundef %137) #16
  %141 = icmp eq ptr %140, null
  br i1 %141, label %239, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 23
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 2104
  %146 = icmp eq i32 %145, 2048
  br i1 %146, label %147, label %239

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %148) #16
  %149 = load i32, ptr %143, align 4
  %150 = and i32 %149, 2104
  %151 = icmp eq i32 %150, 2048
  br i1 %151, label %152, label %236

152:                                              ; preds = %147
  %153 = getelementptr i8, ptr %140, i32 -208
  %154 = and i32 %149, -2049
  store i32 %154, ptr %143, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %155 = load i16, ptr %148, align 4
  %156 = add i16 %155, 1
  store i16 %156, ptr %148, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %157 = getelementptr i8, ptr %140, i32 396
  tail call void @_raw_spin_lock(ptr noundef %157) #16
  %158 = getelementptr i8, ptr %140, i32 476
  %159 = load i16, ptr %158, align 4
  %160 = icmp ugt i16 %159, 7
  %161 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 16
  %162 = load i64, ptr %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds %struct.ext4_inode, ptr %136, i32 0, i32 4
  store i32 %163, ptr %164, align 4
  br i1 %160, label %165, label %178

165:                                              ; preds = %152
  %166 = load i64, ptr %161, align 8
  %167 = shl i64 %166, 32
  %168 = ashr exact i64 %167, 32
  %169 = sub i64 %166, %168
  %170 = lshr i64 %169, 32
  %171 = trunc i64 %170 to i32
  %172 = and i32 %171, 3
  %173 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 16, i32 1
  %174 = load i32, ptr %173, align 8
  %175 = shl i32 %174, 2
  %176 = or i32 %172, %175
  %177 = getelementptr inbounds %struct.ext4_inode, ptr %136, i32 0, i32 20
  store i32 %176, ptr %177, align 4
  br label %178

178:                                              ; preds = %165, %152
  %179 = load i16, ptr %158, align 4
  %180 = icmp ugt i16 %179, 11
  %181 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 15
  %182 = load i64, ptr %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds %struct.ext4_inode, ptr %136, i32 0, i32 5
  store i32 %183, ptr %184, align 4
  br i1 %180, label %185, label %198

185:                                              ; preds = %178
  %186 = load i64, ptr %181, align 8
  %187 = shl i64 %186, 32
  %188 = ashr exact i64 %187, 32
  %189 = sub i64 %186, %188
  %190 = lshr i64 %189, 32
  %191 = trunc i64 %190 to i32
  %192 = and i32 %191, 3
  %193 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 15, i32 1
  %194 = load i32, ptr %193, align 8
  %195 = shl i32 %194, 2
  %196 = or i32 %192, %195
  %197 = getelementptr inbounds %struct.ext4_inode, ptr %136, i32 0, i32 21
  store i32 %196, ptr %197, align 4
  br label %198

198:                                              ; preds = %185, %178
  %199 = load i16, ptr %158, align 4
  %200 = icmp ugt i16 %199, 15
  %201 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 14
  %202 = load i64, ptr %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = getelementptr inbounds %struct.ext4_inode, ptr %136, i32 0, i32 3
  store i32 %203, ptr %204, align 4
  br i1 %200, label %205, label %218

205:                                              ; preds = %198
  %206 = load i64, ptr %201, align 8
  %207 = shl i64 %206, 32
  %208 = ashr exact i64 %207, 32
  %209 = sub i64 %206, %208
  %210 = lshr i64 %209, 32
  %211 = trunc i64 %210 to i32
  %212 = and i32 %211, 3
  %213 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 14, i32 1
  %214 = load i32, ptr %213, align 8
  %215 = shl i32 %214, 2
  %216 = or i32 %212, %215
  %217 = getelementptr inbounds %struct.ext4_inode, ptr %136, i32 0, i32 22
  store i32 %216, ptr %217, align 4
  br label %218

218:                                              ; preds = %205, %198
  tail call void @ext4_inode_csum_set(ptr noundef nonnull %140, ptr noundef %136, ptr noundef %153) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %219 = load i16, ptr %157, align 4
  %220 = add i16 %219, 1
  store i16 %220, ptr %157, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %221 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_other_inode_update_time, i32 0, i32 1), align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %218
  %224 = tail call ptr @llvm.thread.pointer() #16
  %225 = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 2
  %226 = load i32, ptr %225, align 8
  %227 = lshr i32 %226, 5
  %228 = getelementptr i32, ptr @__cpu_online_mask, i32 %227
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %226, 31
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %229
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %223
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !88
  %235 = tail call i32 @__traceiter_ext4_other_inode_update_time(ptr noundef null, ptr noundef nonnull %140, i32 noundef %120) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !89
  br label %239

236:                                              ; preds = %147
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %237 = load i16, ptr %148, align 4
  %238 = add i16 %237, 1
  store i16 %238, ptr %148, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %239

239:                                              ; preds = %236, %234, %223, %218, %142, %139, %133
  %240 = add nuw nsw i32 %135, 1
  %241 = getelementptr i8, ptr %136, i32 %127
  %242 = icmp eq i32 %240, %125
  br i1 %242, label %243, label %133

243:                                              ; preds = %239, %118
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !90
  br label %244

244:                                              ; preds = %243, %112
  %245 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_do_update_inode, i32 noundef 5095, ptr noundef %0, ptr noundef null, ptr noundef %40) #16
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %315

247:                                              ; preds = %244
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %48) #16
  br i1 %106, label %288, label %248

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 27
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.ext4_sb_info, ptr %250, i32 0, i32 14
  %252 = load ptr, ptr %251, align 64
  %253 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_do_update_inode, i32 noundef 5103, ptr noundef %0, ptr noundef %46, ptr noundef %252, i32 noundef 1) #16
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %315

255:                                              ; preds = %248
  %256 = load ptr, ptr %249, align 4
  %257 = getelementptr inbounds %struct.ext4_sb_info, ptr %256, i32 0, i32 14
  %258 = load ptr, ptr %257, align 64
  %259 = load volatile i32, ptr %258, align 4
  %260 = and i32 %259, 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %258) #16, !srcloc !41
  %263 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %258, ptr %258, i32 4, ptr elementtype(i32) %258) #16, !srcloc !47
  %264 = extractvalue { i32, i32, i32 } %263, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %265 = and i32 %264, 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %262, %255
  tail call void @__lock_buffer(ptr noundef %258) #16
  br label %268

268:                                              ; preds = %267, %262
  tail call void @ext4_update_dynamic_rev(ptr noundef %46) #16
  %269 = load ptr, ptr %249, align 4
  %270 = getelementptr inbounds %struct.ext4_sb_info, ptr %269, i32 0, i32 15
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.ext4_super_block, ptr %271, i32 0, i32 30
  %273 = load i32, ptr %272, align 4
  %274 = or i32 %273, 2
  store i32 %274, ptr %272, align 4
  tail call void @ext4_superblock_csum_set(ptr noundef %46) #16
  %275 = load ptr, ptr %249, align 4
  %276 = getelementptr inbounds %struct.ext4_sb_info, ptr %275, i32 0, i32 14
  %277 = load ptr, ptr %276, align 64
  tail call void @unlock_buffer(ptr noundef %277) #16
  %278 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %278, label %283, label %279

279:                                              ; preds = %268
  %280 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %281 = load i32, ptr %280, align 4
  %282 = or i32 %281, 1
  store i32 %282, ptr %280, align 4
  br label %283

283:                                              ; preds = %279, %268
  %284 = load ptr, ptr %249, align 4
  %285 = getelementptr inbounds %struct.ext4_sb_info, ptr %284, i32 0, i32 14
  %286 = load ptr, ptr %285, align 64
  %287 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_do_update_inode, i32 noundef 5112, ptr noundef %0, ptr noundef null, ptr noundef %286) #16
  br label %288

288:                                              ; preds = %283, %247
  %289 = phi i32 [ %287, %283 ], [ 0, %247 ]
  %290 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %290, label %313, label %291

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %293 = load i32, ptr %292, align 4
  %294 = and i32 %293, 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %291
  %297 = load ptr, ptr %0, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %313, label %299

299:                                              ; preds = %296
  %300 = load ptr, ptr %297, align 8
  %301 = load i32, ptr %300, align 8
  %302 = and i32 %301, 2
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %313

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.transaction_s, ptr %297, i32 0, i32 1
  %306 = load i32, ptr %305, align 4
  %307 = getelementptr i8, ptr %1, i32 520
  store i32 %306, ptr %307, align 8
  br i1 %89, label %313, label %308

308:                                              ; preds = %304
  %309 = load ptr, ptr %0, align 4
  %310 = getelementptr inbounds %struct.transaction_s, ptr %309, i32 0, i32 1
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr i8, ptr %1, i32 524
  store i32 %311, ptr %312, align 4
  br label %313

313:                                              ; preds = %308, %304, %299, %296, %291, %288
  %314 = icmp eq i32 %289, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %313, %248, %244
  %316 = phi i32 [ %289, %313 ], [ %253, %248 ], [ %245, %244 ]
  %317 = load ptr, ptr %4, align 4
  tail call void @__ext4_std_error(ptr noundef %317, ptr noundef nonnull @__func__.ext4_do_update_inode, i32 noundef 5116, i32 noundef %316) #16
  br label %318

318:                                              ; preds = %315, %313, %111
  %319 = phi i32 [ %107, %111 ], [ %316, %315 ], [ 0, %313 ]
  %320 = icmp eq ptr %40, null
  br i1 %320, label %322, label %321

321:                                              ; preds = %318
  tail call void @__brelse(ptr noundef nonnull %40) #16
  br label %322

322:                                              ; preds = %321, %318
  %323 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  %324 = getelementptr inbounds %struct.buffer_head, ptr %323, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %324) #16, !srcloc !41
  %325 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %324, ptr %324, i32 1, ptr elementtype(i32) %324) #16, !srcloc !50
  br label %326

326:                                              ; preds = %322, %12
  %327 = phi i32 [ -5, %12 ], [ %319, %322 ]
  ret i32 %327
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_track_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_reserve_inode_write(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 48
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35, !prof !11

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = call fastcc i32 @__ext4_get_inode_loc(ptr noundef %6, i32 noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #16
  %17 = icmp eq i32 %16, -5
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, ptr %4, align 8
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_get_inode_loc, i32 noundef 4538, i64 noundef %19, i32 noundef 5, ptr noundef nonnull @.str.11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %32

20:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = load ptr, ptr %5, align 4
  %24 = load ptr, ptr %2, align 4
  %25 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_reserve_inode_write, i32 noundef 5700, ptr noundef %0, ptr noundef %23, ptr noundef %24, i32 noundef 1) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @__brelse(ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %30, %27
  store ptr null, ptr %2, align 4
  br label %32

32:                                               ; preds = %31, %20, %18
  %33 = phi i32 [ -5, %18 ], [ %25, %31 ], [ %16, %20 ]
  %34 = load ptr, ptr %5, align 4
  call void @__ext4_std_error(ptr noundef %34, ptr noundef nonnull @__func__.ext4_reserve_inode_write, i32 noundef 5706, i32 noundef %33) #16
  br label %35

35:                                               ; preds = %32, %22, %3
  %36 = phi i32 [ -5, %3 ], [ %33, %32 ], [ 0, %22 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_expand_extra_isize(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -128
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %104, label %11

11:                                               ; preds = %8
  tail call void @__brelse(ptr noundef nonnull %9) #16
  br label %104

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %18, i32 0, i32 29
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 12, i32 24
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 3
  %27 = tail call ptr @__ext4_journal_start_sb(ptr noundef %14, i32 noundef 5813, i32 noundef 1, i32 noundef %23, i32 noundef 0, i32 noundef %26) #16
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = ptrtoint ptr %27 to i32
  %31 = load ptr, ptr %2, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %29
  tail call void @__brelse(ptr noundef nonnull %31) #16
  br label %104

34:                                               ; preds = %12
  %35 = getelementptr i8, ptr %0, i32 -120
  tail call void @down_write(ptr noundef %35) #16
  %36 = load volatile i32, ptr %4, align 4
  %37 = lshr i32 %36, 3
  %38 = and i32 %37, 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %4) #16
  %39 = load ptr, ptr %13, align 4
  %40 = load ptr, ptr %2, align 4
  %41 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_expand_extra_isize, i32 noundef 5824, ptr noundef %27, ptr noundef %39, ptr noundef %40, i32 noundef 1) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %2, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %97, label %46

46:                                               ; preds = %43
  tail call void @__brelse(ptr noundef nonnull %44) #16
  br label %97

47:                                               ; preds = %34
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 29
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %0, i32 476
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = add nuw nsw i32 %55, 128
  %57 = icmp ule i32 %56, %52
  %58 = and i32 %55, 3
  %59 = icmp eq i32 %58, 0
  %60 = and i1 %57, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.__ext4_expand_extra_isize, i32 noundef 5726, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %55, i32 noundef %52) #16
  br label %91

62:                                               ; preds = %47
  %63 = icmp ugt i32 %55, %1
  %64 = icmp ult i32 %1, 4
  %65 = or i1 %64, %63
  %66 = add i32 %52, -128
  %67 = icmp ult i32 %66, %1
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %91, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ext4_iloc, ptr %2, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = getelementptr i8, ptr %75, i32 128
  %77 = load volatile i32, ptr %4, align 4
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %69
  %81 = getelementptr i8, ptr %76, i32 %55
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, -368967680
  br i1 %83, label %88, label %84

84:                                               ; preds = %80, %69
  %85 = getelementptr i8, ptr %76, i32 %55
  %86 = sub i32 %1, %55
  tail call void @llvm.memset.p0.i32(ptr align 1 %85, i8 0, i32 %86, i1 false) #16
  %87 = trunc i32 %1 to i16
  store i16 %87, ptr %53, align 4
  br label %95

88:                                               ; preds = %80
  %89 = tail call i32 @ext4_expand_extra_isize_ea(ptr noundef %0, i32 noundef %1, ptr noundef %75, ptr noundef %27) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88, %62, %61
  %92 = phi i32 [ %38, %61 ], [ %38, %62 ], [ 1, %88 ]
  %93 = phi i32 [ -117, %61 ], [ -22, %62 ], [ %89, %88 ]
  %94 = tail call i32 @ext4_mark_iloc_dirty(ptr noundef %27, ptr noundef %0, ptr noundef %2)
  br label %97

95:                                               ; preds = %88, %84
  %96 = tail call i32 @ext4_mark_iloc_dirty(ptr noundef %27, ptr noundef %0, ptr noundef %2)
  br label %97

97:                                               ; preds = %95, %91, %46, %43
  %98 = phi i32 [ %38, %43 ], [ %38, %46 ], [ %38, %95 ], [ %92, %91 ]
  %99 = phi i32 [ %41, %43 ], [ %41, %46 ], [ %96, %95 ], [ %93, %91 ]
  %100 = icmp eq i32 %98, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %4) #16
  br label %102

102:                                              ; preds = %101, %97
  tail call void @up_write(ptr noundef %35) #16
  %103 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_expand_extra_isize, i32 noundef 5839, ptr noundef %27) #16
  br label %104

104:                                              ; preds = %102, %33, %29, %11, %8
  %105 = phi i32 [ %99, %102 ], [ -75, %8 ], [ -75, %11 ], [ %30, %29 ], [ %30, %33 ]
  ret i32 %105
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_dirty_inode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = tail call ptr @__ext4_journal_start_sb(ptr noundef %4, i32 noundef 5899, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %9) #16
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %10, ptr noundef %0, ptr noundef nonnull @__func__.ext4_dirty_inode, i32 noundef 5902)
  %14 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_dirty_inode, i32 noundef 5903, ptr noundef %10) #16
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_change_inode_journal_flag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %103, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %10
  tail call void @inode_dio_wait(ptr noundef %0) #16
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 2
  tail call void @down_write(ptr noundef %19) #16
  %20 = load ptr, ptr %17, align 8
  %21 = tail call i32 @filemap_write_and_wait_range(ptr noundef %20, i64 noundef 0, i64 noundef 9223372036854775807) #16
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load ptr, ptr %17, align 8
  %25 = getelementptr inbounds %struct.address_space, ptr %24, i32 0, i32 2
  tail call void @up_write(ptr noundef %25) #16
  br label %103

26:                                               ; preds = %16, %14
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 136
  tail call void @percpu_down_write(ptr noundef %27) #16
  tail call void @jbd2_journal_lock_updates(ptr noundef nonnull %8) #16
  br i1 %15, label %53, label %28

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %0, i32 -124
  tail call void @_set_bit(i32 noundef 14, ptr noundef %29) #16
  %30 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  switch i32 %30, label %35 [
    i32 2, label %36
    i32 4, label %36
    i32 1, label %31
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.address_space, ptr %33, i32 0, i32 9
  store ptr @ext4_journalled_aops, ptr %34, align 4
  br label %49

35:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3648, 0\0A.popsection", ""() #16, !srcloc !63
  unreachable

36:                                               ; preds = %28, %28
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 27
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 17
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 134217728
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.address_space, ptr %45, i32 0, i32 9
  br i1 %43, label %48, label %47

47:                                               ; preds = %36
  store ptr @ext4_da_aops, ptr %46, align 4
  br label %49

48:                                               ; preds = %36
  store ptr @ext4_aops, ptr %46, align 4
  br label %49

49:                                               ; preds = %48, %47, %31
  tail call void @jbd2_journal_unlock_updates(ptr noundef nonnull %8) #16
  tail call void @percpu_up_write(ptr noundef %27) #16
  %50 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.address_space, ptr %51, i32 0, i32 2
  tail call void @up_write(ptr noundef %52) #16
  br label %79

53:                                               ; preds = %26
  %54 = tail call i32 @jbd2_journal_flush(ptr noundef nonnull %8, i32 noundef 0) #16
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @jbd2_journal_unlock_updates(ptr noundef nonnull %8) #16
  tail call void @percpu_up_write(ptr noundef %27) #16
  br label %103

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %0, i32 -124
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %58) #16
  %59 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  switch i32 %59, label %64 [
    i32 2, label %65
    i32 4, label %65
    i32 1, label %60
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.address_space, ptr %62, i32 0, i32 9
  store ptr @ext4_journalled_aops, ptr %63, align 4
  br label %78

64:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3648, 0\0A.popsection", ""() #16, !srcloc !63
  unreachable

65:                                               ; preds = %57, %57
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 27
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 17
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 134217728
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.address_space, ptr %74, i32 0, i32 9
  br i1 %72, label %77, label %76

76:                                               ; preds = %65
  store ptr @ext4_da_aops, ptr %75, align 4
  br label %78

77:                                               ; preds = %65
  store ptr @ext4_aops, ptr %75, align 4
  br label %78

78:                                               ; preds = %77, %76, %60
  tail call void @jbd2_journal_unlock_updates(ptr noundef nonnull %8) #16
  tail call void @percpu_up_write(ptr noundef %27) #16
  br label %79

79:                                               ; preds = %78, %49
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 27
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %82, i32 0, i32 11
  %84 = load i32, ptr %83, align 4
  %85 = shl i32 %84, 3
  %86 = tail call ptr @__ext4_journal_start_sb(ptr noundef %80, i32 noundef 5981, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %85) #16
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = ptrtoint ptr %86 to i32
  br label %103

90:                                               ; preds = %79
  %91 = load ptr, ptr %3, align 4
  tail call void @ext4_fc_mark_ineligible(ptr noundef %91, i32 noundef 2, ptr noundef %86) #16
  %92 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %86, ptr noundef %0, ptr noundef nonnull @__func__.ext4_change_inode_journal_flag, i32 noundef 5987)
  %93 = icmp ult ptr %86, inttoptr (i32 4096 to ptr)
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %86, i32 0, i32 7
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, 1
  store i32 %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_change_inode_journal_flag, i32 noundef 5989, ptr noundef %86) #16
  %100 = icmp eq i32 %92, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %3, align 4
  tail call void @__ext4_std_error(ptr noundef %102, ptr noundef nonnull @__func__.ext4_change_inode_journal_flag, i32 noundef 5990, i32 noundef %92) #16
  br label %103

103:                                              ; preds = %101, %98, %88, %56, %23, %10, %2
  %104 = phi i32 [ %21, %23 ], [ %89, %88 ], [ %54, %56 ], [ 0, %2 ], [ -30, %10 ], [ %92, %101 ], [ 0, %98 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_lock_updates(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_flush(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_unlock_updates(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_page_mkwrite(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %403, !prof !11

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.super_block, ptr %18, i32 0, i32 26, i32 2, i32 1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34, !prof !11

22:                                               ; preds = %16
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %24 = getelementptr %struct.super_block, ptr %18, i32 0, i32 26, i32 2, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #14, !srcloc !21
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #16, !srcloc !22
  br label %36

34:                                               ; preds = %16
  %35 = tail call zeroext i1 @__percpu_down_read(ptr noundef %19, i1 noundef zeroext false) #16
  br label %36

36:                                               ; preds = %34, %22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %37 = load ptr, ptr %6, align 4
  %38 = tail call i32 @file_update_time(ptr noundef %37) #16
  %39 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 2
  tail call void @down_read(ptr noundef %39) #16
  %40 = tail call i32 @ext4_convert_inline_data(ptr noundef %9) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %362

42:                                               ; preds = %36
  %43 = tail call i32 @ext4_inode_journal_mode(ptr noundef %9) #16
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %179

46:                                               ; preds = %42
  %47 = load ptr, ptr %17, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 27
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 17
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 134217728
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 36, i32 1
  %56 = load volatile i64, ptr %55, align 8
  %57 = tail call i64 @llvm.smax.i64(i64 %56, i64 0) #16
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 39, i32 1
  %59 = load volatile i64, ptr %58, align 8
  %60 = tail call i64 @llvm.smax.i64(i64 %59, i64 0) #16
  %61 = icmp sgt i64 %59, 0
  %62 = shl nuw i64 %60, 1
  %63 = icmp slt i64 %57, %62
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  tail call void @try_to_writeback_inodes_sb(ptr noundef %47, i32 noundef 5) #16
  br label %66

66:                                               ; preds = %65, %54
  %67 = shl nuw i64 %57, 1
  %68 = mul i64 %60, 3
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %85, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr @percpu_counter_batch, align 4
  %72 = load i32, ptr @nr_cpu_ids, align 4
  %73 = shl i32 %71, 2
  %74 = mul i32 %73, %72
  %75 = zext i32 %74 to i64
  %76 = add nuw i64 %60, %75
  %77 = icmp slt i64 %57, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %81, %70
  %79 = call i32 @block_page_mkwrite(ptr noundef %3, ptr noundef %0, ptr noundef nonnull @ext4_da_get_block_prep) #16
  %80 = icmp eq i32 %79, -28
  br i1 %80, label %81, label %362

81:                                               ; preds = %78
  %82 = load ptr, ptr %17, align 4
  %83 = call i32 @ext4_should_retry_alloc(ptr noundef %82, ptr noundef nonnull %2) #16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %365, label %78

85:                                               ; preds = %70, %66, %46
  %86 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90, !prof !11

90:                                               ; preds = %85
  %91 = add i32 %87, -1
  br label %94

92:                                               ; preds = %85
  %93 = ptrtoint ptr %5 to i32
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = inttoptr i32 %95 to ptr
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #16, !srcloc !41
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #16, !srcloc !47
  %102 = extractvalue { i32, i32, i32 } %101, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100, %94
  tail call void @__folio_lock(ptr noundef %96) #16
  br label %106

106:                                              ; preds = %105, %100
  %107 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 22
  %108 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  br label %109

109:                                              ; preds = %117, %106
  %110 = load volatile i32, ptr %107, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %113, %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %114 = load volatile i32, ptr %107, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %113

117:                                              ; preds = %113, %109
  %118 = phi i32 [ %110, %109 ], [ %114, %113 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %119 = load i64, ptr %108, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %120 = load volatile i32, ptr %107, align 4
  %121 = icmp eq i32 %120, %118
  br i1 %121, label %122, label %109

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, %11
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = zext i32 %128 to i64
  %130 = shl nuw nsw i64 %129, 12
  %131 = icmp sgt i64 %130, %119
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %122
  tail call void @unlock_page(ptr noundef %5) #16
  br label %367

133:                                              ; preds = %126
  %134 = ashr i64 %119, 12
  %135 = icmp eq i64 %134, %129
  %136 = trunc i64 %119 to i32
  %137 = and i32 %136, 4095
  %138 = select i1 %135, i32 %137, i32 4096
  %139 = load volatile i32, ptr %5, align 4
  %140 = and i32 %139, 8192
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %175, label %142

142:                                              ; preds = %133
  %143 = load volatile i32, ptr %5, align 4
  %144 = and i32 %143, 8192
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147, !prof !9

146:                                              ; preds = %142
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6069, 0\0A.popsection", ""() #16, !srcloc !91
  unreachable

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = inttoptr i32 %149 to ptr
  %151 = getelementptr inbounds %struct.buffer_head, ptr %150, i32 0, i32 4
  %152 = load i32, ptr %151, align 8
  br label %153

153:                                              ; preds = %171, %147
  %154 = phi i32 [ 0, %147 ], [ %162, %171 ]
  %155 = phi ptr [ %150, %147 ], [ %161, %171 ]
  %156 = icmp ne ptr %155, %150
  %157 = icmp eq i32 %154, 0
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.buffer_head, ptr %155, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = add i32 %154, %152
  %163 = icmp ne i32 %162, 0
  %164 = icmp ult i32 %154, %138
  %165 = and i1 %164, %163
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load volatile i32, ptr %155, align 4
  %168 = lshr i32 %167, 4
  %169 = and i32 %168, 1
  %170 = xor i32 %169, 1
  br label %171

171:                                              ; preds = %166, %159
  %172 = phi i32 [ %170, %166 ], [ 0, %159 ]
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %153, label %175

174:                                              ; preds = %153
  tail call void @wait_for_stable_page(ptr noundef %5) #16
  br label %367

175:                                              ; preds = %171, %133
  tail call void @unlock_page(ptr noundef %5) #16
  %176 = tail call fastcc i32 @ext4_should_dioread_nolock(ptr noundef %9)
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, ptr @ext4_get_block, ptr @ext4_get_block_unwritten
  br label %179

179:                                              ; preds = %175, %42
  %180 = phi ptr [ %178, %175 ], [ null, %42 ]
  %181 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %182 = ptrtoint ptr %5 to i32
  %183 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 22
  %184 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %185 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 1
  %186 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 2
  br label %187

187:                                              ; preds = %358, %179
  %188 = call i32 @ext4_writepage_trans_blocks(ptr noundef %9)
  %189 = load ptr, ptr %17, align 4
  %190 = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 27
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.ext4_sb_info, ptr %191, i32 0, i32 11
  %193 = load i32, ptr %192, align 4
  %194 = shl i32 %193, 3
  %195 = call ptr @__ext4_journal_start_sb(ptr noundef %189, i32 noundef 6086, i32 noundef 2, i32 noundef %188, i32 noundef 0, i32 noundef %194) #16
  %196 = icmp ugt ptr %195, inttoptr (i32 -4096 to ptr)
  br i1 %196, label %367, label %197

197:                                              ; preds = %187
  %198 = call i32 @ext4_inode_journal_mode(ptr noundef %9) #16
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = call i32 @block_page_mkwrite(ptr noundef %3, ptr noundef %0, ptr noundef %180) #16
  br label %354

203:                                              ; preds = %197
  %204 = load volatile i32, ptr %181, align 4
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207, !prof !11

207:                                              ; preds = %203
  %208 = add i32 %204, -1
  br label %209

209:                                              ; preds = %207, %203
  %210 = phi i32 [ %208, %207 ], [ %182, %203 ]
  %211 = inttoptr i32 %210 to ptr
  %212 = load volatile i32, ptr %211, align 4
  %213 = and i32 %212, 1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %211) #16, !srcloc !41
  %216 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %211, ptr %211, i32 1, ptr elementtype(i32) %211) #16, !srcloc !47
  %217 = extractvalue { i32, i32, i32 } %216, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215, %209
  call void @__folio_lock(ptr noundef %211) #16
  br label %221

221:                                              ; preds = %220, %215
  br label %222

222:                                              ; preds = %230, %221
  %223 = load volatile i32, ptr %183, align 4
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %226, %222
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %227 = load volatile i32, ptr %183, align 4
  %228 = and i32 %227, 1
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %226

230:                                              ; preds = %226, %222
  %231 = phi i32 [ %223, %222 ], [ %227, %226 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %232 = load i64, ptr %184, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %233 = load volatile i32, ptr %183, align 4
  %234 = icmp eq i32 %233, %231
  br i1 %234, label %235, label %222

235:                                              ; preds = %230
  %236 = load ptr, ptr %185, align 4
  %237 = icmp eq ptr %236, %11
  br i1 %237, label %238, label %400

238:                                              ; preds = %235
  %239 = load i32, ptr %186, align 4
  %240 = zext i32 %239 to i64
  %241 = shl nuw nsw i64 %240, 12
  %242 = icmp sgt i64 %241, %232
  br i1 %242, label %400, label %243

243:                                              ; preds = %238
  %244 = ashr i64 %232, 12
  %245 = icmp eq i64 %244, %240
  %246 = trunc i64 %232 to i32
  %247 = and i32 %246, 4095
  %248 = select i1 %245, i32 %247, i32 4096
  %249 = call i32 @__block_write_begin(ptr noundef %5, i64 noundef 0, i32 noundef %248, ptr noundef nonnull @ext4_get_block) #16
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %353

251:                                              ; preds = %243
  %252 = load volatile i32, ptr %5, align 4
  %253 = and i32 %252, 8192
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256, !prof !9

255:                                              ; preds = %251
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6116, 0\0A.popsection", ""() #16, !srcloc !92
  unreachable

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 3
  %258 = load i32, ptr %257, align 4
  %259 = inttoptr i32 %258 to ptr
  %260 = getelementptr inbounds %struct.buffer_head, ptr %259, i32 0, i32 4
  %261 = load i32, ptr %260, align 8
  br label %262

262:                                              ; preds = %295, %256
  %263 = phi i32 [ 0, %256 ], [ %271, %295 ]
  %264 = phi ptr [ %259, %256 ], [ %270, %295 ]
  %265 = icmp ne ptr %264, %259
  %266 = icmp eq i32 %263, 0
  %267 = select i1 %265, i1 true, i1 %266
  br i1 %267, label %268, label %298

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.buffer_head, ptr %264, i32 0, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = add i32 %263, %261
  %272 = icmp ne i32 %271, 0
  %273 = icmp ult i32 %263, %248
  %274 = and i1 %273, %272
  br i1 %274, label %275, label %295

275:                                              ; preds = %268
  %276 = load volatile i32, ptr %264, align 4
  %277 = load volatile i32, ptr %264, align 4
  %278 = and i32 %277, 16
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %295, label %280

280:                                              ; preds = %275
  %281 = load volatile i32, ptr %264, align 4
  %282 = and i32 %281, 262144
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %280
  %285 = and i32 %276, 2
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  call void @_clear_bit(i32 noundef 1, ptr noundef %264) #16
  br label %288

288:                                              ; preds = %287, %284
  %289 = load ptr, ptr %17, align 4
  %290 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1034, ptr noundef %195, ptr noundef %289, ptr noundef %264, i32 noundef 1) #16
  %291 = icmp eq i32 %290, 0
  %292 = select i1 %291, i1 %286, i1 false
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  %294 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1036, ptr noundef %195, ptr noundef null, ptr noundef %264) #16
  br label %295

295:                                              ; preds = %293, %288, %280, %275, %268
  %296 = phi i32 [ 0, %268 ], [ 0, %280 ], [ 0, %275 ], [ %294, %293 ], [ %290, %288 ]
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %262, label %400

298:                                              ; preds = %262
  %299 = load volatile i32, ptr %5, align 4
  %300 = and i32 %299, 8192
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303, !prof !9

302:                                              ; preds = %298
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6120, 0\0A.popsection", ""() #16, !srcloc !93
  unreachable

303:                                              ; preds = %298
  %304 = load i32, ptr %257, align 4
  %305 = inttoptr i32 %304 to ptr
  %306 = getelementptr inbounds %struct.buffer_head, ptr %305, i32 0, i32 4
  %307 = load i32, ptr %306, align 8
  br label %308

308:                                              ; preds = %336, %303
  %309 = phi i32 [ 0, %303 ], [ %317, %336 ]
  %310 = phi ptr [ %305, %303 ], [ %316, %336 ]
  %311 = icmp ne ptr %310, %305
  %312 = icmp eq i32 %309, 0
  %313 = select i1 %311, i1 true, i1 %312
  br i1 %313, label %314, label %339

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.buffer_head, ptr %310, i32 0, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = add i32 %309, %307
  %318 = icmp ne i32 %317, 0
  %319 = icmp ult i32 %309, %248
  %320 = and i1 %319, %318
  br i1 %320, label %321, label %336

321:                                              ; preds = %314
  %322 = load volatile i32, ptr %310, align 4
  %323 = and i32 %322, 16
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %336, label %325

325:                                              ; preds = %321
  %326 = load volatile i32, ptr %310, align 4
  %327 = and i32 %326, 262144
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %325
  %330 = load volatile i32, ptr %310, align 4
  %331 = and i32 %330, 1
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  call void @_set_bit(i32 noundef 0, ptr noundef %310) #16
  br label %334

334:                                              ; preds = %333, %329
  %335 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.write_end_fn, i32 noundef 1266, ptr noundef %195, ptr noundef null, ptr noundef %310) #16
  call void @_clear_bit(i32 noundef 13, ptr noundef %310) #16
  call void @_clear_bit(i32 noundef 14, ptr noundef %310) #16
  br label %336

336:                                              ; preds = %334, %325, %321, %314
  %337 = phi i32 [ 0, %314 ], [ %335, %334 ], [ 0, %325 ], [ 0, %321 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %308, label %400

339:                                              ; preds = %308
  %340 = icmp ult ptr %195, inttoptr (i32 4096 to ptr)
  br i1 %340, label %350, label %341

341:                                              ; preds = %339
  %342 = zext i32 %248 to i64
  %343 = load i32, ptr %186, align 4
  %344 = zext i32 %343 to i64
  %345 = shl nuw nsw i64 %344, 12
  %346 = getelementptr i8, ptr %9, i32 392
  %347 = load ptr, ptr %346, align 8
  %348 = call i32 @jbd2_journal_inode_ranged_write(ptr noundef %195, ptr noundef %347, i64 noundef %345, i64 noundef %342) #16
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %400

350:                                              ; preds = %341, %339
  %351 = getelementptr i8, ptr %9, i32 -128
  call void @_set_bit(i32 noundef 0, ptr noundef %351) #16
  %352 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_page_mkwrite, i32 noundef 6131, ptr noundef %195) #16
  br label %367

353:                                              ; preds = %243
  call void @unlock_page(ptr noundef %5) #16
  br label %354

354:                                              ; preds = %353, %201
  %355 = phi i32 [ %249, %353 ], [ %202, %201 ]
  %356 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_page_mkwrite, i32 noundef 6131, ptr noundef %195) #16
  %357 = icmp eq i32 %355, -28
  br i1 %357, label %358, label %362

358:                                              ; preds = %354
  %359 = load ptr, ptr %17, align 4
  %360 = call i32 @ext4_should_retry_alloc(ptr noundef %359, ptr noundef nonnull %2) #16
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %365, label %187

362:                                              ; preds = %354, %78, %36
  %363 = phi i32 [ %40, %36 ], [ %355, %354 ], [ %79, %78 ]
  switch i32 %363, label %365 [
    i32 0, label %367
    i32 -11, label %366
    i32 -14, label %366
    i32 -12, label %364
  ]

364:                                              ; preds = %362
  br label %367

365:                                              ; preds = %362, %358, %81
  br label %367

366:                                              ; preds = %362, %362
  br label %367

367:                                              ; preds = %400, %366, %365, %364, %362, %350, %187, %174, %132
  %368 = phi i32 [ %401, %400 ], [ 256, %132 ], [ 512, %174 ], [ 1, %364 ], [ 2, %365 ], [ 512, %362 ], [ 256, %366 ], [ 512, %350 ], [ 2, %187 ]
  call void @up_read(ptr noundef %39) #16
  %369 = load ptr, ptr %17, align 4
  %370 = getelementptr %struct.super_block, ptr %369, i32 0, i32 26, i32 2, i32 1
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %371 = load volatile i32, ptr %370, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %385, !prof !11

373:                                              ; preds = %367
  %374 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %375 = getelementptr %struct.super_block, ptr %369, i32 0, i32 26, i32 2, i32 1, i32 1
  %376 = load ptr, ptr %375, align 4
  %377 = ptrtoint ptr %376 to i32
  %378 = call i32 @llvm.read_register.i32(metadata !0) #16
  %379 = inttoptr i32 %378 to ptr
  %380 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %379) #14, !srcloc !21
  %381 = add i32 %380, %377
  %382 = inttoptr i32 %381 to ptr
  %383 = load i32, ptr %382, align 4
  %384 = add i32 %383, -1
  store i32 %384, ptr %382, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %374) #16, !srcloc !22
  br label %399

385:                                              ; preds = %367
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %386 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %387 = getelementptr %struct.super_block, ptr %369, i32 0, i32 26, i32 2, i32 1, i32 1
  %388 = load ptr, ptr %387, align 4
  %389 = ptrtoint ptr %388 to i32
  %390 = call i32 @llvm.read_register.i32(metadata !0) #16
  %391 = inttoptr i32 %390 to ptr
  %392 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %391) #14, !srcloc !21
  %393 = add i32 %392, %389
  %394 = inttoptr i32 %393 to ptr
  %395 = load i32, ptr %394, align 4
  %396 = add i32 %395, -1
  store i32 %396, ptr %394, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %386) #16, !srcloc !22
  %397 = getelementptr %struct.super_block, ptr %369, i32 0, i32 26, i32 2, i32 1, i32 2
  %398 = call i32 @rcuwait_wake_up(ptr noundef %397) #16
  br label %399

399:                                              ; preds = %385, %373
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %403

400:                                              ; preds = %341, %336, %295, %238, %235
  %401 = phi i32 [ 2, %341 ], [ 2, %336 ], [ 2, %295 ], [ 256, %238 ], [ 256, %235 ]
  call void @unlock_page(ptr noundef %5) #16
  %402 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_page_mkwrite, i32 noundef 6142, ptr noundef %195) #16
  br label %367

403:                                              ; preds = %399, %1
  %404 = phi i32 [ %368, %399 ], [ 2, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %404
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_page_mkwrite(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_should_dioread_nolock(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4194304
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = load i16, ptr %0, align 8
  %12 = and i16 %11, -4096
  %13 = icmp eq i16 %12, -32768
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 -124
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 524288
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @ext4_inode_journal_mode(ptr noundef %0) #16
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 27
  %30 = and i32 %29, 1
  br label %31

31:                                               ; preds = %23, %19, %14, %10, %1
  %32 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 0, %14 ], [ 0, %19 ], [ %30, %23 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_evict_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_begin_ordered_truncate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_begin_ordered_truncate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_da_update_reserve_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_inode_ranged_wait(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_inode_ranged_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_da_release_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_da_reserve_space(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 516
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = tail call i32 @ext4_claim_free_clusters(ptr noundef %5, i64 noundef 1, i32 noundef 0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %10 = load i16, ptr %6, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %34

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 468
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_da_reserve_space, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = tail call ptr @llvm.thread.pointer() #16
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !94
  %30 = tail call i32 @__traceiter_ext4_da_reserve_space(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !95
  br label %31

31:                                               ; preds = %29, %18, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %32 = load i16, ptr %6, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %34

34:                                               ; preds = %31, %9
  %35 = phi i32 [ -28, %9 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ext4_es_scan_clu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ext4_es_is_delonly(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.extent_status, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 2305843009213693952
  %5 = icmp eq i64 %4, 0
  %6 = lshr i64 %3, 60
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  %10 = select i1 %5, i32 0, i32 %9
  ret i32 %10
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ext4_es_is_mapped(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.extent_status, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 576460752303423488
  %5 = icmp eq i64 %4, 0
  %6 = lshr i64 %3, 60
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 1
  %9 = select i1 %5, i32 %8, i32 1
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_clu_mapped(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_insert_delayed_block(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_claim_free_clusters(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_da_reserve_space(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_alloc_da_blocks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_set_iomap(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 2
  %8 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 4
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %5
  %17 = getelementptr i8, ptr %0, i32 524
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @jbd2_transaction_committed(ptr noundef nonnull %14, i32 noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 18
  %26 = load i32, ptr %25, align 16
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %0, i32 -88
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %44, label %63

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 13
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39, %29, %16
  %45 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %46 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %47

47:                                               ; preds = %55, %44
  %48 = load volatile i32, ptr %45, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %51, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %52 = load volatile i32, ptr %45, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %51

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %48, %47 ], [ %52, %51 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %57 = load i64, ptr %46, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %58 = load volatile i32, ptr %45, align 4
  %59 = icmp eq i32 %58, %56
  br i1 %59, label %60, label %47

60:                                               ; preds = %55
  %61 = add i64 %4, %3
  %62 = icmp sgt i64 %61, %57
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %39, %33, %29, %21
  %64 = load i16, ptr %8, align 2
  %65 = or i16 %64, 2
  store i16 %65, ptr %8, align 2
  br label %66

66:                                               ; preds = %63, %60
  %67 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i16, ptr %8, align 2
  %73 = or i16 %72, 1
  store i16 %73, ptr %8, align 2
  br label %74

74:                                               ; preds = %71, %66
  %75 = load ptr, ptr %9, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 20
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 5
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %80 = load i32, ptr %79, align 8
  %81 = zext i32 %80 to i64
  %82 = zext i8 %7 to i64
  %83 = shl i64 %81, %82
  %84 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 1
  store i64 %83, ptr %84, align 8
  %85 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = zext i32 %86 to i64
  %88 = shl i64 %87, %82
  %89 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 2
  store i64 %88, ptr %89, align 8
  %90 = load i32, ptr %67, align 8
  %91 = and i32 %90, 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %74
  %94 = getelementptr i8, ptr %0, i32 -124
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 524288
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i16, ptr %8, align 2
  %100 = or i16 %99, 8
  store i16 %100, ptr %8, align 2
  %101 = load i32, ptr %67, align 8
  br label %102

102:                                              ; preds = %98, %93, %74
  %103 = phi i32 [ %101, %98 ], [ %90, %93 ], [ %90, %74 ]
  %104 = and i32 %103, 2048
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 3
  store i16 3, ptr %107, align 8
  %108 = load i64, ptr %2, align 8
  %109 = shl i64 %108, %82
  br label %118

110:                                              ; preds = %102
  %111 = and i32 %103, 16
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr inbounds %struct.iomap, ptr %1, i32 0, i32 3
  br i1 %112, label %117, label %114

114:                                              ; preds = %110
  store i16 2, ptr %113, align 8
  %115 = load i64, ptr %2, align 8
  %116 = shl i64 %115, %82
  br label %118

117:                                              ; preds = %110
  store i16 0, ptr %113, align 8
  br label %118

118:                                              ; preds = %117, %114, %106
  %119 = phi i64 [ %116, %114 ], [ %109, %106 ], [ -1, %117 ]
  store i64 %119, ptr %1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_transaction_committed(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inline_data_iomap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_es_find_extent_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_writepage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ext4_io_submit, align 8
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 48
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15, !prof !11

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.address_space_operations, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0, i32 noundef 0, i32 noundef 4096) #16
  tail call void @unlock_page(ptr noundef %0) #16
  br label %388

22:                                               ; preds = %2
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_writepage, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = tail call ptr @llvm.thread.pointer() #16
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !96
  %37 = tail call i32 @__traceiter_ext4_writepage(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !97
  br label %38

38:                                               ; preds = %36, %25, %22
  %39 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %40 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %41

41:                                               ; preds = %49, %38
  %42 = load volatile i32, ptr %39, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %45, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %46 = load volatile i32, ptr %39, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %45

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %42, %41 ], [ %46, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %51 = load i64, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %52 = load volatile i32, ptr %39, align 4
  %53 = icmp eq i32 %52, %50
  br i1 %53, label %54, label %41

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  %58 = ashr i64 %51, 12
  %59 = icmp eq i64 %58, %57
  %60 = trunc i64 %51 to i32
  %61 = and i32 %60, 4095
  %62 = select i1 %59, i32 %61, i32 4096
  %63 = load volatile i32, ptr %0, align 4
  %64 = and i32 %63, 8192
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67, !prof !9

66:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1996, 0\0A.popsection", ""() #16, !srcloc !98
  unreachable

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = inttoptr i32 %69 to ptr
  %71 = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  br label %73

73:                                               ; preds = %98, %67
  %74 = phi i32 [ 0, %67 ], [ %82, %98 ]
  %75 = phi ptr [ %70, %67 ], [ %81, %98 ]
  %76 = icmp ne ptr %75, %70
  %77 = icmp eq i32 %74, 0
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = add i32 %74, %72
  %83 = icmp ne i32 %82, 0
  %84 = icmp ult i32 %74, %62
  %85 = and i1 %84, %83
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load volatile i32, ptr %75, align 4
  %88 = and i32 %87, 256
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load volatile i32, ptr %75, align 4
  %92 = and i32 %91, 2048
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90, %86
  %95 = load volatile i32, ptr %75, align 4
  %96 = lshr i32 %95, 1
  %97 = and i32 %96, 1
  br label %98

98:                                               ; preds = %94, %90, %79
  %99 = phi i32 [ 0, %79 ], [ 0, %90 ], [ %97, %94 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %73, label %101

101:                                              ; preds = %98
  %102 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %1, ptr noundef %0) #16
  %103 = tail call ptr @llvm.thread.pointer() #16
  %104 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 2048
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load ptr, ptr %7, align 4
  %110 = getelementptr inbounds %struct.super_block, ptr %109, i32 0, i32 3
  %111 = load i32, ptr %110, align 16
  %112 = icmp eq i32 %111, 4096
  br i1 %112, label %113, label %121

113:                                              ; preds = %108, %101
  %114 = and i32 %105, 133120
  %115 = icmp eq i32 %114, 2048
  %116 = load i1, ptr @ext4_writepage.__already_done, align 1
  %117 = xor i1 %116, true
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %120, !prof !9

119:                                              ; preds = %113
  store i1 true, ptr @ext4_writepage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2025, i32 noundef 9, ptr noundef null) #16
  br label %120

120:                                              ; preds = %119, %113
  tail call void @unlock_page(ptr noundef %0) #16
  br label %388

121:                                              ; preds = %108, %73
  %122 = load volatile i32, ptr %0, align 4
  %123 = and i32 %122, 1024
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %379, label %125

125:                                              ; preds = %121
  %126 = tail call i32 @ext4_inode_journal_mode(ptr noundef %6) #16
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %379, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %4, align 4
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 -124
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 268435456
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %0) #16
  br label %152

137:                                              ; preds = %129
  %138 = getelementptr i8, ptr %131, i32 478
  %139 = load i16, ptr %138, align 2
  %140 = icmp eq i16 %139, 0
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %0) #16
  br i1 %140, label %152, label %141

141:                                              ; preds = %137
  %142 = load i32, ptr %55, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144, !prof !11

144:                                              ; preds = %141
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1863, 0\0A.popsection", ""() #16, !srcloc !99
  unreachable

145:                                              ; preds = %141
  %146 = tail call i32 @ext4_get_max_inline_size(ptr noundef %131) #16
  %147 = icmp ult i32 %146, %62
  br i1 %147, label %148, label %149, !prof !9

148:                                              ; preds = %145
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1864, 0\0A.popsection", ""() #16, !srcloc !100
  unreachable

149:                                              ; preds = %145
  %150 = tail call ptr @ext4_journalled_write_inline_data(ptr noundef %131, i32 noundef %62, ptr noundef %0) #16
  %151 = icmp eq ptr %150, null
  br i1 %151, label %371, label %152

152:                                              ; preds = %149, %137, %136
  %153 = phi i1 [ false, %149 ], [ true, %137 ], [ true, %136 ]
  %154 = phi ptr [ %150, %149 ], [ null, %137 ], [ null, %136 ]
  %155 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159, !prof !11

159:                                              ; preds = %152
  %160 = add i32 %156, -1
  br label %163

161:                                              ; preds = %152
  %162 = ptrtoint ptr %0 to i32
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = inttoptr i32 %164 to ptr
  %166 = getelementptr inbounds %struct.page, ptr %165, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %166) #16, !srcloc !41
  %167 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %166, ptr %166, i32 1, ptr elementtype(i32) %166) #16, !srcloc !86
  tail call void @unlock_page(ptr noundef %0) #16
  %168 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %131) #16
  %169 = getelementptr inbounds %struct.inode, ptr %131, i32 0, i32 8
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.super_block, ptr %170, i32 0, i32 27
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.ext4_sb_info, ptr %172, i32 0, i32 11
  %174 = load i32, ptr %173, align 4
  %175 = shl i32 %174, 3
  %176 = tail call ptr @__ext4_journal_start_sb(ptr noundef %170, i32 noundef 1878, i32 noundef 2, i32 noundef %168, i32 noundef 0, i32 noundef %175) #16
  %177 = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  br i1 %177, label %178, label %195

178:                                              ; preds = %163
  %179 = ptrtoint ptr %176 to i32
  %180 = load volatile i32, ptr %155, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183, !prof !11

183:                                              ; preds = %178
  %184 = add i32 %180, -1
  br label %187

185:                                              ; preds = %178
  %186 = ptrtoint ptr %0 to i32
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = inttoptr i32 %188 to ptr
  %190 = getelementptr inbounds %struct.page, ptr %189, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %190) #16, !srcloc !41
  %191 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %190, ptr %190, i32 1, ptr elementtype(i32) %190) #16, !srcloc !67
  %192 = extractvalue { i32, i32 } %191, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %374

194:                                              ; preds = %187
  tail call void @__put_page(ptr noundef %189) #16
  br label %374

195:                                              ; preds = %163
  %196 = icmp ult ptr %176, inttoptr (i32 4096 to ptr)
  br i1 %196, label %197, label %198, !prof !9

197:                                              ; preds = %195
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1884, 0\0A.popsection", ""() #16, !srcloc !101
  unreachable

198:                                              ; preds = %195
  %199 = load volatile i32, ptr %155, align 4
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202, !prof !11

202:                                              ; preds = %198
  %203 = add i32 %199, -1
  br label %206

204:                                              ; preds = %198
  %205 = ptrtoint ptr %0 to i32
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = inttoptr i32 %207 to ptr
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %208) #16, !srcloc !41
  %213 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %208, ptr %208, i32 1, ptr elementtype(i32) %208) #16, !srcloc !47
  %214 = extractvalue { i32, i32, i32 } %213, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %212, %206
  tail call void @__folio_lock(ptr noundef %208) #16
  br label %218

218:                                              ; preds = %217, %212
  %219 = load volatile i32, ptr %155, align 4
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222, !prof !11

222:                                              ; preds = %218
  %223 = add i32 %219, -1
  br label %226

224:                                              ; preds = %218
  %225 = ptrtoint ptr %0 to i32
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  %228 = inttoptr i32 %227 to ptr
  %229 = getelementptr inbounds %struct.page, ptr %228, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %229) #16, !srcloc !41
  %230 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %229, ptr %229, i32 1, ptr elementtype(i32) %229) #16, !srcloc !67
  %231 = extractvalue { i32, i32 } %230, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  tail call void @__put_page(ptr noundef %228) #16
  br label %234

234:                                              ; preds = %233, %226
  %235 = getelementptr inbounds %struct.inode, ptr %131, i32 0, i32 22
  %236 = getelementptr inbounds %struct.inode, ptr %131, i32 0, i32 13
  br label %237

237:                                              ; preds = %245, %234
  %238 = load volatile i32, ptr %235, align 4
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %241, %237
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %242 = load volatile i32, ptr %235, align 4
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %241

245:                                              ; preds = %241, %237
  %246 = phi i32 [ %238, %237 ], [ %242, %241 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %247 = load i64, ptr %236, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %248 = load volatile i32, ptr %235, align 4
  %249 = icmp eq i32 %248, %246
  br i1 %249, label %250, label %237

250:                                              ; preds = %245
  %251 = load ptr, ptr %4, align 4
  %252 = icmp eq ptr %251, %130
  br i1 %252, label %253, label %258

253:                                              ; preds = %250
  %254 = load i32, ptr %55, align 4
  %255 = zext i32 %254 to i64
  %256 = shl nuw nsw i64 %255, 12
  %257 = icmp sgt i64 %256, %247
  br i1 %257, label %258, label %260

258:                                              ; preds = %253, %250
  %259 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.__ext4_journalled_writepage, i32 noundef 1891, ptr noundef %176) #16
  br label %371

260:                                              ; preds = %253
  br i1 %153, label %263, label %261

261:                                              ; preds = %260
  %262 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %176, ptr noundef %131, ptr noundef nonnull @__func__.__ext4_journalled_writepage, i32 noundef 1897) #16
  br label %348

263:                                              ; preds = %260
  %264 = load volatile i32, ptr %0, align 4
  %265 = and i32 %264, 8192
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268, !prof !9

267:                                              ; preds = %263
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1899, 0\0A.popsection", ""() #16, !srcloc !102
  unreachable

268:                                              ; preds = %263
  %269 = load i32, ptr %68, align 4
  %270 = inttoptr i32 %269 to ptr
  %271 = ashr i64 %247, 12
  %272 = icmp eq i64 %271, %255
  %273 = trunc i64 %247 to i32
  %274 = and i32 %273, 4095
  %275 = select i1 %272, i32 %274, i32 4096
  %276 = getelementptr inbounds %struct.buffer_head, ptr %270, i32 0, i32 4
  %277 = load i32, ptr %276, align 8
  br label %278

278:                                              ; preds = %311, %268
  %279 = phi i32 [ 0, %268 ], [ %287, %311 ]
  %280 = phi ptr [ %270, %268 ], [ %286, %311 ]
  %281 = icmp ne ptr %280, %270
  %282 = icmp eq i32 %279, 0
  %283 = select i1 %281, i1 true, i1 %282
  br i1 %283, label %284, label %314

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.buffer_head, ptr %280, i32 0, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = add i32 %279, %277
  %288 = icmp ne i32 %287, 0
  %289 = icmp ult i32 %279, %275
  %290 = and i1 %289, %288
  br i1 %290, label %291, label %311

291:                                              ; preds = %284
  %292 = load volatile i32, ptr %280, align 4
  %293 = load volatile i32, ptr %280, align 4
  %294 = and i32 %293, 16
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %311, label %296

296:                                              ; preds = %291
  %297 = load volatile i32, ptr %280, align 4
  %298 = and i32 %297, 262144
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %296
  %301 = and i32 %292, 2
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %280) #16
  br label %304

304:                                              ; preds = %303, %300
  %305 = load ptr, ptr %169, align 4
  %306 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1034, ptr noundef %176, ptr noundef %305, ptr noundef %280, i32 noundef 1) #16
  %307 = icmp eq i32 %306, 0
  %308 = select i1 %307, i1 %302, i1 false
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1036, ptr noundef %176, ptr noundef null, ptr noundef %280) #16
  br label %311

311:                                              ; preds = %309, %304, %296, %291, %284
  %312 = phi i32 [ 0, %284 ], [ 0, %296 ], [ 0, %291 ], [ %310, %309 ], [ %306, %304 ]
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %278, label %314

314:                                              ; preds = %311, %278
  %315 = phi i32 [ %312, %311 ], [ 0, %278 ]
  %316 = load i32, ptr %276, align 8
  br label %317

317:                                              ; preds = %345, %314
  %318 = phi i32 [ 0, %314 ], [ %326, %345 ]
  %319 = phi ptr [ %270, %314 ], [ %325, %345 ]
  %320 = icmp ne ptr %319, %270
  %321 = icmp eq i32 %318, 0
  %322 = select i1 %320, i1 true, i1 %321
  br i1 %322, label %323, label %348

323:                                              ; preds = %317
  %324 = getelementptr inbounds %struct.buffer_head, ptr %319, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  %326 = add i32 %318, %316
  %327 = icmp ne i32 %326, 0
  %328 = icmp ult i32 %318, %275
  %329 = and i1 %328, %327
  br i1 %329, label %330, label %345

330:                                              ; preds = %323
  %331 = load volatile i32, ptr %319, align 4
  %332 = and i32 %331, 16
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %345, label %334

334:                                              ; preds = %330
  %335 = load volatile i32, ptr %319, align 4
  %336 = and i32 %335, 262144
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %334
  %339 = load volatile i32, ptr %319, align 4
  %340 = and i32 %339, 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  tail call void @_set_bit(i32 noundef 0, ptr noundef %319) #16
  br label %343

343:                                              ; preds = %342, %338
  %344 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.write_end_fn, i32 noundef 1266, ptr noundef %176, ptr noundef null, ptr noundef %319) #16
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %319) #16
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %319) #16
  br label %345

345:                                              ; preds = %343, %334, %330, %323
  %346 = phi i32 [ 0, %323 ], [ %344, %343 ], [ 0, %334 ], [ 0, %330 ]
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %317, label %348

348:                                              ; preds = %345, %317, %261
  %349 = phi i32 [ %262, %261 ], [ %315, %317 ], [ %315, %345 ]
  %350 = phi i32 [ 0, %261 ], [ %346, %345 ], [ 0, %317 ]
  %351 = phi i32 [ %62, %261 ], [ %275, %317 ], [ %275, %345 ]
  %352 = icmp eq i32 %349, 0
  %353 = select i1 %352, i32 %350, i32 %349
  %354 = zext i32 %351 to i64
  %355 = load i32, ptr %55, align 4
  %356 = zext i32 %355 to i64
  %357 = shl nuw nsw i64 %356, 12
  %358 = getelementptr i8, ptr %131, i32 392
  %359 = load ptr, ptr %358, align 8
  %360 = tail call i32 @jbd2_journal_inode_ranged_write(ptr noundef %176, ptr noundef %359, i64 noundef %357, i64 noundef %354) #16
  %361 = icmp eq i32 %353, 0
  %362 = select i1 %361, i32 %360, i32 %353
  %363 = load ptr, ptr %176, align 4
  %364 = getelementptr inbounds %struct.transaction_s, ptr %363, i32 0, i32 1
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr i8, ptr %131, i32 524
  store i32 %365, ptr %366, align 4
  %367 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.__ext4_journalled_writepage, i32 noundef 1918, ptr noundef %176) #16
  %368 = icmp eq i32 %362, 0
  %369 = select i1 %368, i32 %367, i32 %362
  %370 = getelementptr i8, ptr %131, i32 -128
  tail call void @_set_bit(i32 noundef 0, ptr noundef %370) #16
  br label %371

371:                                              ; preds = %348, %258, %149
  %372 = phi i32 [ 0, %149 ], [ 0, %258 ], [ %369, %348 ]
  %373 = phi ptr [ null, %149 ], [ %154, %258 ], [ %154, %348 ]
  tail call void @unlock_page(ptr noundef %0) #16
  br label %374

374:                                              ; preds = %371, %194, %187
  %375 = phi i32 [ %372, %371 ], [ %179, %187 ], [ %179, %194 ]
  %376 = phi ptr [ %373, %371 ], [ %154, %187 ], [ %154, %194 ]
  %377 = icmp eq ptr %376, null
  br i1 %377, label %388, label %378

378:                                              ; preds = %374
  tail call void @__brelse(ptr noundef nonnull %376) #16
  br label %388

379:                                              ; preds = %125, %121
  call void @ext4_io_submit_init(ptr noundef nonnull %3, ptr noundef %1) #16
  %380 = call ptr @ext4_init_io_end(ptr noundef %6, i32 noundef 3136) #16
  %381 = getelementptr inbounds %struct.ext4_io_submit, ptr %3, i32 0, i32 2
  store ptr %380, ptr %381, align 8
  %382 = icmp eq ptr %380, null
  br i1 %382, label %383, label %385

383:                                              ; preds = %379
  %384 = call zeroext i1 @redirty_page_for_writepage(ptr noundef %1, ptr noundef %0) #16
  call void @unlock_page(ptr noundef %0) #16
  br label %388

385:                                              ; preds = %379
  %386 = call i32 @ext4_bio_write_page(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %62, i1 noundef zeroext %78) #16
  call void @ext4_io_submit(ptr noundef nonnull %3) #16
  %387 = load ptr, ptr %381, align 8
  call void @ext4_put_io_end_defer(ptr noundef %387) #16
  br label %388

388:                                              ; preds = %385, %383, %378, %374, %120, %15
  %389 = phi i32 [ -5, %15 ], [ 0, %120 ], [ %386, %385 ], [ -12, %383 ], [ %375, %374 ], [ %375, %378 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret i32 %389
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_readpage(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_readpage, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !103
  %20 = tail call i32 @__traceiter_ext4_readpage(ptr noundef null, ptr noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !104
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = getelementptr i8, ptr %5, i32 -124
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %5, i32 478
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @ext4_readpage_inline(ptr noundef %5, ptr noundef %1) #16
  %32 = icmp eq i32 %31, -11
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %26, %21
  %34 = tail call i32 @ext4_mpage_readpages(ptr noundef %5, ptr noundef null, ptr noundef %1) #16
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ %31, %30 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_writepages(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.pagevec, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpage_da_data, align 8
  %6 = alloca %struct.blk_plug, align 4
  %7 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i32 80, i1 false), !annotation !10
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !10
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 48
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %739, !prof !11

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 136
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33, !prof !11

21:                                               ; preds = %17
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 136, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #14, !srcloc !21
  %29 = add i32 %28, %25
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #16, !srcloc !22
  br label %35

33:                                               ; preds = %17
  %34 = tail call zeroext i1 @__percpu_down_read(ptr noundef %18, i1 noundef zeroext false) #16
  br label %35

35:                                               ; preds = %33, %21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_writepages, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = tail call ptr @llvm.thread.pointer() #16
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !105
  %50 = tail call i32 @__traceiter_ext4_writepages(ptr noundef null, ptr noundef %8, ptr noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !106
  br label %51

51:                                               ; preds = %49, %38, %35
  %52 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %690, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 33554432
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %690, label %60

60:                                               ; preds = %55
  %61 = tail call i32 @ext4_inode_journal_mode(ptr noundef %8) #16
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @generic_writepages(ptr noundef %0, ptr noundef %1) #16
  br label %690

66:                                               ; preds = %60
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 48
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %690, !prof !11

76:                                               ; preds = %66
  %77 = load ptr, ptr %9, align 4
  %78 = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 27
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %79, i32 0, i32 19
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %690, !prof !11

84:                                               ; preds = %76
  %85 = getelementptr i8, ptr %8, i32 -124
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 268435456
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %84
  %90 = getelementptr i8, ptr %8, i32 478
  %91 = load i16, ptr %90, align 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ext4_sb_info, ptr %79, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = shl i32 %95, 3
  %97 = tail call ptr @__ext4_journal_start_sb(ptr noundef %77, i32 noundef 2677, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %96) #16
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = ptrtoint ptr %97 to i32
  br label %690

101:                                              ; preds = %93
  %102 = getelementptr i8, ptr %8, i32 -128
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106, !prof !11

106:                                              ; preds = %101
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2683, 0\0A.popsection", ""() #16, !srcloc !107
  unreachable

107:                                              ; preds = %101
  %108 = tail call i32 @ext4_destroy_inline_data(ptr noundef %97, ptr noundef %8) #16
  %109 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_writepages, i32 noundef 2685, ptr noundef %97) #16
  %110 = load ptr, ptr %9, align 4
  %111 = getelementptr inbounds %struct.super_block, ptr %110, i32 0, i32 27
  %112 = load ptr, ptr %111, align 4
  br label %113

113:                                              ; preds = %107, %89, %84
  %114 = phi ptr [ %79, %84 ], [ %112, %107 ], [ %79, %89 ]
  %115 = getelementptr inbounds %struct.ext4_sb_info, ptr %114, i32 0, i32 17
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 4194304
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %167, label %119

119:                                              ; preds = %113
  %120 = load i16, ptr %8, align 8
  %121 = and i16 %120, -4096
  %122 = icmp eq i16 %121, -32768
  br i1 %122, label %123, label %167

123:                                              ; preds = %119
  %124 = load volatile i32, ptr %85, align 4
  %125 = and i32 %124, 524288
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %167, label %127

127:                                              ; preds = %123
  %128 = tail call i32 @ext4_inode_journal_mode(ptr noundef %8) #16
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %167

131:                                              ; preds = %127
  %132 = load ptr, ptr %9, align 4
  %133 = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 27
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.ext4_sb_info, ptr %134, i32 0, i32 17
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 134217728
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %167, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 19
  %141 = load i8, ptr %140, align 2
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %134, i32 0, i32 8
  %143 = load i32, ptr %142, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !62
  %144 = load volatile i32, ptr %85, align 4
  %145 = and i32 %144, 524288
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = zext i8 %141 to i32
  %149 = lshr i32 4096, %148
  %150 = tail call i32 @ext4_ind_trans_blocks(ptr noundef %8, i32 noundef %149) #16
  br label %153

151:                                              ; preds = %139
  %152 = tail call i32 @ext4_ext_index_trans_blocks(ptr noundef %8, i32 noundef 1) #16
  br label %153

153:                                              ; preds = %151, %147
  %154 = phi i32 [ %152, %151 ], [ %150, %147 ]
  %155 = add i32 %154, 1
  %156 = tail call i32 @llvm.umin.i32(i32 %155, i32 %143) #16
  %157 = load ptr, ptr %9, align 4
  %158 = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 27
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.ext4_sb_info, ptr %159, i32 0, i32 6
  %161 = load i32, ptr %160, align 8
  %162 = icmp ugt i32 %156, %161
  %163 = select i1 %162, i32 %161, i32 %155
  %164 = add i32 %154, 7
  %165 = add i32 %164, %156
  %166 = add i32 %165, %163
  br label %167

167:                                              ; preds = %153, %131, %127, %123, %119, %113
  %168 = phi i32 [ %166, %153 ], [ 0, %131 ], [ 0, %113 ], [ 0, %119 ], [ 0, %123 ], [ 0, %127 ]
  %169 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 2
  %170 = load i64, ptr %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 3
  %174 = load i64, ptr %173, align 8
  %175 = icmp ne i64 %174, 9223372036854775807
  br label %176

176:                                              ; preds = %172, %167
  %177 = phi i1 [ true, %167 ], [ %175, %172 ]
  %178 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %179 = load i16, ptr %178, align 4
  %180 = and i16 %179, 16
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 8
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = add i32 %184, -1
  br label %195

188:                                              ; preds = %176
  %189 = lshr i64 %170, 12
  %190 = trunc i64 %189 to i32
  %191 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 3
  %192 = load i64, ptr %191, align 8
  %193 = lshr i64 %192, 12
  %194 = trunc i64 %193 to i32
  br label %195

195:                                              ; preds = %188, %182
  %196 = phi i32 [ %190, %188 ], [ %184, %182 ]
  %197 = phi i32 [ %194, %188 ], [ -1, %182 ]
  %198 = phi i32 [ -1, %188 ], [ %187, %182 ]
  %199 = phi i32 [ 1, %188 ], [ %186, %182 ]
  %200 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 2
  store i32 %196, ptr %200, align 8
  %201 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 4
  store i32 %197, ptr %201, align 8
  store ptr %8, ptr %5, align 8
  %202 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 1
  store ptr %1, ptr %202, align 4
  %203 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 6
  call void @ext4_io_submit_init(ptr noundef %203, ptr noundef %1) #16
  %204 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %205 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 7
  %206 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 6, i32 2
  %207 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 5, i32 2
  %208 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 5, i32 1
  %209 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 5
  %210 = getelementptr inbounds %struct.mpage_da_data, ptr %5, i32 0, i32 5, i32 3
  %211 = getelementptr inbounds %struct.pagevec, ptr %3, i32 0, i32 1
  %212 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 47
  %213 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 10
  br label %214

214:                                              ; preds = %678, %195
  %215 = phi i8 [ 0, %195 ], [ %671, %678 ]
  %216 = phi i32 [ %199, %195 ], [ 1, %678 ]
  %217 = load i32, ptr %204, align 8
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %223, label %219

219:                                              ; preds = %214
  %220 = load i16, ptr %178, align 4
  %221 = and i16 %220, 4
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219, %214
  %224 = load i32, ptr %200, align 8
  %225 = load i32, ptr %201, align 8
  call void @tag_pages_for_writeback(ptr noundef %0, i32 noundef %224, i32 noundef %225) #16
  br label %226

226:                                              ; preds = %223, %219
  call void @blk_start_plug(ptr noundef nonnull %6) #16
  %227 = load i8, ptr %205, align 8
  %228 = and i8 %227, -4
  store i8 %228, ptr %205, align 8
  %229 = call ptr @ext4_init_io_end(ptr noundef %8, i32 noundef 3264) #16
  store ptr %229, ptr %206, align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %670, label %231

231:                                              ; preds = %226
  %232 = call fastcc i32 @mpage_prepare_extent_to_map(ptr noundef nonnull %5)
  call fastcc void @mpage_release_unused_pages(ptr noundef nonnull %5, i1 noundef zeroext false)
  call void @ext4_io_submit(ptr noundef %203) #16
  %233 = load ptr, ptr %206, align 8
  call void @ext4_put_io_end_defer(ptr noundef %233) #16
  store ptr null, ptr %206, align 8
  %234 = icmp slt i32 %232, 0
  br i1 %234, label %670, label %235

235:                                              ; preds = %231
  %236 = load i8, ptr %205, align 8
  %237 = and i8 %236, 2
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %670

239:                                              ; preds = %235
  %240 = load i32, ptr %1, align 8
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %245, label %670

242:                                              ; preds = %666
  %243 = load i32, ptr %1, align 8
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %670

245:                                              ; preds = %242, %239
  %246 = phi i8 [ %639, %242 ], [ %215, %239 ]
  %247 = call ptr @ext4_init_io_end(ptr noundef %8, i32 noundef 3264) #16
  store ptr %247, ptr %206, align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %670, label %249

249:                                              ; preds = %245
  %250 = call i32 @ext4_inode_journal_mode(ptr noundef %8) #16
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %254, label %253, !prof !11

253:                                              ; preds = %249
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2757, 0\0A.popsection", ""() #16, !srcloc !108
  unreachable

254:                                              ; preds = %249
  %255 = load ptr, ptr %9, align 4
  %256 = getelementptr inbounds %struct.super_block, ptr %255, i32 0, i32 27
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.ext4_sb_info, ptr %257, i32 0, i32 47
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %266, label %261

261:                                              ; preds = %254
  %262 = call i32 @jbd2_journal_blocks_per_page(ptr noundef %8) #16
  %263 = load ptr, ptr %9, align 4
  %264 = getelementptr inbounds %struct.super_block, ptr %263, i32 0, i32 27
  %265 = load ptr, ptr %264, align 4
  br label %266

266:                                              ; preds = %261, %254
  %267 = phi ptr [ %265, %261 ], [ %257, %254 ]
  %268 = phi i32 [ %262, %261 ], [ 0, %254 ]
  %269 = getelementptr inbounds %struct.ext4_sb_info, ptr %267, i32 0, i32 8
  %270 = load i32, ptr %269, align 32
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !62
  %271 = load volatile i32, ptr %85, align 4
  %272 = and i32 %271, 524288
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %266
  %275 = add i32 %268, 2047
  %276 = call i32 @ext4_ind_trans_blocks(ptr noundef %8, i32 noundef %275) #16
  br label %279

277:                                              ; preds = %266
  %278 = call i32 @ext4_ext_index_trans_blocks(ptr noundef %8, i32 noundef %268) #16
  br label %279

279:                                              ; preds = %277, %274
  %280 = phi i32 [ %278, %277 ], [ %276, %274 ]
  %281 = add i32 %280, %268
  %282 = call i32 @llvm.umin.i32(i32 %281, i32 %270) #16
  %283 = load ptr, ptr %9, align 4
  %284 = getelementptr inbounds %struct.super_block, ptr %283, i32 0, i32 27
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.ext4_sb_info, ptr %285, i32 0, i32 6
  %287 = load i32, ptr %286, align 8
  %288 = icmp ugt i32 %282, %287
  %289 = select i1 %288, i32 %287, i32 %281
  %290 = add i32 %280, 6
  %291 = add i32 %290, %282
  %292 = add i32 %291, %289
  %293 = getelementptr inbounds %struct.ext4_sb_info, ptr %285, i32 0, i32 11
  %294 = load i32, ptr %293, align 4
  %295 = shl i32 %294, 3
  %296 = call ptr @__ext4_journal_start_sb(ptr noundef %283, i32 noundef 2762, i32 noundef 2, i32 noundef %292, i32 noundef %168, i32 noundef %295) #16
  %297 = icmp ugt ptr %296, inttoptr (i32 -4096 to ptr)
  br i1 %297, label %298, label %305

298:                                              ; preds = %279
  %299 = ptrtoint ptr %296 to i32
  %300 = load ptr, ptr %9, align 4
  %301 = load i32, ptr %1, align 8
  %302 = load i32, ptr %213, align 4
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %300, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.ext4_writepages, i32 noundef %301, i32 noundef %302, i32 noundef %299) #16
  %303 = load ptr, ptr %206, align 8
  %304 = call i32 @ext4_put_io_end(ptr noundef %303) #16
  store ptr null, ptr %206, align 8
  br label %670

305:                                              ; preds = %279
  %306 = load i8, ptr %205, align 8
  %307 = or i8 %306, 1
  store i8 %307, ptr %205, align 8
  %308 = load i32, ptr %200, align 8
  %309 = load ptr, ptr %202, align 4
  %310 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_da_write_pages, i32 0, i32 1), align 4
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %305
  %313 = tail call ptr @llvm.thread.pointer() #16
  %314 = getelementptr inbounds %struct.thread_info, ptr %313, i32 0, i32 2
  %315 = load i32, ptr %314, align 8
  %316 = lshr i32 %315, 5
  %317 = getelementptr i32, ptr @__cpu_online_mask, i32 %316
  %318 = load volatile i32, ptr %317, align 4
  %319 = and i32 %315, 31
  %320 = shl nuw i32 1, %319
  %321 = and i32 %320, %318
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %312
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !109
  %324 = call i32 @__traceiter_ext4_da_write_pages(ptr noundef null, ptr noundef %8, i32 noundef %308, ptr noundef %309) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !110
  br label %325

325:                                              ; preds = %323, %312, %305
  %326 = call fastcc i32 @mpage_prepare_extent_to_map(ptr noundef nonnull %5)
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %638

328:                                              ; preds = %325
  %329 = load i32, ptr %207, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %638, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr %5, align 8
  %333 = load ptr, ptr %206, align 8
  %334 = call ptr @ext4_alloc_io_end_vec(ptr noundef %333) #16
  %335 = icmp ugt ptr %334, inttoptr (i32 -4096 to ptr)
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = ptrtoint ptr %334 to i32
  br label %638

338:                                              ; preds = %331
  %339 = load i32, ptr %208, align 8
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 19
  %342 = load i8, ptr %341, align 2
  %343 = zext i8 %342 to i64
  %344 = shl i64 %340, %343
  %345 = getelementptr inbounds %struct.ext4_io_end_vec, ptr %334, i32 0, i32 1
  store i64 %344, ptr %345, align 8
  %346 = icmp ult ptr %296, inttoptr (i32 4096 to ptr)
  %347 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %296, i32 0, i32 1
  br label %348

348:                                              ; preds = %591, %338
  %349 = phi i1 [ false, %338 ], [ true, %591 ]
  %350 = load ptr, ptr %5, align 8
  %351 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_da_write_pages_extent, i32 0, i32 1), align 4
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %353, label %366

353:                                              ; preds = %348
  %354 = tail call ptr @llvm.thread.pointer() #16
  %355 = getelementptr inbounds %struct.thread_info, ptr %354, i32 0, i32 2
  %356 = load i32, ptr %355, align 8
  %357 = lshr i32 %356, 5
  %358 = getelementptr i32, ptr @__cpu_online_mask, i32 %357
  %359 = load volatile i32, ptr %358, align 4
  %360 = and i32 %356, 31
  %361 = shl nuw i32 1, %360
  %362 = and i32 %361, %359
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %353
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !111
  %365 = call i32 @__traceiter_ext4_da_write_pages_extent(ptr noundef null, ptr noundef %350, ptr noundef %209) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !112
  br label %366

366:                                              ; preds = %364, %353, %348
  %367 = getelementptr inbounds %struct.inode, ptr %350, i32 0, i32 8
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.super_block, ptr %368, i32 0, i32 27
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.ext4_sb_info, ptr %370, i32 0, i32 17
  %372 = load i32, ptr %371, align 4
  %373 = and i32 %372, 4194304
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %396, label %375

375:                                              ; preds = %366
  %376 = load i16, ptr %350, align 8
  %377 = and i16 %376, -4096
  %378 = icmp eq i16 %377, -32768
  br i1 %378, label %379, label %396

379:                                              ; preds = %375
  %380 = getelementptr i8, ptr %350, i32 -124
  %381 = load volatile i32, ptr %380, align 4
  %382 = and i32 %381, 524288
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %396, label %384

384:                                              ; preds = %379
  %385 = call i32 @ext4_inode_journal_mode(ptr noundef %350) #16
  %386 = and i32 %385, 1
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %396

388:                                              ; preds = %384
  %389 = load ptr, ptr %367, align 4
  %390 = getelementptr inbounds %struct.super_block, ptr %389, i32 0, i32 27
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.ext4_sb_info, ptr %391, i32 0, i32 17
  %393 = load i32, ptr %392, align 4
  %394 = and i32 %393, 134217728
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %388, %384, %379, %375, %366
  br label %397

397:                                              ; preds = %396, %388
  %398 = phi i1 [ true, %396 ], [ false, %388 ]
  %399 = phi i32 [ 1057, %396 ], [ 1067, %388 ]
  %400 = load i32, ptr %210, align 8
  %401 = lshr i32 %400, 6
  %402 = and i32 %401, 4
  %403 = or i32 %402, %399
  %404 = call i32 @ext4_map_blocks(ptr noundef %296, ptr noundef %350, ptr noundef %209, i32 noundef %403) #16
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %434, label %406

406:                                              ; preds = %397
  br i1 %398, label %430, label %407

407:                                              ; preds = %406
  %408 = load i32, ptr %210, align 8
  %409 = and i32 %408, 2048
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %430, label %411

411:                                              ; preds = %407
  %412 = load ptr, ptr %206, align 8
  %413 = getelementptr inbounds %struct.ext4_io_end, ptr %412, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  %415 = icmp ne ptr %414, null
  %416 = or i1 %346, %415
  br i1 %416, label %420, label %417

417:                                              ; preds = %411
  %418 = load ptr, ptr %347, align 4
  store ptr %418, ptr %413, align 4
  store ptr null, ptr %347, align 4
  %419 = load ptr, ptr %206, align 8
  br label %420

420:                                              ; preds = %417, %411
  %421 = phi ptr [ %419, %417 ], [ %412, %411 ]
  %422 = getelementptr inbounds %struct.ext4_io_end, ptr %421, i32 0, i32 4
  %423 = load i32, ptr %422, align 4
  %424 = and i32 %423, 1
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %420
  %427 = or i32 %423, 1
  store i32 %427, ptr %422, align 4
  %428 = getelementptr i8, ptr %350, i32 512
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %428) #16, !srcloc !41
  %429 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %428, ptr %428, i32 1, ptr elementtype(i32) %428) #16, !srcloc !86
  br label %430

430:                                              ; preds = %426, %420, %407, %406
  %431 = load i32, ptr %207, align 4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %466, !prof !9

433:                                              ; preds = %430
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2385, 0\0A.popsection", ""() #16, !srcloc !113
  unreachable

434:                                              ; preds = %397
  %435 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 8
  %436 = load ptr, ptr %435, align 4
  %437 = getelementptr inbounds %struct.super_block, ptr %436, i32 0, i32 27
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr inbounds %struct.ext4_sb_info, ptr %438, i32 0, i32 48
  %440 = load volatile i32, ptr %439, align 4
  %441 = and i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %638

443:                                              ; preds = %434
  %444 = getelementptr inbounds %struct.ext4_sb_info, ptr %438, i32 0, i32 19
  %445 = load volatile i32, ptr %444, align 4
  %446 = and i32 %445, 2
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %638

448:                                              ; preds = %443
  switch i32 %404, label %459 [
    i32 -12, label %452
    i32 -28, label %449
  ]

449:                                              ; preds = %448
  %450 = call i64 @ext4_count_free_clusters(ptr noundef %436) #16
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %453, label %452

452:                                              ; preds = %449, %448
  br i1 %349, label %596, label %638

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 10
  %455 = load i32, ptr %454, align 4
  %456 = load i32, ptr %208, align 8
  %457 = zext i32 %456 to i64
  %458 = load i32, ptr %207, align 4
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %436, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %455, i64 noundef %457, i32 noundef %458, i32 noundef 28) #16
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %436, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #16
  call fastcc void @ext4_print_free_blocks(ptr noundef %332) #16
  br label %638

459:                                              ; preds = %448
  %460 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 10
  %461 = load i32, ptr %460, align 4
  %462 = load i32, ptr %208, align 8
  %463 = zext i32 %462 to i64
  %464 = load i32, ptr %207, align 4
  %465 = sub i32 0, %404
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %436, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %461, i64 noundef %463, i32 noundef %464, i32 noundef %465) #16
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %436, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #16
  br label %638

466:                                              ; preds = %430
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #16, !annotation !10
  %467 = load ptr, ptr %5, align 8
  %468 = getelementptr inbounds %struct.inode, ptr %467, i32 0, i32 19
  %469 = load i8, ptr %468, align 2
  %470 = zext i8 %469 to i32
  %471 = sub nsw i32 12, %470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %472 = load i32, ptr %208, align 8
  %473 = lshr i32 %472, %471
  store i32 %473, ptr %4, align 4
  %474 = add i32 %431, -1
  %475 = add i32 %474, %472
  %476 = lshr i32 %475, %471
  %477 = load i64, ptr %209, align 8
  store i8 0, ptr %3, align 4
  store i8 0, ptr %211, align 1
  %478 = icmp ugt i32 %473, %476
  br i1 %478, label %583, label %479

479:                                              ; preds = %466
  %480 = shl i32 %473, %471
  %481 = getelementptr inbounds %struct.inode, ptr %467, i32 0, i32 9
  br label %482

482:                                              ; preds = %580, %479
  %483 = phi i64 [ %477, %479 ], [ %576, %580 ]
  %484 = phi i32 [ %480, %479 ], [ %575, %580 ]
  %485 = load ptr, ptr %481, align 8
  %486 = call i32 @pagevec_lookup_range(ptr noundef nonnull %3, ptr noundef %485, ptr noundef nonnull %4, i32 noundef %476) #16
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %583, label %488

488:                                              ; preds = %482
  %489 = icmp sgt i32 %486, 0
  br i1 %489, label %493, label %574

490:                                              ; preds = %569
  %491 = add nuw nsw i32 %494, 1
  %492 = icmp eq i32 %491, %486
  br i1 %492, label %574, label %493

493:                                              ; preds = %490, %488
  %494 = phi i32 [ %491, %490 ], [ 0, %488 ]
  %495 = phi i64 [ %570, %490 ], [ %483, %488 ]
  %496 = phi i32 [ %571, %490 ], [ %484, %488 ]
  %497 = getelementptr %struct.pagevec, ptr %3, i32 0, i32 2, i32 %494
  %498 = load ptr, ptr %497, align 4
  %499 = load ptr, ptr %206, align 8
  %500 = load ptr, ptr %5, align 8
  %501 = getelementptr inbounds %struct.inode, ptr %500, i32 0, i32 19
  %502 = load i8, ptr %501, align 2
  %503 = call ptr @ext4_last_io_end_vec(ptr noundef %499) #16
  %504 = load volatile i32, ptr %498, align 4
  %505 = and i32 %504, 8192
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %508, !prof !9

507:                                              ; preds = %493
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2233, 0\0A.popsection", ""() #16, !srcloc !114
  unreachable

508:                                              ; preds = %493
  %509 = zext i8 %502 to i32
  %510 = getelementptr inbounds %struct.page, ptr %498, i32 0, i32 1, i32 0, i32 3
  %511 = load i32, ptr %510, align 4
  %512 = inttoptr i32 %511 to ptr
  %513 = shl nuw i32 1, %509
  br label %514

514:                                              ; preds = %556, %508
  %515 = phi ptr [ %512, %508 ], [ %561, %556 ]
  %516 = phi i32 [ %496, %508 ], [ %559, %556 ]
  %517 = phi i64 [ %495, %508 ], [ %557, %556 ]
  %518 = phi i32 [ 0, %508 ], [ %558, %556 ]
  %519 = load i32, ptr %208, align 8
  %520 = icmp ult i32 %516, %519
  br i1 %520, label %556, label %521

521:                                              ; preds = %514
  %522 = load i32, ptr %207, align 4
  %523 = add i32 %522, %519
  %524 = icmp ult i32 %516, %523
  br i1 %524, label %546, label %525

525:                                              ; preds = %521
  store i32 0, ptr %207, align 4
  store i32 0, ptr %210, align 8
  %526 = getelementptr inbounds %struct.ext4_io_end_vec, ptr %503, i32 0, i32 2
  %527 = load i32, ptr %526, align 8
  %528 = add i32 %527, %518
  store i32 %528, ptr %526, align 8
  %529 = call fastcc i32 @mpage_process_page_bufs(ptr noundef nonnull %5, ptr noundef %512, ptr noundef %515, i32 noundef %516) #16
  %530 = icmp sgt i32 %529, -1
  br i1 %530, label %531, label %586

531:                                              ; preds = %525
  %532 = load i32, ptr %207, align 4
  %533 = icmp ne i32 %532, 0
  %534 = load i32, ptr %208, align 8
  %535 = icmp ugt i32 %534, %516
  %536 = select i1 %533, i1 %535, i1 false
  br i1 %536, label %537, label %586

537:                                              ; preds = %531
  %538 = call ptr @ext4_alloc_io_end_vec(ptr noundef %499) #16
  %539 = icmp ugt ptr %538, inttoptr (i32 -4096 to ptr)
  br i1 %539, label %567, label %540

540:                                              ; preds = %537
  %541 = load i32, ptr %208, align 8
  %542 = zext i32 %541 to i64
  %543 = zext i8 %502 to i64
  %544 = shl i64 %542, %543
  %545 = getelementptr inbounds %struct.ext4_io_end_vec, ptr %538, i32 0, i32 1
  store i64 %544, ptr %545, align 8
  br label %586

546:                                              ; preds = %521
  %547 = load volatile i32, ptr %515, align 4
  %548 = and i32 %547, 256
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %546
  call void @_clear_bit(i32 noundef 8, ptr noundef %515) #16
  %551 = add i64 %517, 1
  %552 = getelementptr inbounds %struct.buffer_head, ptr %515, i32 0, i32 3
  store i64 %517, ptr %552, align 8
  br label %553

553:                                              ; preds = %550, %546
  %554 = phi i64 [ %551, %550 ], [ %517, %546 ]
  call void @_clear_bit(i32 noundef 11, ptr noundef %515) #16
  %555 = add i32 %518, %513
  br label %556

556:                                              ; preds = %553, %514
  %557 = phi i64 [ %517, %514 ], [ %554, %553 ]
  %558 = phi i32 [ %518, %514 ], [ %555, %553 ]
  %559 = add nuw i32 %516, 1
  %560 = getelementptr inbounds %struct.buffer_head, ptr %515, i32 0, i32 1
  %561 = load ptr, ptr %560, align 4
  %562 = icmp eq ptr %561, %512
  br i1 %562, label %563, label %514

563:                                              ; preds = %556
  %564 = getelementptr inbounds %struct.ext4_io_end_vec, ptr %503, i32 0, i32 2
  %565 = load i32, ptr %564, align 8
  %566 = add i32 %565, %558
  store i32 %566, ptr %564, align 8
  br label %569

567:                                              ; preds = %537
  %568 = icmp sgt ptr %538, inttoptr (i32 -1 to ptr)
  br i1 %568, label %569, label %584

569:                                              ; preds = %567, %563
  %570 = phi i64 [ %557, %563 ], [ %517, %567 ]
  %571 = phi i32 [ %559, %563 ], [ %516, %567 ]
  %572 = call fastcc i32 @mpage_submit_page(ptr noundef nonnull %5, ptr noundef %498) #16
  %573 = icmp slt i32 %572, 0
  br i1 %573, label %586, label %490

574:                                              ; preds = %490, %488
  %575 = phi i32 [ %484, %488 ], [ %571, %490 ]
  %576 = phi i64 [ %483, %488 ], [ %570, %490 ]
  %577 = load i8, ptr %3, align 4
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %580, label %579

579:                                              ; preds = %574
  call void @__pagevec_release(ptr noundef nonnull %3) #16
  br label %580

580:                                              ; preds = %579, %574
  %581 = load i32, ptr %4, align 4
  %582 = icmp ugt i32 %581, %476
  br i1 %582, label %583, label %482

583:                                              ; preds = %580, %482, %466
  store i32 0, ptr %207, align 4
  store i32 0, ptr %210, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  br label %596

584:                                              ; preds = %567
  %585 = ptrtoint ptr %538 to i32
  br label %586

586:                                              ; preds = %584, %569, %540, %531, %525
  %587 = phi i32 [ 0, %540 ], [ %585, %584 ], [ 0, %531 ], [ %529, %525 ], [ %572, %569 ]
  %588 = load i8, ptr %3, align 4
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %591, label %590

590:                                              ; preds = %586
  call void @__pagevec_release(ptr noundef nonnull %3) #16
  br label %591

591:                                              ; preds = %590, %586
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  %592 = icmp slt i32 %587, 0
  %593 = load i32, ptr %207, align 4
  %594 = icmp eq i32 %593, 0
  %595 = select i1 %592, i1 true, i1 %594
  br i1 %595, label %596, label %348

596:                                              ; preds = %591, %583, %452
  %597 = phi i32 [ %404, %452 ], [ 0, %583 ], [ %587, %591 ]
  %598 = load i32, ptr %200, align 8
  %599 = zext i32 %598 to i64
  %600 = shl nuw nsw i64 %599, 12
  %601 = getelementptr i8, ptr %332, i32 -32
  %602 = load volatile i64, ptr %601, align 8
  %603 = icmp sgt i64 %600, %602
  br i1 %603, label %604, label %638

604:                                              ; preds = %596
  %605 = getelementptr i8, ptr %332, i32 -24
  call void @down_write(ptr noundef %605) #16
  %606 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 22
  %607 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 13
  br label %608

608:                                              ; preds = %616, %604
  %609 = load volatile i32, ptr %606, align 4
  %610 = and i32 %609, 1
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %616, label %612

612:                                              ; preds = %612, %608
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %613 = load volatile i32, ptr %606, align 4
  %614 = and i32 %613, 1
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %612

616:                                              ; preds = %612, %608
  %617 = phi i32 [ %609, %608 ], [ %613, %612 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %618 = load i64, ptr %607, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %619 = load volatile i32, ptr %606, align 4
  %620 = icmp eq i32 %619, %617
  br i1 %620, label %621, label %608

621:                                              ; preds = %616
  %622 = call i64 @llvm.smin.i64(i64 %600, i64 %618) #16
  %623 = load i64, ptr %601, align 8
  %624 = icmp sgt i64 %622, %623
  br i1 %624, label %625, label %626

625:                                              ; preds = %621
  store i64 %622, ptr %601, align 8
  br label %626

626:                                              ; preds = %625, %621
  call void @up_write(ptr noundef %605) #16
  %627 = call i32 @__ext4_mark_inode_dirty(ptr noundef %296, ptr noundef %332, ptr noundef nonnull @__func__.mpage_map_and_submit_extent, i32 noundef 2487) #16
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %635, label %629

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 8
  %631 = load ptr, ptr %630, align 4
  %632 = sub i32 0, %627
  %633 = getelementptr inbounds %struct.inode, ptr %332, i32 0, i32 10
  %634 = load i32, ptr %633, align 4
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %631, ptr noundef nonnull @__func__.mpage_map_and_submit_extent, i32 noundef 2491, i1 noundef zeroext false, i32 noundef %632, i64 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %634) #16
  br label %635

635:                                              ; preds = %629, %626
  %636 = icmp eq i32 %597, 0
  %637 = select i1 %636, i32 %627, i32 %597
  br label %638

638:                                              ; preds = %635, %596, %459, %453, %452, %443, %434, %336, %328, %325
  %639 = phi i8 [ %246, %328 ], [ %246, %325 ], [ %246, %336 ], [ %246, %635 ], [ %246, %596 ], [ %246, %452 ], [ 1, %459 ], [ 1, %453 ], [ 1, %443 ], [ 1, %434 ]
  %640 = phi i32 [ 0, %328 ], [ %326, %325 ], [ %337, %336 ], [ %637, %635 ], [ %597, %596 ], [ %404, %452 ], [ %404, %459 ], [ -28, %453 ], [ %404, %443 ], [ %404, %434 ]
  %641 = icmp ult ptr %296, inttoptr (i32 4096 to ptr)
  br i1 %641, label %647, label %642

642:                                              ; preds = %638
  %643 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %296, i32 0, i32 7
  %644 = load i32, ptr %643, align 4
  %645 = and i32 %644, 1
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %651

647:                                              ; preds = %642, %638
  %648 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_writepages, i32 noundef 2791, ptr noundef %296) #16
  %649 = load i8, ptr %205, align 8
  %650 = and i8 %649, -2
  store i8 %650, ptr %205, align 8
  br label %651

651:                                              ; preds = %647, %642
  %652 = phi ptr [ null, %647 ], [ %296, %642 ]
  %653 = icmp ne i8 %639, 0
  call fastcc void @mpage_release_unused_pages(ptr noundef nonnull %5, i1 noundef zeroext %653)
  call void @ext4_io_submit(ptr noundef %203) #16
  %654 = icmp eq ptr %652, null
  %655 = load ptr, ptr %206, align 8
  br i1 %654, label %658, label %656

656:                                              ; preds = %651
  call void @ext4_put_io_end_defer(ptr noundef %655) #16
  %657 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_writepages, i32 noundef 2809, ptr noundef nonnull %652) #16
  br label %660

658:                                              ; preds = %651
  %659 = call i32 @ext4_put_io_end(ptr noundef %655) #16
  br label %660

660:                                              ; preds = %658, %656
  store ptr null, ptr %206, align 8
  switch i32 %640, label %670 [
    i32 -28, label %661
    i32 0, label %666
  ]

661:                                              ; preds = %660
  %662 = load ptr, ptr %212, align 4
  %663 = icmp eq ptr %662, null
  br i1 %663, label %670, label %664

664:                                              ; preds = %661
  %665 = call i32 @jbd2_journal_force_commit_nested(ptr noundef nonnull %662) #16
  br label %666

666:                                              ; preds = %664, %660
  %667 = load i8, ptr %205, align 8
  %668 = and i8 %667, 2
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %242, label %670

670:                                              ; preds = %666, %661, %660, %298, %245, %242, %239, %235, %231, %226
  %671 = phi i8 [ %215, %226 ], [ %215, %231 ], [ %246, %298 ], [ %215, %235 ], [ %215, %239 ], [ %639, %666 ], [ %639, %242 ], [ %246, %245 ], [ %639, %660 ], [ %639, %661 ]
  %672 = phi i32 [ -12, %226 ], [ %232, %231 ], [ %299, %298 ], [ %232, %235 ], [ %232, %239 ], [ 0, %666 ], [ 0, %242 ], [ -12, %245 ], [ %640, %660 ], [ -28, %661 ]
  call void @blk_finish_plug(ptr noundef nonnull %6) #16
  %673 = or i32 %672, %216
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %679

675:                                              ; preds = %670
  %676 = load i32, ptr %1, align 8
  %677 = icmp sgt i32 %676, 0
  br i1 %677, label %678, label %679

678:                                              ; preds = %675
  store i32 %198, ptr %201, align 8
  store i32 0, ptr %200, align 8
  br label %214

679:                                              ; preds = %675, %670
  %680 = load i16, ptr %178, align 4
  %681 = and i16 %680, 16
  %682 = icmp eq i16 %681, 0
  br i1 %682, label %683, label %687

683:                                              ; preds = %679
  br i1 %177, label %690, label %684

684:                                              ; preds = %683
  %685 = load i32, ptr %1, align 8
  %686 = icmp sgt i32 %685, 0
  br i1 %686, label %687, label %690

687:                                              ; preds = %684, %679
  %688 = load i32, ptr %200, align 8
  %689 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 8
  store i32 %688, ptr %689, align 4
  br label %690

690:                                              ; preds = %687, %684, %683, %99, %76, %66, %64, %55, %51
  %691 = phi i32 [ %65, %64 ], [ %100, %99 ], [ %672, %687 ], [ %672, %684 ], [ %672, %683 ], [ 0, %55 ], [ 0, %51 ], [ -30, %76 ], [ -30, %66 ]
  %692 = load i32, ptr %1, align 8
  %693 = sub i32 %7, %692
  %694 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_writepages_result, i32 0, i32 1), align 4
  %695 = icmp sgt i32 %694, 0
  br i1 %695, label %696, label %709

696:                                              ; preds = %690
  %697 = tail call ptr @llvm.thread.pointer() #16
  %698 = getelementptr inbounds %struct.thread_info, ptr %697, i32 0, i32 2
  %699 = load i32, ptr %698, align 8
  %700 = lshr i32 %699, 5
  %701 = getelementptr i32, ptr @__cpu_online_mask, i32 %700
  %702 = load volatile i32, ptr %701, align 4
  %703 = and i32 %699, 31
  %704 = shl nuw i32 1, %703
  %705 = and i32 %704, %702
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %709, label %707

707:                                              ; preds = %696
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !115
  %708 = call i32 @__traceiter_ext4_writepages_result(ptr noundef null, ptr noundef %8, ptr noundef %1, i32 noundef %691, i32 noundef %693) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !116
  br label %709

709:                                              ; preds = %707, %696, %690
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %710 = load volatile i32, ptr %18, align 4
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %724, !prof !11

712:                                              ; preds = %709
  %713 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %714 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 136, i32 1
  %715 = load ptr, ptr %714, align 4
  %716 = ptrtoint ptr %715 to i32
  %717 = call i32 @llvm.read_register.i32(metadata !0) #16
  %718 = inttoptr i32 %717 to ptr
  %719 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %718) #14, !srcloc !21
  %720 = add i32 %719, %716
  %721 = inttoptr i32 %720 to ptr
  %722 = load i32, ptr %721, align 4
  %723 = add i32 %722, -1
  store i32 %723, ptr %721, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %713) #16, !srcloc !22
  br label %738

724:                                              ; preds = %709
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %725 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !20
  %726 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 136, i32 1
  %727 = load ptr, ptr %726, align 4
  %728 = ptrtoint ptr %727 to i32
  %729 = call i32 @llvm.read_register.i32(metadata !0) #16
  %730 = inttoptr i32 %729 to ptr
  %731 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %730) #14, !srcloc !21
  %732 = add i32 %731, %728
  %733 = inttoptr i32 %732 to ptr
  %734 = load i32, ptr %733, align 4
  %735 = add i32 %734, -1
  store i32 %735, ptr %733, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %725) #16, !srcloc !22
  %736 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 136, i32 2
  %737 = call i32 @rcuwait_wake_up(ptr noundef %736) #16
  br label %738

738:                                              ; preds = %724, %712
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %739

739:                                              ; preds = %738, %2
  %740 = phi i32 [ %691, %738 ], [ -5, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #16
  ret i32 %740
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_journalled_set_page_dirty(ptr noundef %0) #0 {
  tail call void @_set_bit(i32 noundef 10, ptr noundef %0) #16
  %2 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_readahead(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.readahead_control, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -124
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %4, i32 478
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = tail call i32 @ext4_mpage_readpages(ptr noundef %4, ptr noundef %0, ptr noundef null) #16
  br label %15

15:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_write_begin(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readnone %6) #0 {
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 48
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %295, !prof !11

18:                                               ; preds = %7
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_write_begin, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #16
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !117
  %33 = tail call i32 @__traceiter_ext4_write_begin(ptr noundef null, ptr noundef %9, i64 noundef %2, i32 noundef %3, i32 noundef %4) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !118
  br label %34

34:                                               ; preds = %32, %21, %18
  %35 = tail call i32 @ext4_writepage_trans_blocks(ptr noundef %9)
  %36 = add i32 %35, 1
  %37 = lshr i64 %2, 12
  %38 = trunc i64 %37 to i32
  %39 = trunc i64 %2 to i32
  %40 = and i32 %39, 4095
  %41 = add i32 %40, %3
  %42 = getelementptr i8, ptr %9, i32 -128
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %34
  %47 = tail call i32 @ext4_try_to_write_inline_data(ptr noundef %1, ptr noundef %9, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #16
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %295, label %49

49:                                               ; preds = %46
  %50 = icmp eq i32 %47, 1
  br i1 %50, label %295, label %51

51:                                               ; preds = %49, %34
  %52 = call ptr @grab_cache_page_write_begin(ptr noundef %1, i32 noundef %38, i32 noundef %4) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %295, label %54

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %9, i32 -124
  %56 = zext i32 %3 to i64
  %57 = add i64 %56, %2
  %58 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %59 = getelementptr i8, ptr %9, i32 -144
  %60 = getelementptr i8, ptr %9, i32 478
  %61 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 21
  %62 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %63 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  br label %64

64:                                               ; preds = %131, %54
  %65 = phi ptr [ %52, %54 ], [ %133, %131 ]
  call void @unlock_page(ptr noundef nonnull %65) #16
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %65 to i32
  %68 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1, i32 0, i32 1
  %69 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1, i32 0, i32 3
  br label %70

70:                                               ; preds = %275, %64
  %71 = load ptr, ptr %10, align 4
  %72 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 27
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ext4_sb_info, ptr %73, i32 0, i32 11
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %75, 3
  %77 = call ptr @__ext4_journal_start_sb(ptr noundef %71, i32 noundef 1182, i32 noundef 2, i32 noundef %36, i32 noundef 0, i32 noundef %76) #16
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %96

79:                                               ; preds = %70
  %80 = ptrtoint ptr %65 to i32
  %81 = load volatile i32, ptr %66, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84, !prof !11

84:                                               ; preds = %79
  %85 = add i32 %81, -1
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi i32 [ %85, %84 ], [ %80, %79 ]
  %88 = inttoptr i32 %87 to ptr
  %89 = getelementptr inbounds %struct.page, ptr %88, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #16, !srcloc !41
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #16, !srcloc !67
  %91 = extractvalue { i32, i32 } %90, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  call void @__put_page(ptr noundef %88) #16
  br label %94

94:                                               ; preds = %93, %86
  %95 = ptrtoint ptr %77 to i32
  br label %295

96:                                               ; preds = %70
  %97 = load volatile i32, ptr %66, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100, !prof !11

100:                                              ; preds = %96
  %101 = add i32 %97, -1
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i32 [ %101, %100 ], [ %67, %96 ]
  %104 = inttoptr i32 %103 to ptr
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #16, !srcloc !41
  %109 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #16, !srcloc !47
  %110 = extractvalue { i32, i32, i32 } %109, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108, %102
  call void @__folio_lock(ptr noundef %104) #16
  br label %114

114:                                              ; preds = %113, %108
  %115 = load ptr, ptr %68, align 4
  %116 = icmp eq ptr %115, %1
  br i1 %116, label %135, label %117

117:                                              ; preds = %114
  call void @unlock_page(ptr noundef nonnull %65) #16
  %118 = load volatile i32, ptr %66, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !11

121:                                              ; preds = %117
  %122 = add i32 %118, -1
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi i32 [ %122, %121 ], [ %67, %117 ]
  %125 = inttoptr i32 %124 to ptr
  %126 = getelementptr inbounds %struct.page, ptr %125, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #16, !srcloc !41
  %127 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 1, ptr elementtype(i32) %126) #16, !srcloc !67
  %128 = extractvalue { i32, i32 } %127, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  call void @__put_page(ptr noundef %125) #16
  br label %131

131:                                              ; preds = %130, %123
  %132 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_write_begin, i32 noundef 1193, ptr noundef %77) #16
  %133 = call ptr @grab_cache_page_write_begin(ptr noundef %1, i32 noundef %38, i32 noundef %4) #16
  %134 = icmp eq ptr %133, null
  br i1 %134, label %295, label %64

135:                                              ; preds = %114
  call void @wait_for_stable_page(ptr noundef nonnull %65) #16
  %136 = load ptr, ptr %10, align 4
  %137 = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 27
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 17
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 4194304
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %135
  %144 = load i16, ptr %9, align 8
  %145 = and i16 %144, -4096
  %146 = icmp eq i16 %145, -32768
  br i1 %146, label %147, label %163

147:                                              ; preds = %143
  %148 = load volatile i32, ptr %55, align 4
  %149 = and i32 %148, 524288
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = call i32 @ext4_inode_journal_mode(ptr noundef %9) #16
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load ptr, ptr %10, align 4
  %157 = getelementptr inbounds %struct.super_block, ptr %156, i32 0, i32 27
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.ext4_sb_info, ptr %158, i32 0, i32 17
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 134217728
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155, %151, %147, %143, %135
  br label %164

164:                                              ; preds = %163, %155
  %165 = phi ptr [ @ext4_get_block, %163 ], [ @ext4_get_block_unwritten, %155 ]
  %166 = call i32 @__block_write_begin(ptr noundef nonnull %65, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %165) #16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %218

168:                                              ; preds = %164
  %169 = call i32 @ext4_inode_journal_mode(ptr noundef %9) #16
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %294, label %172

172:                                              ; preds = %168
  %173 = load volatile i32, ptr %65, align 4
  %174 = and i32 %173, 8192
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177, !prof !9

176:                                              ; preds = %172
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1215, 0\0A.popsection", ""() #16, !srcloc !119
  unreachable

177:                                              ; preds = %172
  %178 = load i32, ptr %69, align 4
  %179 = inttoptr i32 %178 to ptr
  %180 = getelementptr inbounds %struct.buffer_head, ptr %179, i32 0, i32 4
  %181 = load i32, ptr %180, align 8
  br label %182

182:                                              ; preds = %215, %177
  %183 = phi i32 [ 0, %177 ], [ %191, %215 ]
  %184 = phi ptr [ %179, %177 ], [ %190, %215 ]
  %185 = icmp ne ptr %184, %179
  %186 = icmp eq i32 %183, 0
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %188, label %294

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = add i32 %183, %181
  %192 = icmp ugt i32 %191, %40
  %193 = icmp ult i32 %183, %41
  %194 = and i1 %193, %192
  br i1 %194, label %195, label %215

195:                                              ; preds = %188
  %196 = load volatile i32, ptr %184, align 4
  %197 = load volatile i32, ptr %184, align 4
  %198 = and i32 %197, 16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %215, label %200

200:                                              ; preds = %195
  %201 = load volatile i32, ptr %184, align 4
  %202 = and i32 %201, 262144
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = and i32 %196, 2
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  call void @_clear_bit(i32 noundef 1, ptr noundef %184) #16
  br label %208

208:                                              ; preds = %207, %204
  %209 = load ptr, ptr %10, align 4
  %210 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1034, ptr noundef %77, ptr noundef %209, ptr noundef %184, i32 noundef 1) #16
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %211, i1 %206, i1 false
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.do_journal_get_write_access, i32 noundef 1036, ptr noundef %77, ptr noundef null, ptr noundef %184) #16
  br label %215

215:                                              ; preds = %213, %208, %200, %195, %188
  %216 = phi i32 [ 0, %188 ], [ 0, %200 ], [ 0, %195 ], [ %214, %213 ], [ %210, %208 ]
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %182, label %218

218:                                              ; preds = %215, %164
  %219 = phi i32 [ %166, %164 ], [ %216, %215 ]
  %220 = load i64, ptr %58, align 8
  %221 = icmp sgt i64 %57, %220
  call void @unlock_page(ptr noundef nonnull %65) #16
  br i1 %221, label %222, label %261

222:                                              ; preds = %218
  %223 = load i16, ptr %9, align 8
  %224 = and i16 %223, -4096
  switch i16 %224, label %263 [
    i16 -32768, label %259
    i16 16384, label %259
    i16 -24576, label %225
  ]

225:                                              ; preds = %222
  %226 = load i32, ptr %55, align 4
  %227 = and i32 %226, 2097152
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %254

229:                                              ; preds = %225
  %230 = load i64, ptr %59, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr %10, align 4
  %234 = getelementptr inbounds %struct.super_block, ptr %233, i32 0, i32 3
  %235 = load i32, ptr %234, align 16
  %236 = getelementptr inbounds %struct.super_block, ptr %233, i32 0, i32 27
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.ext4_sb_info, ptr %237, i32 0, i32 12
  %239 = load i32, ptr %238, align 16
  %240 = shl i32 %235, %239
  %241 = lshr i32 %240, 9
  br label %242

242:                                              ; preds = %232, %229
  %243 = phi i32 [ %241, %232 ], [ 0, %229 ]
  %244 = load volatile i32, ptr %55, align 4
  %245 = and i32 %244, 268435456
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %242
  %248 = load i16, ptr %60, align 2
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %247, %242
  %251 = load i64, ptr %61, align 8
  %252 = zext i32 %243 to i64
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %263, label %259

254:                                              ; preds = %225
  %255 = load i64, ptr %58, align 8
  %256 = icmp ne i64 %255, 0
  %257 = icmp slt i64 %255, 60
  %258 = and i1 %256, %257
  br i1 %258, label %263, label %259

259:                                              ; preds = %254, %250, %247, %222, %222
  %260 = call i32 @ext4_orphan_add(ptr noundef %77, ptr noundef %9) #16
  br label %263

261:                                              ; preds = %218
  %262 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_write_begin, i32 noundef 1235, ptr noundef %77) #16
  br label %273

263:                                              ; preds = %259, %254, %250, %222
  %264 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_write_begin, i32 noundef 1235, ptr noundef %77) #16
  %265 = load ptr, ptr %62, align 8
  %266 = getelementptr inbounds %struct.address_space, ptr %265, i32 0, i32 2
  call void @down_write(ptr noundef %266) #16
  %267 = load i64, ptr %58, align 8
  call void @truncate_inode_pages(ptr noundef %265, i64 noundef %267) #16
  %268 = call i32 @ext4_truncate(ptr noundef %9) #16
  call void @up_write(ptr noundef %266) #16
  %269 = load i32, ptr %63, align 8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %263
  %272 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %9) #16
  br label %273

273:                                              ; preds = %271, %263, %261
  %274 = icmp eq i32 %219, -28
  br i1 %274, label %275, label %279

275:                                              ; preds = %273
  %276 = load ptr, ptr %10, align 4
  %277 = call i32 @ext4_should_retry_alloc(ptr noundef %276, ptr noundef nonnull %8) #16
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %70

279:                                              ; preds = %275, %273
  %280 = ptrtoint ptr %65 to i32
  %281 = load volatile i32, ptr %66, align 4
  %282 = and i32 %281, 1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %286, label %284, !prof !11

284:                                              ; preds = %279
  %285 = add i32 %281, -1
  br label %286

286:                                              ; preds = %284, %279
  %287 = phi i32 [ %285, %284 ], [ %280, %279 ]
  %288 = inttoptr i32 %287 to ptr
  %289 = getelementptr inbounds %struct.page, ptr %288, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %289) #16, !srcloc !41
  %290 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %289, ptr %289, i32 1, ptr elementtype(i32) %289) #16, !srcloc !67
  %291 = extractvalue { i32, i32 } %290, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  call void @__put_page(ptr noundef %288) #16
  br label %295

294:                                              ; preds = %182, %168
  store ptr %65, ptr %5, align 4
  br label %295

295:                                              ; preds = %294, %293, %286, %131, %94, %51, %49, %46, %7
  %296 = phi i32 [ %95, %94 ], [ 0, %294 ], [ -5, %7 ], [ %47, %46 ], [ 0, %49 ], [ %219, %286 ], [ %219, %293 ], [ -12, %51 ], [ -12, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret i32 %296
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_journalled_write_end(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readnone %6) #0 {
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 113
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  %13 = load i64, ptr %12, align 8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journalled_write_end, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !120
  %27 = tail call i32 @__traceiter_ext4_journalled_write_end(ptr noundef null, ptr noundef %11, i64 noundef %2, i32 noundef %3, i32 noundef %4) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !121
  br label %28

28:                                               ; preds = %26, %16, %7
  %29 = trunc i64 %2 to i32
  %30 = and i32 %29, 4095
  %31 = add i32 %30, %3
  %32 = icmp ult ptr %10, inttoptr (i32 4096 to ptr)
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1398, 0\0A.popsection", ""() #16, !srcloc !122
  unreachable

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %11, i32 -124
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 268435456
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %11, i32 478
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @ext4_write_inline_data_end(ptr noundef %11, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #16
  br label %255

45:                                               ; preds = %39, %34
  %46 = icmp ult i32 %4, %3
  br i1 %46, label %47, label %65, !prof !9

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !11

52:                                               ; preds = %47
  %53 = add i32 %49, -1
  br label %56

54:                                               ; preds = %47
  %55 = ptrtoint ptr %5 to i32
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = inttoptr i32 %57 to ptr
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !65
  %63 = add i32 %30, %4
  tail call fastcc void @ext4_journalled_zero_new_buffers(ptr noundef %10, ptr noundef %11, ptr noundef %5, i32 noundef %63, i32 noundef %31)
  br label %65

64:                                               ; preds = %56
  tail call fastcc void @ext4_journalled_zero_new_buffers(ptr noundef %10, ptr noundef %11, ptr noundef %5, i32 noundef %30, i32 noundef %31)
  br label %119

65:                                               ; preds = %62, %45
  %66 = load volatile i32, ptr %5, align 4
  %67 = and i32 %66, 8192
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70, !prof !9

69:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1410, 0\0A.popsection", ""() #16, !srcloc !123
  unreachable

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = inttoptr i32 %72 to ptr
  %74 = add i32 %30, %4
  %75 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 4
  %76 = load i32, ptr %75, align 8
  br label %77

77:                                               ; preds = %110, %70
  %78 = phi i32 [ 0, %70 ], [ %111, %110 ]
  %79 = phi i32 [ 0, %70 ], [ %87, %110 ]
  %80 = phi ptr [ %73, %70 ], [ %86, %110 ]
  %81 = icmp ne ptr %80, %73
  %82 = icmp eq i32 %79, 0
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.buffer_head, ptr %80, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = add i32 %79, %76
  %88 = icmp ugt i32 %87, %30
  %89 = icmp ult i32 %79, %74
  %90 = and i1 %89, %88
  %91 = load volatile i32, ptr %80, align 4
  br i1 %90, label %96, label %92

92:                                               ; preds = %84
  %93 = and i32 %91, 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 1, i32 %78
  br label %110

96:                                               ; preds = %84
  %97 = and i32 %91, 16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %96
  %100 = load volatile i32, ptr %80, align 4
  %101 = and i32 %100, 262144
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load volatile i32, ptr %80, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  tail call void @_set_bit(i32 noundef 0, ptr noundef %80) #16
  br label %108

108:                                              ; preds = %107, %103
  %109 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.write_end_fn, i32 noundef 1266, ptr noundef %10, ptr noundef null, ptr noundef %80) #16
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %80) #16
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %80) #16
  br label %110

110:                                              ; preds = %108, %99, %96, %92
  %111 = phi i32 [ %78, %96 ], [ %78, %99 ], [ %78, %108 ], [ %95, %92 ]
  %112 = phi i32 [ 0, %96 ], [ 0, %99 ], [ %109, %108 ], [ 0, %92 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %77, label %114

114:                                              ; preds = %110, %77
  %115 = phi i32 [ %111, %110 ], [ %78, %77 ]
  %116 = phi i32 [ %112, %110 ], [ 0, %77 ]
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !124
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #16
  br label %119

119:                                              ; preds = %118, %114, %64
  %120 = phi i32 [ %116, %114 ], [ %116, %118 ], [ 0, %64 ]
  %121 = phi i32 [ %4, %114 ], [ %4, %118 ], [ 0, %64 ]
  %122 = zext i32 %121 to i64
  %123 = add i64 %122, %2
  %124 = load i64, ptr %12, align 8
  %125 = icmp slt i64 %124, %123
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  %127 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !76
  store i64 %123, ptr %12, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !77
  %130 = load i32, ptr %127, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %127, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !78
  br label %132

132:                                              ; preds = %126, %119
  %133 = phi i32 [ 1, %126 ], [ 0, %119 ]
  %134 = getelementptr i8, ptr %11, i32 -32
  %135 = load i64, ptr %134, align 8
  %136 = icmp slt i64 %135, %123
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  %138 = load i16, ptr %11, align 8
  %139 = and i16 %138, -4096
  %140 = icmp eq i16 %139, -32768
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 24
  %143 = load volatile i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  %145 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %146 = xor i1 %145, true
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %149, !prof !9

148:                                              ; preds = %141
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3415, i32 noundef 9, ptr noundef null) #16
  br label %149

149:                                              ; preds = %148, %141, %137
  %150 = getelementptr i8, ptr %11, i32 -24
  tail call void @down_write(ptr noundef %150) #16
  %151 = load i64, ptr %134, align 8
  %152 = icmp slt i64 %151, %123
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store volatile i64 %123, ptr %134, align 8
  br label %154

154:                                              ; preds = %153, %149
  tail call void @up_write(ptr noundef %150) #16
  br label %155

155:                                              ; preds = %154, %132
  %156 = phi i32 [ 1, %154 ], [ %133, %132 ]
  %157 = getelementptr i8, ptr %11, i32 -128
  tail call void @_set_bit(i32 noundef 0, ptr noundef %157) #16
  %158 = load ptr, ptr %10, align 4
  %159 = getelementptr inbounds %struct.transaction_s, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i8, ptr %11, i32 524
  store i32 %160, ptr %161, align 4
  tail call void @unlock_page(ptr noundef %5) #16
  %162 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166, !prof !11

166:                                              ; preds = %155
  %167 = add i32 %163, -1
  br label %170

168:                                              ; preds = %155
  %169 = ptrtoint ptr %5 to i32
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = inttoptr i32 %171 to ptr
  %173 = getelementptr inbounds %struct.page, ptr %172, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #16, !srcloc !41
  %174 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #16, !srcloc !67
  %175 = extractvalue { i32, i32 } %174, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  tail call void @__put_page(ptr noundef %172) #16
  br label %178

178:                                              ; preds = %177, %170
  %179 = icmp slt i64 %13, %2
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  tail call void @pagecache_isize_extended(ptr noundef %11, i64 noundef %13, i64 noundef %2) #16
  br label %181

181:                                              ; preds = %180, %178
  %182 = icmp eq i32 %156, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %181
  %184 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %10, ptr noundef %11, ptr noundef nonnull @__func__.ext4_journalled_write_end, i32 noundef 1427)
  %185 = icmp eq i32 %120, 0
  %186 = select i1 %185, i32 %184, i32 %120
  br label %187

187:                                              ; preds = %183, %181
  %188 = phi i32 [ %120, %181 ], [ %186, %183 ]
  %189 = zext i32 %3 to i64
  %190 = add i64 %189, %2
  %191 = load i64, ptr %12, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %193, label %235

193:                                              ; preds = %187
  %194 = load i16, ptr %11, align 8
  %195 = and i16 %194, -4096
  switch i16 %195, label %235 [
    i16 -32768, label %233
    i16 16384, label %233
    i16 -24576, label %196
  ]

196:                                              ; preds = %193
  %197 = load i32, ptr %35, align 4
  %198 = and i32 %197, 2097152
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %229

200:                                              ; preds = %196
  %201 = getelementptr i8, ptr %11, i32 -144
  %202 = load i64, ptr %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.super_block, ptr %206, i32 0, i32 3
  %208 = load i32, ptr %207, align 16
  %209 = getelementptr inbounds %struct.super_block, ptr %206, i32 0, i32 27
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.ext4_sb_info, ptr %210, i32 0, i32 12
  %212 = load i32, ptr %211, align 16
  %213 = shl i32 %208, %212
  %214 = lshr i32 %213, 9
  br label %215

215:                                              ; preds = %204, %200
  %216 = phi i32 [ %214, %204 ], [ 0, %200 ]
  %217 = load volatile i32, ptr %35, align 4
  %218 = and i32 %217, 268435456
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %215
  %221 = getelementptr i8, ptr %11, i32 478
  %222 = load i16, ptr %221, align 2
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %220, %215
  %225 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 21
  %226 = load i64, ptr %225, align 8
  %227 = zext i32 %216 to i64
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %235, label %233

229:                                              ; preds = %196
  %230 = icmp ne i64 %191, 0
  %231 = icmp slt i64 %191, 60
  %232 = and i1 %230, %231
  br i1 %232, label %235, label %233

233:                                              ; preds = %229, %224, %220, %193, %193
  %234 = tail call i32 @ext4_orphan_add(ptr noundef %10, ptr noundef %11) #16
  br label %235

235:                                              ; preds = %233, %229, %224, %193, %187
  %236 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_journalled_write_end, i32 noundef 1439, ptr noundef %10) #16
  %237 = icmp eq i32 %188, 0
  %238 = select i1 %237, i32 %236, i32 %188
  %239 = load i64, ptr %12, align 8
  %240 = icmp sgt i64 %190, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %243 = load ptr, ptr %242, align 8
  %244 = getelementptr inbounds %struct.address_space, ptr %243, i32 0, i32 2
  tail call void @down_write(ptr noundef %244) #16
  %245 = load i64, ptr %12, align 8
  tail call void @truncate_inode_pages(ptr noundef %243, i64 noundef %245) #16
  %246 = tail call i32 @ext4_truncate(ptr noundef %11) #16
  tail call void @up_write(ptr noundef %244) #16
  %247 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %248 = load i32, ptr %247, align 8
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %241
  %251 = tail call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %11) #16
  br label %252

252:                                              ; preds = %250, %241, %235
  %253 = icmp eq i32 %238, 0
  %254 = select i1 %253, i32 %121, i32 %238
  br label %255

255:                                              ; preds = %252, %43
  %256 = phi i32 [ %44, %43 ], [ %254, %252 ]
  ret i32 %256
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ext4_bmap(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 -124
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %3, i32 478
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 33554432
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 17
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 134217728
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @filemap_write_and_wait_range(ptr noundef %0, i64 noundef 0, i64 noundef 9223372036854775807) #16
  br label %28

28:                                               ; preds = %26, %17, %12
  %29 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 47
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %28
  %37 = getelementptr i8, ptr %3, i32 -128
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %37) #16
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 27
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 47
  %46 = load ptr, ptr %45, align 4
  tail call void @jbd2_journal_lock_updates(ptr noundef %46) #16
  %47 = tail call i32 @jbd2_journal_flush(ptr noundef %46, i32 noundef 0) #16
  tail call void @jbd2_journal_unlock_updates(ptr noundef %46) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41, %36, %28
  %50 = tail call i64 @iomap_bmap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @ext4_iomap_ops) #16
  br label %51

51:                                               ; preds = %49, %41, %8
  %52 = phi i64 [ %50, %49 ], [ 0, %8 ], [ 0, %41 ]
  ret i64 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_journalled_invalidatepage(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journalled_invalidatepage, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = tail call ptr @llvm.thread.pointer() #16
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !84
  %27 = tail call i32 @__traceiter_ext4_journalled_invalidatepage(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !85
  br label %28

28:                                               ; preds = %26, %15, %3
  %29 = icmp eq i32 %1, 0
  %30 = icmp eq i32 %2, 4096
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %0) #16
  br label %33

33:                                               ; preds = %32, %28
  %34 = tail call i32 @jbd2_journal_invalidatepage(ptr noundef %12, ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3218, i32 noundef 9, ptr noundef null) #16
  br label %37

37:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_releasepage(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_releasepage, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = tail call ptr @llvm.thread.pointer() #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !125
  %26 = tail call i32 @__traceiter_ext4_releasepage(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !126
  br label %27

27:                                               ; preds = %25, %14, %2
  %28 = load volatile i32, ptr %0, align 4
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = icmp eq ptr %11, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = tail call i32 @jbd2_journal_try_to_free_buffers(ptr noundef nonnull %11, ptr noundef %0) #16
  br label %37

35:                                               ; preds = %31
  %36 = tail call i32 @try_to_free_buffers(ptr noundef %0) #16
  br label %37

37:                                               ; preds = %35, %33, %27
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ], [ 0, %27 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_direct_IO(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_iomap_swap_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @iomap_swapfile_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ext4_iomap_report_ops) #16
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_io_submit_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_init_io_end(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bio_write_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_io_submit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_put_io_end_defer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_writepage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_max_inline_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_journalled_write_inline_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_readpage_inline(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mpage_readpages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_readpage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_destroy_inline_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tag_pages_for_writeback(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpage_prepare_extent_to_map(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pagevec, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %10 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 19
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.writeback_control, ptr %8, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.writeback_control, ptr %8, i32 0, i32 5
  %22 = load i16, ptr %21, align 4
  %23 = lshr i16 %22, 1
  %24 = and i16 %23, 2
  %25 = zext i16 %24 to i32
  br label %26

26:                                               ; preds = %20, %1
  %27 = phi i32 [ 2, %1 ], [ %25, %20 ]
  store i8 0, ptr %2, align 4
  %28 = getelementptr inbounds %struct.pagevec, ptr %2, i32 0, i32 1
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 5, i32 2
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 3
  store i32 %11, ptr %30, align 4
  %31 = icmp ugt i32 %11, %13
  br i1 %31, label %167, label %32

32:                                               ; preds = %26
  %33 = sub nsw i32 12, %16
  br label %34

34:                                               ; preds = %163, %32
  %35 = phi i32 [ %9, %32 ], [ %156, %163 ]
  %36 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %2, ptr noundef %6, ptr noundef nonnull %3, i32 noundef %13, i32 noundef %27) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %167, label %38

38:                                               ; preds = %155, %34
  %39 = phi i32 [ %157, %155 ], [ 0, %34 ]
  %40 = phi i32 [ %156, %155 ], [ %35, %34 ]
  %41 = getelementptr %struct.pagevec, ptr %2, i32 0, i32 2, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.writeback_control, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  %47 = icmp slt i32 %40, 1
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %171, label %49

49:                                               ; preds = %38
  %50 = load i32, ptr %29, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %30, align 4
  %54 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %171

57:                                               ; preds = %52, %49
  %58 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !11

62:                                               ; preds = %57
  %63 = add i32 %59, -1
  br label %66

64:                                               ; preds = %57
  %65 = ptrtoint ptr %42 to i32
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = inttoptr i32 %67 to ptr
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #16, !srcloc !41
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #16, !srcloc !47
  %74 = extractvalue { i32, i32, i32 } %73, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72, %66
  call void @__folio_lock(ptr noundef %68) #16
  br label %78

78:                                               ; preds = %77, %72
  %79 = load volatile i32, ptr %58, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !11

82:                                               ; preds = %78
  %83 = add i32 %79, -1
  br label %86

84:                                               ; preds = %78
  %85 = ptrtoint ptr %42 to i32
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = inttoptr i32 %87 to ptr
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %86
  %93 = load volatile i32, ptr %58, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96, !prof !11

96:                                               ; preds = %92
  %97 = add i32 %93, -1
  br label %100

98:                                               ; preds = %92
  %99 = ptrtoint ptr %42 to i32
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = inttoptr i32 %101 to ptr
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 32768
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load ptr, ptr %7, align 4
  %108 = getelementptr inbounds %struct.writeback_control, ptr %107, i32 0, i32 4
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106, %100
  %112 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %6
  br i1 %114, label %116, label %115, !prof !11

115:                                              ; preds = %111, %106, %86
  call void @unlock_page(ptr noundef %42) #16
  br label %155

116:                                              ; preds = %111
  call void @wait_on_page_writeback(ptr noundef %42) #16
  %117 = load volatile i32, ptr %58, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !11

120:                                              ; preds = %116
  %121 = add i32 %117, -1
  br label %124

122:                                              ; preds = %116
  %123 = ptrtoint ptr %42 to i32
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = inttoptr i32 %125 to ptr
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %127, 32768
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130, !prof !11

130:                                              ; preds = %124
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2595, 0\0A.popsection", ""() #16, !srcloc !127
  unreachable

131:                                              ; preds = %124
  %132 = load i32, ptr %29, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %10, align 8
  br label %137

137:                                              ; preds = %134, %131
  %138 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %30, align 4
  %141 = load i32, ptr %138, align 4
  %142 = load volatile i32, ptr %42, align 4
  %143 = and i32 %142, 8192
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146, !prof !9

145:                                              ; preds = %137
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2603, 0\0A.popsection", ""() #16, !srcloc !128
  unreachable

146:                                              ; preds = %137
  %147 = shl i32 %141, %33
  %148 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = inttoptr i32 %149 to ptr
  %151 = call fastcc i32 @mpage_process_page_bufs(ptr noundef %0, ptr noundef %150, ptr noundef %150, i32 noundef %147)
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %171, label %153

153:                                              ; preds = %146
  %154 = add i32 %40, -1
  br label %155

155:                                              ; preds = %153, %115
  %156 = phi i32 [ %40, %115 ], [ %154, %153 ]
  %157 = add nuw i32 %39, 1
  %158 = icmp eq i32 %157, %36
  br i1 %158, label %159, label %38

159:                                              ; preds = %155
  %160 = load i8, ptr %2, align 4
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  call void @__pagevec_release(ptr noundef nonnull %2) #16
  br label %163

163:                                              ; preds = %162, %159
  %164 = call i32 @__cond_resched() #16
  %165 = load i32, ptr %3, align 4
  %166 = icmp ugt i32 %165, %13
  br i1 %166, label %167, label %34

167:                                              ; preds = %163, %34, %26
  %168 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 7
  %169 = load i8, ptr %168, align 8
  %170 = or i8 %169, 2
  store i8 %170, ptr %168, align 8
  br label %176

171:                                              ; preds = %146, %52, %38
  %172 = phi i32 [ %151, %146 ], [ 0, %52 ], [ 0, %38 ]
  %173 = load i8, ptr %2, align 4
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  call void @__pagevec_release(ptr noundef nonnull %2) #16
  br label %176

176:                                              ; preds = %175, %171, %167
  %177 = phi i32 [ 0, %167 ], [ %172, %171 ], [ %172, %175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mpage_release_unused_pages(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pagevec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !10
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %96

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 7
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, -3
  store i8 %16, ptr %14, align 8
  store i32 %9, ptr %3, align 4
  %17 = add i32 %11, -1
  br i1 %1, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 19
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 12, %21
  %23 = shl i32 %9, %22
  %24 = sub i32 %17, %9
  %25 = shl i32 %24, %22
  %26 = add i32 %25, 1
  %27 = tail call i32 @ext4_es_remove_extent(ptr noundef %5, i32 noundef %23, i32 noundef %26) #16
  br label %28

28:                                               ; preds = %18, %13
  store i8 0, ptr %4, align 4
  %29 = getelementptr inbounds %struct.pagevec, ptr %4, i32 0, i32 1
  store i8 0, ptr %29, align 1
  %30 = icmp ult i32 %17, %9
  br i1 %30, label %96, label %31

31:                                               ; preds = %93, %28
  %32 = call i32 @pagevec_lookup_range(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull %3, i32 noundef %17) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %96, label %34

34:                                               ; preds = %31
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %86, %34
  %37 = phi i32 [ %87, %86 ], [ 0, %34 ]
  %38 = getelementptr %struct.pagevec, ptr %4, i32 0, i32 2, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !11

44:                                               ; preds = %36
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %36
  %47 = ptrtoint ptr %39 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55, !prof !9

54:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1575, 0\0A.popsection", ""() #16, !srcloc !129
  unreachable

55:                                               ; preds = %48
  %56 = load volatile i32, ptr %40, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59, !prof !11

59:                                               ; preds = %55
  %60 = add i32 %56, -1
  br label %63

61:                                               ; preds = %55
  %62 = ptrtoint ptr %39 to i32
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = inttoptr i32 %64 to ptr
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 32768
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69, !prof !11

69:                                               ; preds = %63
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1576, 0\0A.popsection", ""() #16, !srcloc !130
  unreachable

70:                                               ; preds = %63
  br i1 %1, label %71, label %86

71:                                               ; preds = %70
  %72 = call zeroext i1 @page_mapped(ptr noundef %39) #16
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %39) #16
  br label %75

75:                                               ; preds = %73, %71
  call void @block_invalidatepage(ptr noundef %39, i32 noundef 0, i32 noundef 4096) #16
  %76 = load volatile i32, ptr %40, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !11

79:                                               ; preds = %75
  %80 = add i32 %76, -1
  br label %83

81:                                               ; preds = %75
  %82 = ptrtoint ptr %39 to i32
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = inttoptr i32 %84 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %85) #16
  br label %86

86:                                               ; preds = %83, %70
  call void @unlock_page(ptr noundef %39) #16
  %87 = add nuw nsw i32 %37, 1
  %88 = icmp eq i32 %87, %32
  br i1 %88, label %89, label %36

89:                                               ; preds = %86, %34
  %90 = load i8, ptr %4, align 4
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void @__pagevec_release(ptr noundef nonnull %4) #16
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, ptr %3, align 4
  %95 = icmp ugt i32 %94, %17
  br i1 %95, label %96, label %31

96:                                               ; preds = %93, %31, %28, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_put_io_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_force_commit_nested(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpage_process_page_bufs(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 22
  %7 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  br label %8

8:                                                ; preds = %16, %4
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %13 = load volatile i32, ptr %6, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %9, %8 ], [ %13, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %18 = load i64, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %19 = load volatile i32, ptr %6, align 4
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %21, label %8

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 19
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 1, %24
  %26 = zext i32 %25 to i64
  %27 = add i64 %18, -1
  %28 = add i64 %27, %26
  %29 = zext i8 %23 to i64
  %30 = ashr i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 5, i32 2
  %33 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 5, i32 1
  %34 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 5, i32 3
  %35 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 7
  %36 = call i32 @llvm.umax.i32(i32 %3, i32 %31)
  br label %37

37:                                               ; preds = %95, %21
  %38 = phi ptr [ %2, %21 ], [ %99, %95 ]
  %39 = phi i32 [ %3, %21 ], [ %97, %95 ]
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2179, 0\0A.popsection", ""() #16, !srcloc !131
  unreachable

44:                                               ; preds = %37
  %45 = icmp eq i32 %39, %36
  br i1 %45, label %87, label %46

46:                                               ; preds = %44
  %47 = load volatile i32, ptr %38, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %46
  %51 = load volatile i32, ptr %38, align 4
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  %55 = load volatile i32, ptr %38, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %38, align 4
  %60 = and i32 %59, 2048
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %58, %54
  %63 = load i32, ptr %32, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i8, ptr %35, align 8
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %65
  store i32 %39, ptr %33, align 8
  store i32 1, ptr %32, align 4
  %70 = load i32, ptr %38, align 8
  %71 = and i32 %70, 2304
  store i32 %71, ptr %34, align 8
  br label %95

72:                                               ; preds = %62
  %73 = icmp ugt i32 %63, 2047
  br i1 %73, label %115, label %74

74:                                               ; preds = %72
  %75 = load i32, ptr %33, align 8
  %76 = add i32 %75, %63
  %77 = icmp eq i32 %76, %39
  br i1 %77, label %78, label %115

78:                                               ; preds = %74
  %79 = and i32 %55, 2304
  %80 = load i32, ptr %34, align 8
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = add nuw nsw i32 %63, 1
  store i32 %83, ptr %32, align 4
  br label %95

84:                                               ; preds = %58, %50, %46
  %85 = load i32, ptr %32, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %115

87:                                               ; preds = %44
  %88 = load i32, ptr %32, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %87, %65
  %91 = phi i32 [ %36, %87 ], [ %39, %65 ]
  %92 = load i8, ptr %35, align 8
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %115, label %103

95:                                               ; preds = %84, %82, %69
  %96 = phi i32 [ %83, %82 ], [ 1, %69 ], [ 0, %84 ]
  %97 = add i32 %39, 1
  %98 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %1
  br i1 %100, label %101, label %37

101:                                              ; preds = %95
  %102 = icmp eq i32 %96, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %101, %90
  %104 = phi i32 [ %97, %101 ], [ %91, %90 ]
  %105 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = tail call fastcc i32 @mpage_submit_page(ptr noundef %0, ptr noundef %106)
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103, %101
  %110 = phi i32 [ %104, %103 ], [ %97, %101 ]
  %111 = icmp ult i32 %110, %31
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i8, ptr %35, align 8
  %114 = or i8 %113, 2
  store i8 %114, ptr %35, align 8
  br label %115

115:                                              ; preds = %112, %109, %103, %90, %87, %84, %78, %74, %72
  %116 = phi i32 [ 0, %112 ], [ 0, %87 ], [ 0, %90 ], [ %107, %103 ], [ 1, %109 ], [ 0, %84 ], [ 0, %72 ], [ 0, %78 ], [ 0, %74 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpage_submit_page(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2059, 0\0A.popsection", ""() #16, !srcloc !132
  unreachable

9:                                                ; preds = %2
  %10 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %1) #16
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %13 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  br label %14

14:                                               ; preds = %22, %9
  %15 = load volatile i32, ptr %12, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !58
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !59
  %19 = load volatile i32, ptr %12, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %15, %14 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  %24 = load i64, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %25 = load volatile i32, ptr %12, align 4
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %27, label %14

27:                                               ; preds = %22
  %28 = load i32, ptr %3, align 4
  %29 = zext i32 %28 to i64
  %30 = ashr i64 %24, 12
  %31 = icmp eq i64 %30, %29
  %32 = trunc i64 %24 to i32
  %33 = and i32 %32, 4095
  %34 = select i1 %31, i32 %33, i32 4096
  %35 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 6
  %36 = tail call i32 @ext4_bio_write_page(ptr noundef %35, ptr noundef %1, i32 noundef %34, i1 noundef zeroext false) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.mpage_da_data, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i32, ptr %5, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %5, align 8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @block_invalidatepage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_da_write_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_alloc_io_end_vec(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_count_free_clusters(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_print_free_blocks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i64 @ext4_count_free_clusters(ptr noundef %3) #16
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %11 = load i32, ptr %10, align 16
  %12 = zext i32 %11 to i64
  %13 = shl i64 %6, %12
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32, i64 noundef %13) #16
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33) #16
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 36
  %15 = tail call i64 @__percpu_counter_sum(ptr noundef %14) #16
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 12
  %18 = load i32, ptr %17, align 16
  %19 = zext i32 %18 to i64
  %20 = shl i64 %15, %19
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, i64 noundef %20) #16
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 39
  %22 = tail call i64 @__percpu_counter_sum(ptr noundef %21) #16
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 12
  %25 = load i32, ptr %24, align 16
  %26 = zext i32 %25 to i64
  %27 = shl i64 %22, %26
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35, i64 noundef %27) #16
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.36) #16
  %28 = getelementptr i8, ptr %0, i32 468
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37, i32 noundef %29) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_da_write_pages_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_last_io_end_vec(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_writepages_result(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_try_to_write_inline_data(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_write_inline_data_end(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_journalled_zero_new_buffers(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1358, 0\0A.popsection", ""() #16, !srcloc !133
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %2 to i32
  br label %16

16:                                               ; preds = %60, %10
  %17 = phi ptr [ %13, %10 ], [ %62, %60 ]
  %18 = phi i32 [ 0, %10 ], [ %21, %60 ]
  %19 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, %18
  %22 = load volatile i32, ptr %17, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  %25 = icmp ugt i32 %21, %3
  %26 = select i1 %24, i1 %25, i1 false
  %27 = icmp ult i32 %18, %4
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %60

29:                                               ; preds = %16
  %30 = load volatile i32, ptr %14, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !11

33:                                               ; preds = %29
  %34 = add i32 %30, -1
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %34, %33 ], [ %15, %29 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !65
  br label %59

42:                                               ; preds = %35
  %43 = tail call i32 @llvm.umax.i32(i32 %18, i32 %3)
  %44 = tail call i32 @llvm.umin.i32(i32 %21, i32 %4)
  tail call void @zero_user_segments(ptr noundef %2, i32 noundef %43, i32 noundef %44, i32 noundef 0, i32 noundef 0) #16
  %45 = load volatile i32, ptr %17, align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load volatile i32, ptr %17, align 4
  %50 = and i32 %49, 262144
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load volatile i32, ptr %17, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void @_set_bit(i32 noundef 0, ptr noundef %17) #16
  br label %57

57:                                               ; preds = %56, %52
  %58 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.write_end_fn, i32 noundef 1266, ptr noundef %0, ptr noundef null, ptr noundef %17) #16
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %17) #16
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %17) #16
  br label %59

59:                                               ; preds = %57, %48, %42, %41
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %17) #16
  br label %60

60:                                               ; preds = %59, %16
  %61 = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %13
  br i1 %63, label %64, label %16

64:                                               ; preds = %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_journalled_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_invalidatepage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_journalled_invalidatepage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_try_to_free_buffers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_releasepage(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_swapfile_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_set_page_dirty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !11

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !11

20:                                               ; preds = %16
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %0 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  %30 = load i1, ptr @ext4_set_page_dirty.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %24
  store i1 true, ptr @ext4_set_page_dirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3564, i32 noundef 9, ptr noundef null) #16
  br label %34

34:                                               ; preds = %33, %24, %10
  %35 = load volatile i32, ptr %0, align 4
  %36 = and i32 %35, 8192
  %37 = icmp eq i32 %36, 0
  %38 = load i1, ptr @ext4_set_page_dirty.__already_done.38, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %34
  store i1 true, ptr @ext4_set_page_dirty.__already_done.38, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3565, i32 noundef 9, ptr noundef null) #16
  br label %42

42:                                               ; preds = %41, %34
  %43 = tail call i32 @__set_page_dirty_buffers(ptr noundef %0) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_da_write_begin(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 48
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %119, !prof !11

18:                                               ; preds = %7
  %19 = lshr i64 %2, 12
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 36, i32 1
  %22 = load volatile i64, ptr %21, align 8
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 0) #16
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 39, i32 1
  %25 = load volatile i64, ptr %24, align 8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 0) #16
  %27 = icmp sgt i64 %25, 0
  %28 = shl nuw i64 %26, 1
  %29 = icmp slt i64 %23, %28
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  tail call void @try_to_writeback_inodes_sb(ptr noundef %11, i32 noundef 5) #16
  br label %32

32:                                               ; preds = %31, %18
  %33 = shl nuw i64 %23, 1
  %34 = mul i64 %26, 3
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %69, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr @percpu_counter_batch, align 4
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = shl i32 %37, 2
  %40 = mul i32 %39, %38
  %41 = zext i32 %40 to i64
  %42 = add nuw i64 %26, %41
  %43 = icmp slt i64 %23, %42
  br i1 %43, label %69, label %44

44:                                               ; preds = %36
  %45 = load i16, ptr %9, align 8
  %46 = and i16 %45, -4096
  %47 = icmp eq i16 %46, -24576
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  store ptr null, ptr %6, align 4
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_da_write_begin, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !134
  %63 = tail call i32 @__traceiter_ext4_da_write_begin(ptr noundef null, ptr noundef %9, i64 noundef %2, i32 noundef %3, i32 noundef %4) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !135
  br label %64

64:                                               ; preds = %62, %51, %48
  %65 = getelementptr i8, ptr %9, i32 -128
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %71

69:                                               ; preds = %44, %36, %32
  store ptr inttoptr (i32 1 to ptr), ptr %6, align 4
  %70 = tail call i32 @ext4_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %119

71:                                               ; preds = %64
  %72 = tail call i32 @ext4_da_write_inline_data_begin(ptr noundef %1, ptr noundef %9, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #16
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %119, label %74

74:                                               ; preds = %71
  %75 = icmp eq i32 %72, 1
  br i1 %75, label %119, label %76

76:                                               ; preds = %74, %64
  %77 = zext i32 %3 to i64
  %78 = add i64 %77, %2
  %79 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  %80 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  br label %81

81:                                               ; preds = %114, %76
  %82 = call ptr @grab_cache_page_write_begin(ptr noundef %1, i32 noundef %20, i32 noundef %4) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %119, label %84

84:                                               ; preds = %81
  call void @wait_for_stable_page(ptr noundef nonnull %82) #16
  %85 = call i32 @__block_write_begin(ptr noundef nonnull %82, i64 noundef %2, i32 noundef %3, ptr noundef nonnull @ext4_da_get_block_prep) #16
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %84
  call void @unlock_page(ptr noundef nonnull %82) #16
  %88 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92, !prof !11

92:                                               ; preds = %87
  %93 = add i32 %89, -1
  br label %96

94:                                               ; preds = %87
  %95 = ptrtoint ptr %82 to i32
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = inttoptr i32 %97 to ptr
  %99 = getelementptr inbounds %struct.page, ptr %98, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #16, !srcloc !41
  %100 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #16, !srcloc !67
  %101 = extractvalue { i32, i32 } %100, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  call void @__put_page(ptr noundef %98) #16
  br label %104

104:                                              ; preds = %103, %96
  %105 = load i64, ptr %79, align 8
  %106 = icmp sgt i64 %78, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load ptr, ptr %80, align 8
  %109 = getelementptr inbounds %struct.address_space, ptr %108, i32 0, i32 2
  call void @down_write(ptr noundef %109) #16
  %110 = load i64, ptr %79, align 8
  call void @truncate_inode_pages(ptr noundef %108, i64 noundef %110) #16
  %111 = call i32 @ext4_truncate(ptr noundef %9) #16
  call void @up_write(ptr noundef %109) #16
  br label %112

112:                                              ; preds = %107, %104
  %113 = icmp eq i32 %85, -28
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  %115 = load ptr, ptr %10, align 4
  %116 = call i32 @ext4_should_retry_alloc(ptr noundef %115, ptr noundef nonnull %8) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %81

118:                                              ; preds = %84
  store ptr %82, ptr %5, align 4
  br label %119

119:                                              ; preds = %118, %114, %112, %81, %74, %71, %69, %7
  %120 = phi i32 [ %70, %69 ], [ %85, %118 ], [ -5, %7 ], [ %72, %71 ], [ 0, %74 ], [ %85, %112 ], [ -28, %114 ], [ -12, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_da_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %6, inttoptr (i32 1 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @ext4_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull inttoptr (i32 1 to ptr))
  br label %116

12:                                               ; preds = %7
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_da_write_end, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #16
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !136
  %27 = tail call i32 @__traceiter_ext4_da_write_end(ptr noundef null, ptr noundef %8, i64 noundef %2, i32 noundef %3, i32 noundef %4) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !137
  br label %28

28:                                               ; preds = %26, %15, %12
  %29 = icmp eq ptr %6, inttoptr (i32 2 to ptr)
  br i1 %29, label %46, label %30

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %8, i32 -128
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %8, i32 -124
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %8, i32 478
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @ext4_write_inline_data_end(ptr noundef %8, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #16
  br label %116

46:                                               ; preds = %40, %35, %30, %28
  %47 = trunc i64 %2 to i32
  %48 = and i32 %47, 4095
  %49 = add i32 %4, -1
  %50 = add i32 %49, %48
  %51 = zext i32 %4 to i64
  %52 = add i64 %51, %2
  %53 = icmp eq i32 %4, 0
  br i1 %53, label %114, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %56 = load i64, ptr %55, align 8
  %57 = icmp sgt i64 %52, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = load volatile i32, ptr %5, align 4
  %63 = and i32 %62, 8192
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66, !prof !9

65:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2987, 0\0A.popsection", ""() #16, !srcloc !138
  unreachable

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 19
  %71 = load i8, ptr %70, align 2
  %72 = zext i8 %71 to i32
  %73 = lshr i32 %50, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %75, %66
  %76 = phi i32 [ %80, %75 ], [ 0, %66 ]
  %77 = phi ptr [ %79, %75 ], [ %69, %66 ]
  %78 = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = add nuw i32 %76, 1
  %81 = icmp eq i32 %80, %73
  br i1 %81, label %82, label %75

82:                                               ; preds = %75, %66
  %83 = phi ptr [ %69, %66 ], [ %79, %75 ]
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %82
  %88 = load volatile i32, ptr %83, align 4
  %89 = and i32 %88, 256
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load volatile i32, ptr %83, align 4
  %93 = and i32 %92, 2048
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load i16, ptr %8, align 8
  %97 = and i16 %96, -4096
  %98 = icmp eq i16 %97, -32768
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24
  %101 = load volatile i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  %103 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %104 = xor i1 %103, true
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %107, !prof !9

106:                                              ; preds = %99
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3415, i32 noundef 9, ptr noundef null) #16
  br label %107

107:                                              ; preds = %106, %99, %95
  %108 = getelementptr i8, ptr %8, i32 -24
  tail call void @down_write(ptr noundef %108) #16
  %109 = getelementptr i8, ptr %8, i32 -32
  %110 = load i64, ptr %109, align 8
  %111 = icmp slt i64 %110, %52
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store volatile i64 %52, ptr %109, align 8
  br label %113

113:                                              ; preds = %112, %107
  tail call void @up_write(ptr noundef %108) #16
  br label %114

114:                                              ; preds = %113, %91, %87, %82, %54, %46
  %115 = tail call i32 @generic_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #16
  br label %116

116:                                              ; preds = %114, %44, %10
  %117 = phi i32 [ %11, %10 ], [ %45, %44 ], [ %115, %114 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_invalidatepage(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_invalidatepage, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !139
  %18 = tail call i32 @__traceiter_ext4_invalidatepage(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !140
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = load volatile i32, ptr %0, align 4
  %21 = and i32 %20, 8192
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %0, align 4
  %25 = and i32 %24, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !9

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3191, 0\0A.popsection", ""() #16, !srcloc !141
  unreachable

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = inttoptr i32 %30 to ptr
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !11

35:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3191, i32 noundef 9, ptr noundef null) #16
  br label %36

36:                                               ; preds = %35, %28, %19
  tail call void @block_invalidatepage(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buffer_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_da_write_inline_data_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_da_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 113
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  %13 = load i64, ptr %12, align 8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_write_end, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !142
  %27 = tail call i32 @__traceiter_ext4_write_end(ptr noundef null, ptr noundef %11, i64 noundef %2, i32 noundef %3, i32 noundef %4) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !143
  br label %28

28:                                               ; preds = %26, %16, %7
  %29 = getelementptr i8, ptr %11, i32 -124
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 268435456
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %11, i32 478
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @ext4_write_inline_data_end(ptr noundef %11, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #16
  br label %167

39:                                               ; preds = %33, %28
  %40 = tail call i32 @block_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #16
  %41 = zext i32 %40 to i64
  %42 = add i64 %41, %2
  %43 = load i64, ptr %12, align 8
  %44 = icmp slt i64 %43, %42
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  %46 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !76
  store i64 %42, ptr %12, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !77
  %49 = load i32, ptr %46, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %46, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !78
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i32 [ 1, %45 ], [ 0, %39 ]
  %53 = getelementptr i8, ptr %11, i32 -32
  %54 = load i64, ptr %53, align 8
  %55 = icmp slt i64 %54, %42
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i16, ptr %11, align 8
  %58 = and i16 %57, -4096
  %59 = icmp eq i16 %58, -32768
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 24
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !9

67:                                               ; preds = %60
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3415, i32 noundef 9, ptr noundef null) #16
  br label %68

68:                                               ; preds = %67, %60, %56
  %69 = getelementptr i8, ptr %11, i32 -24
  tail call void @down_write(ptr noundef %69) #16
  %70 = load i64, ptr %53, align 8
  %71 = icmp slt i64 %70, %42
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store volatile i64 %42, ptr %53, align 8
  br label %73

73:                                               ; preds = %72, %68
  tail call void @up_write(ptr noundef %69) #16
  br label %74

74:                                               ; preds = %73, %51
  %75 = phi i32 [ 1, %73 ], [ %52, %51 ]
  tail call void @unlock_page(ptr noundef %5) #16
  %76 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80, !prof !11

80:                                               ; preds = %74
  %81 = add i32 %77, -1
  br label %84

82:                                               ; preds = %74
  %83 = ptrtoint ptr %5 to i32
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = inttoptr i32 %85 to ptr
  %87 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #16, !srcloc !41
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #16, !srcloc !67
  %89 = extractvalue { i32, i32 } %88, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !68
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  tail call void @__put_page(ptr noundef %86) #16
  br label %92

92:                                               ; preds = %91, %84
  %93 = icmp slt i64 %13, %2
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void @pagecache_isize_extended(ptr noundef %11, i64 noundef %13, i64 noundef %2) #16
  br label %95

95:                                               ; preds = %94, %92
  %96 = icmp eq i32 %75, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %95
  %98 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %10, ptr noundef %11, ptr noundef nonnull @__func__.ext4_write_end, i32 noundef 1318)
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %98, %97 ], [ 0, %95 ]
  %101 = zext i32 %3 to i64
  %102 = add i64 %101, %2
  %103 = load i64, ptr %12, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %147

105:                                              ; preds = %99
  %106 = load i16, ptr %11, align 8
  %107 = and i16 %106, -4096
  switch i16 %107, label %147 [
    i16 -32768, label %145
    i16 16384, label %145
    i16 -24576, label %108
  ]

108:                                              ; preds = %105
  %109 = load i32, ptr %29, align 4
  %110 = and i32 %109, 2097152
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %108
  %113 = getelementptr i8, ptr %11, i32 -144
  %114 = load i64, ptr %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 3
  %120 = load i32, ptr %119, align 16
  %121 = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 27
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ext4_sb_info, ptr %122, i32 0, i32 12
  %124 = load i32, ptr %123, align 16
  %125 = shl i32 %120, %124
  %126 = lshr i32 %125, 9
  br label %127

127:                                              ; preds = %116, %112
  %128 = phi i32 [ %126, %116 ], [ 0, %112 ]
  %129 = load volatile i32, ptr %29, align 4
  %130 = and i32 %129, 268435456
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = getelementptr i8, ptr %11, i32 478
  %134 = load i16, ptr %133, align 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132, %127
  %137 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 21
  %138 = load i64, ptr %137, align 8
  %139 = zext i32 %128 to i64
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %145

141:                                              ; preds = %108
  %142 = icmp ne i64 %103, 0
  %143 = icmp slt i64 %103, 60
  %144 = and i1 %142, %143
  br i1 %144, label %147, label %145

145:                                              ; preds = %141, %136, %132, %105, %105
  %146 = tail call i32 @ext4_orphan_add(ptr noundef %10, ptr noundef %11) #16
  br label %147

147:                                              ; preds = %145, %141, %136, %105, %99
  %148 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_write_end, i32 noundef 1327, ptr noundef %10) #16
  %149 = icmp eq i32 %100, 0
  %150 = select i1 %149, i32 %148, i32 %100
  %151 = load i64, ptr %12, align 8
  %152 = icmp sgt i64 %102, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.address_space, ptr %155, i32 0, i32 2
  tail call void @down_write(ptr noundef %156) #16
  %157 = load i64, ptr %12, align 8
  tail call void @truncate_inode_pages(ptr noundef %155, i64 noundef %157) #16
  %158 = tail call i32 @ext4_truncate(ptr noundef %11) #16
  tail call void @up_write(ptr noundef %156) #16
  %159 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %160 = load i32, ptr %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %153
  %163 = tail call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %11) #16
  br label %164

164:                                              ; preds = %162, %153, %147
  %165 = icmp eq i32 %150, 0
  %166 = select i1 %165, i32 %40, i32 %150
  br label %167

167:                                              ; preds = %164, %37
  %168 = phi i32 [ %38, %37 ], [ %166, %164 ]
  ret i32 %168
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_da_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_invalidatepage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_punch_hole(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_truncate_enter(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_truncate_exit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_fill_raw_inode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -208
  %4 = getelementptr i8, ptr %0, i32 112
  %5 = load volatile i64, ptr %4, align 8
  %6 = icmp ult i64 %5, 4294967296
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = trunc i64 %5 to i32
  %9 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 9
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17
  store i16 0, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 -124
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %11) #16
  br label %45

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %18, i32 0, i32 30
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %12
  %24 = icmp ult i64 %5, 281474976710656
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = trunc i64 %5 to i32
  %27 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 9
  store i32 %26, ptr %27, align 4
  %28 = lshr i64 %5, 32
  %29 = trunc i64 %28 to i16
  %30 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17
  store i16 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %0, i32 -124
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %31) #16
  br label %45

32:                                               ; preds = %23
  %33 = getelementptr i8, ptr %0, i32 -124
  tail call void @_set_bit(i32 noundef 18, ptr noundef %33) #16
  %34 = getelementptr i8, ptr %0, i32 110
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %36, -9
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %5, %38
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  %42 = lshr i64 %39, 32
  %43 = trunc i64 %42 to i16
  %44 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17
  store i16 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %32, %25, %12, %7
  %46 = phi i32 [ 0, %7 ], [ -117, %12 ], [ 0, %25 ], [ 0, %32 ]
  %47 = load i16, ptr %0, align 8
  store i16 %47, ptr %1, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr i8, ptr %0, i32 532
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 27
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %57, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 8192
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %45
  %63 = trunc i32 %49 to i16
  %64 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 1
  store i16 %63, ptr %64, align 2
  %65 = trunc i32 %51 to i16
  %66 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 7
  store i16 %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %0, i32 -148
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = getelementptr i8, ptr %0, i32 -96
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17, i32 0, i32 2
  store i16 0, ptr %75, align 4
  br label %94

76:                                               ; preds = %70, %62
  %77 = lshr i32 %49, 16
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17, i32 0, i32 2
  store i16 %78, ptr %79, align 4
  %80 = lshr i32 %51, 16
  %81 = trunc i32 %80 to i16
  br label %94

82:                                               ; preds = %45
  %83 = icmp ult i32 %49, 65536
  %84 = load i32, ptr @fs_overflowuid, align 4
  %85 = select i1 %83, i32 %49, i32 %84
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 1
  store i16 %86, ptr %87, align 2
  %88 = icmp ult i32 %51, 65536
  %89 = load i32, ptr @fs_overflowgid, align 4
  %90 = select i1 %88, i32 %51, i32 %89
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 7
  store i16 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17, i32 0, i32 2
  store i16 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %82, %76, %74
  %95 = phi i16 [ 0, %74 ], [ %81, %76 ], [ 0, %82 ]
  %96 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17, i32 0, i32 3
  store i16 %95, ptr %96, align 2
  %97 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %98 = load i32, ptr %97, align 8
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 8
  store i16 %99, ptr %100, align 2
  %101 = getelementptr i8, ptr %0, i32 476
  %102 = load i16, ptr %101, align 4
  %103 = icmp ugt i16 %102, 7
  %104 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %105 = load i64, ptr %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 4
  store i32 %106, ptr %107, align 4
  br i1 %103, label %108, label %121

108:                                              ; preds = %94
  %109 = load i64, ptr %104, align 8
  %110 = shl i64 %109, 32
  %111 = ashr exact i64 %110, 32
  %112 = sub i64 %109, %111
  %113 = lshr i64 %112, 32
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 3
  %116 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16, i32 1
  %117 = load i32, ptr %116, align 8
  %118 = shl i32 %117, 2
  %119 = or i32 %115, %118
  %120 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 20
  store i32 %119, ptr %120, align 4
  br label %121

121:                                              ; preds = %108, %94
  %122 = load i16, ptr %101, align 4
  %123 = icmp ugt i16 %122, 11
  %124 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %125 = load i64, ptr %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 5
  store i32 %126, ptr %127, align 4
  br i1 %123, label %128, label %141

128:                                              ; preds = %121
  %129 = load i64, ptr %124, align 8
  %130 = shl i64 %129, 32
  %131 = ashr exact i64 %130, 32
  %132 = sub i64 %129, %131
  %133 = lshr i64 %132, 32
  %134 = trunc i64 %133 to i32
  %135 = and i32 %134, 3
  %136 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, i32 1
  %137 = load i32, ptr %136, align 8
  %138 = shl i32 %137, 2
  %139 = or i32 %135, %138
  %140 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 21
  store i32 %139, ptr %140, align 4
  br label %141

141:                                              ; preds = %128, %121
  %142 = load i16, ptr %101, align 4
  %143 = icmp ugt i16 %142, 15
  %144 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %145 = load i64, ptr %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 3
  store i32 %146, ptr %147, align 4
  br i1 %143, label %148, label %161

148:                                              ; preds = %141
  %149 = load i64, ptr %144, align 8
  %150 = shl i64 %149, 32
  %151 = ashr exact i64 %150, 32
  %152 = sub i64 %149, %151
  %153 = lshr i64 %152, 32
  %154 = trunc i64 %153 to i32
  %155 = and i32 %154, 3
  %156 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, i32 1
  %157 = load i32, ptr %156, align 8
  %158 = shl i32 %157, 2
  %159 = or i32 %155, %158
  %160 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 22
  store i32 %159, ptr %160, align 4
  br label %161

161:                                              ; preds = %148, %141
  %162 = load i16, ptr %101, align 4
  %163 = icmp ugt i16 %162, 19
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = getelementptr i8, ptr %0, i32 400
  %166 = load i64, ptr %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 23
  store i32 %167, ptr %168, align 4
  %169 = load i16, ptr %101, align 4
  %170 = icmp ugt i16 %169, 23
  br i1 %170, label %171, label %184

171:                                              ; preds = %164
  %172 = load i64, ptr %165, align 8
  %173 = shl i64 %172, 32
  %174 = ashr exact i64 %173, 32
  %175 = sub i64 %172, %174
  %176 = lshr i64 %175, 32
  %177 = trunc i64 %176 to i32
  %178 = and i32 %177, 3
  %179 = getelementptr i8, ptr %0, i32 408
  %180 = load i32, ptr %179, align 8
  %181 = shl i32 %180, 2
  %182 = or i32 %178, %181
  %183 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 24
  store i32 %182, ptr %183, align 4
  br label %184

184:                                              ; preds = %171, %164, %161
  %185 = getelementptr i8, ptr %0, i32 -148
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 6
  store i32 %186, ptr %187, align 4
  %188 = getelementptr i8, ptr %0, i32 -124
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 10
  store i32 %189, ptr %190, align 4
  %191 = load ptr, ptr %54, align 4
  %192 = getelementptr inbounds %struct.super_block, ptr %191, i32 0, i32 27
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ext4_sb_info, ptr %193, i32 0, i32 18
  %195 = load i32, ptr %194, align 16
  %196 = and i32 %195, 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %204, !prof !11

198:                                              ; preds = %184
  %199 = getelementptr i8, ptr %0, i32 -144
  %200 = load i64, ptr %199, align 8
  %201 = lshr i64 %200, 32
  %202 = trunc i64 %201 to i16
  %203 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 17, i32 0, i32 1
  store i16 %202, ptr %203, align 2
  br label %204

204:                                              ; preds = %198, %184
  %205 = getelementptr i8, ptr %0, i32 -144
  %206 = load i64, ptr %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 14
  store i32 %207, ptr %208, align 4
  %209 = getelementptr i8, ptr %0, i32 -32
  %210 = load i64, ptr %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 2
  store i32 %211, ptr %212, align 4
  %213 = lshr i64 %210, 32
  %214 = trunc i64 %213 to i32
  %215 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 15
  store i32 %214, ptr %215, align 4
  %216 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %217 = load i32, ptr %216, align 8
  %218 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 13
  store i32 %217, ptr %218, align 4
  %219 = load i16, ptr %0, align 8
  %220 = and i16 %219, -4096
  switch i16 %220, label %245 [
    i16 8192, label %221
    i16 24576, label %221
  ]

221:                                              ; preds = %204, %204
  %222 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, -267387136
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = lshr i32 %223, 12
  %228 = and i32 %227, 65280
  %229 = and i32 %223, 65535
  %230 = or i32 %228, %229
  %231 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 12
  store i32 %230, ptr %231, align 4
  %232 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 1
  store i32 0, ptr %232, align 4
  br label %298

233:                                              ; preds = %221
  %234 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 12
  store i32 0, ptr %234, align 4
  %235 = load i32, ptr %222, align 4
  %236 = and i32 %235, 255
  %237 = lshr i32 %235, 12
  %238 = and i32 %237, 1048320
  %239 = or i32 %238, %236
  %240 = shl i32 %235, 12
  %241 = and i32 %240, -1048576
  %242 = or i32 %239, %241
  %243 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 1
  store i32 %242, ptr %243, align 4
  %244 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 2
  store i32 0, ptr %244, align 4
  br label %298

245:                                              ; preds = %204
  %246 = load volatile i32, ptr %188, align 4
  %247 = and i32 %246, 268435456
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = getelementptr i8, ptr %0, i32 478
  %251 = load i16, ptr %250, align 2
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %253, label %298

253:                                              ; preds = %249, %245
  %254 = load i32, ptr %3, align 4
  %255 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 0
  store i32 %254, ptr %255, align 4
  %256 = getelementptr i8, ptr %0, i32 -204
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 1
  store i32 %257, ptr %258, align 4
  %259 = getelementptr i8, ptr %0, i32 -200
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 2
  store i32 %260, ptr %261, align 4
  %262 = getelementptr i8, ptr %0, i32 -196
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 3
  store i32 %263, ptr %264, align 4
  %265 = getelementptr i8, ptr %0, i32 -192
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 4
  store i32 %266, ptr %267, align 4
  %268 = getelementptr i8, ptr %0, i32 -188
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 5
  store i32 %269, ptr %270, align 4
  %271 = getelementptr i8, ptr %0, i32 -184
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 6
  store i32 %272, ptr %273, align 4
  %274 = getelementptr i8, ptr %0, i32 -180
  %275 = load i32, ptr %274, align 4
  %276 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 7
  store i32 %275, ptr %276, align 4
  %277 = getelementptr i8, ptr %0, i32 -176
  %278 = load i32, ptr %277, align 4
  %279 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 8
  store i32 %278, ptr %279, align 4
  %280 = getelementptr i8, ptr %0, i32 -172
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 9
  store i32 %281, ptr %282, align 4
  %283 = getelementptr i8, ptr %0, i32 -168
  %284 = load i32, ptr %283, align 4
  %285 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 10
  store i32 %284, ptr %285, align 4
  %286 = getelementptr i8, ptr %0, i32 -164
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 11
  store i32 %287, ptr %288, align 4
  %289 = getelementptr i8, ptr %0, i32 -160
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 12
  store i32 %290, ptr %291, align 4
  %292 = getelementptr i8, ptr %0, i32 -156
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 13
  store i32 %293, ptr %294, align 4
  %295 = getelementptr i8, ptr %0, i32 -152
  %296 = load i32, ptr %295, align 4
  %297 = getelementptr %struct.ext4_inode, ptr %1, i32 0, i32 12, i32 14
  store i32 %296, ptr %297, align 4
  br label %298

298:                                              ; preds = %253, %249, %233, %226
  %299 = load ptr, ptr %54, align 4
  %300 = getelementptr inbounds %struct.super_block, ptr %299, i32 0, i32 27
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr inbounds %struct.ext4_sb_info, ptr %301, i32 0, i32 18
  %303 = load i32, ptr %302, align 16
  %304 = and i32 %303, 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %329, !prof !11

306:                                              ; preds = %298
  %307 = load i32, ptr %188, align 4
  %308 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %309 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %308, ptr elementtype(i64) %308) #16
  %310 = lshr i32 %307, 21
  %311 = and i32 %310, 1
  %312 = xor i32 %311, 1
  %313 = zext i32 %312 to i64
  %314 = lshr i64 %309, %313
  %315 = trunc i64 %314 to i32
  %316 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 11
  store i32 %315, ptr %316, align 4
  %317 = load i16, ptr %101, align 4
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %329, label %319

319:                                              ; preds = %306
  %320 = icmp ugt i16 %317, 27
  br i1 %320, label %321, label %326

321:                                              ; preds = %319
  %322 = lshr i64 %314, 32
  %323 = trunc i64 %322 to i32
  %324 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 25
  store i32 %323, ptr %324, align 4
  %325 = load i16, ptr %101, align 4
  br label %326

326:                                              ; preds = %321, %319
  %327 = phi i16 [ %325, %321 ], [ %317, %319 ]
  %328 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 18
  store i16 %327, ptr %328, align 4
  br label %329

329:                                              ; preds = %326, %306, %298
  %330 = icmp eq i32 %53, 0
  %331 = load ptr, ptr %54, align 4
  %332 = getelementptr inbounds %struct.super_block, ptr %331, i32 0, i32 27
  %333 = load ptr, ptr %332, align 4
  br i1 %330, label %342, label %334

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.ext4_sb_info, ptr %333, i32 0, i32 15
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.ext4_super_block, ptr %336, i32 0, i32 30
  %338 = load i32, ptr %337, align 4
  %339 = and i32 %338, 8192
  %340 = icmp eq i32 %339, 0
  %341 = select i1 %340, i32 -117, i32 %46
  br label %342

342:                                              ; preds = %334, %329
  %343 = phi i32 [ %341, %334 ], [ %46, %329 ]
  %344 = getelementptr inbounds %struct.ext4_sb_info, ptr %333, i32 0, i32 29
  %345 = load i32, ptr %344, align 4
  %346 = icmp sgt i32 %345, 128
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load i16, ptr %101, align 4
  %349 = icmp ugt i16 %348, 31
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.ext4_inode, ptr %1, i32 0, i32 26
  store i32 %53, ptr %351, align 4
  br label %352

352:                                              ; preds = %350, %347, %342
  tail call void @ext4_inode_csum_set(ptr noundef %0, ptr noundef %1, ptr noundef %3)
  ret i32 %343
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_group_desc_csum(ptr nocapture noundef readonly %0) unnamed_addr #2 {
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
  br i1 %19, label %20, label %31, !prof !9

20:                                               ; preds = %13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 3289, i32 noundef 9, ptr noundef null) #16
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
declare dso_local i32 @ext4_itable_unused_count(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_sb_breadahead_unmovable(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_load_inode(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_load_inode, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !144
  %17 = tail call i32 @__traceiter_ext4_load_inode(ptr noundef null, ptr noundef %0, i32 noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !145
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_read_bh_nowait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_load_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_find_inline_data_nolock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_wait_commit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_blocks_per_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ind_trans_blocks(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_index_trans_blocks(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_inode_by_ino_rcu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_other_inode_update_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_update_dynamic_rev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_expand_extra_isize_ea(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_mark_inode_dirty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_extend(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @try_to_writeback_inodes_sb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154024652, i64 2154025132, i64 2154024689, i64 2154024745, i64 2154024779, i64 2154024803, i64 2154024844, i64 2154024865, i64 2154024893, i64 2154024927}
!13 = !{i64 2154025730, i64 2154026210, i64 2154025767, i64 2154025823, i64 2154025857, i64 2154025881, i64 2154025922, i64 2154025943, i64 2154025971, i64 2154026005}
!14 = !{i64 2154329214}
!15 = !{i64 2154329368}
!16 = !{i64 2154399335}
!17 = !{i64 2154399531}
!18 = !{i64 2148163594}
!19 = !{i64 2151305442}
!20 = !{i64 912885, i64 912946}
!21 = !{i64 931585}
!22 = !{i64 915902}
!23 = !{i64 2151313059}
!24 = !{i64 2151321524}
!25 = !{i64 2151329835}
!26 = !{i64 2151338053}
!27 = !{i64 2154382353}
!28 = !{i64 2154382525}
!29 = !{i64 2155249211}
!30 = !{i64 2155249371}
!31 = !{i64 2155265349}
!32 = !{i64 2155265507}
!33 = !{i64 2155017589}
!34 = !{i64 2155017819}
!35 = !{i64 2149175811}
!36 = !{i64 2149171635}
!37 = !{i64 2149171710, i64 2149171737, i64 2149171784, i64 2149171806, i64 2149171834, i64 2149171854}
!38 = !{i64 2149198814}
!39 = !{i64 2156324374, i64 2156324854, i64 2156324411, i64 2156324467, i64 2156324501, i64 2156324525, i64 2156324566, i64 2156324587, i64 2156324615, i64 2156324649}
!40 = !{i64 2156340272}
!41 = !{i64 1007207, i64 2148497178, i64 2148497204, i64 2148497251, i64 2148497273, i64 2148497301, i64 2148497321}
!42 = !{i64 1018581, i64 1018602, i64 1018625, i64 1018644, i64 1018663}
!43 = !{i64 2156340572}
!44 = !{i64 2156342805, i64 2156343285, i64 2156342842, i64 2156342898, i64 2156342932, i64 2156342956, i64 2156342997, i64 2156343018, i64 2156343046, i64 2156343080}
!45 = !{i64 2156344612, i64 2156345092, i64 2156344649, i64 2156344705, i64 2156344739, i64 2156344763, i64 2156344804, i64 2156344825, i64 2156344853, i64 2156344887}
!46 = !{i64 2156346628, i64 2156347108, i64 2156346665, i64 2156346721, i64 2156346755, i64 2156346779, i64 2156346820, i64 2156346841, i64 2156346869, i64 2156346903}
!47 = !{i64 2148517055, i64 2148517087, i64 2148517116, i64 2148517150, i64 2148517181, i64 2148517204}
!48 = !{i64 2148618395}
!49 = !{i64 2152718994}
!50 = !{i64 2148510950, i64 2148510976, i64 2148511005, i64 2148511039, i64 2148511070, i64 2148511093}
!51 = !{i64 2155051341}
!52 = !{i64 2155051533}
!53 = !{i64 2156379394, i64 2156379875, i64 2156379431, i64 2156379487, i64 2156379521, i64 2156379545, i64 2156379586, i64 2156379607, i64 2156379635, i64 2156379669}
!54 = !{i64 2156380453, i64 2156380934, i64 2156380490, i64 2156380546, i64 2156380580, i64 2156380604, i64 2156380645, i64 2156380666, i64 2156380694, i64 2156380728}
!55 = !{i64 2156374869, i64 2156375350, i64 2156374906, i64 2156374962, i64 2156374996, i64 2156375020, i64 2156375061, i64 2156375082, i64 2156375110, i64 2156375144}
!56 = !{i64 2154906989}
!57 = !{i64 2154907151}
!58 = !{i64 2151459848}
!59 = !{i64 2151459690}
!60 = !{i64 2151459992}
!61 = !{i64 2149654235}
!62 = !{i64 2154048035}
!63 = !{i64 2156440811, i64 2156441292, i64 2156440848, i64 2156440904, i64 2156440938, i64 2156440962, i64 2156441003, i64 2156441024, i64 2156441052, i64 2156441086}
!64 = !{i64 2156442209, i64 2156442690, i64 2156442246, i64 2156442302, i64 2156442336, i64 2156442360, i64 2156442401, i64 2156442422, i64 2156442450, i64 2156442484}
!65 = !{i64 2150342618}
!66 = !{i64 2148609272}
!67 = !{i64 2148511634, i64 2148511666, i64 2148511695, i64 2148511729, i64 2148511760, i64 2148511783}
!68 = !{i64 2148609475}
!69 = !{i64 2155162101}
!70 = !{i64 2155162291}
!71 = !{i64 2149183693}
!72 = !{i64 1687117, i64 1687140, i64 1687160, i64 1687184, i64 1687200}
!73 = !{i64 2149221296}
!74 = !{i64 997066, i64 997086, i64 997114, i64 997144, i64 997160}
!75 = !{i64 2151461630}
!76 = !{i64 2149654534}
!77 = !{i64 2149654835}
!78 = !{i64 2151469188}
!79 = !{i64 2153370801}
!80 = !{i64 996821, i64 996842}
!81 = !{i64 2148667038}
!82 = !{i64 1000436, i64 1000462, i64 1000490, i64 1000508, i64 1000526, i64 1000548}
!83 = !{i64 2148667240}
!84 = !{i64 2154652912}
!85 = !{i64 2154653124}
!86 = !{i64 2148508593, i64 2148508619, i64 2148508648, i64 2148508682, i64 2148508713, i64 2148508736}
!87 = !{i64 2149328515}
!88 = !{i64 2154259586}
!89 = !{i64 2154259784}
!90 = !{i64 2149328732}
!91 = !{i64 2156706178, i64 2156706659, i64 2156706215, i64 2156706271, i64 2156706305, i64 2156706329, i64 2156706370, i64 2156706391, i64 2156706419, i64 2156706453}
!92 = !{i64 2156707614, i64 2156708095, i64 2156707651, i64 2156707707, i64 2156707741, i64 2156707765, i64 2156707806, i64 2156707827, i64 2156707855, i64 2156707889}
!93 = !{i64 2156708779, i64 2156709260, i64 2156708816, i64 2156708872, i64 2156708906, i64 2156708930, i64 2156708971, i64 2156708992, i64 2156709020, i64 2156709054}
!94 = !{i64 2155034603}
!95 = !{i64 2155034767}
!96 = !{i64 2154583355}
!97 = !{i64 2154583503}
!98 = !{i64 2156387927, i64 2156388408, i64 2156387964, i64 2156388020, i64 2156388054, i64 2156388078, i64 2156388119, i64 2156388140, i64 2156388168, i64 2156388202}
!99 = !{i64 2156381492, i64 2156381973, i64 2156381529, i64 2156381585, i64 2156381619, i64 2156381643, i64 2156381684, i64 2156381705, i64 2156381733, i64 2156381767}
!100 = !{i64 2156382549, i64 2156383030, i64 2156382586, i64 2156382642, i64 2156382676, i64 2156382700, i64 2156382741, i64 2156382762, i64 2156382790, i64 2156382824}
!101 = !{i64 2156383774, i64 2156384255, i64 2156383811, i64 2156383867, i64 2156383901, i64 2156383925, i64 2156383966, i64 2156383987, i64 2156384015, i64 2156384049}
!102 = !{i64 2156385042, i64 2156385523, i64 2156385079, i64 2156385135, i64 2156385169, i64 2156385193, i64 2156385234, i64 2156385255, i64 2156385283, i64 2156385317}
!103 = !{i64 2154598982}
!104 = !{i64 2154599128}
!105 = !{i64 2154510790}
!106 = !{i64 2154510952}
!107 = !{i64 2156419058, i64 2156419539, i64 2156419095, i64 2156419151, i64 2156419185, i64 2156419209, i64 2156419250, i64 2156419271, i64 2156419299, i64 2156419333}
!108 = !{i64 2156420637, i64 2156421118, i64 2156420674, i64 2156420730, i64 2156420764, i64 2156420788, i64 2156420829, i64 2156420850, i64 2156420878, i64 2156420912}
!109 = !{i64 2154527857}
!110 = !{i64 2154528051}
!111 = !{i64 2154545004}
!112 = !{i64 2154545188}
!113 = !{i64 2156394496, i64 2156394977, i64 2156394533, i64 2156394589, i64 2156394623, i64 2156394647, i64 2156394688, i64 2156394709, i64 2156394737, i64 2156394771}
!114 = !{i64 2156393068, i64 2156393549, i64 2156393105, i64 2156393161, i64 2156393195, i64 2156393219, i64 2156393260, i64 2156393281, i64 2156393309, i64 2156393343}
!115 = !{i64 2154566922}
!116 = !{i64 2154567138}
!117 = !{i64 2154416836}
!118 = !{i64 2154417024}
!119 = !{i64 2156348870, i64 2156349351, i64 2156348907, i64 2156348963, i64 2156348997, i64 2156349021, i64 2156349062, i64 2156349083, i64 2156349111, i64 2156349145}
!120 = !{i64 2154472492}
!121 = !{i64 2154472700}
!122 = !{i64 2156354194, i64 2156354675, i64 2156354231, i64 2156354287, i64 2156354321, i64 2156354345, i64 2156354386, i64 2156354407, i64 2156354435, i64 2156354469}
!123 = !{i64 2156355404, i64 2156355885, i64 2156355441, i64 2156355497, i64 2156355531, i64 2156355555, i64 2156355596, i64 2156355617, i64 2156355645, i64 2156355679}
!124 = !{i64 2150343639}
!125 = !{i64 2154614669}
!126 = !{i64 2154614821}
!127 = !{i64 2156416279, i64 2156416760, i64 2156416316, i64 2156416372, i64 2156416406, i64 2156416430, i64 2156416471, i64 2156416492, i64 2156416520, i64 2156416554}
!128 = !{i64 2156417412, i64 2156417893, i64 2156417449, i64 2156417505, i64 2156417539, i64 2156417563, i64 2156417604, i64 2156417625, i64 2156417653, i64 2156417687}
!129 = !{i64 2156364142, i64 2156364623, i64 2156364179, i64 2156364235, i64 2156364269, i64 2156364293, i64 2156364334, i64 2156364355, i64 2156364383, i64 2156364417}
!130 = !{i64 2156365163, i64 2156365644, i64 2156365200, i64 2156365256, i64 2156365290, i64 2156365314, i64 2156365355, i64 2156365376, i64 2156365404, i64 2156365438}
!131 = !{i64 2156391938, i64 2156392419, i64 2156391975, i64 2156392031, i64 2156392065, i64 2156392089, i64 2156392130, i64 2156392151, i64 2156392179, i64 2156392213}
!132 = !{i64 2156390404, i64 2156390885, i64 2156390441, i64 2156390497, i64 2156390531, i64 2156390555, i64 2156390596, i64 2156390617, i64 2156390645, i64 2156390679}
!133 = !{i64 2156350386, i64 2156350867, i64 2156350423, i64 2156350479, i64 2156350513, i64 2156350537, i64 2156350578, i64 2156350599, i64 2156350627, i64 2156350661}
!134 = !{i64 2154438046}
!135 = !{i64 2154438240}
!136 = !{i64 2154490084}
!137 = !{i64 2154490276}
!138 = !{i64 2156422570, i64 2156423051, i64 2156422607, i64 2156422663, i64 2156422697, i64 2156422721, i64 2156422762, i64 2156422783, i64 2156422811, i64 2156422845}
!139 = !{i64 2154635425}
!140 = !{i64 2154635615}
!141 = !{i64 2156426411, i64 2156426460, i64 2156426475, i64 2156426527, i64 2156426575, i64 2156426599, i64 2156426640, i64 2156426661, i64 2156426689, i64 2156426722}
!142 = !{i64 2154455190}
!143 = !{i64 2154455376}
!144 = !{i64 2155420756}
!145 = !{i64 2155420912}
