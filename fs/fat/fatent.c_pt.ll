; ModuleID = '/llk/IR/fs/fat/fatent.c_pt.bc'
source_filename = "../fs/fat/fatent.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_free_clusters:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_free_clusters\22\09\09\09\09\09"
module asm "__kstrtabns_fat_free_clusters:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.fatent_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.37, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.38, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.39, ptr, %struct.address_space, %struct.list_head, %union.anon.40, i32, i32, ptr, ptr }
%union.anon.37 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.38 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.39 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.40 = type { ptr }
%struct.fat_entry = type { i32, %union.anon.71, i32, [2 x ptr], ptr }
%union.anon.71 = type { [2 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fatent_ra = type { i64, i64, i32, i64, i64, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.67 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@fat_ent_access_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&sbi->fat_lock\00", align 1
@fat32_ops = internal constant %struct.fatent_operations { ptr @fat_ent_blocknr, ptr @fat32_ent_set_ptr, ptr @fat_ent_bread, ptr @fat32_ent_get, ptr @fat32_ent_put, ptr @fat32_ent_next }, align 4
@fat16_ops = internal constant %struct.fatent_operations { ptr @fat_ent_blocknr, ptr @fat16_ent_set_ptr, ptr @fat_ent_bread, ptr @fat16_ent_get, ptr @fat16_ent_put, ptr @fat16_ent_next }, align 4
@fat12_ops = internal constant %struct.fatent_operations { ptr @fat12_ent_blocknr, ptr @fat12_ent_set_ptr, ptr @fat12_ent_bread, ptr @fat12_ent_get, ptr @fat12_ent_put, ptr @fat12_ent_next }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid FAT variant, %u bits\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid access to FAT (entry 0x%08x)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: deleting FAT entry beyond EOF\00", align 1
@__func__.fat_free_clusters = private unnamed_addr constant [18 x i8] c"fat_free_clusters\00", align 1
@__kstrtab_fat_free_clusters = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_free_clusters = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_free_clusters = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_free_clusters to i32), ptr @__kstrtab_fat_free_clusters, ptr @__kstrtabns_fat_free_clusters }, section "___ksymtab_gpl+fat_free_clusters", align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"fs/fat/fatent.c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"FAT read failed (blocknr %llu)\00", align 1
@fat12_entry_lock = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_fat_free_clusters], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fat_ent_access_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @fat_ent_access_init.__key) #9
  %5 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 4
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %16 [
    i8 32, label %7
    i8 16, label %10
    i8 12, label %13
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 26
  store i32 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  store ptr @fat32_ops, ptr %9, align 4
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 26
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  store ptr @fat16_ops, ptr %12, align 4
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 26
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 27
  store ptr @fat12_ops, ptr %15, align 4
  br label %18

16:                                               ; preds = %1
  %17 = zext i8 %6 to i32
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %17) #10
  br label %18

18:                                               ; preds = %16, %13, %10, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_ent_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  %12 = icmp sgt i32 %2, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %35, label %17

17:                                               ; preds = %13, %3
  %18 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 1
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %30, %17
  %23 = phi i32 [ %31, %30 ], [ %20, %17 ]
  %24 = phi i32 [ %32, %30 ], [ 0, %17 ]
  %25 = getelementptr %struct.fat_entry, ptr %1, i32 0, i32 3, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  tail call void @__brelse(ptr noundef nonnull %26) #9
  %29 = load i32, ptr %19, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i32 [ %23, %22 ], [ %29, %28 ]
  %32 = add nuw nsw i32 %24, 1
  %33 = icmp slt i32 %32, %31
  br i1 %33, label %22, label %34

34:                                               ; preds = %30, %17
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %19, i8 0, i64 16, i1 false) #9
  tail call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %2) #10
  br label %111

35:                                               ; preds = %13
  store i32 %2, ptr %1, align 4
  %36 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 1
  store ptr null, ptr %36, align 4
  %37 = load ptr, ptr %11, align 4
  call void %37(ptr noundef %7, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %38 = load i32, ptr %4, align 4
  %39 = load i64, ptr %5, align 8
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.msdos_sb_info, ptr %40, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store ptr null, ptr %36, align 4
  br label %100

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %51, %39
  br i1 %52, label %53, label %82

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.msdos_sb_info, ptr %40, i32 0, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 12
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = add i32 %38, 1
  %59 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %60 = load i32, ptr %59, align 16
  %61 = icmp ult i32 %58, %60
  %62 = icmp eq i32 %44, 2
  br i1 %61, label %63, label %70

63:                                               ; preds = %57
  br i1 %62, label %64, label %79

64:                                               ; preds = %63
  %65 = getelementptr %struct.fat_entry, ptr %1, i32 0, i32 3, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @__brelse(ptr noundef nonnull %66) #9
  br label %69

69:                                               ; preds = %68, %64
  store i32 1, ptr %43, align 4
  br label %79

70:                                               ; preds = %57
  br i1 %62, label %71, label %82

71:                                               ; preds = %70
  %72 = getelementptr %struct.fat_entry, ptr %1, i32 0, i32 3, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 3
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %39, 1
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store ptr null, ptr %36, align 4
  br label %84

79:                                               ; preds = %71, %69, %63, %53
  %80 = getelementptr inbounds %struct.fatent_operations, ptr %42, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  call void %81(ptr noundef %1, i32 noundef %38) #9
  br label %107

82:                                               ; preds = %70, %47
  store ptr null, ptr %36, align 4
  %83 = icmp sgt i32 %44, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %82, %78
  br label %85

85:                                               ; preds = %93, %84
  %86 = phi i32 [ %94, %93 ], [ %44, %84 ]
  %87 = phi i32 [ %95, %93 ], [ 0, %84 ]
  %88 = getelementptr %struct.fat_entry, ptr %1, i32 0, i32 3, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  call void @__brelse(ptr noundef nonnull %89) #9
  %92 = load i32, ptr %43, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = phi i32 [ %86, %85 ], [ %92, %91 ]
  %95 = add nuw nsw i32 %87, 1
  %96 = icmp slt i32 %95, %94
  br i1 %96, label %85, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %4, align 4
  %99 = load i64, ptr %5, align 8
  br label %100

100:                                              ; preds = %97, %82, %46
  %101 = phi i64 [ %99, %97 ], [ %39, %46 ], [ %39, %82 ]
  %102 = phi i32 [ %98, %97 ], [ %38, %46 ], [ %38, %82 ]
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %43, i8 0, i64 16, i1 false) #9
  %103 = getelementptr inbounds %struct.fatent_operations, ptr %11, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 %104(ptr noundef %7, ptr noundef %1, i32 noundef %102, i64 noundef %101) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100, %79
  %108 = getelementptr inbounds %struct.fatent_operations, ptr %11, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 %109(ptr noundef %1) #9
  br label %111

111:                                              ; preds = %107, %100, %34
  %112 = phi i32 [ %110, %107 ], [ -5, %34 ], [ %105, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_ent_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fatent_operations, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %1, i32 noundef %2) #9
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @fat_sync_bhs(ptr noundef %15, i32 noundef %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %4
  %21 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call fastcc i32 @fat_mirror_bhs(ptr noundef %6, ptr noundef %21, i32 noundef %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i32 [ %24, %20 ], [ %18, %14 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_bhs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_mirror_bhs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = icmp ugt i8 %7, 1
  br i1 %8, label %9, label %73

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 6
  %11 = icmp sgt i32 %2, 0
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 28
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  br label %16

16:                                               ; preds = %68, %9
  %17 = phi i8 [ %7, %9 ], [ %69, %68 ]
  %18 = phi i32 [ 1, %9 ], [ %70, %68 ]
  %19 = load i32, ptr %10, align 4
  %20 = mul i32 %19, %18
  %21 = zext i32 %20 to i64
  br i1 %11, label %25, label %68

22:                                               ; preds = %63, %62
  %23 = add nuw nsw i32 %26, 1
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %66, label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %23, %22 ], [ 0, %16 ]
  %27 = getelementptr ptr, ptr %1, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.buffer_head, ptr %28, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = add i64 %30, %21
  %32 = load ptr, ptr %12, align 4
  %33 = load i32, ptr %13, align 16
  %34 = tail call ptr @__getblk_gfp(ptr noundef %32, i64 noundef %31, i32 noundef %33, i32 noundef 8) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %73, label %36

36:                                               ; preds = %25
  %37 = load volatile i32, ptr %34, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %34) #9, !srcloc !9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %34, ptr nonnull %34, i32 4, ptr nonnull elementtype(i32) %34) #9, !srcloc !10
  %42 = extractvalue { i32, i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %36
  tail call void @__lock_buffer(ptr noundef nonnull %34) #9
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %27, align 4
  %50 = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %13, align 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %48, ptr align 1 %51, i32 %52, i1 false)
  %53 = load volatile i32, ptr %34, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %34) #9
  br label %57

57:                                               ; preds = %56, %46
  tail call void @unlock_buffer(ptr noundef nonnull %34) #9
  %58 = load ptr, ptr %14, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %34, ptr noundef %58) #9
  %59 = load i32, ptr %15, align 4
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @__brelse(ptr noundef nonnull %34) #9
  br label %22

63:                                               ; preds = %57
  %64 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %34) #9
  tail call void @__brelse(ptr noundef nonnull %34) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %22, label %73

66:                                               ; preds = %22
  %67 = load i8, ptr %6, align 4
  br label %68

68:                                               ; preds = %66, %16
  %69 = phi i8 [ %67, %66 ], [ %17, %16 ]
  %70 = add nuw nsw i32 %18, 1
  %71 = zext i8 %69 to i32
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %16, label %73

73:                                               ; preds = %68, %63, %25, %3
  %74 = phi i32 [ 0, %3 ], [ -12, %25 ], [ %64, %63 ], [ 0, %68 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_alloc_clusters(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fat_entry, align 4
  %7 = alloca %struct.fat_entry, align 4
  %8 = alloca [8 x ptr], align 4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  %15 = getelementptr inbounds i8, ptr %6, i32 8
  store i32 0, ptr %15, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #9
  %16 = getelementptr inbounds i8, ptr %7, i32 8
  store i32 0, ptr %16, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i32 32, i1 false), !annotation !8
  %17 = icmp ugt i32 %2, 4
  br i1 %17, label %18, label %19, !prof !12

18:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/fatent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 474, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = icmp ult i32 %22, %2
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void @mutex_unlock(ptr noundef %20) #9
  br label %236

31:                                               ; preds = %24, %19
  %32 = getelementptr inbounds %struct.fat_entry, ptr %7, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %33 = getelementptr inbounds %struct.fat_entry, ptr %7, i32 0, i32 1
  store ptr null, ptr %33, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %32, i8 0, i64 16, i1 false) #9
  %34 = getelementptr inbounds %struct.fat_entry, ptr %6, i32 0, i32 2
  %35 = getelementptr inbounds %struct.fat_entry, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %34, i8 0, i64 16, i1 false) #9
  %36 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %6, align 4
  store ptr null, ptr %35, align 4
  %39 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 2
  br i1 %41, label %42, label %172

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.fatent_operations, ptr %14, i32 0, i32 3
  %44 = getelementptr inbounds %struct.fatent_operations, ptr %14, i32 0, i32 4
  br label %45

45:                                               ; preds = %170, %42
  %46 = phi i32 [ %38, %42 ], [ %171, %170 ]
  %47 = phi i32 [ %40, %42 ], [ %168, %170 ]
  %48 = phi i32 [ 0, %42 ], [ %151, %170 ]
  %49 = phi i32 [ 2, %42 ], [ %152, %170 ]
  %50 = phi i32 [ 0, %42 ], [ %150, %170 ]
  %51 = icmp ult i32 %46, %47
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 2, ptr %6, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i32 [ 2, %52 ], [ %46, %45 ]
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr inbounds %struct.msdos_sb_info, ptr %55, i32 0, i32 27
  %57 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  store ptr null, ptr %35, align 4
  %58 = load i32, ptr %34, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %68, %53
  %61 = phi i32 [ %69, %68 ], [ %58, %53 ]
  %62 = phi i32 [ %70, %68 ], [ 0, %53 ]
  %63 = getelementptr %struct.fat_entry, ptr %6, i32 0, i32 3, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  call void @__brelse(ptr noundef nonnull %64) #9
  %67 = load i32, ptr %34, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i32 [ %61, %60 ], [ %67, %66 ]
  %70 = add nuw nsw i32 %62, 1
  %71 = icmp slt i32 %70, %69
  br i1 %71, label %60, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %6, align 4
  br label %74

74:                                               ; preds = %72, %53
  %75 = phi i32 [ %73, %72 ], [ %54, %53 ]
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %34, i8 0, i64 16, i1 false) #9
  %76 = load ptr, ptr %57, align 4
  call void %76(ptr noundef %10, i32 noundef %75, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %77 = getelementptr inbounds %struct.fatent_operations, ptr %57, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = load i32, ptr %5, align 4
  %80 = load i64, ptr %4, align 8
  %81 = call i32 %78(ptr noundef %10, ptr noundef nonnull %6, i32 noundef %79, i64 noundef %80) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %176

83:                                               ; preds = %163, %74
  %84 = phi i32 [ %150, %163 ], [ %50, %74 ]
  %85 = phi i32 [ %152, %163 ], [ %49, %74 ]
  %86 = phi i32 [ %151, %163 ], [ %48, %74 ]
  %87 = load ptr, ptr %43, align 4
  %88 = call i32 %87(ptr noundef nonnull %6) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %149

90:                                               ; preds = %83
  %91 = load i32, ptr %6, align 4
  %92 = load ptr, ptr %44, align 4
  call void %92(ptr noundef nonnull %6, i32 noundef 268435455) #9
  %93 = load i32, ptr %32, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %44, align 4
  call void %96(ptr noundef nonnull %7, i32 noundef %91) #9
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, ptr %34, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %138

100:                                              ; preds = %132, %97
  %101 = phi i32 [ %133, %132 ], [ %84, %97 ]
  %102 = phi i32 [ %134, %132 ], [ %98, %97 ]
  %103 = phi i32 [ %135, %132 ], [ %84, %97 ]
  %104 = phi i32 [ %136, %132 ], [ 0, %97 ]
  %105 = icmp sgt i32 %103, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = getelementptr %struct.fat_entry, ptr %6, i32 0, i32 3, i32 %104
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %114, %106
  %110 = phi i32 [ 0, %106 ], [ %115, %114 ]
  %111 = getelementptr ptr, ptr %8, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %108, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = add nuw nsw i32 %110, 1
  %116 = icmp eq i32 %115, %103
  br i1 %116, label %123, label %109

117:                                              ; preds = %109, %100
  %118 = phi i32 [ 0, %100 ], [ %110, %109 ]
  %119 = icmp eq i32 %118, %103
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = getelementptr %struct.fat_entry, ptr %6, i32 0, i32 3, i32 %104
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi ptr [ %122, %120 ], [ %108, %114 ]
  %125 = getelementptr %struct.fat_entry, ptr %6, i32 0, i32 3, i32 %104
  %126 = getelementptr inbounds %struct.buffer_head, ptr %124, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #9, !srcloc !9
  %127 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 1, ptr elementtype(i32) %126) #9, !srcloc !14
  %128 = load ptr, ptr %125, align 4
  %129 = getelementptr ptr, ptr %8, i32 %103
  store ptr %128, ptr %129, align 4
  %130 = add i32 %101, 1
  %131 = load i32, ptr %34, align 4
  br label %132

132:                                              ; preds = %123, %117
  %133 = phi i32 [ %130, %123 ], [ %101, %117 ]
  %134 = phi i32 [ %131, %123 ], [ %102, %117 ]
  %135 = phi i32 [ %130, %123 ], [ %103, %117 ]
  %136 = add nuw nsw i32 %104, 1
  %137 = icmp slt i32 %136, %134
  br i1 %137, label %100, label %138

138:                                              ; preds = %132, %97
  %139 = phi i32 [ %84, %97 ], [ %133, %132 ]
  store i32 %91, ptr %36, align 4
  %140 = load i32, ptr %21, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = add i32 %140, -1
  store i32 %143, ptr %21, align 4
  br label %144

144:                                              ; preds = %142, %138
  %145 = getelementptr i32, ptr %1, i32 %86
  store i32 %91, ptr %145, align 4
  %146 = add i32 %86, 1
  %147 = icmp eq i32 %146, %2
  br i1 %147, label %176, label %148

148:                                              ; preds = %144
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) %6, i32 28, i1 false)
  br label %149

149:                                              ; preds = %148, %83
  %150 = phi i32 [ %84, %83 ], [ %139, %148 ]
  %151 = phi i32 [ %86, %83 ], [ %146, %148 ]
  %152 = add i32 %85, 1
  %153 = load i32, ptr %39, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %172, label %155

155:                                              ; preds = %149
  %156 = load ptr, ptr %13, align 4
  %157 = getelementptr inbounds %struct.fatent_operations, ptr %156, i32 0, i32 5
  %158 = load ptr, ptr %157, align 4
  %159 = call i32 %158(ptr noundef nonnull %6) #9
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, ptr %39, align 4
  br label %167

163:                                              ; preds = %155
  %164 = load i32, ptr %6, align 4
  %165 = load i32, ptr %39, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %83, label %167

167:                                              ; preds = %163, %161
  %168 = phi i32 [ %162, %161 ], [ %165, %163 ]
  %169 = icmp ult i32 %152, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, ptr %6, align 4
  br label %45

172:                                              ; preds = %167, %149, %31
  %173 = phi i32 [ 0, %31 ], [ %150, %149 ], [ %150, %167 ]
  %174 = phi i32 [ 0, %31 ], [ %151, %149 ], [ %151, %167 ]
  store i32 0, ptr %21, align 4
  %175 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 18
  store i32 1, ptr %175, align 4
  br label %176

176:                                              ; preds = %172, %144, %74
  %177 = phi i32 [ %173, %172 ], [ %139, %144 ], [ %50, %74 ]
  %178 = phi i32 [ -28, %172 ], [ 0, %144 ], [ %81, %74 ]
  %179 = phi i32 [ %174, %172 ], [ %2, %144 ], [ %48, %74 ]
  call void @mutex_unlock(ptr noundef %20) #9
  %180 = load ptr, ptr %11, align 4
  %181 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 10
  %182 = load i32, ptr %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.msdos_sb_info, ptr %180, i32 0, i32 4
  %187 = load i8, ptr %186, align 1
  %188 = icmp eq i8 %187, 32
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.msdos_sb_info, ptr %180, i32 0, i32 29
  %191 = load ptr, ptr %190, align 4
  call void @__mark_inode_dirty(ptr noundef %191, i32 noundef 1) #9
  br label %192

192:                                              ; preds = %189, %185, %176
  store ptr null, ptr %35, align 4
  %193 = load i32, ptr %34, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %203, %192
  %196 = phi i32 [ %204, %203 ], [ %193, %192 ]
  %197 = phi i32 [ %205, %203 ], [ 0, %192 ]
  %198 = getelementptr %struct.fat_entry, ptr %6, i32 0, i32 3, i32 %197
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %195
  call void @__brelse(ptr noundef nonnull %199) #9
  %202 = load i32, ptr %34, align 4
  br label %203

203:                                              ; preds = %201, %195
  %204 = phi i32 [ %196, %195 ], [ %202, %201 ]
  %205 = add nuw nsw i32 %197, 1
  %206 = icmp slt i32 %205, %204
  br i1 %206, label %195, label %207

207:                                              ; preds = %203, %192
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %34, i8 0, i64 16, i1 false) #9
  %208 = icmp eq i32 %178, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %207
  %210 = call i32 @inode_needs_sync(ptr noundef %0) #9
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = call i32 @fat_sync_bhs(ptr noundef nonnull %8, i32 noundef %177) #9
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212, %209
  %216 = call fastcc i32 @fat_mirror_bhs(ptr noundef %10, ptr noundef nonnull %8, i32 noundef %177)
  br label %217

217:                                              ; preds = %215, %212, %207
  %218 = phi i32 [ %178, %207 ], [ %213, %212 ], [ %216, %215 ]
  %219 = icmp sgt i32 %177, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %226, %217
  %221 = phi i32 [ %227, %226 ], [ 0, %217 ]
  %222 = getelementptr [8 x ptr], ptr %8, i32 0, i32 %221
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  call void @__brelse(ptr noundef nonnull %223) #9
  br label %226

226:                                              ; preds = %225, %220
  %227 = add nuw nsw i32 %221, 1
  %228 = icmp eq i32 %227, %177
  br i1 %228, label %229, label %220

229:                                              ; preds = %226, %217
  %230 = icmp ne i32 %218, 0
  %231 = icmp ne i32 %179, 0
  %232 = select i1 %230, i1 %231, i1 false
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, ptr %1, align 4
  %235 = call i32 @fat_free_clusters(ptr noundef %0, i32 noundef %234)
  br label %236

236:                                              ; preds = %233, %229, %30
  %237 = phi i32 [ -28, %30 ], [ %218, %233 ], [ %218, %229 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  ret i32 %237
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_free_clusters(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.fat_entry, align 4
  %4 = alloca [8 x ptr], align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  %11 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.fat_entry, ptr %3, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %13 = getelementptr inbounds %struct.fat_entry, ptr %3, i32 0, i32 1
  store ptr null, ptr %13, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false) #9
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 19, i32 12
  %16 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 9
  %17 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 20
  %18 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.fatent_operations, ptr %10, i32 0, i32 4
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 17
  %21 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  br label %22

22:                                               ; preds = %139, %2
  %23 = phi i32 [ 0, %2 ], [ %140, %139 ]
  %24 = phi i32 [ %1, %2 ], [ %63, %139 ]
  %25 = phi i32 [ 0, %2 ], [ %70, %139 ]
  %26 = phi i32 [ %1, %2 ], [ %27, %139 ]
  %27 = call i32 @fat_ent_read(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %151, label %29

29:                                               ; preds = %22
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.fat_free_clusters) #10
  br label %151

32:                                               ; preds = %29
  %33 = load i16, ptr %15, align 4
  %34 = and i16 %33, 8192
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 4
  %38 = add i32 %37, 1
  %39 = icmp eq i32 %27, %38
  br i1 %39, label %62, label %40

40:                                               ; preds = %36
  %41 = sub i32 1, %24
  %42 = add i32 %41, %37
  %43 = sext i32 %24 to i64
  %44 = add nsw i64 %43, -2
  %45 = load i16, ptr %8, align 4
  %46 = zext i16 %45 to i64
  %47 = mul nsw i64 %44, %46
  %48 = load i32, ptr %16, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = zext i16 %45 to i32
  %52 = mul i32 %42, %51
  %53 = sext i32 %52 to i64
  %54 = load ptr, ptr %17, align 4
  %55 = load i8, ptr %18, align 4
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %56, -9
  %58 = zext i32 %57 to i64
  %59 = shl i64 %50, %58
  %60 = shl i64 %53, %58
  %61 = call i32 @blkdev_issue_discard(ptr noundef %54, i64 noundef %59, i64 noundef %60, i32 noundef 3136, i32 noundef 0) #9
  br label %62

62:                                               ; preds = %40, %36, %32
  %63 = phi i32 [ %27, %40 ], [ %24, %36 ], [ %24, %32 ]
  %64 = load ptr, ptr %19, align 4
  call void %64(ptr noundef nonnull %3, i32 noundef 0) #9
  %65 = load i32, ptr %20, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = add nuw i32 %65, 1
  store i32 %68, ptr %20, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ 1, %67 ], [ %25, %62 ]
  %71 = load i32, ptr %12, align 4
  %72 = add i32 %71, %23
  %73 = icmp ugt i32 %72, 8
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load i32, ptr %21, align 4
  %76 = and i32 %75, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = call i32 @fat_sync_bhs(ptr noundef nonnull %4, i32 noundef %23) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %151

81:                                               ; preds = %78, %74
  %82 = call fastcc i32 @fat_mirror_bhs(ptr noundef %6, ptr noundef nonnull %4, i32 noundef %23)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %151

84:                                               ; preds = %81
  %85 = icmp sgt i32 %23, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %92, %84
  %87 = phi i32 [ %93, %92 ], [ 0, %84 ]
  %88 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void @__brelse(ptr noundef nonnull %89) #9
  br label %92

92:                                               ; preds = %91, %86
  %93 = add nuw nsw i32 %87, 1
  %94 = icmp eq i32 %93, %23
  br i1 %94, label %95, label %86

95:                                               ; preds = %92, %84
  %96 = load i32, ptr %12, align 4
  br label %97

97:                                               ; preds = %95, %69
  %98 = phi i32 [ %96, %95 ], [ %71, %69 ]
  %99 = phi i32 [ 0, %95 ], [ %23, %69 ]
  %100 = icmp sgt i32 %98, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %133, %97
  %102 = phi i32 [ %134, %133 ], [ %99, %97 ]
  %103 = phi i32 [ %135, %133 ], [ %98, %97 ]
  %104 = phi i32 [ %136, %133 ], [ %99, %97 ]
  %105 = phi i32 [ %137, %133 ], [ 0, %97 ]
  %106 = icmp sgt i32 %104, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = getelementptr %struct.fat_entry, ptr %3, i32 0, i32 3, i32 %105
  %109 = load ptr, ptr %108, align 4
  br label %110

110:                                              ; preds = %115, %107
  %111 = phi i32 [ 0, %107 ], [ %116, %115 ]
  %112 = getelementptr ptr, ptr %4, i32 %111
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %109, %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = add nuw nsw i32 %111, 1
  %117 = icmp eq i32 %116, %104
  br i1 %117, label %124, label %110

118:                                              ; preds = %110, %101
  %119 = phi i32 [ 0, %101 ], [ %111, %110 ]
  %120 = icmp eq i32 %119, %104
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = getelementptr %struct.fat_entry, ptr %3, i32 0, i32 3, i32 %105
  %123 = load ptr, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %115
  %125 = phi ptr [ %123, %121 ], [ %109, %115 ]
  %126 = getelementptr %struct.fat_entry, ptr %3, i32 0, i32 3, i32 %105
  %127 = getelementptr inbounds %struct.buffer_head, ptr %125, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #9, !srcloc !9
  %128 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #9, !srcloc !14
  %129 = load ptr, ptr %126, align 4
  %130 = getelementptr ptr, ptr %4, i32 %104
  store ptr %129, ptr %130, align 4
  %131 = add i32 %102, 1
  %132 = load i32, ptr %12, align 4
  br label %133

133:                                              ; preds = %124, %118
  %134 = phi i32 [ %131, %124 ], [ %102, %118 ]
  %135 = phi i32 [ %132, %124 ], [ %103, %118 ]
  %136 = phi i32 [ %131, %124 ], [ %104, %118 ]
  %137 = add nuw nsw i32 %105, 1
  %138 = icmp slt i32 %137, %135
  br i1 %138, label %101, label %139

139:                                              ; preds = %133, %97
  %140 = phi i32 [ %99, %97 ], [ %134, %133 ]
  %141 = icmp eq i32 %27, 268435455
  br i1 %141, label %142, label %22

142:                                              ; preds = %139
  %143 = load i32, ptr %21, align 4
  %144 = and i32 %143, 16
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = call i32 @fat_sync_bhs(ptr noundef nonnull %4, i32 noundef %140) #9
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146, %142
  %150 = call fastcc i32 @fat_mirror_bhs(ptr noundef %6, ptr noundef nonnull %4, i32 noundef %140)
  br label %151

151:                                              ; preds = %149, %146, %81, %78, %31, %22
  %152 = phi i32 [ %23, %31 ], [ %140, %149 ], [ %140, %146 ], [ %23, %78 ], [ %23, %81 ], [ %23, %22 ]
  %153 = phi i32 [ -5, %31 ], [ %150, %149 ], [ %147, %146 ], [ %27, %22 ], [ %82, %81 ], [ %79, %78 ]
  %154 = phi i32 [ %25, %31 ], [ %70, %149 ], [ %70, %146 ], [ %25, %22 ], [ %70, %81 ], [ %70, %78 ]
  store ptr null, ptr %13, align 4
  %155 = load i32, ptr %12, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %165, %151
  %158 = phi i32 [ %166, %165 ], [ %155, %151 ]
  %159 = phi i32 [ %167, %165 ], [ 0, %151 ]
  %160 = getelementptr %struct.fat_entry, ptr %3, i32 0, i32 3, i32 %159
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %157
  call void @__brelse(ptr noundef nonnull %161) #9
  %164 = load i32, ptr %12, align 4
  br label %165

165:                                              ; preds = %163, %157
  %166 = phi i32 [ %158, %157 ], [ %164, %163 ]
  %167 = add nuw nsw i32 %159, 1
  %168 = icmp slt i32 %167, %166
  br i1 %168, label %157, label %169

169:                                              ; preds = %165, %151
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false) #9
  %170 = icmp sgt i32 %152, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %177, %169
  %172 = phi i32 [ %178, %177 ], [ 0, %169 ]
  %173 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %172
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  call void @__brelse(ptr noundef nonnull %174) #9
  br label %177

177:                                              ; preds = %176, %171
  %178 = add nuw nsw i32 %172, 1
  %179 = icmp eq i32 %178, %152
  br i1 %179, label %180, label %171

180:                                              ; preds = %177, %169
  call void @mutex_unlock(ptr noundef %14) #9
  %181 = icmp eq i32 %154, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %180
  %183 = load ptr, ptr %7, align 4
  %184 = load i32, ptr %21, align 4
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.msdos_sb_info, ptr %183, i32 0, i32 4
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 32
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.msdos_sb_info, ptr %183, i32 0, i32 29
  %193 = load ptr, ptr %192, align 4
  call void @__mark_inode_dirty(ptr noundef %193, i32 noundef 1) #9
  br label %194

194:                                              ; preds = %191, %187, %182, %180
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_count_free_clusters(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fat_entry, align 4
  %8 = alloca %struct.fatent_ra, align 8
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i32 48, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %148

21:                                               ; preds = %17, %1
  %22 = getelementptr inbounds %struct.fat_entry, ptr %7, i32 0, i32 2
  %23 = getelementptr inbounds %struct.fat_entry, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false) #9
  store i32 2, ptr %7, align 4
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.msdos_sb_info, ptr %26, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %29 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.backing_dev_info, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %25, 2
  br i1 %33, label %34, label %63

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.backing_dev_info, ptr %30, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp ugt i32 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = urem i32 %32, %36
  %40 = sub i32 %32, %39
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %40, %38 ], [ %32, %34 ]
  %43 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 13, %45
  %47 = shl i32 %42, %46
  %48 = load ptr, ptr %28, align 4
  call void %48(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %4) #9
  %49 = load ptr, ptr %28, align 4
  %50 = add nsw i32 %25, -1
  call void %49(ptr noundef %0, i32 noundef %50, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  store i64 0, ptr %8, align 8
  %51 = load i64, ptr %5, align 8
  %52 = add i64 %51, 1
  %53 = load i64, ptr %4, align 8
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds %struct.fatent_ra, ptr %8, i32 0, i32 1
  store i64 %54, ptr %55, align 8
  %56 = lshr i32 %47, 1
  %57 = getelementptr inbounds %struct.fatent_ra, ptr %8, i32 0, i32 2
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.fatent_ra, ptr %8, i32 0, i32 3
  %59 = zext i32 %47 to i64
  %60 = call i64 @llvm.umin.i64(i64 %54, i64 %59) #9
  %61 = getelementptr inbounds %struct.fatent_ra, ptr %8, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false) #9
  store i64 %60, ptr %61, align 8
  %62 = load i32, ptr %24, align 4
  br label %63

63:                                               ; preds = %41, %21
  %64 = phi i32 [ %25, %21 ], [ %62, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %65 = icmp ugt i32 %64, 2
  br i1 %65, label %66, label %117

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.fatent_operations, ptr %12, i32 0, i32 3
  br label %68

68:                                               ; preds = %112, %66
  %69 = phi i32 [ 0, %66 ], [ %102, %112 ]
  call fastcc void @fat_ent_reada(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %7)
  %70 = load ptr, ptr %9, align 4
  %71 = getelementptr inbounds %struct.msdos_sb_info, ptr %70, i32 0, i32 27
  %72 = load ptr, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  store ptr null, ptr %23, align 4
  %73 = load i32, ptr %22, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %83, %68
  %76 = phi i32 [ %84, %83 ], [ %73, %68 ]
  %77 = phi i32 [ %85, %83 ], [ 0, %68 ]
  %78 = getelementptr %struct.fat_entry, ptr %7, i32 0, i32 3, i32 %77
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  call void @__brelse(ptr noundef nonnull %79) #9
  %82 = load i32, ptr %22, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i32 [ %76, %75 ], [ %82, %81 ]
  %85 = add nuw nsw i32 %77, 1
  %86 = icmp slt i32 %85, %84
  br i1 %86, label %75, label %87

87:                                               ; preds = %83, %68
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false) #9
  %88 = load ptr, ptr %72, align 4
  %89 = load i32, ptr %7, align 4
  call void %88(ptr noundef %0, i32 noundef %89, ptr noundef nonnull %3, ptr noundef nonnull %2) #9
  %90 = getelementptr inbounds %struct.fatent_operations, ptr %72, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = load i32, ptr %3, align 4
  %93 = load i64, ptr %2, align 8
  %94 = call i32 %91(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %92, i64 noundef %93) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %148

96:                                               ; preds = %108, %87
  %97 = phi i32 [ %102, %108 ], [ %69, %87 ]
  %98 = load ptr, ptr %67, align 4
  %99 = call i32 %98(ptr noundef nonnull %7) #9
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = add i32 %97, %101
  %103 = load ptr, ptr %11, align 4
  %104 = getelementptr inbounds %struct.fatent_operations, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef nonnull %7) #9
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %96
  %109 = load i32, ptr %7, align 4
  %110 = load i32, ptr %24, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %96, label %112

112:                                              ; preds = %108, %96
  %113 = call i32 @__cond_resched() #9
  %114 = load i32, ptr %7, align 4
  %115 = load i32, ptr %24, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %68, label %117

117:                                              ; preds = %112, %63
  %118 = phi i32 [ 0, %63 ], [ %102, %112 ]
  store i32 %118, ptr %14, align 4
  %119 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 18
  store i32 1, ptr %119, align 4
  %120 = load ptr, ptr %9, align 4
  %121 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.msdos_sb_info, ptr %120, i32 0, i32 4
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, 32
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.msdos_sb_info, ptr %120, i32 0, i32 29
  %131 = load ptr, ptr %130, align 4
  call void @__mark_inode_dirty(ptr noundef %131, i32 noundef 1) #9
  br label %132

132:                                              ; preds = %129, %125, %117
  store ptr null, ptr %23, align 4
  %133 = load i32, ptr %22, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %143, %132
  %136 = phi i32 [ %144, %143 ], [ %133, %132 ]
  %137 = phi i32 [ %145, %143 ], [ 0, %132 ]
  %138 = getelementptr %struct.fat_entry, ptr %7, i32 0, i32 3, i32 %137
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %135
  call void @__brelse(ptr noundef nonnull %139) #9
  %142 = load i32, ptr %22, align 4
  br label %143

143:                                              ; preds = %141, %135
  %144 = phi i32 [ %136, %135 ], [ %142, %141 ]
  %145 = add nuw nsw i32 %137, 1
  %146 = icmp slt i32 %145, %144
  br i1 %146, label %135, label %147

147:                                              ; preds = %143, %132
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false) #9
  br label %148

148:                                              ; preds = %147, %87, %17
  %149 = phi i32 [ 0, %17 ], [ 0, %147 ], [ %94, %87 ]
  call void @mutex_unlock(ptr noundef %13) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #9
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fat_ent_reada(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.blk_plug, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.fatent_ra, ptr %1, i32 0, i32 4
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fatent_ra, ptr %1, i32 0, i32 5
  %10 = load i64, ptr %9, align 8
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %3
  %13 = load i64, ptr %1, align 8
  %14 = getelementptr inbounds %struct.fatent_ra, ptr %1, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %55, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %2, align 4
  call void %22(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %24 = load i64, ptr %5, align 8
  %25 = load i64, ptr %1, align 8
  %26 = sub i64 %24, %25
  call void @blk_start_plug(ptr noundef nonnull %4) #9
  %27 = load i64, ptr %7, align 8
  %28 = load i64, ptr %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %32 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i64 [ %27, %30 ], [ %39, %33 ]
  %35 = add i64 %26, %34
  %36 = load ptr, ptr %31, align 4
  %37 = load i32, ptr %32, align 16
  call void @__breadahead(ptr noundef %36, i64 noundef %35, i32 noundef %37) #9
  %38 = load i64, ptr %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, ptr %7, align 8
  %40 = load i64, ptr %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %33, label %42

42:                                               ; preds = %33, %17
  call void @blk_finish_plug(ptr noundef nonnull %4) #9
  %43 = getelementptr inbounds %struct.fatent_ra, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = zext i32 %44 to i64
  %46 = load i64, ptr %14, align 8
  %47 = add i64 %46, %45
  store i64 %47, ptr %14, align 8
  %48 = getelementptr inbounds %struct.fatent_ra, ptr %1, i32 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = load i64, ptr %9, align 8
  %51 = sub i64 %49, %50
  %52 = call i64 @llvm.umin.i64(i64 %51, i64 %45)
  %53 = add i64 %52, %50
  store i64 %53, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  %54 = load i64, ptr %1, align 8
  br label %55

55:                                               ; preds = %42, %12
  %56 = phi i64 [ %54, %42 ], [ %13, %12 ]
  %57 = add i64 %56, 1
  store i64 %57, ptr %1, align 8
  br label %58

58:                                               ; preds = %55, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_trim_fs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fat_entry, align 4
  %9 = alloca %struct.fatent_ra, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #9
  %16 = getelementptr inbounds i8, ptr %8, i32 8
  store i32 0, ptr %16, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i32 48, i1 false), !annotation !8
  %17 = load i64, ptr %1, align 8
  %18 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i64
  %21 = lshr i64 %17, %20
  %22 = tail call i64 @llvm.umax.i64(i64 %21, i64 2)
  %23 = getelementptr inbounds %struct.fstrim_range, ptr %1, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = lshr i64 %24, %20
  %26 = add i64 %25, -1
  %27 = add i64 %26, %22
  %28 = getelementptr inbounds %struct.fstrim_range, ptr %1, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = lshr i64 %29, %20
  %31 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %22, %33
  br i1 %34, label %35, label %246

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %24, %38
  br i1 %39, label %246, label %40

40:                                               ; preds = %35
  %41 = icmp ult i64 %27, %33
  %42 = add i32 %32, -1
  %43 = zext i32 %42 to i64
  %44 = select i1 %41, i64 %27, i64 %43
  %45 = getelementptr inbounds %struct.fat_entry, ptr %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.fat_entry, ptr %8, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false) #9
  %47 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %47) #9
  %48 = trunc i64 %22 to i32
  store i32 %48, ptr %8, align 4
  store ptr null, ptr %46, align 4
  %49 = trunc i64 %44 to i32
  %50 = add i32 %49, 1
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.msdos_sb_info, ptr %51, i32 0, i32 27
  %53 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %54 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 21
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.backing_dev_info, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %50, %48
  br i1 %58, label %59, label %87

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.backing_dev_info, ptr %55, i32 0, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = icmp ugt i32 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = urem i32 %57, %61
  %65 = sub i32 %57, %64
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %65, %63 ], [ %57, %59 ]
  %68 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 2
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 13, %70
  %72 = shl i32 %67, %71
  %73 = load ptr, ptr %53, align 4
  call void %73(ptr noundef %11, i32 noundef %48, ptr noundef nonnull %7, ptr noundef nonnull %5) #9
  %74 = load ptr, ptr %53, align 4
  call void %74(ptr noundef %11, i32 noundef %49, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  store i64 0, ptr %9, align 8
  %75 = load i64, ptr %6, align 8
  %76 = add i64 %75, 1
  %77 = load i64, ptr %5, align 8
  %78 = sub i64 %76, %77
  %79 = getelementptr inbounds %struct.fatent_ra, ptr %9, i32 0, i32 1
  store i64 %78, ptr %79, align 8
  %80 = lshr i32 %72, 1
  %81 = getelementptr inbounds %struct.fatent_ra, ptr %9, i32 0, i32 2
  store i32 %80, ptr %81, align 8
  %82 = getelementptr inbounds %struct.fatent_ra, ptr %9, i32 0, i32 3
  %83 = zext i32 %72 to i64
  %84 = call i64 @llvm.umin.i64(i64 %78, i64 %83) #9
  %85 = getelementptr inbounds %struct.fatent_ra, ptr %9, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %82, i8 0, i64 16, i1 false) #9
  store i64 %84, ptr %85, align 8
  %86 = load i32, ptr %8, align 4
  br label %87

87:                                               ; preds = %66, %40
  %88 = phi i32 [ %48, %40 ], [ %86, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %44, %89
  br i1 %90, label %225, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.fatent_operations, ptr %15, i32 0, i32 3
  %93 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 20
  %94 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 2
  br label %95

95:                                               ; preds = %209, %91
  %96 = phi i32 [ 0, %91 ], [ %165, %209 ]
  %97 = phi i64 [ 0, %91 ], [ %164, %209 ]
  call fastcc void @fat_ent_reada(ptr noundef %11, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %98 = load ptr, ptr %12, align 4
  %99 = getelementptr inbounds %struct.msdos_sb_info, ptr %98, i32 0, i32 27
  %100 = load ptr, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  store ptr null, ptr %46, align 4
  %101 = load i32, ptr %45, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %111, %95
  %104 = phi i32 [ %112, %111 ], [ %101, %95 ]
  %105 = phi i32 [ %113, %111 ], [ 0, %95 ]
  %106 = getelementptr %struct.fat_entry, ptr %8, i32 0, i32 3, i32 %105
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  call void @__brelse(ptr noundef nonnull %107) #9
  %110 = load i32, ptr %45, align 4
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi i32 [ %104, %103 ], [ %110, %109 ]
  %113 = add nuw nsw i32 %105, 1
  %114 = icmp slt i32 %113, %112
  br i1 %114, label %103, label %115

115:                                              ; preds = %111, %95
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false) #9
  %116 = load ptr, ptr %100, align 4
  %117 = load i32, ptr %8, align 4
  call void %116(ptr noundef %11, i32 noundef %117, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %118 = getelementptr inbounds %struct.fatent_operations, ptr %100, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %4, align 4
  %121 = load i64, ptr %3, align 8
  %122 = call i32 %119(ptr noundef %11, ptr noundef nonnull %8, i32 noundef %120, i64 noundef %121) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %225

124:                                              ; preds = %171, %115
  %125 = phi i64 [ %164, %171 ], [ %97, %115 ]
  %126 = phi i32 [ %165, %171 ], [ %96, %115 ]
  %127 = load ptr, ptr %92, align 4
  %128 = call i32 %127(ptr noundef nonnull %8) #9
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = add i32 %126, 1
  br label %163

132:                                              ; preds = %124
  %133 = icmp eq i32 %126, 0
  br i1 %133, label %163, label %134

134:                                              ; preds = %132
  %135 = zext i32 %126 to i64
  %136 = icmp ugt i64 %30, %135
  br i1 %136, label %163, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %8, align 4
  %139 = sub i32 %138, %126
  %140 = load ptr, ptr %12, align 4
  %141 = sext i32 %139 to i64
  %142 = add nsw i64 %141, -2
  %143 = load i16, ptr %140, align 4
  %144 = zext i16 %143 to i64
  %145 = mul nsw i64 %142, %144
  %146 = getelementptr inbounds %struct.msdos_sb_info, ptr %140, i32 0, i32 9
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = add nsw i64 %145, %148
  %150 = zext i16 %143 to i32
  %151 = mul i32 %126, %150
  %152 = zext i32 %151 to i64
  %153 = load ptr, ptr %93, align 4
  %154 = load i8, ptr %94, align 4
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %155, -9
  %157 = zext i32 %156 to i64
  %158 = shl i64 %149, %157
  %159 = shl i64 %152, %157
  %160 = call i32 @blkdev_issue_discard(ptr noundef %153, i64 noundef %158, i64 noundef %159, i32 noundef 3136, i32 noundef 0) #9
  switch i32 %160, label %225 [
    i32 0, label %161
    i32 -95, label %163
  ]

161:                                              ; preds = %137
  %162 = add i64 %125, %135
  br label %163

163:                                              ; preds = %161, %137, %134, %132, %130
  %164 = phi i64 [ %125, %130 ], [ %125, %132 ], [ %125, %134 ], [ %162, %161 ], [ %125, %137 ]
  %165 = phi i32 [ %131, %130 ], [ 0, %132 ], [ 0, %134 ], [ 0, %161 ], [ 0, %137 ]
  %166 = load ptr, ptr %14, align 4
  %167 = getelementptr inbounds %struct.fatent_operations, ptr %166, i32 0, i32 5
  %168 = load ptr, ptr %167, align 4
  %169 = call i32 %168(ptr noundef nonnull %8) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %163
  %172 = load i32, ptr %8, align 4
  %173 = load i32, ptr %31, align 4
  %174 = icmp uge i32 %172, %173
  %175 = sext i32 %172 to i64
  %176 = icmp ult i64 %44, %175
  %177 = select i1 %174, i1 true, i1 %176
  br i1 %177, label %178, label %124

178:                                              ; preds = %171, %163
  %179 = tail call ptr @llvm.thread.pointer() #9
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.task_struct, ptr %179, i32 0, i32 98, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 256
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %225

188:                                              ; preds = %183, %178
  %189 = load volatile i32, ptr %179, align 4
  %190 = and i32 %189, 2
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %188
  store ptr null, ptr %46, align 4
  %193 = load i32, ptr %45, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %203, %192
  %196 = phi i32 [ %204, %203 ], [ %193, %192 ]
  %197 = phi i32 [ %205, %203 ], [ 0, %192 ]
  %198 = getelementptr %struct.fat_entry, ptr %8, i32 0, i32 3, i32 %197
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %195
  call void @__brelse(ptr noundef nonnull %199) #9
  %202 = load i32, ptr %45, align 4
  br label %203

203:                                              ; preds = %201, %195
  %204 = phi i32 [ %196, %195 ], [ %202, %201 ]
  %205 = add nuw nsw i32 %197, 1
  %206 = icmp slt i32 %205, %204
  br i1 %206, label %195, label %207

207:                                              ; preds = %203, %192
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false) #9
  call void @mutex_unlock(ptr noundef %47) #9
  %208 = call i32 @__cond_resched() #9
  call void @mutex_lock(ptr noundef %47) #9
  br label %209

209:                                              ; preds = %207, %188
  %210 = load i32, ptr %8, align 4
  %211 = sext i32 %210 to i64
  %212 = icmp ult i64 %44, %211
  br i1 %212, label %213, label %95

213:                                              ; preds = %209
  %214 = icmp eq i32 %165, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %213
  %216 = zext i32 %165 to i64
  %217 = icmp ugt i64 %30, %216
  br i1 %217, label %225, label %218

218:                                              ; preds = %215
  %219 = sub i32 %210, %165
  %220 = call fastcc i32 @fat_trim_clusters(ptr noundef %11, i32 noundef %219, i32 noundef %165)
  switch i32 %220, label %225 [
    i32 0, label %221
    i32 -95, label %223
  ]

221:                                              ; preds = %218
  %222 = add i64 %164, %216
  br label %223

223:                                              ; preds = %221, %218
  %224 = phi i64 [ %222, %221 ], [ %164, %218 ]
  br label %225

225:                                              ; preds = %223, %218, %215, %213, %183, %137, %115, %87
  %226 = phi i64 [ %164, %215 ], [ %164, %213 ], [ %224, %223 ], [ %164, %218 ], [ 0, %87 ], [ %125, %137 ], [ %164, %183 ], [ %97, %115 ]
  %227 = phi i32 [ 0, %215 ], [ 0, %213 ], [ 0, %223 ], [ %220, %218 ], [ 0, %87 ], [ %160, %137 ], [ -512, %183 ], [ %122, %115 ]
  store ptr null, ptr %46, align 4
  %228 = load i32, ptr %45, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %238, %225
  %231 = phi i32 [ %239, %238 ], [ %228, %225 ]
  %232 = phi i32 [ %240, %238 ], [ 0, %225 ]
  %233 = getelementptr %struct.fat_entry, ptr %8, i32 0, i32 3, i32 %232
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %230
  call void @__brelse(ptr noundef nonnull %234) #9
  %237 = load i32, ptr %45, align 4
  br label %238

238:                                              ; preds = %236, %230
  %239 = phi i32 [ %231, %230 ], [ %237, %236 ]
  %240 = add nuw nsw i32 %232, 1
  %241 = icmp slt i32 %240, %239
  br i1 %241, label %230, label %242

242:                                              ; preds = %238, %225
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false) #9
  call void @mutex_unlock(ptr noundef %47) #9
  %243 = load i16, ptr %18, align 2
  %244 = zext i16 %243 to i64
  %245 = shl i64 %226, %244
  store i64 %245, ptr %23, align 8
  br label %246

246:                                              ; preds = %242, %35, %2
  %247 = phi i32 [ %227, %242 ], [ -22, %35 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  ret i32 %247
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_trim_clusters(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = sext i32 %1 to i64
  %7 = add nsw i64 %6, -2
  %8 = load i16, ptr %5, align 4
  %9 = zext i16 %8 to i64
  %10 = mul nsw i64 %7, %9
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = zext i16 %8 to i32
  %16 = mul i32 %15, %2
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, -9
  %24 = zext i32 %23 to i64
  %25 = shl i64 %14, %24
  %26 = shl i64 %17, %24
  %27 = tail call i32 @blkdev_issue_discard(ptr noundef %19, i64 noundef %25, i64 noundef %26, i32 noundef 3136, i32 noundef 0) #9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat_ent_blocknr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %14, !prof !15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %15, label %14, !prof !16

14:                                               ; preds = %10, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 38, i32 noundef 9, ptr noundef null) #9
  br label %15

15:                                               ; preds = %14, %10
  %16 = shl i32 %1, %8
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 16
  %19 = add i32 %18, -1
  %20 = and i32 %19, %16
  store i32 %20, ptr %2, align 4
  %21 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 5
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %16, %26
  %28 = add i32 %27, %23
  %29 = sext i32 %28 to i64
  store i64 %29, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat32_ent_set_ptr(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !16

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 65, i32 noundef 9, ptr noundef null) #9
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_ent_bread(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i64
  %12 = icmp ugt i64 %11, %3
  br i1 %12, label %13, label %15, !prof !12

13:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 106, i32 noundef 9, ptr noundef null) #9
  %14 = load ptr, ptr %5, align 4
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi ptr [ %14, %13 ], [ %6, %4 ]
  %17 = getelementptr inbounds %struct.msdos_sb_info, ptr %16, i32 0, i32 28
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 16
  %24 = tail call ptr @__bread_gfp(ptr noundef %21, i64 noundef %3, i32 noundef %23, i32 noundef 8) #9
  %25 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 3
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %3) #10
  br label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 2
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.fatent_operations, ptr %8, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %1, i32 noundef %2) #9
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i32 [ 0, %28 ], [ -5, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat32_ent_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = ptrtoint ptr %3 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !16

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 149, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = and i32 %4, 268435455
  %11 = icmp ugt i32 %10, 268435446
  %12 = select i1 %11, i32 268435455, i32 %10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat32_ent_put(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 268435456
  br i1 %3, label %5, label %4, !prof !16

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 188, i32 noundef 9, ptr noundef null) #9
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -268435456
  %10 = or i32 %9, %1
  store i32 %10, ptr %7, align 4
  %11 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %12, ptr noundef %14) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fat32_ent_next(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %0, align 4
  %6 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, -4
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = icmp ult ptr %7, %13
  %15 = getelementptr i32, ptr %7, i32 1
  %16 = select i1 %14, ptr %15, ptr null
  %17 = zext i1 %14 to i32
  store ptr %16, ptr %6, align 4
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat16_ent_set_ptr(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !16

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 59, i32 noundef 9, ptr noundef null) #9
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat16_ent_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i16, ptr %3, align 2
  %5 = ptrtoint ptr %3 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !16

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 140, i32 noundef 9, ptr noundef null) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = zext i16 %4 to i32
  %11 = icmp ugt i16 %4, -10
  %12 = select i1 %11, i32 268435455, i32 %10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat16_ent_put(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = trunc i32 %1 to i16
  %4 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store i16 %3, ptr %5, align 2
  %6 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %7, ptr noundef %9) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fat16_ent_next(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %0, align 4
  %6 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, -2
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = icmp ult ptr %7, %13
  %15 = getelementptr i16, ptr %7, i32 1
  %16 = select i1 %14, ptr %15, ptr null
  %17 = zext i1 %14 to i32
  store ptr %16, ptr %6, align 4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat12_ent_blocknr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %8, label %12, !prof !15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %13, label %12, !prof !16

12:                                               ; preds = %8, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef null) #9
  br label %13

13:                                               ; preds = %12, %8
  %14 = ashr i32 %1, 1
  %15 = add i32 %14, %1
  %16 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 16
  %18 = add i32 %17, -1
  %19 = and i32 %18, %15
  store i32 %19, ptr %2, align 4
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 5
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = ashr i32 %15, %25
  %27 = add i32 %26, %22
  %28 = sext i32 %27 to i64
  store i64 %28, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat12_ent_set_ptr(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  br i1 %6, label %11, label %24

11:                                               ; preds = %2
  %12 = icmp ugt i32 %10, %1
  br i1 %12, label %15, label %13, !prof !16

13:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 47, i32 noundef 9, ptr noundef null) #9
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %7, %11 ]
  %17 = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %1
  %20 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = load ptr, ptr %17, align 4
  %22 = add i32 %1, 1
  %23 = getelementptr i8, ptr %21, i32 %22
  br label %38

24:                                               ; preds = %2
  %25 = icmp eq i32 %10, %1
  br i1 %25, label %28, label %26, !prof !16

26:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 51, i32 noundef 9, ptr noundef null) #9
  %27 = load ptr, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %27, %26 ], [ %7, %24 ]
  %30 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %1
  %33 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 3, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %28, %15
  %39 = phi ptr [ %37, %28 ], [ %23, %15 ]
  %40 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat12_ent_bread(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 5
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i64
  %11 = icmp ugt i64 %10, %3
  br i1 %11, label %12, label %14, !prof !12

12:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  %13 = load ptr, ptr %6, align 4
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ %7, %4 ]
  %16 = getelementptr inbounds %struct.msdos_sb_info, ptr %15, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 16
  %23 = tail call ptr @__bread_gfp(ptr noundef %20, i64 noundef %3, i32 noundef %22, i32 noundef 8) #9
  store ptr %23, ptr %5, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %77, label %25

25:                                               ; preds = %14
  %26 = add i32 %2, 1
  %27 = load i32, ptr %21, align 16
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = add i64 %3, 1
  %31 = load ptr, ptr %19, align 4
  %32 = tail call ptr @__bread_gfp(ptr noundef %31, i64 noundef %30, i32 noundef %27, i32 noundef 8) #9
  %33 = getelementptr %struct.fat_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %73, label %51

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 2
  store i32 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, -1
  %40 = icmp ugt i32 %39, %2
  br i1 %40, label %43, label %41, !prof !16

41:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 47, i32 noundef 9, ptr noundef null) #9
  %42 = load ptr, ptr %5, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %42, %41 ], [ %23, %35 ]
  %45 = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %2
  %48 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %45, align 4
  %50 = getelementptr i8, ptr %49, i32 %26
  br label %70

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 2
  store i32 2, ptr %52, align 4
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, -1
  %57 = icmp eq i32 %56, %2
  br i1 %57, label %60, label %58, !prof !16

58:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 51, i32 noundef 9, ptr noundef null) #9
  %59 = load ptr, ptr %5, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = phi ptr [ %59, %58 ], [ %53, %51 ]
  %62 = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %2
  %65 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = getelementptr %struct.fat_entry, ptr %1, i32 0, i32 3, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %60, %43
  %71 = phi ptr [ %69, %60 ], [ %50, %43 ]
  %72 = getelementptr %struct.fat_entry, ptr %1, i32 0, i32 1, i32 0, i32 1
  store ptr %71, ptr %72, align 4
  br label %79

73:                                               ; preds = %29
  %74 = load ptr, ptr %5, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @__brelse(ptr noundef nonnull %74) #9
  br label %77

77:                                               ; preds = %76, %73, %14
  %78 = phi i64 [ %3, %14 ], [ %30, %73 ], [ %30, %76 ]
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %78) #10
  br label %79

79:                                               ; preds = %77, %70
  %80 = phi i32 [ 0, %70 ], [ -5, %77 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat12_ent_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @fat12_entry_lock) #9
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = load i8, ptr %7, align 1
  %9 = lshr i8 %8, 4
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 4
  %16 = or i32 %15, %10
  br label %27

17:                                               ; preds = %1
  %18 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = load ptr, ptr %2, align 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  br label %27

27:                                               ; preds = %17, %6
  %28 = phi i32 [ %16, %6 ], [ %26, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %29 = load i16, ptr @fat12_entry_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @fat12_entry_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %31 = and i32 %28, 4095
  %32 = icmp ugt i32 %31, 4086
  %33 = select i1 %32, i32 268435455, i32 %31
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat12_ent_put(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %4 = icmp eq i32 %1, 268435455
  %5 = select i1 %4, i32 4095, i32 %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @fat12_entry_lock) #9
  %6 = load i32, ptr %0, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 15
  %13 = trunc i32 %5 to i8
  %14 = shl i8 %13, 4
  %15 = or i8 %12, %14
  store i8 %15, ptr %10, align 1
  %16 = lshr i32 %5, 4
  %17 = trunc i32 %16 to i8
  %18 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store i8 %17, ptr %19, align 1
  br label %30

20:                                               ; preds = %2
  %21 = trunc i32 %5 to i8
  %22 = load ptr, ptr %3, align 4
  store i8 %21, ptr %22, align 1
  %23 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, -16
  %27 = lshr i32 %5, 8
  %28 = trunc i32 %27 to i8
  %29 = or i8 %26, %28
  store i8 %29, ptr %24, align 1
  br label %30

30:                                               ; preds = %20, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %31 = load i16, ptr @fat12_entry_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @fat12_entry_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %33 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %34, ptr noundef %36) #9
  %37 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 3, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %35, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %42, ptr noundef %43) #9
  br label %44

44:                                               ; preds = %40, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat12_ent_next(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 3
  %4 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1
  %7 = load i32, ptr %0, align 4
  %8 = and i32 %7, 1
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = add i32 %7, 1
  store i32 %10, ptr %0, align 4
  %11 = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  %14 = load ptr, ptr %2, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  br i1 %13, label %20, label %52

20:                                               ; preds = %1
  %21 = add i32 %19, -2
  %22 = getelementptr i8, ptr %17, i32 %21
  %23 = icmp ugt ptr %14, %22
  br i1 %23, label %24, label %31, !prof !12

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 203, i32 noundef 9, ptr noundef null) #9
  %25 = load ptr, ptr %4, align 4
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i32 [ %30, %24 ], [ %19, %20 ]
  %33 = phi ptr [ %28, %24 ], [ %17, %20 ]
  %34 = phi ptr [ %25, %24 ], [ %5, %20 ]
  %35 = add i32 %32, -1
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = icmp ugt ptr %34, %36
  br i1 %37, label %38, label %45, !prof !12

38:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 205, i32 noundef 9, ptr noundef null) #9
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, -1
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi i32 [ %44, %38 ], [ %35, %31 ]
  %47 = phi ptr [ %41, %38 ], [ %33, %31 ]
  %48 = getelementptr i8, ptr %47, i32 %46
  %49 = icmp ult ptr %9, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %9, i32 -1
  store ptr %51, ptr %2, align 4
  store ptr %9, ptr %4, align 4
  br label %74

52:                                               ; preds = %1
  %53 = add i32 %19, -1
  %54 = getelementptr i8, ptr %17, i32 %53
  %55 = icmp eq ptr %14, %54
  br i1 %55, label %58, label %56, !prof !16

56:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 213, i32 noundef 9, ptr noundef null) #9
  %57 = load ptr, ptr %4, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi ptr [ %57, %56 ], [ %5, %52 ]
  %60 = getelementptr %struct.fat_entry, ptr %0, i32 0, i32 3, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %66, label %65, !prof !16

65:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 214, i32 noundef 9, ptr noundef null) #9
  br label %66

66:                                               ; preds = %65, %58
  %67 = getelementptr i8, ptr %9, i32 -1
  store ptr %67, ptr %2, align 4
  store ptr %9, ptr %4, align 4
  %68 = load ptr, ptr %3, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @__brelse(ptr noundef nonnull %68) #9
  br label %71

71:                                               ; preds = %70, %66
  %72 = load ptr, ptr %60, align 4
  store ptr %72, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %74

73:                                               ; preds = %45
  store ptr null, ptr %2, align 4
  store ptr null, ptr %4, align 4
  br label %74

74:                                               ; preds = %73, %71, %50
  %75 = phi i32 [ 1, %50 ], [ 0, %73 ], [ 1, %71 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 575659, i64 2148077225, i64 2148077251, i64 2148077298, i64 2148077320, i64 2148077348, i64 2148077368}
!10 = !{i64 2148148949, i64 2148148981, i64 2148149010, i64 2148149044, i64 2148149075, i64 2148149098}
!11 = !{i64 2148250289}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153167489, i64 2153167969, i64 2153167526, i64 2153167582, i64 2153167616, i64 2153167640, i64 2153167681, i64 2153167702, i64 2153167730, i64 2153167764}
!14 = !{i64 2148140487, i64 2148140513, i64 2148140542, i64 2148140576, i64 2148140607, i64 2148140630}
!15 = !{!"branch_weights", i32 2146410443, i32 1073205}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149223872}
!18 = !{i64 2149219696}
!19 = !{i64 2149219771, i64 2149219798, i64 2149219845, i64 2149219867, i64 2149219895, i64 2149219915}
!20 = !{i64 2149246875}
