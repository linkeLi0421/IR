; ModuleID = '/llk/IR/fs/fsopen.c_pt.bc'
source_filename = "../fs/fsopen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, ptr, [8 x ptr] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.fs_parameter = type { ptr, i8, %union.anon.18, i32, i32 }
%union.anon.18 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@fscontext_fops = dso_local constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @fscontext_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @fscontext_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"[fscontext]\00", align 1
@legacy_fs_context_ops = external dso_local constant %struct.fs_context_operations, align 4

@sys_fsopen = dso_local alias i32 (ptr, i32), ptr @__se_sys_fsopen
@sys_fspick = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_fspick
@sys_fsconfig = dso_local alias i32 (i32, i32, ptr, ptr, i32), ptr @__se_sys_fsconfig

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fscontext_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fs_context, ptr %6, i32 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fs_context, ptr %6, i32 0, i32 1
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.fc_log, ptr %8, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fc_log, ptr %8, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @mutex_unlock(ptr noundef %9) #7
  br label %61

19:                                               ; preds = %12
  %20 = and i8 %16, 7
  %21 = zext i8 %20 to i32
  %22 = getelementptr %struct.fc_log, ptr %8, i32 0, i32 5, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fc_log, ptr %8, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 1, %21
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  store ptr null, ptr %22, align 4
  %30 = trunc i32 %27 to i8
  %31 = xor i8 %30, -1
  %32 = and i8 %25, %31
  store i8 %32, ptr %24, align 2
  %33 = add i8 %16, 1
  store i8 %33, ptr %15, align 1
  tail call void @mutex_unlock(ptr noundef %9) #7
  %34 = tail call i32 @strlen(ptr noundef %23)
  %35 = icmp ugt i32 %34, %2
  br i1 %35, label %58, label %36

36:                                               ; preds = %19
  %37 = icmp slt i32 %34, 0
  %38 = load i1, ptr @check_copy_size.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %36
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %42

42:                                               ; preds = %41, %36
  br i1 %37, label %58, label %43, !prof !8

43:                                               ; preds = %42
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %34, i32 -1090519040) #8, !srcloc !9
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #7
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #9, !srcloc !10
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %53 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %23, i32 noundef %34) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i32 [ %53, %47 ], [ %34, %43 ]
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 %34, i32 -14
  br label %58

58:                                               ; preds = %54, %42, %19
  %59 = phi i32 [ -90, %19 ], [ -14, %42 ], [ %57, %54 ]
  br i1 %29, label %61, label %60

60:                                               ; preds = %58
  tail call void @kfree(ptr noundef %23) #7
  br label %61

61:                                               ; preds = %60, %58, %18, %4
  %62 = phi i32 [ -61, %18 ], [ %10, %4 ], [ %59, %60 ], [ %59, %58 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fscontext_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8
  tail call void @put_fs_context(ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsopen(i32 noundef %0, i32 noundef %1) #1 {
  %3 = inttoptr i32 %0 to ptr
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 92
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call zeroext i1 @ns_capable(ptr noundef %10, i32 noundef 21) #7
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = icmp ult i32 %1, 2
  br i1 %13, label %14, label %48

14:                                               ; preds = %12
  %15 = tail call ptr @strndup_user(ptr noundef %3, i32 noundef 4096) #7
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %48

19:                                               ; preds = %14
  %20 = tail call ptr @get_fs_type(ptr noundef %15) #7
  tail call void @kfree(ptr noundef %15) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @fs_context_for_mount(ptr noundef nonnull %20, i32 noundef 0) #7
  tail call void @put_filesystem(ptr noundef nonnull %20) #7
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = ptrtoint ptr %23 to i32
  br label %48

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.fs_context, ptr %23, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -65281
  store i32 %30, ptr %28, align 4
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 44) #10
  %33 = getelementptr inbounds %struct.fs_context, ptr %23, i32 0, i32 9, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  store volatile i32 1, ptr %32, align 8
  %36 = getelementptr inbounds %struct.fs_context, ptr %23, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.file_system_type, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.fc_log, ptr %32, i32 0, i32 4
  store ptr %39, ptr %40, align 8
  %41 = shl nuw nsw i32 %1, 19
  %42 = and i32 %41, 524288
  %43 = or i32 %42, 2
  %44 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.2, ptr noundef nonnull @fscontext_fops, ptr noundef %23, i32 noundef %43) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  tail call void @put_fs_context(ptr noundef %23) #7
  br label %48

47:                                               ; preds = %27
  tail call void @put_fs_context(ptr noundef %23) #7
  br label %48

48:                                               ; preds = %47, %46, %35, %25, %19, %17, %12, %2
  %49 = phi i32 [ %18, %17 ], [ %26, %25 ], [ -12, %47 ], [ -1, %2 ], [ -22, %12 ], [ -19, %19 ], [ %44, %35 ], [ %44, %46 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fspick(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.path, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !13
  %6 = tail call ptr @llvm.thread.pointer() #7
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mnt_namespace, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 21) #7
  br i1 %13, label %14, label %64

14:                                               ; preds = %3
  %15 = icmp ult i32 %2, 16
  br i1 %15, label %16, label %64

16:                                               ; preds = %14
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 5, i32 4
  %20 = and i32 %2, 4
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %19, 1
  %23 = select i1 %21, i32 %19, i32 %22
  %24 = shl nuw nsw i32 %2, 11
  %25 = and i32 %24, 16384
  %26 = or i32 %23, %25
  %27 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %5, i32 noundef %26, ptr noundef nonnull %4, ptr noundef null) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %16
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = call ptr @fs_context_for_reconfigure(ptr noundef %31, i32 noundef 0, i32 noundef 0) #7
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = ptrtoint ptr %36 to i32
  br label %62

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.fs_context, ptr %36, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, -65281
  %44 = or i32 %43, 1024
  store i32 %44, ptr %41, align 4
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 44) #10
  %47 = getelementptr inbounds %struct.fs_context, ptr %36, i32 0, i32 9, i32 1
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %40
  store volatile i32 1, ptr %46, align 8
  %50 = getelementptr inbounds %struct.fs_context, ptr %36, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.file_system_type, ptr %51, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fc_log, ptr %46, i32 0, i32 4
  store ptr %53, ptr %54, align 8
  call void @path_put(ptr noundef nonnull %4) #7
  %55 = shl nuw nsw i32 %2, 19
  %56 = and i32 %55, 524288
  %57 = or i32 %56, 2
  %58 = call i32 @anon_inode_getfd(ptr noundef nonnull @.str.2, ptr noundef nonnull @fscontext_fops, ptr noundef %36, i32 noundef %57) #7
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  call void @put_fs_context(ptr noundef %36) #7
  br label %64

61:                                               ; preds = %40
  call void @put_fs_context(ptr noundef %36) #7
  br label %62

62:                                               ; preds = %61, %38, %29
  %63 = phi i32 [ -22, %29 ], [ %39, %38 ], [ -12, %61 ]
  call void @path_put(ptr noundef nonnull %4) #7
  br label %64

64:                                               ; preds = %62, %60, %49, %16, %14, %3
  %65 = phi i32 [ -1, %3 ], [ -22, %14 ], [ %27, %16 ], [ %63, %62 ], [ %58, %49 ], [ %58, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsconfig(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.fs_parameter, align 4
  %7 = inttoptr i32 %2 to ptr
  %8 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #7
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %199, label %10

10:                                               ; preds = %5
  switch i32 %1, label %199 [
    i32 0, label %11
    i32 1, label %16
    i32 2, label %22
    i32 3, label %29
    i32 4, label %29
    i32 5, label %37
    i32 6, label %43
    i32 7, label %43
  ]

11:                                               ; preds = %10
  %12 = icmp eq i32 %2, 0
  %13 = or i32 %4, %3
  %14 = icmp ne i32 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %199, label %47

16:                                               ; preds = %10
  %17 = icmp eq i32 %2, 0
  %18 = icmp eq i32 %3, 0
  %19 = or i1 %17, %18
  %20 = icmp ne i32 %4, 0
  %21 = or i1 %19, %20
  br i1 %21, label %199, label %47

22:                                               ; preds = %10
  %23 = icmp eq i32 %2, 0
  %24 = icmp eq i32 %3, 0
  %25 = or i1 %23, %24
  %26 = add i32 %4, -1048577
  %27 = icmp ult i32 %26, -1048576
  %28 = or i1 %25, %27
  br i1 %28, label %199, label %47

29:                                               ; preds = %10, %10
  %30 = icmp ne i32 %2, 0
  %31 = icmp ne i32 %3, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %199

33:                                               ; preds = %29
  %34 = icmp ne i32 %4, -100
  %35 = icmp slt i32 %4, 0
  %36 = and i1 %34, %35
  br i1 %36, label %199, label %47

37:                                               ; preds = %10
  %38 = icmp eq i32 %2, 0
  %39 = icmp ne i32 %3, 0
  %40 = or i1 %38, %39
  %41 = icmp slt i32 %4, 0
  %42 = or i1 %40, %41
  br i1 %42, label %199, label %47

43:                                               ; preds = %10, %10
  %44 = or i32 %4, %3
  %45 = or i32 %44, %2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %199

47:                                               ; preds = %43, %37, %33, %22, %16, %11
  %48 = tail call i32 @__fdget(i32 noundef %0) #7, !noalias !14
  %49 = and i32 %48, -4
  %50 = inttoptr i32 %49 to ptr
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %199, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, @fscontext_fops
  br i1 %55, label %56, label %194

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 15
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, @legacy_fs_context_ops
  %61 = add nsw i32 %1, -2
  %62 = icmp ult i32 %61, 4
  %63 = and i1 %62, %60
  br i1 %63, label %194, label %64

64:                                               ; preds = %56
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = tail call ptr @strndup_user(ptr noundef nonnull %7, i32 noundef 256) #7
  store ptr %67, ptr %6, align 4
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = ptrtoint ptr %67 to i32
  br label %194

71:                                               ; preds = %66, %64
  switch i32 %1, label %111 [
    i32 0, label %72
    i32 1, label %74
    i32 2, label %84
    i32 4, label %92
    i32 3, label %93
    i32 5, label %106
  ]

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 1
  store i8 1, ptr %73, align 4
  br label %111

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 1
  store i8 2, ptr %75, align 4
  %76 = tail call ptr @strndup_user(ptr noundef %8, i32 noundef 256) #7
  %77 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 2
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = ptrtoint ptr %76 to i32
  br label %191

81:                                               ; preds = %74
  %82 = tail call i32 @strlen(ptr noundef %76) #7
  %83 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 3
  store i32 %82, ptr %83, align 4
  br label %111

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 1
  store i8 3, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 3
  store i32 %4, ptr %86, align 4
  %87 = tail call ptr @memdup_user_nul(ptr noundef %8, i32 noundef %4) #7
  %88 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 2
  store ptr %87, ptr %88, align 4
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = ptrtoint ptr %87 to i32
  br label %191

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %71
  %94 = phi i32 [ 0, %71 ], [ 16384, %92 ]
  %95 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 1
  store i8 4, ptr %95, align 4
  %96 = tail call ptr @getname_flags(ptr noundef %8, i32 noundef %94, ptr noundef null) #7
  %97 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 2
  store ptr %96, ptr %97, align 4
  %98 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = ptrtoint ptr %96 to i32
  br label %191

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 4
  store i32 %4, ptr %102, align 4
  %103 = load ptr, ptr %96, align 4
  %104 = tail call i32 @strlen(ptr noundef %103) #7
  %105 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 3
  store i32 %104, ptr %105, align 4
  br label %111

106:                                              ; preds = %71
  %107 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 1
  store i8 5, ptr %107, align 4
  %108 = tail call ptr @fget(i32 noundef %4) #7
  %109 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 2
  store ptr %108, ptr %109, align 4
  %110 = icmp eq ptr %108, null
  br i1 %110, label %191, label %111

111:                                              ; preds = %106, %101, %84, %81, %72, %71
  %112 = getelementptr inbounds %struct.fs_context, ptr %58, i32 0, i32 1
  %113 = tail call i32 @mutex_lock_interruptible(ptr noundef %112) #7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %176

115:                                              ; preds = %111
  %116 = tail call i32 @finish_clean_context(ptr noundef %58) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %174

118:                                              ; preds = %115
  switch i32 %1, label %161 [
    i32 6, label %119
    i32 7, label %141
  ]

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.fs_context, ptr %58, i32 0, i32 17
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 65280
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %174

124:                                              ; preds = %119
  %125 = tail call zeroext i1 @mount_capable(ptr noundef %58) #7
  br i1 %125, label %126, label %174

126:                                              ; preds = %124
  %127 = load i32, ptr %120, align 4
  %128 = and i32 %127, -65281
  %129 = or i32 %128, 256
  store i32 %129, ptr %120, align 4
  %130 = tail call i32 @vfs_get_tree(ptr noundef %58) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %168

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.fs_context, ptr %58, i32 0, i32 5
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.dentry, ptr %134, i32 0, i32 9
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 14
  tail call void @up_write(ptr noundef %137) #7
  %138 = load i32, ptr %120, align 4
  %139 = and i32 %138, -65281
  %140 = or i32 %139, 512
  store i32 %140, ptr %120, align 4
  br label %174

141:                                              ; preds = %118
  %142 = getelementptr inbounds %struct.fs_context, ptr %58, i32 0, i32 17
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 65280
  %145 = icmp eq i32 %144, 1024
  br i1 %145, label %146, label %174

146:                                              ; preds = %141
  %147 = and i32 %143, -65281
  %148 = or i32 %147, 1280
  store i32 %148, ptr %142, align 4
  %149 = getelementptr inbounds %struct.fs_context, ptr %58, i32 0, i32 5
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.dentry, ptr %150, i32 0, i32 9
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.super_block, ptr %152, i32 0, i32 47
  %154 = load ptr, ptr %153, align 4
  %155 = tail call zeroext i1 @ns_capable(ptr noundef %154, i32 noundef 21) #7
  br i1 %155, label %156, label %168

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.super_block, ptr %152, i32 0, i32 14
  tail call void @down_write(ptr noundef %157) #7
  %158 = tail call i32 @reconfigure_super(ptr noundef %58) #7
  tail call void @up_write(ptr noundef %157) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  tail call void @vfs_clean_context(ptr noundef %58) #7
  br label %174

161:                                              ; preds = %118
  %162 = getelementptr inbounds %struct.fs_context, ptr %58, i32 0, i32 17
  %163 = load i32, ptr %162, align 4
  %164 = lshr i32 %163, 8
  %165 = trunc i32 %164 to i8
  switch i8 %165, label %174 [
    i8 0, label %166
    i8 4, label %166
  ]

166:                                              ; preds = %161, %161
  %167 = call i32 @vfs_parse_fs_param(ptr noundef %58, ptr noundef nonnull %6) #7
  br label %174

168:                                              ; preds = %156, %146, %126
  %169 = phi i32 [ %158, %156 ], [ %130, %126 ], [ -1, %146 ]
  %170 = getelementptr inbounds %struct.fs_context, ptr %58, i32 0, i32 17
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, -65281
  %173 = or i32 %172, 1536
  store i32 %173, ptr %170, align 4
  br label %174

174:                                              ; preds = %168, %166, %161, %160, %141, %132, %124, %119, %115
  %175 = phi i32 [ %167, %166 ], [ %169, %168 ], [ 0, %160 ], [ 0, %132 ], [ %116, %115 ], [ -16, %119 ], [ -1, %124 ], [ -16, %141 ], [ -16, %161 ]
  call void @mutex_unlock(ptr noundef %112) #7
  br label %176

176:                                              ; preds = %174, %111
  %177 = phi i32 [ %175, %174 ], [ %113, %111 ]
  switch i32 %1, label %191 [
    i32 1, label %178
    i32 2, label %178
    i32 3, label %181
    i32 4, label %181
    i32 5, label %186
  ]

178:                                              ; preds = %176, %176
  %179 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  call void @kfree(ptr noundef %180) #7
  br label %191

181:                                              ; preds = %176, %176
  %182 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %181
  call void @putname(ptr noundef nonnull %183) #7
  br label %191

186:                                              ; preds = %176
  %187 = getelementptr inbounds %struct.fs_parameter, ptr %6, i32 0, i32 2
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  call void @fput(ptr noundef nonnull %188) #7
  br label %191

191:                                              ; preds = %190, %186, %185, %181, %178, %176, %106, %99, %90, %79
  %192 = phi i32 [ %177, %176 ], [ %177, %190 ], [ %177, %186 ], [ %177, %185 ], [ %177, %181 ], [ %177, %178 ], [ -9, %106 ], [ %100, %99 ], [ %91, %90 ], [ %80, %79 ]
  %193 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %193) #7
  br label %194

194:                                              ; preds = %191, %69, %56, %52
  %195 = phi i32 [ -22, %52 ], [ %70, %69 ], [ %192, %191 ], [ -95, %56 ]
  %196 = and i32 %48, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  call void @fput(ptr noundef nonnull %50) #7
  br label %199

199:                                              ; preds = %198, %194, %47, %43, %37, %33, %29, %22, %16, %11, %10, %5
  %200 = phi i32 [ -22, %5 ], [ -22, %11 ], [ -22, %16 ], [ -22, %22 ], [ -22, %33 ], [ -22, %29 ], [ -22, %37 ], [ -22, %43 ], [ -95, %10 ], [ -9, %47 ], [ %195, %194 ], [ %195, %198 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_mount(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_reconfigure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_clean_context(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mount_capable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_tree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reconfigure_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfs_clean_context(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param(ptr noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2151110550, i64 2151110575}
!10 = !{i64 3606084}
!11 = !{i64 3606281}
!12 = !{i64 2151091560}
!13 = !{!"auto-init"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"fdget: argument 0"}
!16 = distinct !{!16, !"fdget"}
