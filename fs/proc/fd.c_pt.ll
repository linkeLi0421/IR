; ModuleID = '/llk/IR/fs/proc/fd.c_pt.bc'
source_filename = "../fs/proc/fd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fd_data = type { i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, ptr, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.54 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.55 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.58 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [12 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [44 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }

@proc_fd_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_readfd, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@proc_fd_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @proc_lookupfd, ptr null, ptr @proc_fd_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_fdinfo_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @proc_lookupfdinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_fdinfo_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_readfdinfo, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@proc_pid_link_inode_operations = external dso_local constant %struct.inode_operations, align 64
@tid_fd_dentry_operations = internal constant %struct.dentry_operations { ptr @tid_fd_revalidate, ptr null, ptr null, ptr null, ptr @pid_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@proc_fdinfo_file_operations = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_fdinfo_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"pos:\09%lli\0Aflags:\090%o\0Amnt_id:\09%i\0Aino:\09%lu\0A\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_readfd(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @proc_readfd_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @proc_fd_instantiate)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_fd_permission(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef %2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %7 = getelementptr i8, ptr %1, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @pid_task(ptr noundef %8, i32 noundef 0) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @llvm.thread.pointer() #6
  %13 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %16 = load ptr, ptr %15, align 16
  %17 = icmp eq ptr %14, %16
  %18 = select i1 %17, i32 0, i32 %4
  br label %19

19:                                               ; preds = %11, %6
  %20 = phi i32 [ %4, %6 ], [ %18, %11 ]
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ 0, %3 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_lookupfd(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call fastcc ptr @proc_lookupfd_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @proc_fd_instantiate)
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_lookupfdinfo(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call fastcc ptr @proc_lookupfd_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @proc_fdinfo_instantiate)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_readfdinfo(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @proc_readfd_common(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @proc_fdinfo_instantiate)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @proc_readfd_common(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd_data, align 8
  %6 = alloca [11 x i8], align 1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -40
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @get_pid_task(ptr noundef %10, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  switch i64 %15, label %45 [
    i64 0, label %16
    i64 1, label %28
  ]

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = tail call i32 %17(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 1, i64 noundef 0, i64 noundef %24, i32 noundef 4) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %16
  store i64 1, ptr %14, align 8
  br label %28

28:                                               ; preds = %27, %13
  %29 = load ptr, ptr %1, align 8
  %30 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %32) #6
  %33 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %39 = load i16, ptr %32, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %41 = zext i32 %38 to i64
  %42 = tail call i32 %29(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 2, i64 noundef 1, i64 noundef %41, i32 noundef 4) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %28
  store i64 2, ptr %14, align 8
  br label %45

45:                                               ; preds = %44, %13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %46 = load i64, ptr %14, align 8
  %47 = trunc i64 %46 to i32
  %48 = add i32 %47, -2
  store i32 %48, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %6, i8 0, i32 11, i1 false), !annotation !10
  %49 = call ptr @task_lookup_next_fd_rcu(ptr noundef nonnull %11, ptr noundef nonnull %4) #6
  %50 = load i32, ptr %4, align 4
  %51 = zext i32 %50 to i64
  %52 = add nuw nsw i64 %51, 2
  store i64 %52, ptr %14, align 8
  %53 = icmp eq ptr %49, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.fd_data, ptr %5, i32 0, i32 1
  br label %56

56:                                               ; preds = %64, %54
  %57 = phi ptr [ %49, %54 ], [ %68, %64 ]
  %58 = getelementptr inbounds %struct.file, ptr %57, i32 0, i32 8
  %59 = load i32, ptr %58, align 8
  store i32 %59, ptr %5, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %60 = load i32, ptr %4, align 4
  store i32 %60, ptr %55, align 4
  %61 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 11, ptr noundef nonnull @.str, i32 noundef %60)
  %62 = call zeroext i1 @proc_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %61, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %5) #6
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %74

64:                                               ; preds = %56
  %65 = call i32 @__cond_resched() #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  %66 = load i32, ptr %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %6, i8 0, i32 11, i1 false), !annotation !10
  %68 = call ptr @task_lookup_next_fd_rcu(ptr noundef nonnull %11, ptr noundef nonnull %4) #6
  %69 = load i32, ptr %4, align 4
  %70 = zext i32 %69 to i64
  %71 = add nuw nsw i64 %70, 2
  store i64 %71, ptr %14, align 8
  %72 = icmp eq ptr %68, null
  br i1 %72, label %73, label %56

73:                                               ; preds = %64, %45
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  br label %74

74:                                               ; preds = %73, %63, %28, %16
  %75 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #6, !srcloc !16
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #6, !srcloc !17
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = icmp sgt i32 %77, 0
  br i1 %80, label %83, label %81, !prof !18

81:                                               ; preds = %79
  call void @refcount_warn_saturate(ptr noundef %75, i32 noundef 3) #6
  br label %83

82:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  call void @__put_task_struct(ptr noundef nonnull %11) #6
  br label %83

83:                                               ; preds = %82, %81, %79, %3
  %84 = phi i32 [ -2, %3 ], [ 0, %79 ], [ 0, %81 ], [ 0, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_fd_instantiate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @proc_pid_make_inode(ptr noundef %5, ptr noundef %1, i16 noundef zeroext -24576) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.fd_data, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 -36
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @proc_pid_link_inode_operations, ptr %12, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  store i64 64, ptr %13, align 8
  %14 = getelementptr i8, ptr %6, i32 -32
  store ptr @proc_fd_link, ptr %14, align 8
  %15 = load i32, ptr %2, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %1, i16 noundef zeroext 0, ptr noundef %16, ptr noundef %17) #6
  %18 = load i16, ptr %6, align 8
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, -24576
  br i1 %20, label %21, label %30

21:                                               ; preds = %8
  %22 = and i32 %15, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 40960, i32 41280
  %25 = and i32 %15, 2
  %26 = icmp eq i32 %25, 0
  %27 = or i32 %24, 192
  %28 = select i1 %26, i32 %24, i32 %27
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %6, align 8
  br label %30

30:                                               ; preds = %21, %8
  tail call void @d_set_d_op(ptr noundef %0, ptr noundef nonnull @tid_fd_dentry_operations) #6
  %31 = tail call ptr @d_splice_alias(ptr noundef nonnull %6, ptr noundef %0) #6
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi ptr [ %31, %30 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %33
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_lookup_next_fd_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @proc_fill_cache(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_pid_make_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_fd_link(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 -36
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @fget_task(ptr noundef nonnull %7, i32 noundef %12) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %1, align 4
  tail call void @path_get(ptr noundef %16) #6
  tail call void @fput(ptr noundef nonnull %13) #6
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ 0, %15 ], [ -2, %9 ]
  %20 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #6, !srcloc !16
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #6, !srcloc !17
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !18

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #6
  br label %28

27:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void @__put_task_struct(ptr noundef nonnull %7) #6
  br label %28

28:                                               ; preds = %27, %26, %24, %2
  %29 = phi i32 [ -2, %2 ], [ %19, %24 ], [ %19, %26 ], [ %19, %27 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_dump_owner(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tid_fd_revalidate(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = and i32 %1, 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %52

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @get_pid_task(ptr noundef %9, i32 noundef 0) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 -36
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %15 = tail call ptr @task_lookup_fd_rcu(ptr noundef nonnull %10, i32 noundef %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %20 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  %21 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef nonnull %10, i16 noundef zeroext 0, ptr noundef %20, ptr noundef %21) #6
  %22 = load i16, ptr %7, align 8
  %23 = and i16 %22, -4096
  %24 = icmp eq i16 %23, -24576
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = and i32 %19, 1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 40960, i32 41280
  %29 = and i32 %19, 2
  %30 = icmp eq i32 %29, 0
  %31 = or i32 %28, 192
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %7, align 8
  br label %34

34:                                               ; preds = %25, %17
  %35 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #6, !srcloc !16
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #6, !srcloc !17
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %52, label %41, !prof !18

41:                                               ; preds = %39
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef 3) #6
  br label %52

42:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void @__put_task_struct(ptr noundef nonnull %10) #6
  br label %52

43:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %44 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #6, !srcloc !16
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #6, !srcloc !17
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %52, label %50, !prof !18

50:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef 3) #6
  br label %52

51:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void @__put_task_struct(ptr noundef nonnull %10) #6
  br label %52

52:                                               ; preds = %51, %50, %48, %42, %41, %39, %5, %2
  %53 = phi i32 [ -10, %2 ], [ 0, %5 ], [ 1, %39 ], [ 1, %41 ], [ 1, %42 ], [ 0, %48 ], [ 0, %50 ], [ 0, %51 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_delete_dentry(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_lookup_fd_rcu(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @proc_lookupfd_common(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca %struct.fd_data, align 8
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !10
  %8 = getelementptr inbounds %struct.fd_data, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %10 = tail call i32 @name_to_int(ptr noundef %9) #6
  store i32 %10, ptr %8, align 4
  %11 = icmp eq ptr %7, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %10, -1
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %15 = tail call ptr @task_lookup_fd_rcu(ptr noundef nonnull %7, i32 noundef %10) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  br label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  store i32 %20, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %21 = call ptr %2(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %4) #6, !callees !20
  br label %22

22:                                               ; preds = %18, %17, %12
  %23 = phi ptr [ inttoptr (i32 -2 to ptr), %12 ], [ %21, %18 ], [ inttoptr (i32 -2 to ptr), %17 ]
  %24 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #6, !srcloc !16
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #6, !srcloc !17
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !18

30:                                               ; preds = %28
  call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #6
  br label %32

31:                                               ; preds = %22
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  call void @__put_task_struct(ptr noundef nonnull %7) #6
  br label %32

32:                                               ; preds = %31, %30, %28, %3
  %33 = phi ptr [ inttoptr (i32 -2 to ptr), %3 ], [ %23, %28 ], [ %23, %30 ], [ %23, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_fdinfo_instantiate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @proc_pid_make_inode(ptr noundef %5, ptr noundef %1, i16 noundef zeroext -32476) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.fd_data, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 -36
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @proc_fdinfo_file_operations, ptr %12, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  %14 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %1, i16 noundef zeroext 0, ptr noundef %13, ptr noundef %14) #6
  %15 = load i16, ptr %6, align 8
  %16 = and i16 %15, -4096
  %17 = icmp eq i16 %16, -24576
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i16 -24576, ptr %6, align 8
  br label %19

19:                                               ; preds = %18, %8
  tail call void @d_set_d_op(ptr noundef %0, ptr noundef nonnull @tid_fd_dentry_operations) #6
  %20 = tail call ptr @d_splice_alias(ptr noundef nonnull %6, ptr noundef %0) #6
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi ptr [ %20, %19 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seq_fdinfo_open(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %5, i32 noundef 9) #6
  %9 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #6, !srcloc !17
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !18

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #6
  br label %17

16:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void @__put_task_struct(ptr noundef nonnull %5) #6
  br label %17

17:                                               ; preds = %16, %15, %13
  br i1 %8, label %18, label %20

18:                                               ; preds = %17
  %19 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @seq_show, ptr noundef %0) #6
  br label %20

20:                                               ; preds = %18, %17, %2
  %21 = phi i32 [ %19, %18 ], [ -3, %2 ], [ -13, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %94, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 90
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr i8, ptr %15, i32 -36
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.files_struct, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.files_struct, ptr %12, i32 0, i32 3
  %20 = load volatile ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %17
  br i1 %22, label %23, label %48

23:                                               ; preds = %14
  %24 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %17, i32 %21) #6, !srcloc !21
  %25 = and i32 %24, %17
  %26 = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr ptr, ptr %27, i32 %25
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %23
  %32 = load volatile ptr, ptr %19, align 4
  %33 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fdtable, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = lshr i32 %17, 5
  %38 = getelementptr i32, ptr %36, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %17, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %34, 524288
  %45 = select i1 %43, i32 %34, i32 %44
  %46 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #6, !srcloc !16
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #6, !srcloc !22
  br label %48

48:                                               ; preds = %31, %23, %14
  %49 = phi ptr [ %29, %31 ], [ null, %23 ], [ null, %14 ]
  %50 = phi i32 [ 0, %31 ], [ -2, %23 ], [ -2, %14 ]
  %51 = phi i32 [ %45, %31 ], [ 0, %23 ], [ 0, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %52 = load i16, ptr %18, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  br label %54

54:                                               ; preds = %48, %9
  %55 = phi ptr [ %49, %48 ], [ null, %9 ]
  %56 = phi i32 [ %50, %48 ], [ -2, %9 ]
  %57 = phi i32 [ %51, %48 ], [ 0, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %58 = load i16, ptr %10, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %60 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #6, !srcloc !16
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #6, !srcloc !17
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %68, label %66, !prof !18

66:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef %60, i32 noundef 3) #6
  br label %68

67:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call void @__put_task_struct(ptr noundef nonnull %7) #6
  br label %68

68:                                               ; preds = %67, %66, %64
  %69 = icmp eq i32 %56, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 10
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr i8, ptr %74, i32 132
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.inode, ptr %78, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %72, i32 noundef %57, i32 noundef %76, i32 noundef %80) #6
  tail call void @show_fd_locks(ptr noundef %0, ptr noundef %55, ptr noundef %12) #6
  %81 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.file_operations, ptr %88, i32 0, i32 28
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  tail call void %90(ptr noundef %0, ptr noundef %55) #6
  br label %93

93:                                               ; preds = %92, %86, %70
  tail call void @fput(ptr noundef %55) #6
  br label %94

94:                                               ; preds = %93, %68, %2
  %95 = phi i32 [ 0, %93 ], [ -2, %2 ], [ %56, %68 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_fd_locks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!8 = !{i64 2148885848}
!9 = !{i64 2148886065}
!10 = !{!"auto-init"}
!11 = !{i64 2149238458}
!12 = !{i64 2149234282}
!13 = !{i64 2149234357, i64 2149234384, i64 2149234431, i64 2149234453, i64 2149234481, i64 2149234501}
!14 = !{i64 2149261461}
!15 = !{i64 2148128034}
!16 = !{i64 461526, i64 2147963092, i64 2147963118, i64 2147963165, i64 2147963187, i64 2147963215, i64 2147963235}
!17 = !{i64 2148030169, i64 2148030201, i64 2148030230, i64 2148030264, i64 2148030295, i64 2148030318}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149312373}
!20 = !{ptr @proc_fd_instantiate, ptr @proc_fdinfo_instantiate}
!21 = !{i64 335641, i64 335658, i64 2147819728}
!22 = !{i64 2148026354, i64 2148026380, i64 2148026409, i64 2148026443, i64 2148026474, i64 2148026497}
