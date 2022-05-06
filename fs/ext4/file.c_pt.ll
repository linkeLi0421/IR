; ModuleID = '/llk/IR/fs/ext4/file.c_pt.bc'
source_filename = "../fs/ext4/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.iomap_dio_ops = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.34, %union.anon.35 }
%union.anon.34 = type { ptr }
%union.anon.35 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.25, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
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

@ext4_iomap_report_ops = external dso_local constant %struct.iomap_ops, align 4
@ext4_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @ext4_llseek, ptr null, ptr null, ptr @ext4_file_read_iter, ptr @ext4_file_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr @ext4_ioctl, ptr null, ptr @ext4_file_mmap, i32 524288, ptr @ext4_file_open, ptr null, ptr @ext4_release_file, ptr @ext4_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @ext4_fallocate, ptr null, ptr null, ptr null, ptr null }, align 4
@ext4_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext4_setattr, ptr @ext4_file_getattr, ptr @ext4_listxattr, ptr @ext4_fiemap, ptr null, ptr null, ptr null, ptr null, ptr @ext4_fileattr_set, ptr @ext4_fileattr_get, [36 x i8] undef }, align 64
@ext4_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@__func__.ext4_dio_write_iter = private unnamed_addr constant [20 x i8] c"ext4_dio_write_iter\00", align 1
@ext4_iomap_overwrite_ops = external dso_local constant %struct.iomap_ops, align 4
@ext4_dio_write_ops = internal constant %struct.iomap_dio_ops { ptr @ext4_dio_write_end_io, ptr null }, align 4
@ext4_handle_inode_extension.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"fs/ext4/file.c\00", align 1
@__func__.ext4_handle_inode_extension = private unnamed_addr constant [28 x i8] c"ext4_handle_inode_extension\00", align 1
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@ext4_file_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @ext4_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, align 4
@__func__.ext4_sample_last_mounted = private unnamed_addr constant [25 x i8] c"ext4_sample_last_mounted\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ext4_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -124
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 13
  br label %19

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %16, %13 ]
  %21 = load i64, ptr %20, align 8
  switch i32 %2, label %22 [
    i32 4, label %40
    i32 3, label %43
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %24 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %25

25:                                               ; preds = %33, %22
  %26 = load volatile i32, ptr %23, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %29, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %30 = load volatile i32, ptr %23, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %29

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %26, %25 ], [ %30, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %35 = load i64, ptr %24, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %36 = load volatile i32, ptr %23, align 4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %38, label %25

38:                                               ; preds = %33
  %39 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %21, i64 noundef %35) #8
  br label %52

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_read(ptr noundef %41) #8
  %42 = tail call i64 @iomap_seek_hole(ptr noundef %6, i64 noundef %1, ptr noundef nonnull @ext4_iomap_report_ops) #8
  br label %46

43:                                               ; preds = %19
  %44 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_read(ptr noundef %44) #8
  %45 = tail call i64 @iomap_seek_data(ptr noundef %6, i64 noundef %1, ptr noundef nonnull @ext4_iomap_report_ops) #8
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi ptr [ %44, %43 ], [ %41, %40 ]
  %48 = phi i64 [ %45, %43 ], [ %42, %40 ]
  tail call void @up_read(ptr noundef %47) #8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i64 @vfs_setpos(ptr noundef %0, i64 noundef %48, i64 noundef %21) #8
  br label %52

52:                                               ; preds = %50, %46, %38
  %53 = phi i64 [ %39, %38 ], [ %51, %50 ], [ %48, %46 ]
  ret i64 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_seek_hole(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_seek_data(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_file_read_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 48
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59, !prof !13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 131072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %18
  %24 = and i32 %20, 8
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  br i1 %25, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @down_read_trylock(ptr noundef %26) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %59, label %31

30:                                               ; preds = %23
  tail call void @down_read(ptr noundef %26) #8
  br label %31

31:                                               ; preds = %30, %27
  %32 = tail call i32 @ext4_inode_journal_mode(ptr noundef %5) #8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %5, i32 -124
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %5, i32 478
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %31
  tail call void @up_read(ptr noundef %26) #8
  %45 = load i32, ptr %19, align 8
  %46 = and i32 %45, -131073
  store i32 %46, ptr %19, align 8
  %47 = tail call i32 @generic_file_read_iter(ptr noundef %0, ptr noundef %1) #8
  br label %59

48:                                               ; preds = %40, %35
  %49 = tail call i32 @iomap_dio_rw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ext4_iomap_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  tail call void @up_read(ptr noundef %26) #8
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 262144
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %56) #8
  br label %59

57:                                               ; preds = %18
  %58 = tail call i32 @generic_file_read_iter(ptr noundef %0, ptr noundef %1) #8
  br label %59

59:                                               ; preds = %57, %55, %48, %44, %27, %14, %2
  %60 = phi i32 [ %58, %57 ], [ -5, %2 ], [ 0, %14 ], [ %47, %44 ], [ -11, %27 ], [ %49, %48 ], [ %49, %55 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_file_write_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ext4_map_blocks, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 48
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %455, !prof !13

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 131072
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %453, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %26 = load i32, ptr %25, align 16
  %27 = add i32 %26, -1
  %28 = tail call i32 @iov_iter_alignment(ptr noundef %1) #8
  %29 = zext i32 %28 to i64
  %30 = or i64 %22, %29
  %31 = zext i32 %27 to i64
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  %34 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %35 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %36

36:                                               ; preds = %44, %20
  %37 = load volatile i32, ptr %34, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %40, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %41 = load volatile i32, ptr %34, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %40

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %37, %36 ], [ %41, %40 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %46 = load i64, ptr %35, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %47 = load volatile i32, ptr %34, align 4
  %48 = icmp eq i32 %47, %45
  br i1 %48, label %49, label %36

49:                                               ; preds = %44
  %50 = zext i32 %24 to i64
  %51 = xor i1 %33, true
  %52 = add i64 %22, %50
  %53 = icmp sgt i64 %52, %46
  %54 = load i32, ptr %16, align 8
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %53, label %58, label %57

57:                                               ; preds = %49
  br i1 %56, label %68, label %59

58:                                               ; preds = %49
  br i1 %56, label %71, label %64

59:                                               ; preds = %57
  br i1 %33, label %64, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  %62 = tail call i32 @down_read_trylock(ptr noundef %61) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %455, label %73

64:                                               ; preds = %59, %58
  %65 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  %66 = tail call i32 @down_write_trylock(ptr noundef %65) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %455, label %73

68:                                               ; preds = %57
  br i1 %33, label %71, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_read(ptr noundef %70) #8
  br label %73

71:                                               ; preds = %68, %58
  %72 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %72) #8
  br label %73

73:                                               ; preds = %71, %69, %64, %60
  %74 = phi i1 [ true, %69 ], [ false, %71 ], [ true, %60 ], [ false, %64 ]
  %75 = zext i1 %74 to i8
  %76 = tail call i32 @ext4_inode_journal_mode(ptr noundef %6) #8
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = getelementptr i8, ptr %6, i32 -124
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 268435456
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = getelementptr i8, ptr %6, i32 478
  %86 = load i16, ptr %85, align 2
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84, %73
  %89 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  br i1 %74, label %90, label %91

90:                                               ; preds = %88
  tail call void @up_read(ptr noundef %89) #8
  br label %92

91:                                               ; preds = %88
  tail call void @up_write(ptr noundef %89) #8
  br label %92

92:                                               ; preds = %91, %90
  %93 = tail call fastcc i32 @ext4_buffered_write_iter(ptr noundef %0, ptr noundef %1) #8
  br label %455

94:                                               ; preds = %84, %79
  %95 = load ptr, ptr %0, align 8
  %96 = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %229, !prof !13

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 22
  %104 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 13
  %105 = getelementptr i8, ptr %97, i32 -32
  %106 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 19
  %107 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 1
  %108 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 2
  %109 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 3
  %110 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 24
  br label %111

111:                                              ; preds = %217, %102
  %112 = phi i8 [ 0, %102 ], [ %167, %217 ]
  %113 = phi i8 [ %75, %102 ], [ 0, %217 ]
  %114 = phi ptr [ %97, %102 ], [ %220, %217 ]
  %115 = call i32 @generic_write_checks(ptr noundef %0, ptr noundef %1) #8
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %229, label %117

117:                                              ; preds = %111
  %118 = getelementptr i8, ptr %114, i32 -124
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 524288
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %23, align 8
  br label %140

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.inode, ptr %114, i32 0, i32 8
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 27
  %128 = load ptr, ptr %127, align 4
  %129 = load i64, ptr %21, align 8
  %130 = getelementptr inbounds %struct.ext4_sb_info, ptr %128, i32 0, i32 13
  %131 = load i64, ptr %130, align 8
  %132 = icmp sgt i64 %131, %129
  br i1 %132, label %133, label %229

133:                                              ; preds = %124
  %134 = sub i64 %131, %129
  %135 = load i32, ptr %23, align 8
  %136 = zext i32 %135 to i64
  %137 = icmp ult i64 %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = trunc i64 %134 to i32
  store i32 %139, ptr %23, align 8
  br label %140

140:                                              ; preds = %138, %133, %122
  %141 = phi i32 [ %123, %122 ], [ %139, %138 ], [ %135, %133 ]
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %229, label %143

143:                                              ; preds = %140
  %144 = load i64, ptr %21, align 8
  br label %145

145:                                              ; preds = %153, %143
  %146 = load volatile i32, ptr %103, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %149, %145
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %150 = load volatile i32, ptr %103, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %149

153:                                              ; preds = %149, %145
  %154 = phi i32 [ %146, %145 ], [ %150, %149 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %155 = load i64, ptr %104, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %156 = load volatile i32, ptr %103, align 4
  %157 = icmp eq i32 %156, %154
  br i1 %157, label %158, label %145

158:                                              ; preds = %153
  %159 = zext i32 %141 to i64
  %160 = add i64 %144, %159
  %161 = icmp sgt i64 %160, %155
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = load i64, ptr %105, align 8
  %164 = icmp sgt i64 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %158
  br label %166

166:                                              ; preds = %165, %162
  %167 = phi i8 [ 1, %165 ], [ %112, %162 ]
  %168 = icmp eq i8 %113, 0
  br i1 %168, label %225, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %98, align 4
  %171 = and i32 %170, 4096
  %172 = icmp ne i32 %171, 0
  %173 = icmp eq i8 %167, 0
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %175, label %213

175:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false) #8, !annotation !14
  %176 = load i8, ptr %106, align 2
  br label %177

177:                                              ; preds = %185, %175
  %178 = load volatile i32, ptr %103, align 4
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %181, %177
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %182 = load volatile i32, ptr %103, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %181

185:                                              ; preds = %181, %177
  %186 = phi i32 [ %178, %177 ], [ %182, %181 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %187 = load i64, ptr %104, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %188 = load volatile i32, ptr %103, align 4
  %189 = icmp eq i32 %188, %186
  br i1 %189, label %190, label %177

190:                                              ; preds = %185
  %191 = icmp sgt i64 %160, %187
  br i1 %191, label %192, label %193

192:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %213

193:                                              ; preds = %190
  %194 = zext i8 %176 to i32
  %195 = zext i8 %176 to i64
  %196 = ashr i64 %144, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, ptr %107, align 8
  %198 = shl nuw i32 1, %194
  %199 = sext i32 %198 to i64
  %200 = add i64 %160, -1
  %201 = add i64 %200, %199
  %202 = sub nsw i64 0, %199
  %203 = and i64 %201, %202
  %204 = ashr i64 %203, %195
  %205 = sub i64 %204, %196
  %206 = trunc i64 %205 to i32
  store i32 %206, ptr %108, align 4
  %207 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %97, ptr noundef nonnull %3, i32 noundef 0) #8
  %208 = icmp eq i32 %207, %206
  %209 = load i32, ptr %109, align 8
  %210 = and i32 %209, 16
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %208, i1 %211, i1 false
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br i1 %212, label %225, label %213

213:                                              ; preds = %193, %192, %169
  %214 = load i32, ptr %16, align 8
  %215 = and i32 %214, 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %213
  call void @up_read(ptr noundef %110) #8
  call void @down_write(ptr noundef %110) #8
  %218 = load ptr, ptr %0, align 8
  %219 = getelementptr inbounds %struct.file, ptr %218, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.inode, ptr %220, i32 0, i32 4
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %111, label %237, !prof !13

225:                                              ; preds = %193, %166
  %226 = phi i8 [ 0, %193 ], [ %167, %166 ]
  %227 = call i32 @file_modified(ptr noundef %95) #8
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %225, %140, %124, %111, %94
  %230 = phi i8 [ %113, %225 ], [ %75, %94 ], [ %113, %111 ], [ %113, %124 ], [ %113, %140 ]
  %231 = phi i32 [ %227, %225 ], [ -1, %94 ], [ %141, %140 ], [ -27, %124 ], [ %115, %111 ]
  %232 = icmp eq i8 %230, 0
  %233 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 24
  br i1 %232, label %237, label %234

234:                                              ; preds = %229, %213
  %235 = phi ptr [ %233, %229 ], [ %110, %213 ]
  %236 = phi i32 [ %231, %229 ], [ -11, %213 ]
  call void @up_read(ptr noundef %235) #8
  br label %455

237:                                              ; preds = %229, %217
  %238 = phi ptr [ %233, %229 ], [ %110, %217 ]
  %239 = phi i32 [ %231, %229 ], [ -1, %217 ]
  call void @up_write(ptr noundef %238) #8
  br label %455

240:                                              ; preds = %225
  %241 = load i32, ptr %16, align 8
  %242 = and i32 %241, 8
  %243 = icmp eq i32 %242, 0
  %244 = icmp eq i8 %226, 0
  %245 = select i1 %51, i1 %244, i1 false
  %246 = select i1 %243, i1 true, i1 %245
  br i1 %246, label %247, label %420

247:                                              ; preds = %240
  %248 = load i64, ptr %21, align 8
  br i1 %33, label %249, label %250

249:                                              ; preds = %247
  call void @inode_dio_wait(ptr noundef %6) #8
  br label %250

250:                                              ; preds = %249, %247
  br i1 %244, label %269, label %251

251:                                              ; preds = %250
  %252 = load ptr, ptr %7, align 4
  %253 = getelementptr inbounds %struct.super_block, ptr %252, i32 0, i32 27
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.ext4_sb_info, ptr %254, i32 0, i32 11
  %256 = load i32, ptr %255, align 4
  %257 = shl i32 %256, 3
  %258 = call ptr @__ext4_journal_start_sb(ptr noundef %252, i32 noundef 547, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %257) #8
  %259 = icmp ugt ptr %258, inttoptr (i32 -4096 to ptr)
  br i1 %259, label %260, label %262

260:                                              ; preds = %251
  %261 = ptrtoint ptr %258 to i32
  br label %420

262:                                              ; preds = %251
  %263 = call i32 @ext4_orphan_add(ptr noundef %258, ptr noundef %6) #8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_dio_write_iter, i32 noundef 555, ptr noundef %258) #8
  br label %420

267:                                              ; preds = %262
  %268 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_dio_write_iter, i32 noundef 559, ptr noundef %258) #8
  br label %269

269:                                              ; preds = %267, %250
  %270 = select i1 %168, ptr @ext4_iomap_ops, ptr @ext4_iomap_overwrite_ops
  %271 = and i8 %226, 1
  %272 = icmp ne i8 %271, 0
  %273 = select i1 %33, i1 true, i1 %272
  %274 = zext i1 %273 to i32
  %275 = call i32 @iomap_dio_rw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %270, ptr noundef nonnull @ext4_dio_write_ops, i32 noundef %274, i32 noundef 0) #8
  %276 = icmp eq i32 %275, -15
  %277 = select i1 %276, i32 0, i32 %275
  br i1 %244, label %420, label %278

278:                                              ; preds = %269
  %279 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 19
  %280 = load i8, ptr %279, align 2
  br label %281

281:                                              ; preds = %289, %278
  %282 = load volatile i32, ptr %34, align 4
  %283 = and i32 %282, 1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %285, %281
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %286 = load volatile i32, ptr %34, align 4
  %287 = and i32 %286, 1
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %285

289:                                              ; preds = %285, %281
  %290 = phi i32 [ %282, %281 ], [ %286, %285 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %291 = load i64, ptr %35, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %292 = load volatile i32, ptr %34, align 4
  %293 = icmp eq i32 %292, %290
  br i1 %293, label %294, label %281

294:                                              ; preds = %289
  %295 = getelementptr i8, ptr %6, i32 -32
  %296 = load i64, ptr %295, align 8
  %297 = icmp slt i64 %291, %296
  %298 = load i1, ptr @ext4_handle_inode_extension.__already_done, align 1
  %299 = xor i1 %298, true
  %300 = select i1 %297, i1 %299, i1 false
  br i1 %300, label %301, label %303, !prof !15

301:                                              ; preds = %294
  store i1 true, ptr @ext4_handle_inode_extension.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #8
  %302 = load i64, ptr %295, align 8
  br label %303

303:                                              ; preds = %301, %294
  %304 = phi i64 [ %302, %301 ], [ %296, %294 ]
  %305 = add i64 %248, %159
  %306 = icmp sgt i64 %305, %304
  br i1 %306, label %330, label %307

307:                                              ; preds = %303
  %308 = getelementptr i8, ptr %6, i32 -96
  %309 = load volatile ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, %308
  br i1 %310, label %420, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %313 = load i32, ptr %312, align 8
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %420, label %315

315:                                              ; preds = %311
  %316 = load ptr, ptr %7, align 4
  %317 = getelementptr inbounds %struct.super_block, ptr %316, i32 0, i32 27
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr inbounds %struct.ext4_sb_info, ptr %318, i32 0, i32 11
  %320 = load i32, ptr %319, align 4
  %321 = shl i32 %320, 3
  %322 = call ptr @__ext4_journal_start_sb(ptr noundef %316, i32 noundef 306, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %321) #8
  %323 = icmp ugt ptr %322, inttoptr (i32 -4096 to ptr)
  br i1 %323, label %324, label %327

324:                                              ; preds = %315
  %325 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %6) #8
  %326 = ptrtoint ptr %322 to i32
  br label %420

327:                                              ; preds = %315
  %328 = call i32 @ext4_orphan_del(ptr noundef %322, ptr noundef %6) #8
  %329 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 314, ptr noundef %322) #8
  br label %420

330:                                              ; preds = %303
  %331 = icmp slt i32 %277, 0
  br i1 %331, label %406, label %332

332:                                              ; preds = %330
  %333 = load ptr, ptr %7, align 4
  %334 = getelementptr inbounds %struct.super_block, ptr %333, i32 0, i32 27
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.ext4_sb_info, ptr %335, i32 0, i32 11
  %337 = load i32, ptr %336, align 4
  %338 = shl i32 %337, 3
  %339 = call ptr @__ext4_journal_start_sb(ptr noundef %333, i32 noundef 323, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %338) #8
  %340 = icmp ugt ptr %339, inttoptr (i32 -4096 to ptr)
  br i1 %340, label %341, label %343

341:                                              ; preds = %332
  %342 = ptrtoint ptr %339 to i32
  br label %406

343:                                              ; preds = %332
  %344 = zext i32 %277 to i64
  %345 = add i64 %248, %344
  %346 = load i64, ptr %35, align 8
  %347 = icmp slt i64 %346, %345
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %349 = load i32, ptr %34, align 4
  %350 = add i32 %349, 1
  store i32 %350, ptr %34, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !17
  store i64 %345, ptr %35, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !18
  %351 = load i32, ptr %34, align 4
  %352 = add i32 %351, 1
  store i32 %352, ptr %34, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %353 = load i64, ptr %295, align 8
  %354 = icmp slt i64 %353, %345
  br i1 %354, label %358, label %376

355:                                              ; preds = %343
  %356 = load i64, ptr %295, align 8
  %357 = icmp slt i64 %356, %345
  br i1 %357, label %358, label %381

358:                                              ; preds = %355, %348
  %359 = load i16, ptr %6, align 8
  %360 = and i16 %359, -4096
  %361 = icmp eq i16 %360, -32768
  br i1 %361, label %362, label %370

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  %364 = load volatile i32, ptr %363, align 4
  %365 = icmp eq i32 %364, 0
  %366 = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  %367 = xor i1 %366, true
  %368 = select i1 %365, i1 %367, i1 false
  br i1 %368, label %369, label %370, !prof !15

369:                                              ; preds = %362
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3415, i32 noundef 9, ptr noundef null) #8
  br label %370

370:                                              ; preds = %369, %362, %358
  %371 = getelementptr i8, ptr %6, i32 -24
  call void @down_write(ptr noundef %371) #8
  %372 = load i64, ptr %295, align 8
  %373 = icmp slt i64 %372, %345
  br i1 %373, label %374, label %375

374:                                              ; preds = %370
  store volatile i64 %345, ptr %295, align 8
  br label %375

375:                                              ; preds = %374, %370
  call void @up_write(ptr noundef %371) #8
  br label %376

376:                                              ; preds = %375, %348
  %377 = call i32 @__ext4_mark_inode_dirty(ptr noundef %339, ptr noundef %6, ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 330) #8
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %381, label %379, !prof !13

379:                                              ; preds = %376
  %380 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 333, ptr noundef %339) #8
  br label %406

381:                                              ; preds = %376, %355
  %382 = zext i8 %280 to i32
  %383 = shl nuw i32 1, %382
  %384 = zext i32 %383 to i64
  %385 = add nsw i64 %384, -1
  %386 = add i64 %385, %345
  %387 = sub nsw i64 0, %384
  %388 = and i64 %386, %387
  %389 = trunc i64 %388 to i32
  %390 = add i64 %385, %305
  %391 = and i64 %390, %387
  %392 = trunc i64 %391 to i32
  %393 = icmp ult i32 %389, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %381
  %395 = call i32 @ext4_can_truncate(ptr noundef %6) #8
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %404

397:                                              ; preds = %394, %381
  %398 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %399 = load i32, ptr %398, align 8
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %418, label %401

401:                                              ; preds = %397
  %402 = call i32 @ext4_orphan_del(ptr noundef %339, ptr noundef %6) #8
  %403 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 352, ptr noundef %339) #8
  br label %420

404:                                              ; preds = %394
  %405 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 352, ptr noundef %339) #8
  br label %406

406:                                              ; preds = %404, %379, %341, %330
  %407 = phi i32 [ %275, %330 ], [ %342, %341 ], [ %377, %379 ], [ %277, %404 ]
  %408 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %409 = load ptr, ptr %408, align 8
  %410 = getelementptr inbounds %struct.address_space, ptr %409, i32 0, i32 2
  call void @down_write(ptr noundef %410) #8
  %411 = load i64, ptr %35, align 8
  call void @truncate_inode_pages(ptr noundef %409, i64 noundef %411) #8
  %412 = call i32 @ext4_truncate(ptr noundef %6) #8
  call void @up_write(ptr noundef %410) #8
  %413 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %414 = load i32, ptr %413, align 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %420, label %416

416:                                              ; preds = %406
  %417 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %6) #8
  br label %420

418:                                              ; preds = %397
  %419 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 352, ptr noundef %339) #8
  br label %420

420:                                              ; preds = %418, %416, %406, %401, %327, %324, %311, %307, %269, %265, %260, %240
  %421 = phi i32 [ %261, %260 ], [ %263, %265 ], [ %277, %269 ], [ %326, %324 ], [ %277, %327 ], [ %277, %311 ], [ %277, %307 ], [ %407, %416 ], [ %407, %406 ], [ %277, %401 ], [ %277, %418 ], [ -11, %240 ]
  %422 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  br i1 %168, label %424, label %423

423:                                              ; preds = %420
  call void @up_read(ptr noundef %422) #8
  br label %425

424:                                              ; preds = %420
  call void @up_write(ptr noundef %422) #8
  br label %425

425:                                              ; preds = %424, %423
  %426 = icmp sgt i32 %421, -1
  br i1 %426, label %427, label %455

427:                                              ; preds = %425
  %428 = load i32, ptr %23, align 8
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %455, label %430

430:                                              ; preds = %427
  %431 = load i64, ptr %21, align 8
  %432 = call fastcc i32 @ext4_buffered_write_iter(ptr noundef %0, ptr noundef %1) #8
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %455, label %434

434:                                              ; preds = %430
  %435 = add nuw i32 %432, %421
  %436 = zext i32 %432 to i64
  %437 = add i64 %431, -1
  %438 = add i64 %437, %436
  %439 = load ptr, ptr %0, align 8
  %440 = getelementptr inbounds %struct.file, ptr %439, i32 0, i32 17
  %441 = load ptr, ptr %440, align 8
  %442 = call i32 @filemap_write_and_wait_range(ptr noundef %441, i64 noundef %431, i64 noundef %438) #8
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %455

444:                                              ; preds = %434
  %445 = load ptr, ptr %0, align 8
  %446 = getelementptr inbounds %struct.file, ptr %445, i32 0, i32 17
  %447 = load ptr, ptr %446, align 8
  %448 = lshr i64 %431, 12
  %449 = trunc i64 %448 to i32
  %450 = lshr i64 %438, 12
  %451 = trunc i64 %450 to i32
  %452 = call i32 @invalidate_mapping_pages(ptr noundef %447, i32 noundef %449, i32 noundef %451) #8
  br label %455

453:                                              ; preds = %15
  %454 = tail call fastcc i32 @ext4_buffered_write_iter(ptr noundef %0, ptr noundef %1)
  br label %455

455:                                              ; preds = %453, %444, %434, %430, %427, %425, %237, %234, %92, %64, %60, %2
  %456 = phi i32 [ %454, %453 ], [ -5, %2 ], [ %93, %92 ], [ -11, %60 ], [ -11, %64 ], [ %432, %430 ], [ %421, %427 ], [ %421, %425 ], [ %236, %234 ], [ %239, %237 ], [ %435, %434 ], [ %435, %444 ]
  ret i32 %456
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iocb_bio_iopoll(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_file_mmap(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 48
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28, !prof !13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8388608
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 262144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @ext4_file_vm_ops, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %14, %2
  %29 = phi i32 [ 0, %26 ], [ -5, %2 ], [ -95, %14 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_file_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.path, align 8
  %4 = alloca [64 x i8], align 1
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 48
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %82, !prof !13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 19
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %59, !prof !15

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = tail call fastcc zeroext i1 @sb_start_intwrite_trylock(ptr noundef %6) #8
  br i1 %26, label %27, label %59

27:                                               ; preds = %25
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 0, ptr noundef %29) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #8
  store ptr %15, ptr %3, align 8
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = call ptr @d_path(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 64) #8
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  call fastcc void @sb_end_intwrite(ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %63

35:                                               ; preds = %27
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 3
  %40 = call ptr @__ext4_journal_start_sb(ptr noundef %6, i32 noundef 818, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %39) #8
  %41 = ptrtoint ptr %40 to i32
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 14
  %45 = load ptr, ptr %44, align 64
  %46 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_sample_last_mounted, i32 noundef 824, ptr noundef %40, ptr noundef %6, ptr noundef %45, i32 noundef 1) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load ptr, ptr %44, align 64
  call fastcc void @lock_buffer(ptr noundef %49) #8
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_super_block, ptr %51, i32 0, i32 33
  %53 = call ptr @strncpy(ptr noundef %52, ptr noundef %32, i32 noundef 64) #8
  call void @ext4_superblock_csum_set(ptr noundef %6) #8
  %54 = load ptr, ptr %44, align 64
  call void @unlock_buffer(ptr noundef %54) #8
  %55 = load ptr, ptr %44, align 64
  %56 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_sample_last_mounted, i32 noundef 832, ptr noundef %40, ptr noundef null, ptr noundef %55) #8
  br label %57

57:                                               ; preds = %48, %43
  %58 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_sample_last_mounted, i32 noundef 834, ptr noundef %40) #8
  br label %60

59:                                               ; preds = %25, %20, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %63

60:                                               ; preds = %57, %35
  %61 = phi i32 [ %41, %35 ], [ %46, %57 ]
  call fastcc void @sb_end_intwrite(ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %60, %59, %34
  %64 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 81920
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = call i32 @ext4_inode_attach_jinode(ptr noundef %0) #8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %69, align 8
  br label %78

78:                                               ; preds = %76, %68
  %79 = phi i32 [ %77, %76 ], [ %70, %68 ]
  %80 = or i32 %79, 1207959552
  store i32 %80, ptr %69, align 8
  %81 = call i32 @generic_file_open(ptr noundef %0, ptr noundef %1) #8
  br label %82

82:                                               ; preds = %78, %73, %63, %60, %2
  %83 = phi i32 [ %81, %78 ], [ -5, %2 ], [ %61, %60 ], [ -95, %63 ], [ %74, %73 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_release_file(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -128
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @ext4_alloc_da_blocks(ptr noundef %0) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %3) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 37
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 468
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 -24
  tail call void @down_write(ptr noundef %23) #8
  tail call void @ext4_discard_preallocations(ptr noundef %0, i32 noundef 0) #8
  tail call void @up_write(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %22, %18, %14, %9
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ext4_super_block, ptr %30, i32 0, i32 28
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %24
  %36 = getelementptr i8, ptr %0, i32 -124
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 4096
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @ext4_htree_free_dir_info(ptr noundef nonnull %42) #8
  br label %45

45:                                               ; preds = %44, %40, %35, %24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_sync_file(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_file_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_dio_rw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_buffered_write_iter(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @down_write(ptr noundef %11) #8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55, !prof !13

19:                                               ; preds = %10
  %20 = tail call i32 @generic_write_checks(ptr noundef %0, ptr noundef %1) #8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %55, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %14, i32 -124
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 524288
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  br label %48

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 13
  %38 = load i64, ptr %37, align 8
  %39 = icmp sgt i64 %38, %36
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = sub i64 %38, %36
  %42 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = trunc i64 %41 to i32
  store i32 %47, ptr %42, align 8
  br label %48

48:                                               ; preds = %46, %40, %27
  %49 = phi i32 [ %29, %27 ], [ %47, %46 ], [ %43, %40 ]
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 8
  %53 = tail call i32 @file_modified(ptr noundef %52) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %48, %30, %19, %10
  %56 = phi i32 [ -1, %10 ], [ %20, %19 ], [ -27, %30 ], [ %49, %48 ], [ %53, %51 ]
  tail call void @up_write(ptr noundef %11) #8
  br label %82

57:                                               ; preds = %51
  %58 = tail call ptr @inode_to_bdi(ptr noundef %5) #8
  %59 = tail call ptr @llvm.thread.pointer() #8
  %60 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 117
  store ptr %58, ptr %60, align 4
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = tail call i32 @generic_perform_write(ptr noundef %61, ptr noundef %1, i64 noundef %63) #8
  store ptr null, ptr %60, align 4
  tail call void @up_write(ptr noundef %11) #8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %82, !prof !13

66:                                               ; preds = %57
  %67 = zext i32 %64 to i64
  %68 = load i64, ptr %62, align 8
  %69 = add i64 %68, %67
  store i64 %69, ptr %62, align 8
  %70 = load i32, ptr %6, align 8
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %0, align 8
  %75 = add i64 %69, -1
  %76 = lshr i32 %70, 2
  %77 = and i32 %76, 1
  %78 = xor i32 %77, 1
  %79 = tail call i32 @vfs_fsync_range(ptr noundef %74, i64 noundef %68, i64 noundef %75, i32 noundef %78) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %66
  br label %82

82:                                               ; preds = %81, %73, %57, %55, %2
  %83 = phi i32 [ -95, %2 ], [ %64, %57 ], [ %56, %55 ], [ %79, %73 ], [ %64, %81 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_dio_write_end_io(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %4
  %12 = icmp eq i32 %1, 0
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @ext4_convert_unwritten_extents(ptr noundef null, ptr noundef %9, i64 noundef %6, i32 noundef %1) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16, %11
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 22
  %22 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  br label %23

23:                                               ; preds = %31, %19
  %24 = load volatile i32, ptr %21, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %27, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %28 = load volatile i32, ptr %21, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %24, %23 ], [ %28, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %33 = load i64, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %34 = load volatile i32, ptr %21, align 4
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %36, label %23

36:                                               ; preds = %31
  %37 = add i64 %6, %20
  %38 = icmp sgt i64 %37, %33
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %40 = load i32, ptr %21, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %21, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !17
  store i64 %37, ptr %22, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !18
  %42 = load i32, ptr %21, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %44

44:                                               ; preds = %39, %36, %16, %4
  %45 = phi i32 [ %2, %4 ], [ %17, %16 ], [ 0, %39 ], [ 0, %36 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_convert_unwritten_extents(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_can_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_perform_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_page_mkwrite(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_attach_jinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sb_start_intwrite_trylock(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17, !prof !13

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !21
  %7 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !22
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #8, !srcloc !23
  br label %19

17:                                               ; preds = %1
  %18 = tail call zeroext i1 @__percpu_down_read(ptr noundef %2, i1 noundef zeroext true) #8
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i1 [ true, %5 ], [ %18, %17 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %0) unnamed_addr #5 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !25
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #8, !srcloc !26
  %7 = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void @__lock_buffer(ptr noundef %0) #8
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sb_end_intwrite(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17, !prof !13

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !21
  %7 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !22
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #8, !srcloc !23
  br label %31

17:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !21
  %19 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #7, !srcloc !22
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #8, !srcloc !23
  %29 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 2, i32 2
  %30 = tail call i32 @rcuwait_wake_up(ptr noundef %29) #8
  br label %31

31:                                               ; preds = %17, %5
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_da_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_htree_free_dir_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

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
!9 = !{i64 2151302519}
!10 = !{i64 2151302361}
!11 = !{i64 2151302663}
!12 = !{i64 2149520557}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2151304301}
!17 = !{i64 2149520856}
!18 = !{i64 2149521157}
!19 = !{i64 2151311859}
!20 = !{i64 2151155947}
!21 = !{i64 319109, i64 319170}
!22 = !{i64 337809}
!23 = !{i64 322126}
!24 = !{i64 2151163564}
!25 = !{i64 423870, i64 2147913841, i64 2147913867, i64 2147913914, i64 2147913936, i64 2147913964, i64 2147913984}
!26 = !{i64 2147933718, i64 2147933750, i64 2147933779, i64 2147933813, i64 2147933844, i64 2147933867}
!27 = !{i64 2148035034}
!28 = !{i64 2151164195}
!29 = !{i64 2151172506}
!30 = !{i64 2151180724}
