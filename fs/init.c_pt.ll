; ModuleID = '/llk/IR/fs/init.c_pt.bc'
source_filename = "../fs/init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.58 }
%union.anon.58 = type { i64 }
%union.anon.60 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.61 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.52, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.53, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.54, ptr, %struct.address_space, %struct.list_head, %union.anon.57, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.52 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.53 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.54 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.57 = type { ptr }
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
%struct.file = type { %union.anon.62, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.62 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@init_user_ns = external dso_local global %struct.user_namespace, align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_mount(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 section ".init.text" {
  %6 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = call i32 @kern_path(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 @path_mount(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3, ptr noundef %4) #4
  call void @path_put(ptr noundef nonnull %6) #4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_umount(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = and i32 %1, 8
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 129, i32 128
  %7 = call i32 @kern_path(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %3) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @path_umount(ptr noundef nonnull %3, i32 noundef %1) #4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_umount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_chdir(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = call i32 @kern_path(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %9 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @inode_permission(ptr noundef %8, ptr noundef %12, i32 noundef 65) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = tail call ptr @llvm.thread.pointer() #4
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 89
  %18 = load ptr, ptr %17, align 64
  call void @set_fs_pwd(ptr noundef %18, ptr noundef nonnull %2) #4
  br label %19

19:                                               ; preds = %15, %5
  call void @path_put(ptr noundef nonnull %2) #4
  br label %20

20:                                               ; preds = %19, %1
  %21 = phi i32 [ %13, %19 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_chroot(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = call i32 @kern_path(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %9 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @inode_permission(ptr noundef %8, ptr noundef %12, i32 noundef 65) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 18) #4
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = tail call ptr @llvm.thread.pointer() #4
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 89
  %20 = load ptr, ptr %19, align 64
  call void @set_fs_root(ptr noundef %20, ptr noundef nonnull %2) #4
  br label %21

21:                                               ; preds = %17, %15, %5
  %22 = phi i32 [ %13, %5 ], [ 0, %17 ], [ -1, %15 ]
  call void @path_put(ptr noundef nonnull %2) #4
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i32 [ %22, %21 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_chown(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = alloca %struct.path, align 8
  %6 = lshr i32 %3, 8
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  store i64 0, ptr %5, align 8, !annotation !8
  %9 = call i32 @kern_path(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8
  %13 = call i32 @mnt_want_write(ptr noundef %12) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call i32 @chown_common(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2) #4
  %17 = load ptr, ptr %5, align 8
  call void @mnt_drop_write(ptr noundef %17) #4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %13, %11 ], [ %16, %15 ]
  call void @path_put(ptr noundef nonnull %5) #4
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i32 [ %19, %18 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chown_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_chmod(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = call i32 @kern_path(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 @chmod_common(ptr noundef nonnull %3, i16 noundef zeroext %1) #4
  call void @path_put(ptr noundef nonnull %3) #4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chmod_common(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_eaccess(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = call i32 @kern_path(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %9 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @inode_permission(ptr noundef %8, ptr noundef %12, i32 noundef 16) #4
  call void @path_put(ptr noundef nonnull %2) #4
  br label %14

14:                                               ; preds = %5, %1
  %15 = phi i32 [ %13, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_stat(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca %struct.path, align 8
  %5 = lshr i32 %2, 8
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  store i64 0, ptr %4, align 8, !annotation !8
  %8 = call i32 @kern_path(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %4) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = or i32 %2, 2048
  %12 = call i32 @vfs_getattr(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 2047, i32 noundef %11) #4
  call void @path_put(ptr noundef nonnull %4) #4
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ %8, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_mknod(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = and i16 %1, -4096
  switch i16 %5, label %46 [
    i16 4096, label %8
    i16 -16384, label %8
    i16 24576, label %6
    i16 8192, label %7
  ]

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %6, %3, %3
  %9 = phi i32 [ 0, %3 ], [ 0, %3 ], [ %2, %6 ], [ %2, %7 ]
  %10 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %10 to i32
  br label %46

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = call i32 @current_umask() #4
  %27 = trunc i32 %26 to i16
  %28 = xor i16 %27, -1
  %29 = and i16 %28, %1
  br label %30

30:                                               ; preds = %25, %14
  %31 = phi i16 [ %1, %14 ], [ %29, %25 ]
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.vfsmount, ptr %32, i32 0, i32 3
  %34 = load volatile ptr, ptr %33, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = and i32 %9, 255
  %39 = lshr i32 %9, 12
  %40 = and i32 %39, 1048320
  %41 = or i32 %40, %38
  %42 = shl i32 %9, 12
  %43 = and i32 %42, -1048576
  %44 = or i32 %41, %43
  %45 = call i32 @vfs_mknod(ptr noundef %34, ptr noundef %37, ptr noundef %10, i16 noundef zeroext %31, i32 noundef %44) #4
  call void @done_path_create(ptr noundef nonnull %4, ptr noundef %10) #4
  br label %46

46:                                               ; preds = %30, %12, %3
  %47 = phi i32 [ %13, %12 ], [ %45, %30 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_link(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.path, align 8
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = call i32 @kern_path(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0) #4
  %9 = ptrtoint ptr %8 to i32
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 3
  %17 = load volatile ptr, ptr %16, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %18 = call i32 @may_linkat(ptr noundef %17, ptr noundef nonnull %3) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !10

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  %27 = call i32 @vfs_link(ptr noundef %22, ptr noundef %17, ptr noundef %26, ptr noundef %8, ptr noundef null) #4
  br label %28

28:                                               ; preds = %20, %15, %11
  %29 = phi i32 [ -18, %11 ], [ %18, %15 ], [ %27, %20 ]
  call void @done_path_create(ptr noundef nonnull %4, ptr noundef %8) #4
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i32 [ %9, %7 ], [ %29, %28 ]
  call void @path_put(ptr noundef nonnull %3) #4
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ %31, %30 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_linkat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_symlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 0) #4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  br label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.vfsmount, ptr %9, i32 0, i32 3
  %11 = load volatile ptr, ptr %10, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %12 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @vfs_symlink(ptr noundef %11, ptr noundef %15, ptr noundef %4, ptr noundef %0) #4
  call void @done_path_create(ptr noundef nonnull %3, ptr noundef %4) #4
  br label %17

17:                                               ; preds = %8, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_unlink(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @getname_kernel(ptr noundef %0) #4
  %3 = tail call i32 @do_unlinkat(i32 noundef -100, ptr noundef %2) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unlinkat(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_mkdir(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  br label %33

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = call i32 @current_umask() #4
  %21 = trunc i32 %20 to i16
  %22 = xor i16 %21, -1
  %23 = and i16 %22, %1
  br label %24

24:                                               ; preds = %19, %8
  %25 = phi i16 [ %1, %8 ], [ %23, %19 ]
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.vfsmount, ptr %26, i32 0, i32 3
  %28 = load volatile ptr, ptr %27, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @vfs_mkdir(ptr noundef %28, ptr noundef %31, ptr noundef %4, i16 noundef zeroext %25) #4
  call void @done_path_create(ptr noundef nonnull %3, ptr noundef %4) #4
  br label %33

33:                                               ; preds = %24, %6
  %34 = phi i32 [ %7, %6 ], [ %32, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_rmdir(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @getname_kernel(ptr noundef %0) #4
  %3 = tail call i32 @do_rmdir(i32 noundef -100, ptr noundef %2) #4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_rmdir(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_utimes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = call i32 @kern_path(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 @vfs_utimes(ptr noundef nonnull %3, ptr noundef %1) #4
  call void @path_put(ptr noundef nonnull %3) #4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_utimes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_dup(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = tail call i32 @get_unused_fd_flags(i32 noundef 0) #4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #4, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #4, !srcloc !12
  tail call void @fd_install(i32 noundef %2, ptr noundef %0) #4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 0, %4 ], [ %2, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }

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
!9 = !{i64 2149079628}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 528733, i64 2148018704, i64 2148018730, i64 2148018777, i64 2148018799, i64 2148018827, i64 2148018847}
!12 = !{i64 2148030916, i64 2148030942, i64 2148030971, i64 2148031005, i64 2148031036, i64 2148031059}
