; ModuleID = '/llk/IR/fs/ext4/dir.c_pt.bc'
source_filename = "../fs/ext4/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ext4_dir_entry_2 = type { i32, i16, i8, i8, [255 x i8] }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fname = type { i32, i32, %struct.rb_node, ptr, i32, i8, i8, [0 x i8] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.dir_private_info = type { %struct.rb_root, ptr, ptr, i64, i32, i32, i32 }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rec_len % 4 != 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"directory entry overrun\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"directory entry too close to block end\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"inode out of bounds\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"bad entry in directory: %s - offset=%u, inode=%u, rec_len=%d, size=%d fake=%d\00", align 1
@__func__.ext4_check_all_de = private unnamed_addr constant [18 x i8] c"ext4_check_all_de\00", align 1
@ext4_dir_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @ext4_dir_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext4_readdir, ptr null, ptr @ext4_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @ext4_release_dir, ptr @ext4_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.ext4_readdir = private unnamed_addr constant [13 x i8] c"ext4_readdir\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"directory fails checksum at offset %llu\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%d: inode #%lu: comm %s: called with null fname?!?\00", align 1
@__func__.call_filldir = private unnamed_addr constant [13 x i8] c"call_filldir\00", align 1
@ext4_filetype_table = internal unnamed_addr constant [8 x i8] c"\00\08\04\02\06\01\0C\0A", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_check_dir_entry(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %4, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %13 = zext i16 %11 to i32
  %14 = ptrtoint ptr %4 to i32
  %15 = ptrtoint ptr %6 to i32
  %16 = sub i32 %14, %15
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %4, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = add i8 %19, -1
  %21 = icmp ult i8 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %4, i32 0, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 46
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr %struct.ext4_dir_entry_2, ptr %4, i32 0, i32 4, i32 1
  %28 = load i8, ptr %27, align 1
  switch i8 %28, label %29 [
    i8 46, label %33
    i8 0, label %33
  ]

29:                                               ; preds = %26, %22, %9
  %30 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %4, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, -34
  br label %33

33:                                               ; preds = %29, %26, %26
  %34 = phi i1 [ true, %26 ], [ true, %26 ], [ %32, %29 ]
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 27
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_super_block, ptr %39, i32 0, i32 30
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 119
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  %48 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %62, !prof !8

51:                                               ; preds = %44
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %52 = load ptr, ptr %36, align 4
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ext4_super_block, ptr %54, i32 0, i32 30
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 119
  %61 = load ptr, ptr %60, align 8
  br label %62

62:                                               ; preds = %59, %44
  %63 = phi ptr [ %61, %59 ], [ %46, %44 ]
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, ptr %2, ptr null
  br label %66

66:                                               ; preds = %62, %51, %33
  %67 = phi ptr [ %2, %51 ], [ %65, %62 ], [ %2, %33 ]
  %68 = select i1 %34, ptr null, ptr %2
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 49152
  %74 = icmp eq i32 %73, 49152
  %75 = select i1 %74, i32 20, i32 12
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i32 [ 12, %66 ], [ %75, %70 ]
  %78 = icmp ugt i32 %77, %13
  br i1 %78, label %122, label %79, !prof !8

79:                                               ; preds = %76
  %80 = and i32 %13, 3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %122, !prof !9

82:                                               ; preds = %79
  %83 = load i8, ptr %18, align 2
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %84, 11
  br i1 %69, label %93, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 49152
  %90 = icmp eq i32 %89, 49152
  %91 = add nuw nsw i32 %84, 19
  %92 = select i1 %90, i32 %91, i32 %85
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i32 [ %85, %82 ], [ %92, %86 ]
  %95 = and i32 %94, -4
  %96 = icmp ugt i32 %95, %13
  br i1 %96, label %122, label %97, !prof !8

97:                                               ; preds = %93
  %98 = icmp sgt i32 %17, %7
  br i1 %98, label %122, label %99, !prof !8

99:                                               ; preds = %97
  %100 = icmp eq ptr %67, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 49152
  %105 = icmp eq i32 %104, 49152
  %106 = select i1 %105, i32 -20, i32 -12
  br label %107

107:                                              ; preds = %101, %99
  %108 = phi i32 [ -12, %99 ], [ %106, %101 ]
  %109 = add i32 %108, %7
  %110 = icmp ugt i32 %17, %109
  %111 = icmp ne i32 %17, %7
  %112 = and i1 %111, %110
  br i1 %112, label %122, label %113, !prof !8

113:                                              ; preds = %107
  %114 = load i32, ptr %4, align 4
  %115 = load ptr, ptr %12, align 4
  %116 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 27
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.ext4_sb_info, ptr %117, i32 0, i32 15
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %119, align 8
  %121 = icmp ugt i32 %114, %120
  br i1 %121, label %122, label %131, !prof !8

122:                                              ; preds = %113, %107, %97, %93, %79, %76
  %123 = phi ptr [ @.str, %76 ], [ @.str.1, %79 ], [ @.str.2, %93 ], [ @.str.3, %97 ], [ @.str.4, %107 ], [ @.str.5, %113 ]
  %124 = icmp eq ptr %3, null
  %125 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %126 = load i64, ptr %125, align 8
  %127 = load i32, ptr %4, align 4
  %128 = zext i1 %34 to i32
  br i1 %124, label %130, label %129

129:                                              ; preds = %122
  tail call void (ptr, ptr, i32, i64, ptr, ...) @__ext4_error_file(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1, i64 noundef %126, ptr noundef nonnull @.str.6, ptr noundef nonnull %123, i32 noundef %8, i32 noundef %127, i32 noundef %13, i32 noundef %7, i32 noundef %128) #9
  br label %131

130:                                              ; preds = %122
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %2, ptr noundef %0, i32 noundef %1, i64 noundef %126, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %123, i32 noundef %8, i32 noundef %127, i32 noundef %13, i32 noundef %7, i32 noundef %128) #9
  br label %131

131:                                              ; preds = %130, %129, %113
  %132 = phi i32 [ 0, %113 ], [ 1, %130 ], [ 1, %129 ]
  ret i32 %132
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_file(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_htree_free_dir_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rb_first_postorder(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  %4 = getelementptr i8, ptr %2, i32 -8
  %5 = icmp eq ptr %4, null
  %6 = or i1 %3, %5
  br i1 %6, label %21, label %12

7:                                                ; preds = %16
  %8 = getelementptr i8, ptr %15, i32 -8
  %9 = icmp eq ptr %15, null
  %10 = icmp eq ptr %8, null
  %11 = or i1 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %7, %1
  %13 = phi ptr [ %8, %7 ], [ %4, %1 ]
  %14 = getelementptr inbounds %struct.fname, ptr %13, i32 0, i32 2
  %15 = tail call ptr @rb_next_postorder(ptr noundef %14) #9
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %13, %12 ], [ %19, %16 ]
  %18 = getelementptr inbounds %struct.fname, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef nonnull %17) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %7, label %16

21:                                               ; preds = %7, %1
  store ptr null, ptr %0, align 4
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_htree_store_dirent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fscrypt_str, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 33
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %5
  store i32 %1, ptr %11, align 64
  %14 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 1
  store i32 %2, ptr %14, align 4
  %15 = load i32, ptr %3, align 4
  %16 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 4
  store i32 %15, ptr %16, align 8
  %17 = load i32, ptr %8, align 4
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 5
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %3, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 6
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 7
  %24 = load ptr, ptr %4, align 4
  %25 = load i32, ptr %8, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %23, ptr align 1 %24, i32 %25, i1 false)
  %26 = load ptr, ptr %7, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %63, label %28

28:                                               ; preds = %57, %13
  %29 = phi ptr [ %59, %57 ], [ %26, %13 ]
  %30 = getelementptr i8, ptr %29, i32 -8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %29, i32 -4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %29, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  store ptr %11, ptr %38, align 4
  br label %69

41:                                               ; preds = %33, %28
  %42 = icmp ugt i32 %31, %1
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %57

45:                                               ; preds = %41
  %46 = icmp ult i32 %31, %1
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %57

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %29, i32 -4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, %2
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %57

57:                                               ; preds = %55, %53, %47, %43
  %58 = phi ptr [ %44, %43 ], [ %48, %47 ], [ %54, %53 ], [ %56, %55 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %28

61:                                               ; preds = %57
  %62 = ptrtoint ptr %29 to i32
  br label %63

63:                                               ; preds = %61, %13
  %64 = phi i32 [ %62, %61 ], [ 0, %13 ]
  %65 = phi ptr [ %58, %61 ], [ %7, %13 ]
  %66 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 2
  store i32 %64, ptr %66, align 8
  %67 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 2, i32 1
  store ptr null, ptr %67, align 4
  %68 = getelementptr inbounds %struct.fname, ptr %11, i32 0, i32 2, i32 2
  store ptr null, ptr %68, align 16
  store ptr %66, ptr %65, align 4
  tail call void @rb_insert_color(ptr noundef %66, ptr noundef %7) #9
  br label %69

69:                                               ; preds = %63, %37, %5
  %70 = phi i32 [ 0, %37 ], [ 0, %63 ], [ -12, %5 ]
  ret i32 %70
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_check_all_de(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %2, i32 %3
  %6 = icmp ugt ptr %5, %2
  br i1 %6, label %7, label %19

7:                                                ; preds = %12, %4
  %8 = phi i32 [ %17, %12 ], [ 0, %4 ]
  %9 = phi ptr [ %16, %12 ], [ %2, %4 ]
  %10 = tail call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_check_all_de, i32 noundef 655, ptr noundef %0, ptr noundef null, ptr noundef %9, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23, !prof !9

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %9, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %9, i32 %15
  %17 = add i32 %8, %15
  %18 = icmp ult ptr %16, %5
  br i1 %18, label %7, label %19

19:                                               ; preds = %12, %4
  %20 = phi ptr [ %2, %4 ], [ %16, %12 ]
  %21 = icmp ugt ptr %20, %5
  %22 = select i1 %21, i32 -117, i32 0
  br label %23

23:                                               ; preds = %19, %7
  %24 = phi i32 [ %22, %19 ], [ -117, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ext4_dir_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %3
  %18 = getelementptr i8, ptr %6, i32 -124
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i64
  %28 = ashr i64 %24, %27
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = load volatile i32, ptr %18, align 4
  %32 = and i32 %31, 268435456
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %6, i32 478
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30, %3
  %39 = tail call i64 @ext4_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #9
  br label %50

40:                                               ; preds = %34, %22, %17
  %41 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %42, 1024
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i64 2147483647, i64 9223372036854775807
  %48 = select i1 %44, i64 %47, i64 2147483647
  %49 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %48, i64 noundef %48) #9
  br label %50

50:                                               ; preds = %40, %38
  %51 = phi i64 [ %49, %40 ], [ %39, %38 ]
  %52 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 33
  %53 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %52, ptr elementtype(i64) %52) #9, !srcloc !10
  %54 = lshr i64 %53, 1
  %55 = add nsw i64 %54, -1
  %56 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  store i64 %55, ptr %56, align 8
  ret i64 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_readdir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.readahead_control, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_map_blocks, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %690

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %18, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %398, label %23

23:                                               ; preds = %14
  %24 = getelementptr i8, ptr %7, i32 -124
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 4096
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i64
  %34 = ashr i64 %30, %33
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load volatile i32, ptr %24, align 4
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %398, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %7, i32 478
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %398, label %44

44:                                               ; preds = %40, %28, %23
  %45 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %50 = load i32, ptr %49, align 8
  br label %71

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 40) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %690, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 1536
  %61 = icmp eq i32 %60, 1024
  %62 = trunc i64 %53 to i32
  %63 = shl i32 %62, 1
  %64 = lshr i64 %53, 31
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, -2
  %67 = select i1 %61, i32 %66, i32 %63
  %68 = getelementptr inbounds %struct.dir_private_info, ptr %55, i32 0, i32 4
  store i32 %67, ptr %68, align 8
  %69 = select i1 %61, i32 %62, i32 0
  %70 = getelementptr inbounds %struct.dir_private_info, ptr %55, i32 0, i32 5
  store i32 %69, ptr %70, align 4
  store ptr %55, ptr %45, align 8
  br label %71

71:                                               ; preds = %57, %48
  %72 = phi i32 [ %50, %48 ], [ %59, %57 ]
  %73 = phi ptr [ %46, %48 ], [ %55, %57 ]
  %74 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %77 = and i32 %72, 512
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %72, 1024
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i64 2147483647, i64 9223372036854775807
  %82 = select i1 %78, i64 %81, i64 2147483647
  %83 = icmp eq i64 %75, %82
  br i1 %83, label %690, label %84

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 3
  %86 = load i64, ptr %85, align 8
  %87 = icmp eq i64 %86, %75
  br i1 %87, label %129, label %88

88:                                               ; preds = %84
  %89 = tail call ptr @rb_first_postorder(ptr noundef nonnull %73) #9
  %90 = icmp eq ptr %89, null
  %91 = getelementptr i8, ptr %89, i32 -8
  %92 = icmp eq ptr %91, null
  %93 = or i1 %90, %92
  br i1 %93, label %108, label %99

94:                                               ; preds = %103
  %95 = getelementptr i8, ptr %102, i32 -8
  %96 = icmp eq ptr %102, null
  %97 = icmp eq ptr %95, null
  %98 = or i1 %96, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %94, %88
  %100 = phi ptr [ %95, %94 ], [ %91, %88 ]
  %101 = getelementptr inbounds %struct.fname, ptr %100, i32 0, i32 2
  %102 = tail call ptr @rb_next_postorder(ptr noundef %101) #9
  br label %103

103:                                              ; preds = %103, %99
  %104 = phi ptr [ %100, %99 ], [ %106, %103 ]
  %105 = getelementptr inbounds %struct.fname, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  tail call void @kfree(ptr noundef nonnull %104) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %94, label %103

108:                                              ; preds = %94, %88
  store ptr null, ptr %73, align 4
  %109 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 1
  store ptr null, ptr %109, align 4
  %110 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 2
  store ptr null, ptr %110, align 8
  %111 = load i64, ptr %74, align 8
  %112 = load i32, ptr %76, align 8
  %113 = and i32 %112, 1536
  %114 = icmp eq i32 %113, 1024
  %115 = trunc i64 %111 to i32
  %116 = shl i32 %115, 1
  %117 = lshr i64 %111, 31
  %118 = trunc i64 %117 to i32
  %119 = and i32 %118, -2
  %120 = select i1 %114, i32 %119, i32 %116
  %121 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 4
  store i32 %120, ptr %121, align 8
  %122 = load i64, ptr %74, align 8
  %123 = load i32, ptr %76, align 8
  %124 = and i32 %123, 1536
  %125 = icmp eq i32 %124, 1024
  %126 = trunc i64 %122 to i32
  %127 = select i1 %125, i32 %126, i32 0
  %128 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 5
  store i32 %127, ptr %128, align 4
  br label %190

129:                                              ; preds = %84
  %130 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %186, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %6, align 8
  %135 = getelementptr inbounds %struct.inode, ptr %134, i32 0, i32 8
  %136 = load ptr, ptr %135, align 4
  %137 = load i32, ptr %131, align 4
  %138 = getelementptr inbounds %struct.fname, ptr %131, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %72, 1536
  %141 = icmp eq i32 %140, 1024
  %142 = lshr i32 %137, 1
  %143 = zext i32 %142 to i64
  %144 = shl nuw nsw i64 %143, 32
  %145 = zext i32 %139 to i64
  %146 = or i64 %144, %145
  %147 = select i1 %141, i64 %146, i64 %143
  store i64 %147, ptr %74, align 8
  %148 = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 27
  br label %149

149:                                              ; preds = %180, %133
  %150 = phi ptr [ %131, %133 ], [ %182, %180 ]
  %151 = getelementptr inbounds %struct.fname, ptr %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.fname, ptr %150, i32 0, i32 5
  %153 = load i8, ptr %152, align 4
  %154 = zext i8 %153 to i32
  %155 = getelementptr inbounds %struct.fname, ptr %150, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.fname, ptr %150, i32 0, i32 6
  %159 = load i8, ptr %158, align 1
  %160 = load ptr, ptr %148, align 4
  %161 = getelementptr inbounds %struct.ext4_sb_info, ptr %160, i32 0, i32 15
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.ext4_super_block, ptr %162, i32 0, i32 29
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 2
  %166 = icmp ne i32 %165, 0
  %167 = icmp ult i8 %159, 8
  %168 = and i1 %167, %166
  br i1 %168, label %169, label %173

169:                                              ; preds = %149
  %170 = zext i8 %159 to i32
  %171 = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %170
  %172 = load i8, ptr %171, align 1
  br label %173

173:                                              ; preds = %169, %149
  %174 = phi i8 [ %172, %169 ], [ 0, %149 ]
  %175 = zext i8 %174 to i32
  %176 = load ptr, ptr %1, align 8
  %177 = load i64, ptr %74, align 8
  %178 = tail call i32 %176(ptr noundef %1, ptr noundef %151, i32 noundef %154, i64 noundef %177, i64 noundef %157, i32 noundef %175) #9
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.fname, ptr %150, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %149

184:                                              ; preds = %173
  store ptr %150, ptr %130, align 8
  br label %363

185:                                              ; preds = %180
  store ptr null, ptr %130, align 8
  br label %335

186:                                              ; preds = %129
  %187 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %186, %108
  %191 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 1
  %192 = tail call ptr @rb_first(ptr noundef nonnull %73) #9
  store ptr %192, ptr %191, align 4
  br label %193

193:                                              ; preds = %360, %341, %190, %186
  %194 = phi ptr [ %339, %341 ], [ null, %360 ], [ %188, %186 ], [ %192, %190 ]
  %195 = phi i32 [ %336, %341 ], [ %336, %360 ], [ 0, %186 ], [ 0, %190 ]
  %196 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 1
  %197 = icmp eq ptr %194, null
  br i1 %197, label %207, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  %200 = load i64, ptr %199, align 8
  %201 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 33
  %202 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %201, ptr elementtype(i64) %201) #9, !srcloc !10
  %203 = lshr i64 %202, 1
  %204 = icmp eq i64 %203, %200
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load ptr, ptr %196, align 4
  br label %266

207:                                              ; preds = %198, %193
  store ptr null, ptr %196, align 4
  %208 = tail call ptr @rb_first_postorder(ptr noundef nonnull %73) #9
  %209 = icmp eq ptr %208, null
  %210 = getelementptr i8, ptr %208, i32 -8
  %211 = icmp eq ptr %210, null
  %212 = or i1 %209, %211
  br i1 %212, label %227, label %218

213:                                              ; preds = %222
  %214 = getelementptr i8, ptr %221, i32 -8
  %215 = icmp eq ptr %221, null
  %216 = icmp eq ptr %214, null
  %217 = or i1 %215, %216
  br i1 %217, label %227, label %218

218:                                              ; preds = %213, %207
  %219 = phi ptr [ %214, %213 ], [ %210, %207 ]
  %220 = getelementptr inbounds %struct.fname, ptr %219, i32 0, i32 2
  %221 = tail call ptr @rb_next_postorder(ptr noundef %220) #9
  br label %222

222:                                              ; preds = %222, %218
  %223 = phi ptr [ %219, %218 ], [ %225, %222 ]
  %224 = getelementptr inbounds %struct.fname, ptr %223, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  tail call void @kfree(ptr noundef nonnull %223) #9
  %226 = icmp eq ptr %225, null
  br i1 %226, label %213, label %222

227:                                              ; preds = %213, %207
  store ptr null, ptr %73, align 4
  %228 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 33
  %229 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %228, ptr elementtype(i64) %228) #9, !srcloc !10
  br label %230

230:                                              ; preds = %241, %227
  %231 = phi i64 [ %229, %227 ], [ %242, %241 ]
  %232 = and i64 %231, 1
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  br label %244

235:                                              ; preds = %230
  %236 = or i64 %231, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %228) #9, !srcloc !13
  br label %237

237:                                              ; preds = %237, %235
  %238 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %228, ptr %228, i64 %231, i64 %236, ptr elementtype(i64) %228) #9, !srcloc !14
  %239 = extractvalue { i32, i64 } %238, 0
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %237

241:                                              ; preds = %237
  %242 = extractvalue { i32, i64 } %238, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %243 = icmp eq i64 %242, %231
  br i1 %243, label %244, label %230, !prof !9

244:                                              ; preds = %241, %234
  %245 = lshr i64 %231, 1
  %246 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  store i64 %245, ptr %246, align 8
  %247 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 4
  %248 = load i32, ptr %247, align 8
  %249 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 5
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 6
  %252 = tail call i32 @ext4_htree_fill_tree(ptr noundef %0, i32 noundef %248, i32 noundef %250, ptr noundef %251) #9
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %363, label %254

254:                                              ; preds = %244
  %255 = icmp eq i32 %252, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %254
  %257 = load i32, ptr %76, align 8
  %258 = and i32 %257, 512
  %259 = icmp eq i32 %258, 0
  %260 = and i32 %257, 1024
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i64 2147483647, i64 9223372036854775807
  %263 = select i1 %259, i64 %262, i64 2147483647
  store i64 %263, ptr %74, align 8
  br label %363

264:                                              ; preds = %254
  %265 = tail call ptr @rb_first(ptr noundef nonnull %73) #9
  store ptr %265, ptr %196, align 4
  br label %266

266:                                              ; preds = %264, %205
  %267 = phi ptr [ %206, %205 ], [ %265, %264 ]
  %268 = phi i32 [ %195, %205 ], [ %252, %264 ]
  %269 = getelementptr i8, ptr %267, i32 -8
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 4
  store i32 %270, ptr %271, align 8
  %272 = getelementptr i8, ptr %267, i32 -4
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 5
  store i32 %273, ptr %274, align 4
  %275 = load ptr, ptr %45, align 8
  %276 = load ptr, ptr %6, align 8
  %277 = getelementptr inbounds %struct.inode, ptr %276, i32 0, i32 8
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %269, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %266
  %281 = getelementptr inbounds %struct.inode, ptr %276, i32 0, i32 10
  %282 = load i32, ptr %281, align 4
  %283 = tail call ptr @llvm.thread.pointer() #9
  %284 = getelementptr inbounds %struct.task_struct, ptr %283, i32 0, i32 85
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %278, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.call_filldir, i32 noundef 531, i32 noundef %282, ptr noundef %284) #9
  br label %335

285:                                              ; preds = %266
  %286 = load i32, ptr %269, align 4
  %287 = load i32, ptr %272, align 4
  %288 = load i32, ptr %76, align 8
  %289 = and i32 %288, 1536
  %290 = icmp eq i32 %289, 1024
  %291 = lshr i32 %286, 1
  %292 = zext i32 %291 to i64
  %293 = shl nuw nsw i64 %292, 32
  %294 = zext i32 %287 to i64
  %295 = or i64 %293, %294
  %296 = select i1 %290, i64 %295, i64 %292
  store i64 %296, ptr %74, align 8
  %297 = getelementptr inbounds %struct.super_block, ptr %278, i32 0, i32 27
  br label %298

298:                                              ; preds = %329, %285
  %299 = phi ptr [ %269, %285 ], [ %331, %329 ]
  %300 = getelementptr inbounds %struct.fname, ptr %299, i32 0, i32 7
  %301 = getelementptr inbounds %struct.fname, ptr %299, i32 0, i32 5
  %302 = load i8, ptr %301, align 4
  %303 = zext i8 %302 to i32
  %304 = getelementptr inbounds %struct.fname, ptr %299, i32 0, i32 4
  %305 = load i32, ptr %304, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.fname, ptr %299, i32 0, i32 6
  %308 = load i8, ptr %307, align 1
  %309 = load ptr, ptr %297, align 4
  %310 = getelementptr inbounds %struct.ext4_sb_info, ptr %309, i32 0, i32 15
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.ext4_super_block, ptr %311, i32 0, i32 29
  %313 = load i32, ptr %312, align 8
  %314 = and i32 %313, 2
  %315 = icmp ne i32 %314, 0
  %316 = icmp ult i8 %308, 8
  %317 = and i1 %316, %315
  br i1 %317, label %318, label %322

318:                                              ; preds = %298
  %319 = zext i8 %308 to i32
  %320 = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %319
  %321 = load i8, ptr %320, align 1
  br label %322

322:                                              ; preds = %318, %298
  %323 = phi i8 [ %321, %318 ], [ 0, %298 ]
  %324 = zext i8 %323 to i32
  %325 = load ptr, ptr %1, align 8
  %326 = load i64, ptr %74, align 8
  %327 = tail call i32 %325(ptr noundef %1, ptr noundef %300, i32 noundef %303, i64 noundef %326, i64 noundef %306, i32 noundef %324) #9
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %322
  %330 = getelementptr inbounds %struct.fname, ptr %299, i32 0, i32 3
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %298

333:                                              ; preds = %322
  %334 = getelementptr inbounds %struct.dir_private_info, ptr %275, i32 0, i32 2
  store ptr %299, ptr %334, align 8
  br label %363

335:                                              ; preds = %329, %280, %185
  %336 = phi i32 [ 0, %185 ], [ %268, %280 ], [ %268, %329 ]
  %337 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 1
  %338 = load ptr, ptr %337, align 4
  %339 = tail call ptr @rb_next(ptr noundef %338) #9
  store ptr %339, ptr %337, align 4
  %340 = icmp eq ptr %339, null
  br i1 %340, label %348, label %341

341:                                              ; preds = %335
  %342 = getelementptr i8, ptr %339, i32 -8
  %343 = load i32, ptr %342, align 4
  %344 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 4
  store i32 %343, ptr %344, align 8
  %345 = getelementptr i8, ptr %339, i32 -4
  %346 = load i32, ptr %345, align 4
  %347 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 5
  store i32 %346, ptr %347, align 4
  br label %193

348:                                              ; preds = %335
  %349 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 6
  %350 = load i32, ptr %349, align 8
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %360

352:                                              ; preds = %348
  %353 = load i32, ptr %76, align 8
  %354 = and i32 %353, 512
  %355 = icmp eq i32 %354, 0
  %356 = and i32 %353, 1024
  %357 = icmp eq i32 %356, 0
  %358 = select i1 %357, i64 2147483647, i64 9223372036854775807
  %359 = select i1 %355, i64 %358, i64 2147483647
  store i64 %359, ptr %74, align 8
  br label %363

360:                                              ; preds = %348
  %361 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 4
  store i32 %350, ptr %361, align 8
  %362 = getelementptr inbounds %struct.dir_private_info, ptr %73, i32 0, i32 5
  store i32 0, ptr %362, align 4
  br label %193

363:                                              ; preds = %352, %333, %256, %244, %184
  %364 = phi i32 [ 0, %184 ], [ %268, %333 ], [ %252, %244 ], [ 0, %256 ], [ %336, %352 ]
  %365 = load i64, ptr %74, align 8
  store i64 %365, ptr %85, align 8
  %366 = tail call i32 @llvm.smin.i32(i32 %364, i32 0) #9
  %367 = icmp eq i32 %366, -4094
  br i1 %367, label %368, label %690

368:                                              ; preds = %363
  %369 = load ptr, ptr %15, align 4
  %370 = getelementptr inbounds %struct.ext4_sb_info, ptr %369, i32 0, i32 15
  %371 = load ptr, ptr %370, align 4
  %372 = getelementptr inbounds %struct.ext4_super_block, ptr %371, i32 0, i32 30
  %373 = load i32, ptr %372, align 4
  %374 = and i32 %373, 1024
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %397, label %376

376:                                              ; preds = %368
  %377 = getelementptr inbounds %struct.ext4_sb_info, ptr %369, i32 0, i32 119
  %378 = load ptr, ptr %377, align 8
  %379 = icmp eq ptr %378, null
  %380 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %381 = xor i1 %380, true
  %382 = select i1 %379, i1 %381, i1 false
  br i1 %382, label %383, label %394, !prof !8

383:                                              ; preds = %376
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %384 = load ptr, ptr %15, align 4
  %385 = getelementptr inbounds %struct.ext4_sb_info, ptr %384, i32 0, i32 15
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr inbounds %struct.ext4_super_block, ptr %386, i32 0, i32 30
  %388 = load i32, ptr %387, align 4
  %389 = and i32 %388, 1024
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %397, label %391

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.ext4_sb_info, ptr %384, i32 0, i32 119
  %393 = load ptr, ptr %392, align 8
  br label %394

394:                                              ; preds = %391, %376
  %395 = phi ptr [ %393, %391 ], [ %378, %376 ]
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %398

397:                                              ; preds = %394, %383, %368
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %24) #9
  br label %398

398:                                              ; preds = %397, %394, %40, %36, %14
  %399 = getelementptr i8, ptr %7, i32 -124
  %400 = load volatile i32, ptr %399, align 4
  %401 = and i32 %400, 268435456
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %411, label %403

403:                                              ; preds = %398
  %404 = getelementptr i8, ptr %7, i32 478
  %405 = load i16, ptr %404, align 2
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %403
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 1, ptr %4, align 4
  %408 = call i32 @ext4_read_inline_dir(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #9
  %409 = load i32, ptr %4, align 4
  %410 = icmp eq i32 %409, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br i1 %410, label %411, label %690

411:                                              ; preds = %407, %403, %398
  %412 = load i32, ptr %10, align 4
  %413 = and i32 %412, 16384
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %690

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %417 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  %418 = load i64, ptr %416, align 8
  %419 = load i64, ptr %417, align 8
  %420 = icmp slt i64 %418, %419
  br i1 %420, label %421, label %690

421:                                              ; preds = %415
  %422 = tail call ptr @llvm.thread.pointer() #9
  %423 = getelementptr inbounds %struct.task_struct, ptr %422, i32 0, i32 98, i32 1
  %424 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %425 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %426 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 1
  %427 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 2
  %428 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 19
  %429 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13
  %430 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13, i32 1
  %431 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 20
  %432 = getelementptr inbounds %struct.readahead_control, ptr %3, i32 0, i32 1
  %433 = getelementptr inbounds %struct.readahead_control, ptr %3, i32 0, i32 2
  %434 = getelementptr inbounds %struct.readahead_control, ptr %3, i32 0, i32 3
  %435 = getelementptr inbounds %struct.readahead_control, ptr %3, i32 0, i32 4
  %436 = getelementptr inbounds %struct.readahead_control, ptr %3, i32 0, i32 5
  %437 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13, i32 5
  %438 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  %439 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 33
  %440 = icmp eq ptr %7, null
  %441 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  %442 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 21
  br label %443

443:                                              ; preds = %681, %421
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !16
  %444 = load volatile i32, ptr %422, align 4
  %445 = and i32 %444, 1
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %443
  %448 = load i32, ptr %423, align 4
  %449 = and i32 %448, 256
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %678

451:                                              ; preds = %447, %443
  %452 = call i32 @__cond_resched() #9
  %453 = load i64, ptr %416, align 8
  %454 = load i32, ptr %424, align 16
  %455 = add i32 %454, -1
  %456 = trunc i64 %453 to i32
  %457 = and i32 %455, %456
  %458 = load i8, ptr %425, align 4
  %459 = zext i8 %458 to i64
  %460 = ashr i64 %453, %459
  %461 = trunc i64 %460 to i32
  store i32 %461, ptr %426, align 8
  store i32 1, ptr %427, align 4
  %462 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %7, ptr noundef nonnull %5, i32 noundef 0) #9
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %473

464:                                              ; preds = %451
  %465 = load i32, ptr %427, align 4
  %466 = icmp eq i32 %465, 0
  %467 = select i1 %466, i32 1, i32 %465
  %468 = load i32, ptr %424, align 16
  %469 = mul i32 %468, %467
  %470 = zext i32 %469 to i64
  %471 = load i64, ptr %416, align 8
  %472 = add i64 %471, %470
  store i64 %472, ptr %416, align 8
  br label %681

473:                                              ; preds = %451
  %474 = icmp sgt i32 %462, 0
  br i1 %474, label %475, label %505

475:                                              ; preds = %473
  %476 = load i64, ptr %5, align 8
  %477 = load i8, ptr %428, align 2
  %478 = zext i8 %477 to i32
  %479 = sub nsw i32 12, %478
  %480 = zext i32 %479 to i64
  %481 = lshr i64 %476, %480
  %482 = trunc i64 %481 to i32
  %483 = load i32, ptr %429, align 8
  %484 = icmp ugt i32 %483, %482
  br i1 %484, label %489, label %485

485:                                              ; preds = %475
  %486 = load i32, ptr %430, align 4
  %487 = add i32 %486, %483
  %488 = icmp ugt i32 %487, %482
  br i1 %488, label %495, label %489

489:                                              ; preds = %485, %475
  %490 = load ptr, ptr %431, align 4
  %491 = getelementptr inbounds %struct.block_device, ptr %490, i32 0, i32 7
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.inode, ptr %492, i32 0, i32 9
  %494 = load ptr, ptr %493, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  store ptr %0, ptr %3, align 4
  store ptr %494, ptr %432, align 4
  store ptr %429, ptr %433, align 4
  store i32 %482, ptr %434, align 4
  store i32 0, ptr %435, align 4
  store i32 0, ptr %436, align 4
  call void @page_cache_sync_ra(ptr noundef nonnull %3, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %495

495:                                              ; preds = %489, %485
  %496 = shl i64 %481, 12
  %497 = and i64 %496, 17592186040320
  store i64 %497, ptr %437, align 8
  %498 = load i32, ptr %426, align 8
  %499 = call ptr @ext4_bread(ptr noundef null, ptr noundef %7, i32 noundef %498, i32 noundef 0) #9
  %500 = icmp ugt ptr %499, inttoptr (i32 -4096 to ptr)
  br i1 %500, label %501, label %503

501:                                              ; preds = %495
  %502 = ptrtoint ptr %499 to i32
  br label %678

503:                                              ; preds = %495
  %504 = icmp eq ptr %499, null
  br i1 %504, label %505, label %515

505:                                              ; preds = %503, %473
  %506 = load i64, ptr %416, align 8
  %507 = load i64, ptr %442, align 8
  %508 = shl i64 %507, 9
  %509 = icmp ugt i64 %506, %508
  br i1 %509, label %676, label %510

510:                                              ; preds = %505
  %511 = load i32, ptr %424, align 16
  %512 = sub i32 %511, %457
  %513 = zext i32 %512 to i64
  %514 = add i64 %506, %513
  store i64 %514, ptr %416, align 8
  br label %681

515:                                              ; preds = %503
  %516 = load volatile i32, ptr %499, align 4
  %517 = and i32 %516, 16777216
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %529

519:                                              ; preds = %515
  %520 = call i32 @ext4_dirblock_csum_verify(ptr noundef %7, ptr noundef nonnull %499) #9
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %529

522:                                              ; preds = %519
  %523 = load i64, ptr %416, align 8
  call void (ptr, ptr, i32, i64, ptr, ...) @__ext4_error_file(ptr noundef %0, ptr noundef nonnull @__func__.ext4_readdir, i32 noundef 220, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef %523) #9
  %524 = load i32, ptr %424, align 16
  %525 = sub i32 %524, %457
  %526 = zext i32 %525 to i64
  %527 = load i64, ptr %416, align 8
  %528 = add i64 %527, %526
  store i64 %528, ptr %416, align 8
  call void @__brelse(ptr noundef nonnull %499) #9
  br label %681

529:                                              ; preds = %519, %515
  %530 = load volatile i32, ptr %499, align 4
  %531 = and i32 %530, 16777216
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %529
  call void @_set_bit(i32 noundef 24, ptr noundef nonnull %499) #9
  br label %534

534:                                              ; preds = %533, %529
  %535 = load i64, ptr %438, align 8
  %536 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %439, ptr elementtype(i64) %439) #9, !srcloc !10
  %537 = lshr i64 %536, 1
  %538 = icmp eq i64 %537, %535
  br i1 %538, label %591, label %539

539:                                              ; preds = %534
  %540 = load i32, ptr %424, align 16
  %541 = icmp ne i32 %540, 0
  %542 = icmp ne i32 %457, 0
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %544, label %566

544:                                              ; preds = %539
  %545 = getelementptr inbounds %struct.buffer_head, ptr %499, i32 0, i32 5
  %546 = load ptr, ptr %545, align 4
  br label %552

547:                                              ; preds = %563
  %548 = add i32 %553, %557
  %549 = icmp ult i32 %548, %540
  %550 = icmp ult i32 %548, %457
  %551 = select i1 %549, i1 %550, i1 false
  br i1 %551, label %552, label %566

552:                                              ; preds = %547, %544
  %553 = phi i32 [ 0, %544 ], [ %548, %547 ]
  %554 = getelementptr i8, ptr %546, i32 %553
  %555 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %554, i32 0, i32 1
  %556 = load i16, ptr %555, align 4
  %557 = zext i16 %556 to i32
  br i1 %440, label %563, label %558

558:                                              ; preds = %552
  %559 = load i32, ptr %10, align 4
  %560 = and i32 %559, 49152
  %561 = icmp eq i32 %560, 49152
  %562 = select i1 %561, i32 20, i32 12
  br label %563

563:                                              ; preds = %558, %552
  %564 = phi i32 [ 12, %552 ], [ %562, %558 ]
  %565 = icmp ugt i32 %564, %557
  br i1 %565, label %566, label %547

566:                                              ; preds = %563, %547, %539
  %567 = phi i32 [ 0, %539 ], [ %553, %563 ], [ %548, %547 ]
  %568 = load i64, ptr %416, align 8
  %569 = sub i32 0, %540
  %570 = zext i32 %569 to i64
  %571 = and i64 %568, %570
  %572 = zext i32 %567 to i64
  %573 = or i64 %571, %572
  store i64 %573, ptr %416, align 8
  %574 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %439, ptr elementtype(i64) %439) #9, !srcloc !10
  br label %575

575:                                              ; preds = %586, %566
  %576 = phi i64 [ %574, %566 ], [ %587, %586 ]
  %577 = and i64 %576, 1
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %580, label %579

579:                                              ; preds = %575
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  br label %589

580:                                              ; preds = %575
  %581 = or i64 %576, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %439) #9, !srcloc !13
  br label %582

582:                                              ; preds = %582, %580
  %583 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %439, ptr %439, i64 %576, i64 %581, ptr elementtype(i64) %439) #9, !srcloc !14
  %584 = extractvalue { i32, i64 } %583, 0
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %582

586:                                              ; preds = %582
  %587 = extractvalue { i32, i64 } %583, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %588 = icmp eq i64 %587, %576
  br i1 %588, label %589, label %575, !prof !9

589:                                              ; preds = %586, %579
  %590 = lshr i64 %576, 1
  store i64 %590, ptr %438, align 8
  br label %591

591:                                              ; preds = %589, %534
  %592 = phi i32 [ %457, %534 ], [ %567, %589 ]
  %593 = load i64, ptr %416, align 8
  %594 = load i64, ptr %417, align 8
  %595 = icmp slt i64 %593, %594
  br i1 %595, label %596, label %667

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.buffer_head, ptr %499, i32 0, i32 5
  %598 = getelementptr inbounds %struct.buffer_head, ptr %499, i32 0, i32 4
  %599 = load i32, ptr %424, align 16
  %600 = icmp ult i32 %592, %599
  br i1 %600, label %604, label %667

601:                                              ; preds = %660
  %602 = load i32, ptr %424, align 16
  %603 = icmp ult i32 %623, %602
  br i1 %603, label %604, label %667

604:                                              ; preds = %601, %596
  %605 = phi i32 [ %623, %601 ], [ %592, %596 ]
  %606 = load ptr, ptr %597, align 4
  %607 = getelementptr i8, ptr %606, i32 %605
  %608 = load i32, ptr %598, align 8
  %609 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_readdir, i32 noundef 260, ptr noundef %7, ptr noundef %0, ptr noundef %607, ptr noundef nonnull %499, ptr noundef %606, i32 noundef %608, i32 noundef %605)
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %619, label %611, !prof !9

611:                                              ; preds = %604
  %612 = load i64, ptr %416, align 8
  %613 = load i32, ptr %424, align 16
  %614 = add i32 %613, -1
  %615 = zext i32 %614 to i64
  %616 = or i64 %612, %615
  %617 = add i64 %616, 1
  store i64 %617, ptr %416, align 8
  %618 = load i64, ptr %417, align 8
  br label %667

619:                                              ; preds = %604
  %620 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %607, i32 0, i32 1
  %621 = load i16, ptr %620, align 4
  %622 = zext i16 %621 to i32
  %623 = add i32 %605, %622
  %624 = load i32, ptr %607, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %660, label %626

626:                                              ; preds = %619
  %627 = load i32, ptr %10, align 4
  %628 = and i32 %627, 16384
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %678

630:                                              ; preds = %626
  %631 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %607, i32 0, i32 4
  %632 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %607, i32 0, i32 2
  %633 = load i8, ptr %632, align 2
  %634 = zext i8 %633 to i32
  %635 = zext i32 %624 to i64
  %636 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %607, i32 0, i32 3
  %637 = load i8, ptr %636, align 1
  %638 = load ptr, ptr %15, align 4
  %639 = getelementptr inbounds %struct.ext4_sb_info, ptr %638, i32 0, i32 15
  %640 = load ptr, ptr %639, align 4
  %641 = getelementptr inbounds %struct.ext4_super_block, ptr %640, i32 0, i32 29
  %642 = load i32, ptr %641, align 8
  %643 = and i32 %642, 2
  %644 = icmp ne i32 %643, 0
  %645 = icmp ult i8 %637, 8
  %646 = and i1 %645, %644
  br i1 %646, label %647, label %651

647:                                              ; preds = %630
  %648 = zext i8 %637 to i32
  %649 = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %648
  %650 = load i8, ptr %649, align 1
  br label %651

651:                                              ; preds = %647, %630
  %652 = phi i8 [ %650, %647 ], [ 0, %630 ]
  %653 = zext i8 %652 to i32
  %654 = load ptr, ptr %1, align 8
  %655 = load i64, ptr %416, align 8
  %656 = call i32 %654(ptr noundef %1, ptr noundef %631, i32 noundef %634, i64 noundef %655, i64 noundef %635, i32 noundef %653) #9
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %676

658:                                              ; preds = %651
  %659 = load i16, ptr %620, align 4
  br label %660

660:                                              ; preds = %658, %619
  %661 = phi i16 [ %659, %658 ], [ %621, %619 ]
  %662 = zext i16 %661 to i64
  %663 = load i64, ptr %416, align 8
  %664 = add i64 %663, %662
  store i64 %664, ptr %416, align 8
  %665 = load i64, ptr %417, align 8
  %666 = icmp slt i64 %664, %665
  br i1 %666, label %601, label %667

667:                                              ; preds = %660, %611, %601, %596, %591
  %668 = phi i64 [ %594, %591 ], [ %618, %611 ], [ %594, %596 ], [ %665, %601 ], [ %665, %660 ]
  %669 = phi i64 [ %593, %591 ], [ %617, %611 ], [ %593, %596 ], [ %664, %601 ], [ %664, %660 ]
  %670 = icmp slt i64 %669, %668
  br i1 %670, label %671, label %675

671:                                              ; preds = %667
  call void @up_read(ptr noundef %441) #9
  call void @down_read(ptr noundef %441) #9
  %672 = load i32, ptr %10, align 4
  %673 = and i32 %672, 16
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %676

675:                                              ; preds = %671, %667
  call void @__brelse(ptr noundef nonnull %499) #9
  br label %681

676:                                              ; preds = %671, %651, %505
  %677 = phi ptr [ %499, %651 ], [ null, %505 ], [ %499, %671 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %685

678:                                              ; preds = %626, %501, %447
  %679 = phi i32 [ %502, %501 ], [ -95, %626 ], [ -512, %447 ]
  %680 = phi ptr [ null, %501 ], [ %499, %626 ], [ null, %447 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %685

681:                                              ; preds = %675, %522, %510, %464
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  %682 = load i64, ptr %416, align 8
  %683 = load i64, ptr %417, align 8
  %684 = icmp slt i64 %682, %683
  br i1 %684, label %443, label %690

685:                                              ; preds = %678, %676
  %686 = phi i32 [ %679, %678 ], [ 0, %676 ]
  %687 = phi ptr [ %680, %678 ], [ %677, %676 ]
  %688 = icmp eq ptr %687, null
  br i1 %688, label %690, label %689

689:                                              ; preds = %685
  call void @__brelse(ptr noundef nonnull %687) #9
  br label %690

690:                                              ; preds = %689, %685, %681, %415, %411, %407, %363, %71, %51, %2
  %691 = phi i32 [ %408, %407 ], [ -95, %2 ], [ %366, %363 ], [ -95, %411 ], [ %686, %685 ], [ %686, %689 ], [ -12, %51 ], [ 0, %71 ], [ 0, %415 ], [ 0, %681 ]
  ret i32 %691
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_release_dir(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @rb_first_postorder(ptr noundef nonnull %4) #9
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -8
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %26, label %17

12:                                               ; preds = %21
  %13 = getelementptr i8, ptr %20, i32 -8
  %14 = icmp eq ptr %20, null
  %15 = icmp eq ptr %13, null
  %16 = or i1 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %12, %6
  %18 = phi ptr [ %13, %12 ], [ %9, %6 ]
  %19 = getelementptr inbounds %struct.fname, ptr %18, i32 0, i32 2
  %20 = tail call ptr @rb_next_postorder(ptr noundef %19) #9
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %18, %17 ], [ %24, %21 ]
  %23 = getelementptr inbounds %struct.fname, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef nonnull %22) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %12, label %21

26:                                               ; preds = %12, %6
  store ptr null, ptr %4, align 4
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %27

27:                                               ; preds = %26, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_sync_file(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_inline_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_bread(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_dirblock_csum_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_htree_fill_tree(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 833046, i64 833067}
!11 = !{i64 2152544124}
!12 = !{i64 2148503263}
!13 = !{i64 843432, i64 2148333403, i64 2148333429, i64 2148333476, i64 2148333498, i64 2148333526, i64 2148333546}
!14 = !{i64 836661, i64 836687, i64 836715, i64 836733, i64 836751, i64 836773}
!15 = !{i64 2148503465}
!16 = !{!"auto-init"}
