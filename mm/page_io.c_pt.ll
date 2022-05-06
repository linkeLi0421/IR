; ModuleID = '/llk/IR/mm/page_io.c_pt.bc'
source_filename = "../mm/page_io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.vm_event_state = type { [71 x i32] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.72, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.72 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.38, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.38 = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.18, %union.anon.19 }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@end_swap_bio_write._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.end_swap_bio_write = private unnamed_addr constant [19 x i8] c"end_swap_bio_write\00", align 1
@.str = private unnamed_addr constant [43 x i8] c"\011Write-error on swap-device (%u:%u:%llu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013swapon: swapfile has holes\0A\00", align 1
@__swap_writepage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__swap_writepage = private unnamed_addr constant [17 x i8] c"__swap_writepage\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\013Write error on dio swapfile (%llu)\0A\00", align 1
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"include/linux/bio.h\00", align 1
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@end_swap_bio_read._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.end_swap_bio_read = private unnamed_addr constant [18 x i8] c"end_swap_bio_read\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\011Read-error on swap-device (%u:%u:%llu)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @end_swap_bio_write(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 2
  %5 = icmp ne i16 %4, 0
  %6 = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %17
  %23 = add i32 %19, -1
  br label %26

24:                                               ; preds = %17
  %25 = ptrtoint ptr %13 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %28) #9
  %29 = tail call zeroext i1 @set_page_dirty(ptr noundef %13) #9
  %30 = tail call i32 @___ratelimit(ptr noundef nonnull @end_swap_bio_write._rs, ptr noundef nonnull @__func__.end_swap_bio_write) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = load i32, ptr %36, align 8
  %38 = shl i32 %37, 20
  %39 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %38, %40
  %42 = lshr i32 %41, 20
  %43 = and i32 %40, 1048575
  %44 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %45 = load i64, ptr %44, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %42, i32 noundef %43, i64 noundef %45) #10
  br label %47

47:                                               ; preds = %32, %26
  %48 = load volatile i32, ptr %18, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !10

51:                                               ; preds = %47
  %52 = add i32 %48, -1
  br label %55

53:                                               ; preds = %47
  %54 = ptrtoint ptr %13 to i32
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = inttoptr i32 %56 to ptr
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %57) #9
  br label %58

58:                                               ; preds = %55, %10
  tail call void @end_page_writeback(ptr noundef %13) #9
  tail call void @bio_put(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_swapfile_activate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 19
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  br label %14

14:                                               ; preds = %22, %3
  %15 = load volatile i32, ptr %12, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !12
  %19 = load volatile i32, ptr %12, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %15, %14 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %24 = load i64, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %25 = load volatile i32, ptr %12, align 4
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %27, label %14

27:                                               ; preds = %22
  %28 = lshr i32 4096, %11
  %29 = zext i8 %10 to i64
  %30 = ashr i64 %24, %29
  %31 = zext i32 %28 to i64
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i64 2, ptr %2, align 8
  br label %112

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 5
  %36 = add nsw i32 %28, -1
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i32 %28, 1
  %39 = sub nsw i32 12, %11
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %96, %34
  %42 = phi i32 [ 0, %34 ], [ %101, %96 ]
  %43 = phi i64 [ 0, %34 ], [ %100, %96 ]
  %44 = phi i64 [ -1, %34 ], [ %99, %96 ]
  %45 = phi i64 [ 0, %34 ], [ %98, %96 ]
  %46 = phi i32 [ 0, %34 ], [ %97, %96 ]
  %47 = load i32, ptr %35, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !15
  %50 = call i32 @__cond_resched() #9
  store i64 %45, ptr %4, align 8
  %51 = call i32 @bmap(ptr noundef %8, ptr noundef nonnull %4) #9
  %52 = icmp eq i32 %51, 0
  %53 = load i64, ptr %4, align 8
  %54 = icmp ne i64 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %121

56:                                               ; preds = %49
  %57 = and i64 %53, %37
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br i1 %38, label %62, label %81

60:                                               ; preds = %56
  %61 = add i64 %45, 1
  br label %96

62:                                               ; preds = %78, %59
  %63 = phi i32 [ %79, %78 ], [ 1, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %64 = zext i32 %63 to i64
  %65 = add i64 %45, %64
  store i64 %65, ptr %5, align 8
  %66 = call i32 @bmap(ptr noundef %8, ptr noundef nonnull %5) #9
  %67 = icmp eq i32 %66, 0
  %68 = load i64, ptr %5, align 8
  %69 = icmp ne i64 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %121

72:                                               ; preds = %62
  %73 = load i64, ptr %4, align 8
  %74 = add i64 %73, %64
  %75 = icmp eq i64 %68, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = add i64 %45, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %96

78:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %79 = add nuw nsw i32 %63, 1
  %80 = icmp eq i32 %79, %28
  br i1 %80, label %81, label %62

81:                                               ; preds = %78, %59
  %82 = phi i64 [ %53, %59 ], [ %73, %78 ]
  %83 = lshr i64 %82, %40
  store i64 %83, ptr %4, align 8
  %84 = call i32 @add_swap_extent(ptr noundef %0, i32 noundef %46, i32 noundef 1, i64 noundef %83) #9
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %123

87:                                               ; preds = %81
  %88 = icmp eq i32 %46, 0
  %89 = call i64 @llvm.umax.i64(i64 %83, i64 %43)
  %90 = select i1 %88, i64 %43, i64 %89
  %91 = call i64 @llvm.umin.i64(i64 %83, i64 %44)
  %92 = select i1 %88, i64 %44, i64 %91
  %93 = add i32 %84, %42
  %94 = add i32 %46, 1
  %95 = add i64 %45, %31
  br label %96

96:                                               ; preds = %87, %76, %60
  %97 = phi i32 [ %46, %60 ], [ %46, %76 ], [ %94, %87 ]
  %98 = phi i64 [ %61, %60 ], [ %77, %76 ], [ %95, %87 ]
  %99 = phi i64 [ %44, %60 ], [ %44, %76 ], [ %92, %87 ]
  %100 = phi i64 [ %43, %60 ], [ %43, %76 ], [ %90, %87 ]
  %101 = phi i32 [ %42, %60 ], [ %42, %76 ], [ %93, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %102 = add i64 %98, %31
  %103 = icmp ugt i64 %102, %30
  br i1 %103, label %104, label %41

104:                                              ; preds = %96, %41
  %105 = phi i32 [ %46, %41 ], [ %97, %96 ]
  %106 = phi i64 [ %44, %41 ], [ %99, %96 ]
  %107 = phi i64 [ %43, %41 ], [ %100, %96 ]
  %108 = phi i32 [ %42, %41 ], [ %101, %96 ]
  %109 = sub i64 1, %106
  %110 = add i64 %109, %107
  store i64 %110, ptr %2, align 8
  %111 = icmp eq i32 %105, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104, %33
  %113 = phi i32 [ 0, %33 ], [ %108, %104 ]
  br label %114

114:                                              ; preds = %112, %104
  %115 = phi i32 [ %113, %112 ], [ %108, %104 ]
  %116 = phi i32 [ 1, %112 ], [ %105, %104 ]
  %117 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 5
  store i32 %116, ptr %117, align 4
  %118 = add i32 %116, -1
  %119 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 11
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 10
  store i32 %118, ptr %120, align 4
  br label %123

121:                                              ; preds = %71, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %123

123:                                              ; preds = %121, %114, %86
  %124 = phi i32 [ -22, %121 ], [ %115, %114 ], [ %84, %86 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_swap_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swap_writepage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @try_to_free_swap(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @unlock_page(ptr noundef %0) #9
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 @__swap_writepage(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @end_swap_bio_write)
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ 0, %5 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__swap_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kiocb, align 8
  %5 = alloca %struct.bio_vec, align 4
  %6 = alloca %struct.iov_iter, align 8
  %7 = tail call ptr @page_swap_info(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.swap_info_struct, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %139, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !15
  %13 = getelementptr inbounds %struct.swap_info_struct, ptr %7, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 17
  %16 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store ptr %0, ptr %5, align 4
  %17 = getelementptr inbounds %struct.bio_vec, ptr %5, i32 0, i32 1
  store i32 4096, ptr %17, align 4
  %18 = getelementptr inbounds %struct.bio_vec, ptr %5, i32 0, i32 2
  store i32 0, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !15
  call void @iov_iter_bvec(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 4096) #9
  %19 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 6
  %22 = and i32 %21, 16
  %23 = shl i32 %20, 1
  %24 = and i32 %23, 131072
  %25 = or i32 %24, %22
  %26 = and i32 %20, 4096
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %12
  %29 = load ptr, ptr %15, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %28, %12
  %43 = or i32 %25, 2
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i32 [ %43, %42 ], [ %25, %37 ]
  %46 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 20
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i32 [ %54, %49 ], [ %47, %44 ]
  %57 = tail call ptr @llvm.thread.pointer() #9
  %58 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 118
  %59 = load ptr, ptr %58, align 32
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.io_context, ptr %59, i32 0, i32 2
  %63 = load i16, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i16 [ %63, %61 ], [ 16388, %55 ]
  %66 = call i32 @llvm.umin.i32(i32 %56, i32 65536) #9
  %67 = trunc i32 %66 to i16
  %68 = lshr i32 %20, 18
  %69 = and i32 %68, 4
  %70 = or i32 %45, %69
  store ptr %14, ptr %4, align 8
  %71 = getelementptr inbounds i8, ptr %4, i32 8
  %72 = getelementptr inbounds i8, ptr %4, i32 24
  %73 = getelementptr inbounds i8, ptr %4, i32 16
  store i64 0, ptr %73, align 8
  store i32 %70, ptr %72, align 8
  %74 = getelementptr inbounds i8, ptr %4, i32 28
  store i16 %67, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %4, i32 30
  store i16 %65, ptr %75, align 2
  %76 = getelementptr inbounds i8, ptr %4, i32 32
  store ptr null, ptr %76, align 8
  %77 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81, !prof !10

81:                                               ; preds = %64
  %82 = add i32 %78, -1
  br label %85

83:                                               ; preds = %64
  %84 = ptrtoint ptr %0 to i32
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = inttoptr i32 %86 to ptr
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 524288
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load volatile i32, ptr %87, align 4
  %93 = and i32 %92, 1024
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95, !prof !10

95:                                               ; preds = %91
  %96 = call i32 @__page_file_index(ptr noundef %0) #9
  br label %100

97:                                               ; preds = %91, %85
  %98 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i32 [ %96, %95 ], [ %99, %97 ]
  %102 = zext i32 %101 to i64
  %103 = shl nuw nsw i64 %102, 12
  store i64 %103, ptr %71, align 8
  %104 = call zeroext i1 @set_page_writeback(ptr noundef %0) #9
  call void @unlock_page(ptr noundef %0) #9
  %105 = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 9
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.address_space_operations, ptr %106, i32 0, i32 12
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 %108(ptr noundef nonnull %4, ptr noundef nonnull %6) #9
  %110 = icmp eq i32 %109, 4096
  br i1 %110, label %111, label %120

111:                                              ; preds = %100
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %113 = call i32 @llvm.read_register.i32(metadata !0) #9
  %114 = inttoptr i32 %113 to ptr
  %115 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %114) #6, !srcloc !17
  %116 = add i32 %115, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 3) to i32)
  %117 = inttoptr i32 %116 to ptr
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %112) #9, !srcloc !18
  br label %137

120:                                              ; preds = %100
  %121 = call zeroext i1 @set_page_dirty(ptr noundef %0) #9
  %122 = load volatile i32, ptr %77, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !10

125:                                              ; preds = %120
  %126 = add i32 %122, -1
  br label %129

127:                                              ; preds = %120
  %128 = ptrtoint ptr %0 to i32
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = inttoptr i32 %130 to ptr
  call void @_clear_bit(i32 noundef 18, ptr noundef %131) #9
  %132 = call i32 @___ratelimit(ptr noundef nonnull @__swap_writepage._rs, ptr noundef nonnull @__func__.__swap_writepage) #9
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = call fastcc i64 @page_file_offset(ptr noundef %0), !range !19
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %135) #10
  br label %137

137:                                              ; preds = %134, %129, %111
  %138 = phi i32 [ 0, %111 ], [ %109, %134 ], [ %109, %129 ]
  call void @end_page_writeback(ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  br label %198

139:                                              ; preds = %3
  %140 = getelementptr inbounds %struct.swap_info_struct, ptr %7, i32 0, i32 18
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i64 @swap_page_sector(ptr noundef %0) #9
  %143 = tail call i32 @bdev_write_page(ptr noundef %141, i64 noundef %142, ptr noundef %0, ptr noundef %1) #9
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %147 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %148 = inttoptr i32 %147 to ptr
  %149 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %148) #6, !srcloc !17
  %150 = add i32 %149, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 3) to i32)
  %151 = inttoptr i32 %150 to ptr
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %146) #9, !srcloc !18
  br label %198

154:                                              ; preds = %139
  %155 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %156 = load ptr, ptr %140, align 4
  %157 = getelementptr inbounds %struct.bio, ptr %155, i32 0, i32 3
  %158 = load i16, ptr %157, align 4
  %159 = and i16 %158, -2049
  store i16 %159, ptr %157, align 4
  %160 = getelementptr inbounds %struct.bio, ptr %155, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %156
  br i1 %162, label %165, label %163

163:                                              ; preds = %154
  %164 = and i16 %158, -2177
  store i16 %164, ptr %157, align 4
  br label %165

165:                                              ; preds = %163, %154
  store ptr %156, ptr %160, align 4
  %166 = tail call i64 @swap_page_sector(ptr noundef %0) #9
  %167 = getelementptr inbounds %struct.bio, ptr %155, i32 0, i32 8
  store i64 %166, ptr %167, align 4
  %168 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %169 = load i16, ptr %168, align 4
  %170 = and i16 %169, 256
  %171 = zext i16 %170 to i32
  %172 = shl nuw nsw i32 %171, 14
  %173 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %174 = load i32, ptr %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %165
  %177 = or i32 %172, 2048
  br label %183

178:                                              ; preds = %165
  %179 = and i16 %169, 3
  %180 = icmp eq i16 %179, 0
  %181 = or i32 %172, 1048576
  %182 = select i1 %180, i32 %172, i32 %181
  br label %183

183:                                              ; preds = %178, %176
  %184 = phi i32 [ %177, %176 ], [ %182, %178 ]
  %185 = or i32 %184, 67108865
  %186 = getelementptr inbounds %struct.bio, ptr %155, i32 0, i32 2
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.bio, ptr %155, i32 0, i32 10
  store ptr %2, ptr %187, align 4
  %188 = tail call i32 @bio_add_page(ptr noundef %155, ptr noundef %0, i32 noundef 4096, i32 noundef 0) #9
  %189 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %190 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %191 = inttoptr i32 %190 to ptr
  %192 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %191) #6, !srcloc !17
  %193 = add i32 %192, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 3) to i32)
  %194 = inttoptr i32 %193 to ptr
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, 1
  store i32 %196, ptr %194, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %189) #9, !srcloc !18
  %197 = tail call zeroext i1 @set_page_writeback(ptr noundef %0) #9
  tail call void @unlock_page(ptr noundef %0) #9
  tail call void @submit_bio(ptr noundef %155) #9
  br label %198

198:                                              ; preds = %183, %145, %137
  %199 = phi i32 [ %138, %137 ], [ 0, %183 ], [ 0, %145 ]
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_swap_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @page_file_offset(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

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
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %16
  %21 = tail call i32 @__page_file_index(ptr noundef %0) #9
  br label %25

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 12
  ret i64 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_write_page(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @swap_page_sector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swap_readpage(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @page_swap_info(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.address_space_operations, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %10, ptr noundef %0) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %140

19:                                               ; preds = %8
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #6, !srcloc !17
  %24 = add i32 %23, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #9, !srcloc !18
  br label %140

28:                                               ; preds = %2
  %29 = and i32 %5, 4096
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 18
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i64 @swap_page_sector(ptr noundef %0) #9
  %35 = tail call i32 @bdev_read_page(ptr noundef %33, i64 noundef %34, ptr noundef %0) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !10

42:                                               ; preds = %37
  %43 = add i32 %39, -1
  br label %46

44:                                               ; preds = %37
  %45 = ptrtoint ptr %0 to i32
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = inttoptr i32 %47 to ptr
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #9, !srcloc !20
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #9, !srcloc !21
  %54 = extractvalue { i32, i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  tail call fastcc void @swap_slot_free_notify(ptr noundef %0)
  tail call void @unlock_page(ptr noundef %0) #9
  br label %58

58:                                               ; preds = %57, %52, %46
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %60 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %61 = inttoptr i32 %60 to ptr
  %62 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %61) #6, !srcloc !17
  %63 = add i32 %62, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #9, !srcloc !18
  br label %140

67:                                               ; preds = %31, %28
  %68 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %69 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 18
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 3
  %72 = load i16, ptr %71, align 4
  %73 = and i16 %72, -2049
  store i16 %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %70
  br i1 %76, label %79, label %77

77:                                               ; preds = %67
  %78 = and i16 %72, -2177
  store i16 %78, ptr %71, align 4
  br label %79

79:                                               ; preds = %77, %67
  store ptr %70, ptr %74, align 4
  %80 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 2
  store i32 0, ptr %80, align 4
  %81 = tail call i64 @swap_page_sector(ptr noundef %0) #9
  %82 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 8
  store i64 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 10
  store ptr @end_swap_bio_read, ptr %83, align 4
  %84 = tail call i32 @bio_add_page(ptr noundef %68, ptr noundef %0, i32 noundef 4096, i32 noundef 0) #9
  br i1 %1, label %85, label %123

85:                                               ; preds = %79
  %86 = load i32, ptr %80, align 4
  %87 = or i32 %86, 16777216
  store i32 %87, ptr %80, align 4
  %88 = tail call ptr @llvm.thread.pointer() #9
  %89 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #9, !srcloc !20
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #9, !srcloc !23
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93, !prof !9

93:                                               ; preds = %85
  %94 = add i32 %91, 1
  %95 = or i32 %94, %91
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %99, label %97, !prof !10

97:                                               ; preds = %93, %85
  %98 = phi i32 [ 2, %85 ], [ 1, %93 ]
  tail call void @refcount_warn_saturate(ptr noundef %89, i32 noundef %98) #9
  br label %99

99:                                               ; preds = %97, %93
  %100 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 11
  store ptr %88, ptr %100, align 4
  %101 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %102 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %103 = inttoptr i32 %102 to ptr
  %104 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #6, !srcloc !17
  %105 = add i32 %104, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %101) #9, !srcloc !18
  %109 = load i16, ptr %71, align 4
  %110 = or i16 %109, 64
  store i16 %110, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %111 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #9, !srcloc !20
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #9, !srcloc !25
  tail call void @submit_bio(ptr noundef %68) #9
  %113 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 1
  store volatile i32 2, ptr %113, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %114 = load volatile ptr, ptr %100, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %137, label %116

116:                                              ; preds = %119, %99
  %117 = tail call i32 @bio_poll(ptr noundef %68, ptr noundef null, i32 noundef 0) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %122, %116
  store volatile i32 2, ptr %113, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %120 = load volatile ptr, ptr %100, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %137, label %116

122:                                              ; preds = %116
  tail call void @blk_io_schedule() #9
  br label %119

123:                                              ; preds = %79
  %124 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !16
  %125 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %126 = inttoptr i32 %125 to ptr
  %127 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %126) #6, !srcloc !17
  %128 = add i32 %127, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %129 = inttoptr i32 %128 to ptr
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #9, !srcloc !18
  %132 = load i16, ptr %71, align 4
  %133 = or i16 %132, 64
  store i16 %133, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %134 = getelementptr inbounds %struct.bio, ptr %68, i32 0, i32 15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %134) #9, !srcloc !20
  %135 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 1, ptr elementtype(i32) %134) #9, !srcloc !25
  tail call void @submit_bio(ptr noundef %68) #9
  %136 = tail call ptr @llvm.thread.pointer() #9
  br label %137

137:                                              ; preds = %123, %119, %99
  %138 = phi ptr [ %88, %99 ], [ %136, %123 ], [ %88, %119 ]
  %139 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 1
  store volatile i32 0, ptr %139, align 8
  tail call void @bio_put(ptr noundef %68) #9
  br label %140

140:                                              ; preds = %137, %58, %19, %8
  %141 = phi i32 [ 0, %137 ], [ 0, %58 ], [ 0, %19 ], [ %17, %8 ]
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @swap_slot_free_notify(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

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
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %58, label %16, !prof !27

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %58, label %20, !prof !9

20:                                               ; preds = %16
  %21 = tail call ptr @page_swap_info(ptr noundef %0) #9
  %22 = getelementptr inbounds %struct.swap_info_struct, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.swap_info_struct, ptr %21, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.block_device_operations, ptr %32, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %58, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = insertvalue [1 x i32] poison, i32 %38, 0
  %40 = tail call i32 @__swap_count([1 x i32] %39) #9
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = and i32 %38, 67108863
  %44 = load volatile i32, ptr %2, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !10

47:                                               ; preds = %42
  %48 = add i32 %44, -1
  br label %51

49:                                               ; preds = %42
  %50 = ptrtoint ptr %0 to i32
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = inttoptr i32 %52 to ptr
  tail call void @_set_bit(i32 noundef 3, ptr noundef %53) #9
  %54 = load ptr, ptr %31, align 8
  %55 = getelementptr inbounds %struct.block_device_operations, ptr %54, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %27, align 4
  tail call void %56(ptr noundef %57, i32 noundef %43) #9
  br label %58

58:                                               ; preds = %51, %36, %26, %20, %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @end_swap_bio_read(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 2
  %5 = icmp ne i16 %4, 0
  %6 = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !10

24:                                               ; preds = %19
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %19
  %27 = ptrtoint ptr %13 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %30) #9
  %31 = load volatile i32, ptr %20, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !10

34:                                               ; preds = %28
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %28
  %37 = ptrtoint ptr %13 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %40) #9
  %41 = tail call i32 @___ratelimit(ptr noundef nonnull @end_swap_bio_read._rs, ptr noundef nonnull @__func__.end_swap_bio_read) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 17
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %47, align 8
  %49 = shl i32 %48, 20
  %50 = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %49, %51
  %53 = lshr i32 %52, 20
  %54 = and i32 %51, 1048575
  %55 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %56 = load i64, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %53, i32 noundef %54, i64 noundef %56) #10
  br label %59

58:                                               ; preds = %10
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !28
  tail call void @_set_bit(i32 noundef 2, ptr noundef %13) #9
  tail call fastcc void @swap_slot_free_notify(ptr noundef %13)
  br label %59

59:                                               ; preds = %58, %43, %38
  tail call void @unlock_page(ptr noundef %13) #9
  store volatile ptr null, ptr %14, align 4
  tail call void @bio_put(ptr noundef %0) #9
  %60 = icmp eq ptr %15, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %59
  %62 = tail call ptr @llvm.thread.pointer() #9
  %63 = icmp eq ptr %62, %15
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  store volatile i32 0, ptr %65, align 8
  br label %68

66:                                               ; preds = %61
  %67 = tail call i32 @wake_up_process(ptr noundef nonnull %15) #9
  br label %68

68:                                               ; preds = %66, %64
  %69 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #9, !srcloc !20
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #9, !srcloc !30
  %71 = extractvalue { i32, i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %77, label %75, !prof !10

75:                                               ; preds = %73
  tail call void @refcount_warn_saturate(ptr noundef %69, i32 noundef 3) #9
  br label %77

76:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  tail call void @__put_task_struct(ptr noundef nonnull %15) #9
  br label %77

77:                                               ; preds = %76, %75, %73, %59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_poll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swap_set_page_dirty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @page_swap_info(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.address_space_operations, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0) #9
  br label %19

17:                                               ; preds = %1
  %18 = tail call i32 @__set_page_dirty_no_writeback(ptr noundef %0) #9
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %16, %7 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__swap_count([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2151826045}
!12 = !{i64 2151825887}
!13 = !{i64 2151826189}
!14 = !{i64 2149259766}
!15 = !{!"auto-init"}
!16 = !{i64 755573, i64 755634}
!17 = !{i64 774273}
!18 = !{i64 758590}
!19 = !{i64 0, i64 17592186040321}
!20 = !{i64 849895, i64 2148339866, i64 2148339892, i64 2148339939, i64 2148339961, i64 2148339989, i64 2148340009}
!21 = !{i64 2148359743, i64 2148359775, i64 2148359804, i64 2148359838, i64 2148359869, i64 2148359892}
!22 = !{i64 2148461083}
!23 = !{i64 2148352739, i64 2148352771, i64 2148352800, i64 2148352834, i64 2148352865, i64 2148352888}
!24 = !{i64 2153392701}
!25 = !{i64 2148351281, i64 2148351307, i64 2148351336, i64 2148351370, i64 2148351401, i64 2148351424}
!26 = !{i64 2153654849}
!27 = !{!"branch_weights", i32 1073205, i32 2146410443}
!28 = !{i64 2149849085}
!29 = !{i64 2148452961}
!30 = !{i64 2148355096, i64 2148355128, i64 2148355157, i64 2148355191, i64 2148355222, i64 2148355245}
!31 = !{i64 2149366313}
