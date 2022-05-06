; ModuleID = '/llk/IR/ipc/sem.c_pt.bc'
source_filename = "../ipc/sem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.sem_array = type { %struct.kern_ipc_perm, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, [20 x i8], [0 x %struct.sem] }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [4 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sem = type { i32, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, i64, [24 x i8] }
%struct.ipc_params = type { i32, i32, %union.anon.96 }
%union.anon.96 = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.40 }
%union.anon.40 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sem_queue = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, ptr, i32, i8, i8 }
%struct.wake_q_head = type { ptr, ptr }
%struct.semid_ds = type { %struct.ipc_perm, i32, i32, ptr, ptr, ptr, ptr, i16 }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.seminfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.semid64_ds = type { %struct.ipc64_perm, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.sem_undo_list = type { %struct.refcount_struct, %struct.spinlock, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.sembuf = type { i16, i16, i16 }
%struct.sem_undo = type { %struct.list_head, %struct.callback_head, ptr, %struct.list_head, i32, ptr }

@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@.str = private unnamed_addr constant [12 x i8] c"sysvipc/sem\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"       key      semid perms      nsems   uid   gid  cuid  cgid      otime      ctime\0A\00", align 1
@ksys_semget.sem_ops = internal constant %struct.ipc_ops { ptr @newary, ptr @security_sem_associate, ptr @sem_more_checks }, align 4
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@check_qop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [144 x i8] c"\016semctl(GETNCNT/GETZCNT) is since 3.16 Single Unix Specification compliant.\0AThe task %s (%d) triggered the difference, watch for misbehavior.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"%10d %10d  %4o %10u %5u %5u %5u %5u %10llu %10llu\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

@sys_semget = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_semget
@sys_semctl = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_semctl
@sys_old_semctl = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_old_semctl
@sys_semtimedop = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_semtimedop
@sys_semtimedop_time32 = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_semtimedop_time32
@sys_semop = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_semop

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sem_init_ns(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 1
  store i32 32000, ptr %2, align 4
  %3 = getelementptr %struct.ipc_namespace, ptr %0, i32 0, i32 1, i32 1
  store i32 1024000000, ptr %3, align 4
  %4 = getelementptr %struct.ipc_namespace, ptr %0, i32 0, i32 1, i32 2
  store i32 500, ptr %4, align 4
  %5 = getelementptr %struct.ipc_namespace, ptr %0, i32 0, i32 1, i32 3
  store i32 32000, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 2
  store i32 0, ptr %6, align 4
  tail call void @ipc_init_ids(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_init_ids(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sem_init() local_unnamed_addr #2 section ".init.text" {
  store i32 32000, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1), align 4
  store i32 1024000000, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 1), align 4
  store i32 500, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 2), align 4
  store i32 32000, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 2), align 4
  tail call void @ipc_init_ids(ptr noundef nonnull @init_ipc_ns) #14
  tail call void @ipc_init_proc_interface(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull @sysvipc_sem_proc_show) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ipc_init_proc_interface(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysvipc_sem_proc_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sem_array, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  store volatile i32 10, ptr %3, align 8
  %6 = getelementptr inbounds %struct.sem_array, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 32
  br i1 %5, label %8, label %21

8:                                                ; preds = %2
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sem_array, ptr %1, i32 1, i32 0, i32 8
  %12 = load i64, ptr %11, align 32
  br label %34

13:                                               ; preds = %13, %8
  %14 = phi i32 [ %18, %13 ], [ 0, %8 ]
  %15 = getelementptr %struct.sem_array, ptr %1, i32 0, i32 9, i32 %14, i32 2
  tail call void @_raw_spin_lock(ptr noundef %15) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %18 = add nuw nsw i32 %14, 1
  %19 = load i32, ptr %6, align 32
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %13, label %21

21:                                               ; preds = %13, %2
  %22 = phi i32 [ %7, %2 ], [ %19, %13 ]
  %23 = getelementptr inbounds %struct.sem_array, ptr %1, i32 1, i32 0, i32 8
  %24 = load i64, ptr %23, align 32
  %25 = icmp sgt i32 %22, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %26, %21
  %27 = phi i64 [ %31, %26 ], [ %24, %21 ]
  %28 = phi i32 [ %32, %26 ], [ 1, %21 ]
  %29 = getelementptr %struct.sem_array, ptr %1, i32 0, i32 9, i32 %28, i32 5
  %30 = load i64, ptr %29, align 32
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 %27) #14
  %32 = add nuw nsw i32 %28, 1
  %33 = icmp eq i32 %32, %22
  br i1 %33, label %34, label %26

34:                                               ; preds = %26, %21, %10
  %35 = phi i32 [ %22, %21 ], [ %7, %10 ], [ %22, %26 ]
  %36 = phi i64 [ %24, %21 ], [ %12, %10 ], [ %31, %26 ]
  %37 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 8
  %42 = load i16, ptr %41, align 32
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 4
  %45 = load i32, ptr %44, align 16
  %46 = icmp eq i32 %45, -1
  %47 = load i32, ptr @overflowuid, align 4
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, -1
  %52 = load i32, ptr @overflowgid, align 4
  %53 = select i1 %51, i32 %52, i32 %50
  %54 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, -1
  %57 = select i1 %56, i32 %47, i32 %55
  %58 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, -1
  %61 = select i1 %60, i32 %52, i32 %59
  %62 = getelementptr inbounds %struct.sem_array, ptr %1, i32 0, i32 1
  %63 = load i64, ptr %62, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %38, i32 noundef %40, i32 noundef %43, i32 noundef %35, i32 noundef %48, i32 noundef %53, i32 noundef %57, i32 noundef %61, i64 noundef %36, i64 noundef %63) #14
  %64 = getelementptr inbounds %struct.sem_array, ptr %1, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %34
  %68 = load i32, ptr %3, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %73

71:                                               ; preds = %67
  %72 = add i32 %68, -1
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ %72, %71 ], [ 0, %70 ]
  store volatile i32 %74, ptr %3, align 8
  br label %75

75:                                               ; preds = %73, %34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_semget(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ipc_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %5 = tail call ptr @llvm.thread.pointer() #14
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  store i32 %0, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 1
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 2
  store i32 %1, ptr %17, align 4
  %18 = call i32 @ipcget(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @ksys_semget.sem_ops, ptr noundef nonnull %4) #14
  br label %19

19:                                               ; preds = %15, %11, %3
  %20 = phi i32 [ %18, %15 ], [ -22, %11 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @newary(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ipc_params, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ipc_params, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %91, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %5
  %13 = getelementptr %struct.ipc_namespace, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %91, label %16

16:                                               ; preds = %9
  %17 = icmp ugt i32 %5, 33554429
  br i1 %17, label %91, label %18

18:                                               ; preds = %16
  %19 = shl nuw nsw i32 %5, 6
  %20 = add nuw nsw i32 %19, 128
  %21 = tail call noalias ptr @kvmalloc_node(i32 noundef %20, i32 noundef 4197824, i32 noundef -1) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %91, label %23

23:                                               ; preds = %18
  %24 = trunc i32 %7 to i16
  %25 = and i16 %24, 511
  %26 = getelementptr inbounds %struct.kern_ipc_perm, ptr %21, i32 0, i32 8
  store i16 %25, ptr %26, align 32
  %27 = getelementptr inbounds %struct.kern_ipc_perm, ptr %21, i32 0, i32 3
  store i32 %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.kern_ipc_perm, ptr %21, i32 0, i32 10
  store ptr null, ptr %28, align 8
  br label %29

29:                                               ; preds = %29, %23
  %30 = phi i32 [ %36, %29 ], [ 0, %23 ]
  %31 = getelementptr %struct.sem_array, ptr %21, i32 0, i32 9, i32 %30, i32 3
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr %struct.sem_array, ptr %21, i32 0, i32 9, i32 %30, i32 3, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr %struct.sem_array, ptr %21, i32 0, i32 9, i32 %30, i32 4
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr %struct.sem_array, ptr %21, i32 0, i32 9, i32 %30, i32 4, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr %struct.sem_array, ptr %21, i32 0, i32 9, i32 %30, i32 2
  store i32 0, ptr %35, align 8
  %36 = add nuw nsw i32 %30, 1
  %37 = icmp eq i32 %36, %5
  br i1 %37, label %38, label %29

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 6
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 7
  store i32 10, ptr %40, align 8
  %41 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 2
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 2, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 3
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 3, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 4
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 4, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 5
  store i32 %5, ptr %47, align 32
  %48 = tail call i64 @ktime_get_real_seconds() #14
  %49 = getelementptr inbounds %struct.sem_array, ptr %21, i32 0, i32 1
  store i64 %48, ptr %49, align 64
  %50 = getelementptr %struct.ipc_namespace, ptr %0, i32 0, i32 1, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @ipc_addid(ptr noundef %0, ptr noundef nonnull %21, i32 noundef %51) #14
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  tail call void @ipc_rcu_putref(ptr noundef nonnull %21, ptr noundef nonnull @sem_rcu_free) #14
  br label %91

55:                                               ; preds = %38
  %56 = load i32, ptr %10, align 4
  %57 = add i32 %56, %5
  store i32 %57, ptr %10, align 4
  %58 = load i32, ptr %39, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load ptr, ptr %41, align 8
  %62 = icmp eq ptr %61, %41
  br i1 %62, label %75, label %63

63:                                               ; preds = %63, %60
  %64 = phi ptr [ %65, %63 ], [ %61, %60 ]
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sem_queue, ptr %64, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr %struct.sem_array, ptr %21, i32 0, i32 9, i32 %69, i32 3
  %71 = getelementptr %struct.sem_array, ptr %21, i32 0, i32 9, i32 %69, i32 3, i32 1
  %72 = load ptr, ptr %71, align 4
  store ptr %64, ptr %71, align 4
  store ptr %70, ptr %64, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %64, ptr %72, align 4
  %74 = icmp eq ptr %65, %41
  br i1 %74, label %75, label %63

75:                                               ; preds = %63, %60
  store volatile ptr %41, ptr %41, align 4
  store ptr %41, ptr %42, align 4
  %76 = load i32, ptr %39, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, ptr %40, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %84

82:                                               ; preds = %78
  %83 = add i32 %79, -1
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ %83, %82 ], [ 0, %81 ]
  store volatile i32 %85, ptr %40, align 8
  br label %86

86:                                               ; preds = %84, %75, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %87 = load i16, ptr %21, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %89 = getelementptr inbounds %struct.kern_ipc_perm, ptr %21, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  br label %91

91:                                               ; preds = %86, %54, %18, %16, %9, %2
  %92 = phi i32 [ %52, %54 ], [ %90, %86 ], [ -22, %2 ], [ -28, %9 ], [ -12, %18 ], [ -12, %16 ]
  ret i32 %92
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @security_sem_associate(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sem_more_checks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.ipc_params, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 32
  %7 = icmp sgt i32 %4, %6
  %8 = select i1 %7, i32 -22, i32 0
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semget(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ipc_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %5 = tail call ptr @llvm.thread.pointer() #14
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  store i32 %0, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 1
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 2
  store i32 %1, ptr %17, align 4
  %18 = call i32 @ipcget(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @ksys_semget.sem_ops, ptr noundef nonnull %4) #14
  br label %19

19:                                               ; preds = %15, %11, %3
  %20 = phi i32 [ %18, %15 ], [ -22, %11 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @ksys_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 256) #14
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_old_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  store i32 %2, ptr %5, align 4
  %6 = call i32 @ipc_parse_version(ptr noundef nonnull %5) #14
  %7 = load i32, ptr %5, align 4
  %8 = call fastcc i32 @ksys_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %3, i32 noundef %6)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_parse_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ksys_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wake_q_head, align 8
  %8 = alloca %struct.semid_ds, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wake_q_head, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i16], align 2
  %13 = alloca %struct.wake_q_head, align 8
  %14 = alloca %struct.semid_ds, align 4
  %15 = alloca %struct.seminfo, align 4
  %16 = alloca %struct.semid64_ds, align 4
  %17 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %16, i8 0, i32 64, i1 false), !annotation !14
  %18 = icmp slt i32 %0, 0
  br i1 %18, label %873, label %19

19:                                               ; preds = %5
  %20 = tail call ptr @llvm.thread.pointer() #14
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 92
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nsproxy, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  switch i32 %2, label %873 [
    i32 3, label %25
    i32 19, label %25
    i32 2, label %77
    i32 18, label %77
    i32 20, label %77
    i32 13, label %185
    i32 12, label %185
    i32 11, label %185
    i32 14, label %185
    i32 15, label %185
    i32 17, label %185
    i32 16, label %458
    i32 1, label %528
    i32 0, label %568
  ]

25:                                               ; preds = %19, %19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #14
  %26 = getelementptr inbounds %struct.ipc_namespace, ptr %24, i32 0, i32 1
  %27 = getelementptr %struct.ipc_namespace, ptr %24, i32 0, i32 1, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr %struct.ipc_namespace, ptr %24, i32 0, i32 1, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %26, align 4
  %34 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr %struct.ipc_namespace, ptr %24, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 5
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 8
  store i32 32767, ptr %38, align 4
  %39 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 3
  store i32 1024000000, ptr %39, align 4
  store i32 1024000000, ptr %15, align 4
  %40 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 6
  store i32 500, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ipc_ids, ptr %24, i32 0, i32 2
  tail call void @down_read(ptr noundef %41) #14
  %42 = icmp eq i32 %2, 19
  %43 = load i32, ptr %24, align 4
  br i1 %42, label %44, label %47

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.ipc_namespace, ptr %24, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %25
  %48 = phi i32 [ %43, %44 ], [ 20, %25 ]
  %49 = phi i32 [ %46, %44 ], [ 32767, %25 ]
  %50 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 7
  store i32 %48, ptr %50, align 4
  %51 = getelementptr inbounds %struct.seminfo, ptr %15, i32 0, i32 9
  store i32 %49, ptr %51, align 4
  %52 = icmp eq i32 %43, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr @ipc_mni, align 4
  %55 = icmp eq i32 %43, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = add i32 %43, -1
  br label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ipc_ids, ptr %24, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %56, %47
  %62 = phi i32 [ %57, %56 ], [ %60, %58 ], [ -1, %47 ]
  tail call void @up_read(ptr noundef %41) #14
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 40, i32 -1090519040) #17, !srcloc !15
  %64 = extractvalue { i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %67) #18, !srcloc !16
  %69 = and i32 %68, -13
  %70 = or i32 %69, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %71 = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %15, i32 noundef 40) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %72 = icmp eq i32 %71, 0
  %73 = call i32 @llvm.smax.i32(i32 %62, i32 0) #14
  %74 = select i1 %72, i32 %73, i32 -14
  br label %75

75:                                               ; preds = %66, %61
  %76 = phi i32 [ -14, %61 ], [ %74, %66 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #14
  br label %873

77:                                               ; preds = %19, %19, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %16, i8 0, i32 64, i1 false) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %78 = icmp eq i32 %2, 20
  switch i32 %2, label %84 [
    i32 20, label %79
    i32 18, label %79
  ]

79:                                               ; preds = %77, %77
  %80 = tail call ptr @ipc_obtain_object_idr(ptr noundef %24, i32 noundef %0) #14
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = ptrtoint ptr %80 to i32
  br label %145

84:                                               ; preds = %77
  %85 = tail call ptr @ipc_obtain_object_check(ptr noundef %24, i32 noundef %0) #14
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = ptrtoint ptr %85 to i32
  br label %145

89:                                               ; preds = %84, %79
  %90 = phi ptr [ %80, %79 ], [ %85, %84 ]
  br i1 %78, label %94, label %91

91:                                               ; preds = %89
  %92 = tail call i32 @ipcperms(ptr noundef %24, ptr noundef %90, i16 noundef signext 292) #14
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %143

94:                                               ; preds = %91, %89
  tail call void @_raw_spin_lock(ptr noundef %90) #14
  %95 = getelementptr inbounds %struct.kern_ipc_perm, ptr %90, i32 0, i32 1
  %96 = load i8, ptr %95, align 4, !range !20
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %99 = load i16, ptr %90, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %90, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %143

101:                                              ; preds = %94
  call void @kernel_to_ipc64_perm(ptr noundef %90, ptr noundef nonnull %16) #14
  %102 = getelementptr inbounds %struct.sem_array, ptr %90, i32 1, i32 0, i32 8
  %103 = load i64, ptr %102, align 32
  %104 = getelementptr inbounds %struct.sem_array, ptr %90, i32 0, i32 5
  %105 = load i32, ptr %104, align 32
  %106 = icmp sgt i32 %105, 1
  %107 = trunc i64 %103 to i32
  %108 = lshr i64 %103, 32
  %109 = trunc i64 %108 to i32
  br i1 %106, label %110, label %122

110:                                              ; preds = %110, %101
  %111 = phi i64 [ %115, %110 ], [ %103, %101 ]
  %112 = phi i32 [ %116, %110 ], [ 1, %101 ]
  %113 = getelementptr %struct.sem_array, ptr %90, i32 0, i32 9, i32 %112, i32 5
  %114 = load i64, ptr %113, align 32
  %115 = call i64 @llvm.smax.i64(i64 %114, i64 %111) #14
  %116 = add nuw nsw i32 %112, 1
  %117 = icmp eq i32 %116, %105
  br i1 %117, label %118, label %110

118:                                              ; preds = %110
  %119 = trunc i64 %115 to i32
  %120 = lshr i64 %115, 32
  %121 = trunc i64 %120 to i32
  br label %122

122:                                              ; preds = %118, %101
  %123 = phi i32 [ %107, %101 ], [ %119, %118 ]
  %124 = phi i32 [ %109, %101 ], [ %121, %118 ]
  %125 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 1
  store i32 %123, ptr %125, align 4
  %126 = getelementptr inbounds %struct.sem_array, ptr %90, i32 0, i32 1
  %127 = load i64, ptr %126, align 64
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 3
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 2
  store i32 %124, ptr %130, align 4
  %131 = lshr i64 %127, 32
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 4
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 5
  store i32 %105, ptr %134, align 4
  %135 = icmp eq i32 %2, 2
  br i1 %135, label %139, label %136

136:                                              ; preds = %122
  %137 = getelementptr inbounds %struct.kern_ipc_perm, ptr %90, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  br label %139

139:                                              ; preds = %136, %122
  %140 = phi i32 [ %138, %136 ], [ 0, %122 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %141 = load i16, ptr %90, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %90, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %145

143:                                              ; preds = %98, %91
  %144 = phi i32 [ -13, %91 ], [ -43, %98 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %873

145:                                              ; preds = %139, %87, %82
  %146 = phi i32 [ %83, %82 ], [ %140, %139 ], [ %88, %87 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %873, label %148

148:                                              ; preds = %145
  switch i32 %4, label %873 [
    i32 256, label %149
    i32 0, label %159
  ]

149:                                              ; preds = %148
  %150 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 64, i32 -1090519040) #17, !srcloc !15
  %151 = extractvalue { i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %873

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %155 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %154) #18, !srcloc !16
  %156 = and i32 %155, -13
  %157 = or i32 %156, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %157) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %158 = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %16, i32 noundef 64) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  br label %181

159:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %14, i8 0, i64 44, i1 false) #14
  call void @ipc64_perm_to_ipc_perm(ptr noundef nonnull %16, ptr noundef nonnull %14) #14
  %160 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.semid_ds, ptr %14, i32 0, i32 1
  store i32 %161, ptr %162, align 4
  %163 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.semid_ds, ptr %14, i32 0, i32 2
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.semid64_ds, ptr %16, i32 0, i32 5
  %167 = load i32, ptr %166, align 4
  %168 = trunc i32 %167 to i16
  %169 = getelementptr inbounds %struct.semid_ds, ptr %14, i32 0, i32 7
  store i16 %168, ptr %169, align 4
  %170 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 44, i32 -1090519040) #17, !srcloc !15
  %171 = extractvalue { i32, i32 } %170, 0
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %159
  %174 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %175 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %174) #18, !srcloc !16
  %176 = and i32 %175, -13
  %177 = or i32 %176, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %177) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %178 = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %14, i32 noundef 44) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  br label %179

179:                                              ; preds = %173, %159
  %180 = phi i32 [ %178, %173 ], [ 44, %159 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %14) #14
  br label %181

181:                                              ; preds = %179, %153
  %182 = phi i32 [ %180, %179 ], [ %158, %153 ]
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %183, i32 %146, i32 -14
  br label %873

185:                                              ; preds = %19, %19, %19, %19, %19, %19
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %12) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(512) %12, i8 0, i32 512, i1 false) #14, !annotation !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  store ptr inttoptr (i32 1 to ptr), ptr %13, align 8
  %186 = getelementptr inbounds %struct.wake_q_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %186, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %187 = call ptr @ipc_obtain_object_check(ptr noundef %24, i32 noundef %0) #14
  %188 = icmp ugt ptr %187, inttoptr (i32 -4096 to ptr)
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %190 = ptrtoint ptr %187 to i32
  br label %456

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 5
  %193 = load i32, ptr %192, align 32
  %194 = icmp eq i32 %2, 17
  %195 = select i1 %194, i16 146, i16 292
  %196 = call i32 @ipcperms(ptr noundef %24, ptr noundef %187, i16 noundef signext %195) #14
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %448

198:                                              ; preds = %191
  switch i32 %2, label %371 [
    i32 13, label %199
    i32 17, label %265
  ]

199:                                              ; preds = %198
  call void @_raw_spin_lock(ptr noundef %187) #14
  %200 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 7
  %201 = load i32, ptr %200, align 8
  %202 = icmp eq i32 %201, 0
  store volatile i32 10, ptr %200, align 8
  br i1 %202, label %203, label %214

203:                                              ; preds = %199
  %204 = load i32, ptr %192, align 32
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %206, %203
  %207 = phi i32 [ %211, %206 ], [ 0, %203 ]
  %208 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %207, i32 2
  call void @_raw_spin_lock(ptr noundef %208) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %209 = load i16, ptr %208, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr %208, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %211 = add nuw nsw i32 %207, 1
  %212 = load i32, ptr %192, align 32
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %206, label %214

214:                                              ; preds = %206, %203, %199
  %215 = getelementptr inbounds %struct.kern_ipc_perm, ptr %187, i32 0, i32 1
  %216 = load i8, ptr %215, align 4, !range !20
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %410

218:                                              ; preds = %214
  %219 = icmp sgt i32 %193, 256
  br i1 %219, label %220, label %230

220:                                              ; preds = %218
  %221 = call zeroext i1 @ipc_rcu_getref(ptr noundef %187) #14
  br i1 %221, label %222, label %410

222:                                              ; preds = %220
  call fastcc void @sem_unlock(ptr noundef %187, i32 noundef -1) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %223 = shl nuw i32 %193, 1
  %224 = call noalias ptr @kvmalloc_node(i32 noundef %223, i32 noundef 3264, i32 noundef -1) #16
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  call void @ipc_rcu_putref(ptr noundef %187, ptr noundef nonnull @sem_rcu_free) #14
  br label %456

227:                                              ; preds = %222
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  call fastcc void @sem_lock_and_putref(ptr noundef %187) #14
  %228 = load i8, ptr %215, align 4, !range !20
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %410

230:                                              ; preds = %227, %218
  %231 = phi ptr [ %224, %227 ], [ %12, %218 ]
  %232 = load i32, ptr %192, align 32
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %234, %230
  %235 = phi i32 [ %240, %234 ], [ 0, %230 ]
  %236 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %235
  %237 = load i32, ptr %236, align 64
  %238 = trunc i32 %237 to i16
  %239 = getelementptr i16, ptr %231, i32 %235
  store i16 %238, ptr %239, align 2
  %240 = add nuw nsw i32 %235, 1
  %241 = load i32, ptr %192, align 32
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %234, label %243

243:                                              ; preds = %234, %230
  call fastcc void @sem_unlock(ptr noundef %187, i32 noundef -1) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %244 = shl i32 %193, 1
  %245 = icmp slt i32 %244, 0
  %246 = load i1, ptr @check_copy_size.__already_done, align 1
  %247 = xor i1 %246, true
  %248 = select i1 %245, i1 %247, i1 false
  br i1 %248, label %249, label %250, !prof !21

249:                                              ; preds = %243
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %250

250:                                              ; preds = %249, %243
  br i1 %245, label %451, label %251, !prof !21

251:                                              ; preds = %250
  %252 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %244, i32 -1090519040) #17, !srcloc !15
  %253 = extractvalue { i32, i32 } %252, 0
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %257 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %256) #18, !srcloc !16
  %258 = and i32 %257, -13
  %259 = or i32 %258, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %259) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %260 = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %231, i32 noundef %244) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %257) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  br label %261

261:                                              ; preds = %255, %251
  %262 = phi i32 [ %260, %255 ], [ %244, %251 ]
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %263, i32 0, i32 -14
  br label %451

265:                                              ; preds = %198
  %266 = call zeroext i1 @ipc_rcu_getref(ptr noundef %187) #14
  br i1 %266, label %267, label %448

267:                                              ; preds = %265
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %268 = icmp sgt i32 %193, 256
  %269 = shl i32 %193, 1
  br i1 %268, label %270, label %274

270:                                              ; preds = %267
  %271 = call noalias ptr @kvmalloc_node(i32 noundef %269, i32 noundef 3264, i32 noundef -1) #16
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  call void @ipc_rcu_putref(ptr noundef %187, ptr noundef nonnull @sem_rcu_free) #14
  br label %456

274:                                              ; preds = %270, %267
  %275 = phi ptr [ %271, %270 ], [ %12, %267 ]
  %276 = icmp slt i32 %269, 0
  %277 = load i1, ptr @check_copy_size.__already_done, align 1
  %278 = xor i1 %277, true
  %279 = select i1 %276, i1 %278, i1 false
  br i1 %279, label %280, label %281, !prof !21

280:                                              ; preds = %274
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %281

281:                                              ; preds = %280, %274
  br i1 %276, label %300, label %282, !prof !21

282:                                              ; preds = %281
  %283 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %269, i32 -1090519040) #17, !srcloc !22
  %284 = extractvalue { i32, i32 } %283, 0
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %292, !prof !23

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %288 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %287) #18, !srcloc !16
  %289 = and i32 %288, -13
  %290 = or i32 %289, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %290) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %291 = call i32 @arm_copy_from_user(ptr noundef nonnull %275, ptr noundef %17, i32 noundef %269) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %288) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  br label %292

292:                                              ; preds = %286, %282
  %293 = phi i32 [ %291, %286 ], [ %269, %282 ]
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %297, !prof !23

295:                                              ; preds = %292
  %296 = icmp sgt i32 %193, 0
  br i1 %296, label %304, label %310

297:                                              ; preds = %292
  %298 = sub i32 %269, %293
  %299 = getelementptr i8, ptr %275, i32 %298
  call void @llvm.memset.p0.i32(ptr align 1 %299, i8 0, i32 %293, i1 false) #14
  br label %300

300:                                              ; preds = %297, %281
  call void @ipc_rcu_putref(ptr noundef %187, ptr noundef nonnull @sem_rcu_free) #14
  br label %451

301:                                              ; preds = %304
  %302 = add nuw nsw i32 %305, 1
  %303 = icmp eq i32 %302, %193
  br i1 %303, label %310, label %304

304:                                              ; preds = %301, %295
  %305 = phi i32 [ %302, %301 ], [ 0, %295 ]
  %306 = getelementptr i16, ptr %275, i32 %305
  %307 = load i16, ptr %306, align 2
  %308 = icmp slt i16 %307, 0
  br i1 %308, label %309, label %301

309:                                              ; preds = %304
  call void @ipc_rcu_putref(ptr noundef %187, ptr noundef nonnull @sem_rcu_free) #14
  br label %451

310:                                              ; preds = %301, %295
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  call fastcc void @sem_lock_and_putref(ptr noundef %187) #14
  %311 = getelementptr inbounds %struct.kern_ipc_perm, ptr %187, i32 0, i32 1
  %312 = load i8, ptr %311, align 4, !range !20
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %410

314:                                              ; preds = %310
  br i1 %296, label %315, label %345

315:                                              ; preds = %314
  %316 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 93
  br label %317

317:                                              ; preds = %342, %315
  %318 = phi i32 [ 0, %315 ], [ %343, %342 ]
  %319 = getelementptr i16, ptr %275, i32 %318
  %320 = load i16, ptr %319, align 2
  %321 = zext i16 %320 to i32
  %322 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %318
  store i32 %321, ptr %322, align 64
  %323 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %318, i32 1
  %324 = load ptr, ptr %316, align 16
  %325 = getelementptr %struct.signal_struct, ptr %324, i32 0, i32 22, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = load ptr, ptr %323, align 4
  %328 = icmp eq ptr %327, %326
  br i1 %328, label %342, label %329

329:                                              ; preds = %317
  %330 = icmp eq ptr %326, null
  br i1 %330, label %341, label %331

331:                                              ; preds = %329
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %326) #14, !srcloc !24
  %332 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %326, ptr nonnull %326, i32 1, ptr nonnull elementtype(i32) %326) #14, !srcloc !25
  %333 = extractvalue { i32, i32, i32 } %332, 0
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %339, label %335, !prof !21

335:                                              ; preds = %331
  %336 = add i32 %333, 1
  %337 = or i32 %336, %333
  %338 = icmp sgt i32 %337, -1
  br i1 %338, label %341, label %339, !prof !23

339:                                              ; preds = %335, %331
  %340 = phi i32 [ 2, %331 ], [ 1, %335 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %326, i32 noundef %340) #14
  br label %341

341:                                              ; preds = %339, %335, %329
  store ptr %326, ptr %323, align 4
  call void @put_pid(ptr noundef %327) #14
  br label %342

342:                                              ; preds = %341, %317
  %343 = add nuw nsw i32 %318, 1
  %344 = icmp eq i32 %343, %193
  br i1 %344, label %345, label %317

345:                                              ; preds = %342, %314
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11)
  %346 = load volatile i32, ptr %187, align 4
  store volatile i32 %346, ptr %11, align 4
  %347 = lshr i32 %346, 16
  %348 = and i32 %346, 65535
  %349 = icmp eq i32 %348, %347
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11)
  br i1 %349, label %350, label %351, !prof !21

350:                                              ; preds = %345
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #14, !srcloc !26
  unreachable

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 4
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, %352
  br i1 %354, label %368, label %358

355:                                              ; preds = %362, %358
  %356 = load ptr, ptr %359, align 4
  %357 = icmp eq ptr %356, %352
  br i1 %357, label %368, label %358

358:                                              ; preds = %355, %351
  %359 = phi ptr [ %356, %355 ], [ %353, %351 ]
  br i1 %296, label %360, label %355

360:                                              ; preds = %358
  %361 = getelementptr i8, ptr %359, i32 12
  br label %362

362:                                              ; preds = %362, %360
  %363 = phi i32 [ 0, %360 ], [ %366, %362 ]
  %364 = load ptr, ptr %361, align 4
  %365 = getelementptr i16, ptr %364, i32 %363
  store i16 0, ptr %365, align 2
  %366 = add nuw nsw i32 %363, 1
  %367 = icmp eq i32 %366, %193
  br i1 %367, label %355, label %362

368:                                              ; preds = %355, %351
  %369 = call i64 @ktime_get_real_seconds() #14
  %370 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 1
  store i64 %369, ptr %370, align 64
  call fastcc void @do_smart_update(ptr noundef %187, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %13) #14
  br label %410

371:                                              ; preds = %198
  %372 = icmp sgt i32 %1, -1
  %373 = icmp sgt i32 %193, %1
  %374 = select i1 %372, i1 %373, i1 false
  br i1 %374, label %375, label %448

375:                                              ; preds = %371
  call void @_raw_spin_lock(ptr noundef %187) #14
  %376 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 7
  %377 = load i32, ptr %376, align 8
  %378 = icmp eq i32 %377, 0
  store volatile i32 10, ptr %376, align 8
  br i1 %378, label %379, label %390

379:                                              ; preds = %375
  %380 = load i32, ptr %192, align 32
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %390

382:                                              ; preds = %382, %379
  %383 = phi i32 [ %387, %382 ], [ 0, %379 ]
  %384 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %383, i32 2
  call void @_raw_spin_lock(ptr noundef %384) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %385 = load i16, ptr %384, align 4
  %386 = add i16 %385, 1
  store i16 %386, ptr %384, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %387 = add nuw nsw i32 %383, 1
  %388 = load i32, ptr %192, align 32
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %382, label %390

390:                                              ; preds = %382, %379, %375
  %391 = getelementptr inbounds %struct.kern_ipc_perm, ptr %187, i32 0, i32 1
  %392 = load i8, ptr %391, align 4, !range !20
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %410

394:                                              ; preds = %390
  %395 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %1, i32 %193) #14, !srcloc !27
  %396 = and i32 %395, %1
  switch i32 %2, label %410 [
    i32 12, label %397
    i32 11, label %400
    i32 14, label %404
    i32 15, label %407
  ]

397:                                              ; preds = %394
  %398 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %396
  %399 = load i32, ptr %398, align 64
  br label %410

400:                                              ; preds = %394
  %401 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %396, i32 1
  %402 = load ptr, ptr %401, align 4
  %403 = call i32 @pid_vnr(ptr noundef %402) #14
  br label %410

404:                                              ; preds = %394
  %405 = trunc i32 %396 to i16
  %406 = call fastcc i32 @count_semcnt(ptr noundef %187, i16 noundef zeroext %405, i1 noundef zeroext false) #14
  br label %410

407:                                              ; preds = %394
  %408 = trunc i32 %396 to i16
  %409 = call fastcc i32 @count_semcnt(ptr noundef %187, i16 noundef zeroext %408, i1 noundef zeroext true) #14
  br label %410

410:                                              ; preds = %407, %404, %400, %397, %394, %390, %368, %310, %227, %220, %214
  %411 = phi ptr [ %12, %394 ], [ %12, %407 ], [ %12, %404 ], [ %12, %400 ], [ %12, %397 ], [ %12, %390 ], [ %224, %227 ], [ %12, %220 ], [ %12, %214 ], [ %275, %368 ], [ %275, %310 ]
  %412 = phi i32 [ -22, %394 ], [ %409, %407 ], [ %406, %404 ], [ %403, %400 ], [ %399, %397 ], [ -43, %390 ], [ -43, %227 ], [ -43, %220 ], [ -43, %214 ], [ 0, %368 ], [ -43, %310 ]
  %413 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 6
  %414 = load i32, ptr %413, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %445

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 2
  %418 = load ptr, ptr %417, align 8
  %419 = icmp eq ptr %418, %417
  br i1 %419, label %432, label %420

420:                                              ; preds = %420, %416
  %421 = phi ptr [ %422, %420 ], [ %418, %416 ]
  %422 = load ptr, ptr %421, align 4
  %423 = getelementptr inbounds %struct.sem_queue, ptr %421, i32 0, i32 5
  %424 = load ptr, ptr %423, align 4
  %425 = load i16, ptr %424, align 2
  %426 = zext i16 %425 to i32
  %427 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %426, i32 3
  %428 = getelementptr %struct.sem_array, ptr %187, i32 0, i32 9, i32 %426, i32 3, i32 1
  %429 = load ptr, ptr %428, align 4
  store ptr %421, ptr %428, align 4
  store ptr %427, ptr %421, align 4
  %430 = getelementptr inbounds %struct.list_head, ptr %421, i32 0, i32 1
  store ptr %429, ptr %430, align 4
  store volatile ptr %421, ptr %429, align 4
  %431 = icmp eq ptr %422, %417
  br i1 %431, label %432, label %420

432:                                              ; preds = %420, %416
  store volatile ptr %417, ptr %417, align 4
  %433 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 2, i32 1
  store ptr %417, ptr %433, align 4
  %434 = load i32, ptr %413, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %445

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.sem_array, ptr %187, i32 0, i32 7
  %438 = load i32, ptr %437, align 8
  %439 = icmp eq i32 %438, 1
  br i1 %439, label %440, label %441

440:                                              ; preds = %436
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %443

441:                                              ; preds = %436
  %442 = add i32 %438, -1
  br label %443

443:                                              ; preds = %441, %440
  %444 = phi i32 [ %442, %441 ], [ 0, %440 ]
  store volatile i32 %444, ptr %437, align 8
  br label %445

445:                                              ; preds = %443, %432, %410
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %446 = load i16, ptr %187, align 4
  %447 = add i16 %446, 1
  store i16 %447, ptr %187, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %448

448:                                              ; preds = %445, %371, %265, %191
  %449 = phi ptr [ %12, %191 ], [ %12, %371 ], [ %411, %445 ], [ %12, %265 ]
  %450 = phi i32 [ -13, %191 ], [ -22, %371 ], [ %412, %445 ], [ -43, %265 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %13) #14
  br label %451

451:                                              ; preds = %448, %309, %300, %261, %250
  %452 = phi ptr [ %449, %448 ], [ %275, %300 ], [ %275, %309 ], [ %231, %250 ], [ %231, %261 ]
  %453 = phi i32 [ %450, %448 ], [ -14, %300 ], [ -34, %309 ], [ -14, %250 ], [ %264, %261 ]
  %454 = icmp eq ptr %452, %12
  br i1 %454, label %456, label %455

455:                                              ; preds = %451
  call void @kvfree(ptr noundef %452) #14
  br label %456

456:                                              ; preds = %455, %451, %273, %226, %189
  %457 = phi i32 [ %190, %189 ], [ %453, %455 ], [ %453, %451 ], [ -12, %226 ], [ -12, %273 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %12) #14
  br label %873

458:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  store ptr inttoptr (i32 1 to ptr), ptr %10, align 8
  %459 = getelementptr inbounds %struct.wake_q_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %459, align 4
  %460 = icmp ugt i32 %3, 32767
  br i1 %460, label %526, label %461

461:                                              ; preds = %458
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %462 = call ptr @ipc_obtain_object_check(ptr noundef %24, i32 noundef %0) #14
  %463 = icmp ugt ptr %462, inttoptr (i32 -4096 to ptr)
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %465 = ptrtoint ptr %462 to i32
  br label %526

466:                                              ; preds = %461
  %467 = icmp slt i32 %1, 0
  br i1 %467, label %472, label %468

468:                                              ; preds = %466
  %469 = getelementptr inbounds %struct.sem_array, ptr %462, i32 0, i32 5
  %470 = load i32, ptr %469, align 32
  %471 = icmp sgt i32 %470, %1
  br i1 %471, label %473, label %472

472:                                              ; preds = %468, %466
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %526

473:                                              ; preds = %468
  %474 = call i32 @ipcperms(ptr noundef %24, ptr noundef %462, i16 noundef signext 146) #14
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %477, label %476

476:                                              ; preds = %473
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %526

477:                                              ; preds = %473
  call void @_raw_spin_lock(ptr noundef %462) #14
  %478 = getelementptr inbounds %struct.sem_array, ptr %462, i32 0, i32 7
  %479 = load i32, ptr %478, align 8
  %480 = icmp eq i32 %479, 0
  store volatile i32 10, ptr %478, align 8
  br i1 %480, label %481, label %492

481:                                              ; preds = %477
  %482 = load i32, ptr %469, align 32
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %492

484:                                              ; preds = %484, %481
  %485 = phi i32 [ %489, %484 ], [ 0, %481 ]
  %486 = getelementptr %struct.sem_array, ptr %462, i32 0, i32 9, i32 %485, i32 2
  call void @_raw_spin_lock(ptr noundef %486) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %487 = load i16, ptr %486, align 4
  %488 = add i16 %487, 1
  store i16 %488, ptr %486, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %489 = add nuw nsw i32 %485, 1
  %490 = load i32, ptr %469, align 32
  %491 = icmp slt i32 %489, %490
  br i1 %491, label %484, label %492

492:                                              ; preds = %484, %481, %477
  %493 = getelementptr inbounds %struct.kern_ipc_perm, ptr %462, i32 0, i32 1
  %494 = load i8, ptr %493, align 4, !range !20
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %492
  call fastcc void @sem_unlock(ptr noundef %462, i32 noundef -1) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %526

497:                                              ; preds = %492
  %498 = load i32, ptr %469, align 32
  %499 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %1, i32 %498) #14, !srcloc !27
  %500 = and i32 %499, %1
  %501 = getelementptr %struct.sem_array, ptr %462, i32 0, i32 9, i32 %500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %502 = load volatile i32, ptr %462, align 4
  store volatile i32 %502, ptr %9, align 4
  %503 = lshr i32 %502, 16
  %504 = and i32 %502, 65535
  %505 = icmp eq i32 %504, %503
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br i1 %505, label %506, label %507, !prof !21

506:                                              ; preds = %497
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #14, !srcloc !26
  unreachable

507:                                              ; preds = %497
  %508 = getelementptr inbounds %struct.sem_array, ptr %462, i32 0, i32 4
  %509 = load ptr, ptr %508, align 4
  %510 = icmp eq ptr %509, %508
  br i1 %510, label %518, label %511

511:                                              ; preds = %511, %507
  %512 = phi ptr [ %516, %511 ], [ %509, %507 ]
  %513 = getelementptr i8, ptr %512, i32 12
  %514 = load ptr, ptr %513, align 4
  %515 = getelementptr i16, ptr %514, i32 %500
  store i16 0, ptr %515, align 2
  %516 = load ptr, ptr %512, align 4
  %517 = icmp eq ptr %516, %508
  br i1 %517, label %518, label %511

518:                                              ; preds = %511, %507
  store i32 %3, ptr %501, align 64
  %519 = getelementptr %struct.sem_array, ptr %462, i32 0, i32 9, i32 %500, i32 1
  %520 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 93
  %521 = load ptr, ptr %520, align 16
  %522 = getelementptr %struct.signal_struct, ptr %521, i32 0, i32 22, i32 1
  %523 = load ptr, ptr %522, align 4
  call fastcc void @ipc_update_pid(ptr noundef %519, ptr noundef %523) #14
  %524 = call i64 @ktime_get_real_seconds() #14
  %525 = getelementptr inbounds %struct.sem_array, ptr %462, i32 0, i32 1
  store i64 %524, ptr %525, align 64
  call fastcc void @do_smart_update(ptr noundef %462, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %10) #14
  call fastcc void @sem_unlock(ptr noundef %462, i32 noundef -1) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %10) #14
  br label %526

526:                                              ; preds = %518, %496, %476, %472, %464, %458
  %527 = phi i32 [ %465, %464 ], [ -22, %472 ], [ -13, %476 ], [ 0, %518 ], [ -43, %496 ], [ -34, %458 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %873

528:                                              ; preds = %19
  switch i32 %4, label %873 [
    i32 256, label %529
    i32 0, label %544
  ]

529:                                              ; preds = %528
  %530 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 64, i32 -1090519040) #17, !srcloc !22
  %531 = extractvalue { i32, i32 } %530, 0
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %540, !prof !23

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %535 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %534) #18, !srcloc !16
  %536 = and i32 %535, -13
  %537 = or i32 %536, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %537) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %538 = call i32 @arm_copy_from_user(ptr noundef nonnull %16, ptr noundef %17, i32 noundef 64) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %535) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %568, label %540, !prof !23

540:                                              ; preds = %533, %529
  %541 = phi i32 [ %538, %533 ], [ 64, %529 ]
  %542 = sub i32 64, %541
  %543 = getelementptr i8, ptr %16, i32 %542
  call void @llvm.memset.p0.i32(ptr align 1 %543, i8 0, i32 %541, i1 false) #14
  br label %873

544:                                              ; preds = %528
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %8, i8 0, i32 44, i1 false) #14, !annotation !14
  %545 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 44, i32 -1090519040) #17, !srcloc !22
  %546 = extractvalue { i32, i32 } %545, 0
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %567, !prof !23

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %550 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %549) #18, !srcloc !16
  %551 = and i32 %550, -13
  %552 = or i32 %551, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %552) #14, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %553 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %17, i32 noundef 44) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %550) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %567, !prof !23

555:                                              ; preds = %548
  %556 = getelementptr inbounds %struct.ipc_perm, ptr %8, i32 0, i32 1
  %557 = load i16, ptr %556, align 4
  %558 = zext i16 %557 to i32
  %559 = getelementptr inbounds %struct.ipc64_perm, ptr %16, i32 0, i32 1
  store i32 %558, ptr %559, align 4
  %560 = getelementptr inbounds %struct.ipc_perm, ptr %8, i32 0, i32 2
  %561 = load i16, ptr %560, align 2
  %562 = zext i16 %561 to i32
  %563 = getelementptr inbounds %struct.ipc64_perm, ptr %16, i32 0, i32 2
  store i32 %562, ptr %563, align 4
  %564 = getelementptr inbounds %struct.ipc_perm, ptr %8, i32 0, i32 5
  %565 = load i16, ptr %564, align 4
  %566 = getelementptr inbounds %struct.ipc64_perm, ptr %16, i32 0, i32 5
  store i16 %565, ptr %566, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #14
  br label %568

567:                                              ; preds = %548, %544
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #14
  br label %873

568:                                              ; preds = %555, %533, %19
  %569 = getelementptr inbounds %struct.ipc_ids, ptr %24, i32 0, i32 2
  call void @down_write(ptr noundef %569) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %570 = call ptr @ipcctl_obtain_check(ptr noundef %24, ptr noundef %24, i32 noundef %0, i32 noundef %2, ptr noundef nonnull %16, i32 noundef 0) #14
  %571 = icmp ugt ptr %570, inttoptr (i32 -4096 to ptr)
  br i1 %571, label %572, label %574

572:                                              ; preds = %568
  %573 = ptrtoint ptr %570 to i32
  br label %869

574:                                              ; preds = %568
  switch i32 %2, label %869 [
    i32 0, label %575
    i32 1, label %812
  ]

575:                                              ; preds = %574
  call void @_raw_spin_lock(ptr noundef %570) #14
  %576 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 7
  %577 = load i32, ptr %576, align 8
  %578 = icmp eq i32 %577, 0
  store volatile i32 10, ptr %576, align 8
  br i1 %578, label %579, label %591

579:                                              ; preds = %575
  %580 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 5
  %581 = load i32, ptr %580, align 32
  %582 = icmp sgt i32 %581, 0
  br i1 %582, label %583, label %591

583:                                              ; preds = %583, %579
  %584 = phi i32 [ %588, %583 ], [ 0, %579 ]
  %585 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %584, i32 2
  call void @_raw_spin_lock(ptr noundef %585) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %586 = load i16, ptr %585, align 4
  %587 = add i16 %586, 1
  store i16 %587, ptr %585, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %588 = add nuw nsw i32 %584, 1
  %589 = load i32, ptr %580, align 32
  %590 = icmp slt i32 %588, %589
  br i1 %590, label %583, label %591

591:                                              ; preds = %583, %579, %575
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store ptr inttoptr (i32 1 to ptr), ptr %7, align 8
  %592 = getelementptr inbounds %struct.wake_q_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %592, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %593 = load volatile i32, ptr %570, align 4
  store volatile i32 %593, ptr %6, align 4
  %594 = lshr i32 %593, 16
  %595 = and i32 %593, 65535
  %596 = icmp eq i32 %595, %594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %596, label %597, label %598, !prof !21

597:                                              ; preds = %591
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #14, !srcloc !26
  unreachable

598:                                              ; preds = %591
  %599 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 4
  %600 = load ptr, ptr %599, align 8
  %601 = icmp eq ptr %600, %599
  br i1 %601, label %626, label %602

602:                                              ; preds = %624, %598
  %603 = phi ptr [ %604, %624 ], [ %600, %598 ]
  %604 = load ptr, ptr %603, align 4
  %605 = getelementptr i8, ptr %603, i32 -20
  %606 = getelementptr inbounds %struct.list_head, ptr %603, i32 0, i32 1
  %607 = load ptr, ptr %606, align 4
  %608 = getelementptr inbounds %struct.list_head, ptr %604, i32 0, i32 1
  store ptr %607, ptr %608, align 4
  store volatile ptr %604, ptr %607, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %603, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %606, align 4
  %609 = getelementptr i8, ptr %603, i32 -4
  %610 = load ptr, ptr %609, align 4
  %611 = getelementptr inbounds %struct.sem_undo_list, ptr %610, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %611) #14
  %612 = getelementptr i8, ptr %603, i32 8
  store i32 -1, ptr %612, align 4
  %613 = getelementptr i8, ptr %603, i32 -16
  %614 = load ptr, ptr %613, align 4
  %615 = load ptr, ptr %605, align 4
  %616 = getelementptr inbounds %struct.list_head, ptr %615, i32 0, i32 1
  store ptr %614, ptr %616, align 4
  store volatile ptr %615, ptr %614, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %613, align 4
  %617 = load ptr, ptr %609, align 4
  %618 = getelementptr inbounds %struct.sem_undo_list, ptr %617, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %619 = load i16, ptr %618, align 4
  %620 = add i16 %619, 1
  store i16 %620, ptr %618, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %621 = icmp eq ptr %605, null
  br i1 %621, label %624, label %622

622:                                              ; preds = %602
  %623 = getelementptr i8, ptr %603, i32 -12
  call void @kvfree_call_rcu(ptr noundef %623, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %624

624:                                              ; preds = %622, %602
  %625 = icmp eq ptr %604, %599
  br i1 %625, label %626, label %602

626:                                              ; preds = %624, %598
  %627 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 3
  %628 = load ptr, ptr %627, align 16
  %629 = icmp eq ptr %628, %627
  br i1 %629, label %660, label %630

630:                                              ; preds = %626
  %631 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 6
  br label %632

632:                                              ; preds = %657, %630
  %633 = phi ptr [ %628, %630 ], [ %634, %657 ]
  %634 = load ptr, ptr %633, align 4
  %635 = getelementptr inbounds %struct.list_head, ptr %633, i32 0, i32 1
  %636 = load ptr, ptr %635, align 4
  %637 = getelementptr inbounds %struct.list_head, ptr %634, i32 0, i32 1
  store ptr %636, ptr %637, align 4
  store volatile ptr %634, ptr %636, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %633, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %635, align 4
  %638 = getelementptr inbounds %struct.sem_queue, ptr %633, i32 0, i32 7
  %639 = load i32, ptr %638, align 4
  %640 = icmp sgt i32 %639, 1
  br i1 %640, label %641, label %644

641:                                              ; preds = %632
  %642 = load i32, ptr %631, align 4
  %643 = add i32 %642, -1
  store i32 %643, ptr %631, align 4
  br label %644

644:                                              ; preds = %641, %632
  %645 = getelementptr inbounds %struct.sem_queue, ptr %633, i32 0, i32 1
  %646 = load ptr, ptr %645, align 4
  %647 = getelementptr inbounds %struct.task_struct, ptr %646, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %647) #14, !srcloc !24
  %648 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %647, ptr %647, i32 1, ptr elementtype(i32) %647) #14, !srcloc !25
  %649 = extractvalue { i32, i32, i32 } %648, 0
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %655, label %651, !prof !21

651:                                              ; preds = %644
  %652 = add i32 %649, 1
  %653 = or i32 %652, %649
  %654 = icmp sgt i32 %653, -1
  br i1 %654, label %657, label %655, !prof !23

655:                                              ; preds = %651, %644
  %656 = phi i32 [ 2, %644 ], [ 1, %651 ]
  call void @refcount_warn_saturate(ptr noundef %647, i32 noundef %656) #14
  br label %657

657:                                              ; preds = %655, %651
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %658 = getelementptr inbounds %struct.sem_queue, ptr %633, i32 0, i32 4
  store volatile i32 -43, ptr %658, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %7, ptr noundef %646) #14
  %659 = icmp eq ptr %634, %627
  br i1 %659, label %660, label %632

660:                                              ; preds = %657, %626
  %661 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 2
  %662 = load ptr, ptr %661, align 8
  %663 = icmp eq ptr %662, %661
  br i1 %663, label %666, label %664

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 6
  br label %672

666:                                              ; preds = %697, %660
  %667 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 5
  %668 = load i32, ptr %667, align 32
  %669 = icmp sgt i32 %668, 0
  br i1 %669, label %670, label %774

670:                                              ; preds = %666
  %671 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 6
  br label %700

672:                                              ; preds = %697, %664
  %673 = phi ptr [ %662, %664 ], [ %674, %697 ]
  %674 = load ptr, ptr %673, align 4
  %675 = getelementptr inbounds %struct.list_head, ptr %673, i32 0, i32 1
  %676 = load ptr, ptr %675, align 4
  %677 = getelementptr inbounds %struct.list_head, ptr %674, i32 0, i32 1
  store ptr %676, ptr %677, align 4
  store volatile ptr %674, ptr %676, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %673, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %675, align 4
  %678 = getelementptr inbounds %struct.sem_queue, ptr %673, i32 0, i32 7
  %679 = load i32, ptr %678, align 4
  %680 = icmp sgt i32 %679, 1
  br i1 %680, label %681, label %684

681:                                              ; preds = %672
  %682 = load i32, ptr %665, align 4
  %683 = add i32 %682, -1
  store i32 %683, ptr %665, align 4
  br label %684

684:                                              ; preds = %681, %672
  %685 = getelementptr inbounds %struct.sem_queue, ptr %673, i32 0, i32 1
  %686 = load ptr, ptr %685, align 4
  %687 = getelementptr inbounds %struct.task_struct, ptr %686, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %687) #14, !srcloc !24
  %688 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %687, ptr %687, i32 1, ptr elementtype(i32) %687) #14, !srcloc !25
  %689 = extractvalue { i32, i32, i32 } %688, 0
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %695, label %691, !prof !21

691:                                              ; preds = %684
  %692 = add i32 %689, 1
  %693 = or i32 %692, %689
  %694 = icmp sgt i32 %693, -1
  br i1 %694, label %697, label %695, !prof !23

695:                                              ; preds = %691, %684
  %696 = phi i32 [ 2, %684 ], [ 1, %691 ]
  call void @refcount_warn_saturate(ptr noundef %687, i32 noundef %696) #14
  br label %697

697:                                              ; preds = %695, %691
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %698 = getelementptr inbounds %struct.sem_queue, ptr %673, i32 0, i32 4
  store volatile i32 -43, ptr %698, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %7, ptr noundef %686) #14
  %699 = icmp eq ptr %674, %661
  br i1 %699, label %666, label %672

700:                                              ; preds = %770, %670
  %701 = phi i32 [ 0, %670 ], [ %771, %770 ]
  %702 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %701, i32 4
  %703 = load ptr, ptr %702, align 4
  %704 = icmp eq ptr %703, %702
  br i1 %704, label %733, label %705

705:                                              ; preds = %730, %700
  %706 = phi ptr [ %707, %730 ], [ %703, %700 ]
  %707 = load ptr, ptr %706, align 4
  %708 = getelementptr inbounds %struct.list_head, ptr %706, i32 0, i32 1
  %709 = load ptr, ptr %708, align 4
  %710 = getelementptr inbounds %struct.list_head, ptr %707, i32 0, i32 1
  store ptr %709, ptr %710, align 4
  store volatile ptr %707, ptr %709, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %706, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %708, align 4
  %711 = getelementptr inbounds %struct.sem_queue, ptr %706, i32 0, i32 7
  %712 = load i32, ptr %711, align 4
  %713 = icmp sgt i32 %712, 1
  br i1 %713, label %714, label %717

714:                                              ; preds = %705
  %715 = load i32, ptr %671, align 4
  %716 = add i32 %715, -1
  store i32 %716, ptr %671, align 4
  br label %717

717:                                              ; preds = %714, %705
  %718 = getelementptr inbounds %struct.sem_queue, ptr %706, i32 0, i32 1
  %719 = load ptr, ptr %718, align 4
  %720 = getelementptr inbounds %struct.task_struct, ptr %719, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %720) #14, !srcloc !24
  %721 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %720, ptr %720, i32 1, ptr elementtype(i32) %720) #14, !srcloc !25
  %722 = extractvalue { i32, i32, i32 } %721, 0
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %728, label %724, !prof !21

724:                                              ; preds = %717
  %725 = add i32 %722, 1
  %726 = or i32 %725, %722
  %727 = icmp sgt i32 %726, -1
  br i1 %727, label %730, label %728, !prof !23

728:                                              ; preds = %724, %717
  %729 = phi i32 [ 2, %717 ], [ 1, %724 ]
  call void @refcount_warn_saturate(ptr noundef %720, i32 noundef %729) #14
  br label %730

730:                                              ; preds = %728, %724
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %731 = getelementptr inbounds %struct.sem_queue, ptr %706, i32 0, i32 4
  store volatile i32 -43, ptr %731, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %7, ptr noundef %719) #14
  %732 = icmp eq ptr %707, %702
  br i1 %732, label %733, label %705

733:                                              ; preds = %730, %700
  %734 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %701, i32 3
  %735 = load ptr, ptr %734, align 4
  %736 = icmp eq ptr %735, %734
  br i1 %736, label %765, label %737

737:                                              ; preds = %762, %733
  %738 = phi ptr [ %739, %762 ], [ %735, %733 ]
  %739 = load ptr, ptr %738, align 4
  %740 = getelementptr inbounds %struct.list_head, ptr %738, i32 0, i32 1
  %741 = load ptr, ptr %740, align 4
  %742 = getelementptr inbounds %struct.list_head, ptr %739, i32 0, i32 1
  store ptr %741, ptr %742, align 4
  store volatile ptr %739, ptr %741, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %738, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %740, align 4
  %743 = getelementptr inbounds %struct.sem_queue, ptr %738, i32 0, i32 7
  %744 = load i32, ptr %743, align 4
  %745 = icmp sgt i32 %744, 1
  br i1 %745, label %746, label %749

746:                                              ; preds = %737
  %747 = load i32, ptr %671, align 4
  %748 = add i32 %747, -1
  store i32 %748, ptr %671, align 4
  br label %749

749:                                              ; preds = %746, %737
  %750 = getelementptr inbounds %struct.sem_queue, ptr %738, i32 0, i32 1
  %751 = load ptr, ptr %750, align 4
  %752 = getelementptr inbounds %struct.task_struct, ptr %751, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %752) #14, !srcloc !24
  %753 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %752, ptr %752, i32 1, ptr elementtype(i32) %752) #14, !srcloc !25
  %754 = extractvalue { i32, i32, i32 } %753, 0
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %760, label %756, !prof !21

756:                                              ; preds = %749
  %757 = add i32 %754, 1
  %758 = or i32 %757, %754
  %759 = icmp sgt i32 %758, -1
  br i1 %759, label %762, label %760, !prof !23

760:                                              ; preds = %756, %749
  %761 = phi i32 [ 2, %749 ], [ 1, %756 ]
  call void @refcount_warn_saturate(ptr noundef %752, i32 noundef %761) #14
  br label %762

762:                                              ; preds = %760, %756
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %763 = getelementptr inbounds %struct.sem_queue, ptr %738, i32 0, i32 4
  store volatile i32 -43, ptr %763, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %7, ptr noundef %751) #14
  %764 = icmp eq ptr %739, %734
  br i1 %764, label %765, label %737

765:                                              ; preds = %762, %733
  %766 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %701, i32 1
  %767 = load ptr, ptr %766, align 4
  %768 = icmp eq ptr %767, null
  br i1 %768, label %770, label %769

769:                                              ; preds = %765
  store ptr null, ptr %766, align 4
  call void @put_pid(ptr noundef nonnull %767) #14
  br label %770

770:                                              ; preds = %769, %765
  %771 = add nuw nsw i32 %701, 1
  %772 = load i32, ptr %667, align 32
  %773 = icmp slt i32 %771, %772
  br i1 %773, label %700, label %774

774:                                              ; preds = %770, %666
  call void @ipc_rmid(ptr noundef %24, ptr noundef %570) #14
  %775 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 6
  %776 = load i32, ptr %775, align 4
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %805

778:                                              ; preds = %774
  %779 = load ptr, ptr %661, align 8
  %780 = icmp eq ptr %779, %661
  br i1 %780, label %793, label %781

781:                                              ; preds = %781, %778
  %782 = phi ptr [ %783, %781 ], [ %779, %778 ]
  %783 = load ptr, ptr %782, align 4
  %784 = getelementptr inbounds %struct.sem_queue, ptr %782, i32 0, i32 5
  %785 = load ptr, ptr %784, align 4
  %786 = load i16, ptr %785, align 2
  %787 = zext i16 %786 to i32
  %788 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %787, i32 3
  %789 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %787, i32 3, i32 1
  %790 = load ptr, ptr %789, align 4
  store ptr %782, ptr %789, align 4
  store ptr %788, ptr %782, align 4
  %791 = getelementptr inbounds %struct.list_head, ptr %782, i32 0, i32 1
  store ptr %790, ptr %791, align 4
  store volatile ptr %782, ptr %790, align 4
  %792 = icmp eq ptr %783, %661
  br i1 %792, label %793, label %781

793:                                              ; preds = %781, %778
  store volatile ptr %661, ptr %661, align 4
  %794 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 2, i32 1
  store ptr %661, ptr %794, align 4
  %795 = load i32, ptr %775, align 4
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %805

797:                                              ; preds = %793
  %798 = load i32, ptr %576, align 8
  %799 = icmp eq i32 %798, 1
  br i1 %799, label %800, label %801

800:                                              ; preds = %797
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %803

801:                                              ; preds = %797
  %802 = add i32 %798, -1
  br label %803

803:                                              ; preds = %801, %800
  %804 = phi i32 [ %802, %801 ], [ 0, %800 ]
  store volatile i32 %804, ptr %576, align 8
  br label %805

805:                                              ; preds = %803, %793, %774
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %806 = load i16, ptr %570, align 4
  %807 = add i16 %806, 1
  store i16 %807, ptr %570, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %7) #14
  %808 = load i32, ptr %667, align 32
  %809 = getelementptr inbounds %struct.ipc_namespace, ptr %24, i32 0, i32 2
  %810 = load i32, ptr %809, align 4
  %811 = sub i32 %810, %808
  store i32 %811, ptr %809, align 4
  call void @ipc_rcu_putref(ptr noundef %570, ptr noundef nonnull @sem_rcu_free) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %871

812:                                              ; preds = %574
  call void @_raw_spin_lock(ptr noundef %570) #14
  %813 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 7
  %814 = load i32, ptr %813, align 8
  %815 = icmp eq i32 %814, 0
  store volatile i32 10, ptr %813, align 8
  br i1 %815, label %816, label %828

816:                                              ; preds = %812
  %817 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 5
  %818 = load i32, ptr %817, align 32
  %819 = icmp sgt i32 %818, 0
  br i1 %819, label %820, label %828

820:                                              ; preds = %820, %816
  %821 = phi i32 [ %825, %820 ], [ 0, %816 ]
  %822 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %821, i32 2
  call void @_raw_spin_lock(ptr noundef %822) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %823 = load i16, ptr %822, align 4
  %824 = add i16 %823, 1
  store i16 %824, ptr %822, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %825 = add nuw nsw i32 %821, 1
  %826 = load i32, ptr %817, align 32
  %827 = icmp slt i32 %825, %826
  br i1 %827, label %820, label %828

828:                                              ; preds = %820, %816, %812
  %829 = call i32 @ipc_update_perm(ptr noundef nonnull %16, ptr noundef %570) #14
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %834

831:                                              ; preds = %828
  %832 = call i64 @ktime_get_real_seconds() #14
  %833 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 1
  store i64 %832, ptr %833, align 64
  br label %834

834:                                              ; preds = %831, %828
  %835 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 6
  %836 = load i32, ptr %835, align 4
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %866

838:                                              ; preds = %834
  %839 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 2
  %840 = load ptr, ptr %839, align 8
  %841 = icmp eq ptr %840, %839
  br i1 %841, label %854, label %842

842:                                              ; preds = %842, %838
  %843 = phi ptr [ %844, %842 ], [ %840, %838 ]
  %844 = load ptr, ptr %843, align 4
  %845 = getelementptr inbounds %struct.sem_queue, ptr %843, i32 0, i32 5
  %846 = load ptr, ptr %845, align 4
  %847 = load i16, ptr %846, align 2
  %848 = zext i16 %847 to i32
  %849 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %848, i32 3
  %850 = getelementptr %struct.sem_array, ptr %570, i32 0, i32 9, i32 %848, i32 3, i32 1
  %851 = load ptr, ptr %850, align 4
  store ptr %843, ptr %850, align 4
  store ptr %849, ptr %843, align 4
  %852 = getelementptr inbounds %struct.list_head, ptr %843, i32 0, i32 1
  store ptr %851, ptr %852, align 4
  store volatile ptr %843, ptr %851, align 4
  %853 = icmp eq ptr %844, %839
  br i1 %853, label %854, label %842

854:                                              ; preds = %842, %838
  store volatile ptr %839, ptr %839, align 4
  %855 = getelementptr inbounds %struct.sem_array, ptr %570, i32 0, i32 2, i32 1
  store ptr %839, ptr %855, align 4
  %856 = load i32, ptr %835, align 4
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %866

858:                                              ; preds = %854
  %859 = load i32, ptr %813, align 8
  %860 = icmp eq i32 %859, 1
  br i1 %860, label %861, label %862

861:                                              ; preds = %858
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %864

862:                                              ; preds = %858
  %863 = add i32 %859, -1
  br label %864

864:                                              ; preds = %862, %861
  %865 = phi i32 [ %863, %862 ], [ 0, %861 ]
  store volatile i32 %865, ptr %813, align 8
  br label %866

866:                                              ; preds = %864, %854, %834
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %867 = load i16, ptr %570, align 4
  %868 = add i16 %867, 1
  store i16 %868, ptr %570, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %869

869:                                              ; preds = %866, %574, %572
  %870 = phi i32 [ %573, %572 ], [ %829, %866 ], [ -22, %574 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %871

871:                                              ; preds = %869, %805
  %872 = phi i32 [ %870, %869 ], [ 0, %805 ]
  call void @up_write(ptr noundef %569) #14
  br label %873

873:                                              ; preds = %871, %567, %540, %528, %526, %456, %181, %149, %148, %145, %143, %75, %19, %5
  %874 = phi i32 [ %872, %871 ], [ %527, %526 ], [ %457, %456 ], [ %76, %75 ], [ -22, %5 ], [ %146, %145 ], [ -14, %567 ], [ -22, %19 ], [ %144, %143 ], [ -14, %148 ], [ -14, %149 ], [ -14, %528 ], [ -14, %540 ], [ %184, %181 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #14
  ret i32 %874
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %2, ptr %5, align 4
  %6 = call i32 @ipc_parse_version(ptr noundef nonnull %5) #14
  %7 = load i32, ptr %5, align 4
  %8 = call fastcc i32 @ksys_semctl(i32 noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %3, i32 noundef %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__do_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sem_queue, align 4
  %10 = alloca %struct.wake_q_head, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %9, i8 0, i32 40, i1 false), !annotation !14
  %11 = icmp eq i32 %2, 0
  %12 = icmp slt i32 %0, 0
  %13 = or i1 %12, %11
  br i1 %13, label %328, label %14

14:                                               ; preds = %5
  %15 = getelementptr %struct.ipc_namespace, ptr %4, i32 0, i32 1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %2
  br i1 %17, label %328, label %18

18:                                               ; preds = %14
  %19 = icmp ne ptr %3, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = load i64, ptr %3, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %328, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = icmp ugt i32 %25, 999999999
  br i1 %26, label %328, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @timespec64_to_jiffies(ptr noundef nonnull %3) #14
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i32 [ %28, %27 ], [ 0, %18 ]
  %31 = getelementptr %struct.sembuf, ptr %1, i32 %2
  %32 = icmp ugt ptr %31, %1
  br i1 %32, label %33, label %168

33:                                               ; preds = %33, %29
  %34 = phi ptr [ %60, %33 ], [ %1, %29 ]
  %35 = phi i32 [ %44, %33 ], [ 0, %29 ]
  %36 = phi i32 [ %59, %33 ], [ 0, %29 ]
  %37 = phi i1 [ %52, %33 ], [ false, %29 ]
  %38 = phi i1 [ %57, %33 ], [ false, %29 ]
  %39 = phi i1 [ %49, %33 ], [ false, %29 ]
  %40 = load i16, ptr %34, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 31
  %43 = shl nuw i32 1, %42
  %44 = tail call i32 @llvm.smax.i32(i32 %35, i32 %41)
  %45 = getelementptr inbounds %struct.sembuf, ptr %34, i32 0, i32 2
  %46 = load i16, ptr %45, align 2
  %47 = and i16 %46, 4096
  %48 = icmp ne i16 %47, 0
  %49 = select i1 %48, i1 true, i1 %39
  %50 = and i32 %43, %36
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %51, i1 true, i1 %37
  %53 = getelementptr inbounds %struct.sembuf, ptr %34, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  %56 = xor i1 %55, true
  %57 = select i1 %56, i1 true, i1 %38
  %58 = select i1 %55, i32 0, i32 %43
  %59 = or i32 %58, %36
  %60 = getelementptr %struct.sembuf, ptr %34, i32 1
  %61 = icmp ult ptr %60, %31
  br i1 %61, label %33, label %62

62:                                               ; preds = %33
  br i1 %49, label %63, label %168

63:                                               ; preds = %62
  %64 = tail call ptr @llvm.thread.pointer() #14
  %65 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 87
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 4197824, i32 noundef 16) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %165, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.sem_undo_list, ptr %70, i32 0, i32 1
  store i32 0, ptr %73, align 4
  store volatile i32 1, ptr %70, align 8
  %74 = getelementptr inbounds %struct.sem_undo_list, ptr %70, i32 0, i32 2
  store volatile ptr %74, ptr %74, align 8
  %75 = getelementptr inbounds %struct.sem_undo_list, ptr %70, i32 0, i32 2, i32 1
  store ptr %74, ptr %75, align 4
  store ptr %70, ptr %65, align 4
  br label %76

76:                                               ; preds = %72, %63
  %77 = phi ptr [ %70, %72 ], [ %66, %63 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %78 = getelementptr inbounds %struct.sem_undo_list, ptr %77, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %78) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  %79 = load volatile i32, ptr %78, align 4
  store volatile i32 %79, ptr %8, align 4
  %80 = lshr i32 %79, 16
  %81 = and i32 %79, 65535
  %82 = icmp eq i32 %81, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br i1 %82, label %83, label %84, !prof !21

83:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/sem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1887, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.sem_undo_list, ptr %77, i32 0, i32 2
  br label %86

86:                                               ; preds = %90, %84
  %87 = phi ptr [ %85, %84 ], [ %88, %90 ]
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %85
  br i1 %89, label %103, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sem_undo, ptr %88, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, %0
  br i1 %93, label %94, label %86

94:                                               ; preds = %90
  %95 = icmp eq ptr %88, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %88, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %98, ptr %100, align 4
  store volatile ptr %99, ptr %98, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %97, align 4
  %101 = load ptr, ptr %85, align 4
  store ptr %101, ptr %88, align 4
  store ptr %85, ptr %97, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  store volatile ptr %88, ptr %85, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %88, ptr %102, align 4
  br label %103

103:                                              ; preds = %96, %94, %86
  %104 = phi ptr [ %88, %96 ], [ null, %94 ], [ null, %86 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %105 = load i16, ptr %78, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %107 = icmp eq ptr %104, null
  br i1 %107, label %108, label %162, !prof !21

108:                                              ; preds = %103
  %109 = tail call ptr @ipc_obtain_object_check(ptr noundef %4, i32 noundef %0) #14
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %162

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.sem_array, ptr %109, i32 0, i32 5
  %114 = load i32, ptr %113, align 32
  %115 = tail call zeroext i1 @ipc_rcu_getref(ptr noundef %109) #14
  tail call void asm sideeffect "", "~{memory}"() #14
  br i1 %115, label %116, label %165

116:                                              ; preds = %112
  %117 = shl i32 %114, 1
  %118 = add i32 %117, 36
  %119 = tail call noalias ptr @kvmalloc_node(i32 noundef %118, i32 noundef 4197824, i32 noundef -1) #16
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  tail call void @ipc_rcu_putref(ptr noundef %109, ptr noundef nonnull @sem_rcu_free) #14
  br label %165

122:                                              ; preds = %116
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  tail call fastcc void @sem_lock_and_putref(ptr noundef %109) #14
  %123 = getelementptr inbounds %struct.kern_ipc_perm, ptr %109, i32 0, i32 1
  %124 = load i8, ptr %123, align 4, !range !20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call fastcc void @sem_unlock(ptr noundef %109, i32 noundef -1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  tail call void @kvfree(ptr noundef nonnull %119) #14
  br label %165

127:                                              ; preds = %122
  tail call void @_raw_spin_lock(ptr noundef %78) #14
  %128 = tail call fastcc ptr @lookup_undo(ptr noundef %77, i32 noundef %0) #14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %131 = load i16, ptr %78, align 4
  %132 = add i16 %131, 1
  store i16 %132, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  tail call void @kvfree(ptr noundef nonnull %119) #14
  br label %160

133:                                              ; preds = %127
  %134 = getelementptr %struct.sem_undo, ptr %119, i32 1
  %135 = getelementptr inbounds %struct.sem_undo, ptr %119, i32 0, i32 5
  store ptr %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.sem_undo, ptr %119, i32 0, i32 2
  store ptr %77, ptr %136, align 4
  %137 = getelementptr inbounds %struct.sem_undo, ptr %119, i32 0, i32 4
  store i32 %0, ptr %137, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %138 = load volatile i32, ptr %78, align 4
  store volatile i32 %138, ptr %7, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %138, 65535
  %141 = icmp eq i32 %140, %139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br i1 %141, label %142, label %143, !prof !21

142:                                              ; preds = %133
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/sem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1975, 0\0A.popsection", ""() #14, !srcloc !31
  unreachable

143:                                              ; preds = %133
  %144 = load ptr, ptr %85, align 4
  store ptr %144, ptr %119, align 4
  %145 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %85, ptr %145, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  store volatile ptr %119, ptr %85, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  store ptr %119, ptr %146, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %147 = load volatile i32, ptr %109, align 4
  store volatile i32 %147, ptr %6, align 4
  %148 = lshr i32 %147, 16
  %149 = and i32 %147, 65535
  %150 = icmp eq i32 %149, %148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %150, label %151, label %152, !prof !21

151:                                              ; preds = %143
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #14, !srcloc !26
  unreachable

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.sem_undo, ptr %119, i32 0, i32 3
  %154 = getelementptr inbounds %struct.sem_array, ptr %109, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  store ptr %153, ptr %156, align 4
  store ptr %155, ptr %153, align 4
  %157 = getelementptr inbounds %struct.sem_undo, ptr %119, i32 0, i32 3, i32 1
  store ptr %154, ptr %157, align 4
  store volatile ptr %153, ptr %154, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %158 = load i16, ptr %78, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %160

160:                                              ; preds = %152, %130
  %161 = phi ptr [ %128, %130 ], [ %119, %152 ]
  tail call fastcc void @sem_unlock(ptr noundef %109, i32 noundef -1) #14
  br label %162

162:                                              ; preds = %160, %111, %103
  %163 = phi ptr [ %109, %111 ], [ %104, %103 ], [ %161, %160 ]
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %165, label %172

165:                                              ; preds = %162, %126, %121, %112, %68
  %166 = phi ptr [ %163, %162 ], [ inttoptr (i32 -43 to ptr), %112 ], [ inttoptr (i32 -12 to ptr), %68 ], [ inttoptr (i32 -43 to ptr), %126 ], [ inttoptr (i32 -12 to ptr), %121 ]
  %167 = ptrtoint ptr %166 to i32
  br label %328

168:                                              ; preds = %62, %29
  %169 = phi i32 [ %44, %62 ], [ 0, %29 ]
  %170 = phi i1 [ %52, %62 ], [ false, %29 ]
  %171 = phi i1 [ %57, %62 ], [ false, %29 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  br label %172

172:                                              ; preds = %168, %162
  %173 = phi i32 [ %44, %162 ], [ %169, %168 ]
  %174 = phi i1 [ %52, %162 ], [ %170, %168 ]
  %175 = phi i1 [ %57, %162 ], [ %171, %168 ]
  %176 = phi ptr [ %163, %162 ], [ null, %168 ]
  %177 = tail call ptr @ipc_obtain_object_check(ptr noundef %4, i32 noundef %0) #14
  %178 = icmp ugt ptr %177, inttoptr (i32 -4096 to ptr)
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %180 = ptrtoint ptr %177 to i32
  br label %328

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 5
  %183 = load i32, ptr %182, align 32
  %184 = icmp slt i32 %173, %183
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %328

186:                                              ; preds = %181
  %187 = select i1 %175, i16 146, i16 292
  %188 = tail call i32 @ipcperms(ptr noundef %4, ptr noundef %177, i16 noundef signext %187) #14
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %328

191:                                              ; preds = %186
  %192 = tail call fastcc i32 @sem_lock(ptr noundef %177, ptr noundef %1, i32 noundef %2)
  %193 = getelementptr inbounds %struct.kern_ipc_perm, ptr %177, i32 0, i32 1
  %194 = load i8, ptr %193, align 4, !range !20
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %325

196:                                              ; preds = %191
  %197 = icmp eq ptr %176, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.sem_undo, ptr %176, i32 0, i32 4
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %325, label %202

202:                                              ; preds = %198, %196
  %203 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 5
  store ptr %1, ptr %203, align 4
  %204 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 7
  store i32 %2, ptr %204, align 4
  %205 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 2
  store ptr %176, ptr %205, align 4
  %206 = tail call ptr @llvm.thread.pointer() #14
  %207 = getelementptr inbounds %struct.task_struct, ptr %206, i32 0, i32 93
  %208 = load ptr, ptr %207, align 16
  %209 = getelementptr %struct.signal_struct, ptr %208, i32 0, i32 22, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 3
  store ptr %210, ptr %211, align 4
  %212 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 8
  %213 = zext i1 %175 to i8
  store i8 %213, ptr %212, align 4
  %214 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 9
  %215 = zext i1 %174 to i8
  store i8 %215, ptr %214, align 1
  %216 = call fastcc i32 @perform_atomic_semop(ptr noundef %177, ptr noundef nonnull %9)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  store ptr inttoptr (i32 1 to ptr), ptr %10, align 8
  %219 = getelementptr inbounds %struct.wake_q_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %219, align 4
  br i1 %175, label %220, label %221

220:                                              ; preds = %218
  call fastcc void @do_smart_update(ptr noundef %177, ptr noundef %1, i32 noundef %2, i32 noundef 1, ptr noundef nonnull %10)
  br label %232

221:                                              ; preds = %218
  %222 = icmp eq ptr %1, null
  %223 = call i64 @ktime_get_real_seconds() #14
  br i1 %222, label %224, label %226

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.sem_array, ptr %177, i32 1, i32 0, i32 8
  br label %230

226:                                              ; preds = %221
  %227 = load i16, ptr %1, align 2
  %228 = zext i16 %227 to i32
  %229 = getelementptr %struct.sem_array, ptr %177, i32 0, i32 9, i32 %228, i32 5
  br label %230

230:                                              ; preds = %226, %224
  %231 = phi ptr [ %229, %226 ], [ %225, %224 ]
  store i64 %223, ptr %231, align 32
  br label %232

232:                                              ; preds = %230, %220
  call fastcc void @sem_unlock(ptr noundef %177, i32 noundef %192)
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %328

233:                                              ; preds = %202
  %234 = icmp slt i32 %216, 0
  br i1 %234, label %325, label %235

235:                                              ; preds = %233
  %236 = icmp eq i32 %2, 1
  br i1 %236, label %237, label %264

237:                                              ; preds = %235
  %238 = load i16, ptr %1, align 2
  %239 = load i32, ptr %182, align 32
  %240 = zext i16 %238 to i32
  %241 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %240, i32 %239) #14, !srcloc !27
  %242 = trunc i32 %241 to i16
  %243 = and i16 %238, %242
  %244 = zext i16 %243 to i32
  br i1 %175, label %245, label %259

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 2
  %251 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 2, i32 1
  %252 = load ptr, ptr %251, align 4
  store ptr %9, ptr %251, align 4
  store ptr %250, ptr %9, align 4
  %253 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %252, ptr %253, align 4
  store volatile ptr %9, ptr %252, align 4
  br label %280

254:                                              ; preds = %245
  %255 = getelementptr %struct.sem_array, ptr %177, i32 0, i32 9, i32 %244, i32 3
  %256 = getelementptr %struct.sem_array, ptr %177, i32 0, i32 9, i32 %244, i32 3, i32 1
  %257 = load ptr, ptr %256, align 4
  store ptr %9, ptr %256, align 4
  store ptr %255, ptr %9, align 4
  %258 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %257, ptr %258, align 4
  store volatile ptr %9, ptr %257, align 4
  br label %280

259:                                              ; preds = %237
  %260 = getelementptr %struct.sem_array, ptr %177, i32 0, i32 9, i32 %244, i32 4
  %261 = getelementptr %struct.sem_array, ptr %177, i32 0, i32 9, i32 %244, i32 4, i32 1
  %262 = load ptr, ptr %261, align 4
  store ptr %9, ptr %261, align 4
  store ptr %260, ptr %9, align 4
  %263 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %262, ptr %263, align 4
  store volatile ptr %9, ptr %262, align 4
  br label %280

264:                                              ; preds = %235
  %265 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 6
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  tail call fastcc void @merge_queues(ptr noundef %177)
  br label %269

269:                                              ; preds = %268, %264
  %270 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 3
  %271 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 3, i32 1
  %272 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 2
  %273 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 2, i32 1
  %274 = select i1 %175, ptr %273, ptr %271
  %275 = select i1 %175, ptr %272, ptr %270
  %276 = load ptr, ptr %274, align 4
  store ptr %9, ptr %274, align 4
  store ptr %275, ptr %9, align 4
  %277 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %276, ptr %277, align 4
  store volatile ptr %9, ptr %276, align 4
  %278 = load i32, ptr %265, align 4
  %279 = add i32 %278, 1
  store i32 %279, ptr %265, align 4
  br label %280

280:                                              ; preds = %269, %259, %254, %249
  %281 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 4
  %282 = getelementptr inbounds %struct.sem_queue, ptr %9, i32 0, i32 1
  %283 = getelementptr inbounds %struct.task_struct, ptr %206, i32 0, i32 1
  br label %284

284:                                              ; preds = %309, %280
  %285 = phi i32 [ %30, %280 ], [ %291, %309 ]
  %286 = phi i32 [ %192, %280 ], [ %296, %309 ]
  store volatile i32 -4, ptr %281, align 4
  store ptr %206, ptr %282, align 4
  store volatile i32 1, ptr %283, align 8
  call fastcc void @sem_unlock(ptr noundef %177, i32 noundef %286)
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br i1 %19, label %287, label %289

287:                                              ; preds = %284
  %288 = call i32 @schedule_timeout(i32 noundef %285) #14
  br label %290

289:                                              ; preds = %284
  call void @schedule() #14
  br label %290

290:                                              ; preds = %289, %287
  %291 = phi i32 [ %288, %287 ], [ %285, %289 ]
  %292 = load volatile i32, ptr %281, align 4
  %293 = icmp eq i32 %292, -4
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  br label %328

295:                                              ; preds = %290
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %296 = call fastcc i32 @sem_lock(ptr noundef %177, ptr noundef %1, i32 noundef %2)
  %297 = load i8, ptr %193, align 4, !range !20
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %299, label %325

299:                                              ; preds = %295
  %300 = load volatile i32, ptr %281, align 4
  %301 = icmp eq i32 %300, -4
  br i1 %301, label %302, label %325

302:                                              ; preds = %299
  %303 = icmp eq i32 %291, 0
  %304 = select i1 %19, i1 %303, i1 false
  br i1 %304, label %313, label %305

305:                                              ; preds = %302
  %306 = load volatile i32, ptr %206, align 4
  %307 = and i32 %306, 256
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313, !prof !23

309:                                              ; preds = %305
  %310 = load volatile i32, ptr %206, align 4
  %311 = and i32 %310, 1
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %284, label %313

313:                                              ; preds = %309, %305, %302
  %314 = phi i32 [ -4, %305 ], [ -11, %302 ], [ -4, %309 ]
  %315 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = load ptr, ptr %9, align 4
  %318 = getelementptr inbounds %struct.list_head, ptr %317, i32 0, i32 1
  store ptr %316, ptr %318, align 4
  store volatile ptr %317, ptr %316, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %315, align 4
  %319 = load i32, ptr %204, align 4
  %320 = icmp sgt i32 %319, 1
  br i1 %320, label %321, label %325

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.sem_array, ptr %177, i32 0, i32 6
  %323 = load i32, ptr %322, align 4
  %324 = add i32 %323, -1
  store i32 %324, ptr %322, align 4
  br label %325

325:                                              ; preds = %321, %313, %299, %295, %233, %198, %191
  %326 = phi i32 [ %192, %198 ], [ %192, %233 ], [ %192, %191 ], [ %296, %313 ], [ %296, %321 ], [ %296, %295 ], [ %296, %299 ]
  %327 = phi i32 [ -43, %198 ], [ %216, %233 ], [ -43, %191 ], [ %314, %313 ], [ %314, %321 ], [ %300, %299 ], [ -4, %295 ]
  call fastcc void @sem_unlock(ptr noundef %177, i32 noundef %326)
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %328

328:                                              ; preds = %325, %294, %232, %190, %185, %179, %165, %23, %20, %14, %5
  %329 = phi i32 [ -22, %5 ], [ -7, %14 ], [ %167, %165 ], [ %180, %179 ], [ -27, %185 ], [ -13, %190 ], [ %327, %325 ], [ 0, %232 ], [ %292, %294 ], [ -22, %23 ], [ -22, %20 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #14
  ret i32 %329
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timespec64_to_jiffies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcperms(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sem_lock(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  store volatile i32 10, ptr %6, align 8
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %18, %13 ], [ 0, %9 ]
  %15 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %14, i32 2
  tail call void @_raw_spin_lock(ptr noundef %15) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %18 = add nuw nsw i32 %14, 1
  %19 = load i32, ptr %10, align 32
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %13, label %50

21:                                               ; preds = %3
  %22 = load i16, ptr %1, align 2
  %23 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 32
  %25 = zext i16 %22 to i32
  %26 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %25, i32 %24) #14, !srcloc !27
  %27 = trunc i32 %26 to i16
  %28 = and i16 %22, %27
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 7
  %31 = load volatile i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %29, i32 2
  tail call void @_raw_spin_lock(ptr noundef %34) #14
  %35 = load volatile i32, ptr %30, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %38 = load i16, ptr %34, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %40

40:                                               ; preds = %37, %21
  tail call void @_raw_spin_lock(ptr noundef %0) #14
  %41 = load i32, ptr %30, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %29, i32 2
  tail call void @_raw_spin_lock(ptr noundef %44) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %45 = load i16, ptr %0, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %47

47:                                               ; preds = %43, %33
  %48 = load i16, ptr %1, align 2
  %49 = zext i16 %48 to i32
  br label %50

50:                                               ; preds = %47, %40, %13, %9, %5
  %51 = phi i32 [ -1, %40 ], [ -1, %5 ], [ -1, %9 ], [ %49, %47 ], [ -1, %13 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @perform_atomic_semop(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 9
  %8 = load i8, ptr %7, align 1, !range !20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18, !prof !23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.sembuf, ptr %4, i32 %12
  %14 = icmp ult ptr %4, %13
  br i1 %14, label %15, label %111

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.sem_undo, ptr %6, i32 0, i32 5
  br label %24

18:                                               ; preds = %2
  %19 = tail call fastcc i32 @perform_atomic_semop_slow(ptr noundef %0, ptr noundef %1)
  br label %111

20:                                               ; preds = %61
  br i1 %14, label %21, label %111

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.sem_undo, ptr %6, i32 0, i32 5
  %23 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 3
  br label %64

24:                                               ; preds = %61, %15
  %25 = phi ptr [ %4, %15 ], [ %62, %61 ]
  %26 = load i16, ptr %25, align 2
  %27 = load i32, ptr %16, align 32
  %28 = zext i16 %26 to i32
  %29 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %28, i32 %27) #14, !srcloc !27
  %30 = trunc i32 %29 to i16
  %31 = and i16 %26, %30
  %32 = zext i16 %31 to i32
  %33 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %32
  %34 = getelementptr inbounds %struct.sembuf, ptr %25, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = sext i16 %35 to i32
  %37 = load i32, ptr %33, align 64
  %38 = icmp eq i16 %35, 0
  %39 = icmp ne i32 %37, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %104, label %41

41:                                               ; preds = %24
  %42 = add i32 %37, %36
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %104, label %44

44:                                               ; preds = %41
  %45 = icmp ugt i32 %42, 32767
  br i1 %45, label %111, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.sembuf, ptr %25, i32 0, i32 2
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, 4096
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %17, align 4
  %53 = load i16, ptr %25, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr i16, ptr %52, i32 %54
  %56 = load i16, ptr %55, align 2
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 -32768, %36
  %59 = add nsw i32 %58, %57
  %60 = icmp ult i32 %59, -65536
  br i1 %60, label %111, label %61

61:                                               ; preds = %51, %46
  %62 = getelementptr %struct.sembuf, ptr %25, i32 1
  %63 = icmp ult ptr %62, %13
  br i1 %63, label %24, label %20

64:                                               ; preds = %101, %21
  %65 = phi ptr [ %4, %21 ], [ %102, %101 ]
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %67
  %69 = getelementptr inbounds %struct.sembuf, ptr %65, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = sext i16 %70 to i32
  %72 = getelementptr inbounds %struct.sembuf, ptr %65, i32 0, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = and i16 %73, 4096
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %64
  %77 = load ptr, ptr %22, align 4
  %78 = getelementptr i16, ptr %77, i32 %67
  %79 = load i16, ptr %78, align 2
  %80 = sub i16 %79, %70
  store i16 %80, ptr %78, align 2
  br label %81

81:                                               ; preds = %76, %64
  %82 = load i32, ptr %68, align 64
  %83 = add i32 %82, %71
  store i32 %83, ptr %68, align 64
  %84 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %67, i32 1
  %85 = load ptr, ptr %23, align 4
  %86 = load ptr, ptr %84, align 4
  %87 = icmp eq ptr %86, %85
  br i1 %87, label %101, label %88

88:                                               ; preds = %81
  %89 = icmp eq ptr %85, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %88
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %85) #14, !srcloc !24
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %85, ptr nonnull %85, i32 1, ptr nonnull elementtype(i32) %85) #14, !srcloc !25
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94, !prof !21

94:                                               ; preds = %90
  %95 = add i32 %92, 1
  %96 = or i32 %95, %92
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %100, label %98, !prof !23

98:                                               ; preds = %94, %90
  %99 = phi i32 [ 2, %90 ], [ 1, %94 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %85, i32 noundef %99) #14
  br label %100

100:                                              ; preds = %98, %94, %88
  store ptr %85, ptr %84, align 4
  tail call void @put_pid(ptr noundef %86) #14
  br label %101

101:                                              ; preds = %100, %81
  %102 = getelementptr %struct.sembuf, ptr %65, i32 1
  %103 = icmp ult ptr %102, %13
  br i1 %103, label %64, label %111

104:                                              ; preds = %41, %24
  %105 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 6
  store ptr %25, ptr %105, align 4
  %106 = getelementptr inbounds %struct.sembuf, ptr %25, i32 0, i32 2
  %107 = load i16, ptr %106, align 2
  %108 = and i16 %107, 2048
  %109 = icmp eq i16 %108, 0
  %110 = select i1 %109, i32 1, i32 -11
  br label %111

111:                                              ; preds = %104, %101, %51, %44, %20, %18, %10
  %112 = phi i32 [ %19, %18 ], [ %110, %104 ], [ 0, %20 ], [ 0, %10 ], [ 0, %101 ], [ -34, %51 ], [ -34, %44 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_smart_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @do_smart_wakeup_zero(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  %7 = or i32 %6, %3
  %8 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 2
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @update_queue(ptr noundef %0, i32 noundef -1, ptr noundef %4)
  %13 = or i32 %12, %7
  br label %46

14:                                               ; preds = %5
  %15 = icmp eq ptr %1, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %30, label %46

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %27, %22 ], [ 0, %18 ]
  %24 = phi i32 [ %26, %22 ], [ %7, %18 ]
  %25 = tail call fastcc i32 @update_queue(ptr noundef %0, i32 noundef %23, ptr noundef %4)
  %26 = or i32 %25, %24
  %27 = add nuw nsw i32 %23, 1
  %28 = load i32, ptr %19, align 32
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %22, label %46

30:                                               ; preds = %42, %16
  %31 = phi i32 [ %44, %42 ], [ 0, %16 ]
  %32 = phi i32 [ %43, %42 ], [ %7, %16 ]
  %33 = getelementptr %struct.sembuf, ptr %1, i32 %31, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = icmp sgt i16 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = getelementptr %struct.sembuf, ptr %1, i32 %31
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = tail call fastcc i32 @update_queue(ptr noundef %0, i32 noundef %39, ptr noundef %4)
  %41 = or i32 %40, %32
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %41, %36 ], [ %32, %30 ]
  %44 = add nuw nsw i32 %31, 1
  %45 = icmp eq i32 %44, %2
  br i1 %45, label %46, label %30

46:                                               ; preds = %42, %22, %16, %11
  %47 = phi i32 [ %13, %11 ], [ %7, %16 ], [ %26, %22 ], [ %43, %42 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %66, label %53

49:                                               ; preds = %18
  %50 = icmp eq i32 %7, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %49
  %52 = tail call i64 @ktime_get_real_seconds() #14
  br label %56

53:                                               ; preds = %46
  %54 = icmp eq ptr %1, null
  %55 = tail call i64 @ktime_get_real_seconds() #14
  br i1 %54, label %56, label %59

56:                                               ; preds = %53, %51
  %57 = phi i64 [ %52, %51 ], [ %55, %53 ]
  %58 = getelementptr inbounds %struct.sem_array, ptr %0, i32 1, i32 0, i32 8
  br label %63

59:                                               ; preds = %53
  %60 = load i16, ptr %1, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %61, i32 5
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i64 [ %55, %59 ], [ %57, %56 ]
  %65 = phi ptr [ %62, %59 ], [ %58, %56 ]
  store i64 %64, ptr %65, align 32
  br label %66

66:                                               ; preds = %63, %49, %46
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sem_unlock(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %40

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %24, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sem_queue, ptr %13, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %18, i32 3
  %20 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %18, i32 3, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %13, ptr %20, align 4
  store ptr %19, ptr %13, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %13, ptr %21, align 4
  %23 = icmp eq ptr %14, %9
  br i1 %23, label %24, label %12

24:                                               ; preds = %12, %8
  store volatile ptr %9, ptr %9, align 4
  %25 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 2, i32 1
  store ptr %9, ptr %25, align 4
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %35

33:                                               ; preds = %28
  %34 = add i32 %30, -1
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ %34, %33 ], [ 0, %32 ]
  store volatile i32 %36, ptr %29, align 8
  br label %37

37:                                               ; preds = %35, %24, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %38 = load i16, ptr %0, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %44

40:                                               ; preds = %2
  %41 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %1, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %42 = load i16, ptr %41, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %44

44:                                               ; preds = %40, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @merge_queues(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %20, %5
  %8 = phi i32 [ %3, %5 ], [ %21, %20 ]
  %9 = phi i32 [ 0, %5 ], [ %22, %20 ]
  %10 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %9, i32 3
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %9, i32 3, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %6, ptr %17, align 4
  store ptr %11, ptr %6, align 4
  store ptr %14, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %15, align 4
  %19 = load i32, ptr %2, align 32
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i32 [ %8, %7 ], [ %19, %13 ]
  %22 = add nuw nsw i32 %9, 1
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %7, label %24

24:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !14
  %8 = call i32 @get_timespec64(ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5)
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ -14, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %16

14:                                               ; preds = %4
  %15 = tail call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [64 x %struct.sembuf], align 2
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(384) %5, i8 0, i32 384, i1 false), !annotation !14
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.ipc_namespace, ptr %10, i32 0, i32 1, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %2
  br i1 %13, label %57, label %14

14:                                               ; preds = %4
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i32 %2, 64
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = mul nuw nsw i32 %2, 6
  br label %27

20:                                               ; preds = %16
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 6) #14
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %57, label %23, !prof !21

23:                                               ; preds = %20
  %24 = extractvalue { i32, i1 } %21, 0
  %25 = tail call noalias ptr @kvmalloc_node(i32 noundef %24, i32 noundef 3264, i32 noundef -1) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %23, %18
  %28 = phi i32 [ %19, %18 ], [ %24, %23 ]
  %29 = phi ptr [ %5, %18 ], [ %25, %23 ]
  %30 = icmp slt i32 %28, 0
  %31 = load i1, ptr @check_copy_size.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !21

34:                                               ; preds = %27
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %35

35:                                               ; preds = %34, %27
  br i1 %30, label %53, label %36, !prof !21

36:                                               ; preds = %35
  %37 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %28, i32 -1090519040) #17, !srcloc !22
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47, !prof !23

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #18, !srcloc !16
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %45 = call i32 @arm_copy_from_user(ptr noundef nonnull %29, ptr noundef %1, i32 noundef %28) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #14, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !23

47:                                               ; preds = %40, %36
  %48 = phi i32 [ %45, %40 ], [ %28, %36 ]
  %49 = sub i32 %28, %48
  %50 = getelementptr i8, ptr %29, i32 %49
  call void @llvm.memset.p0.i32(ptr align 1 %50, i8 0, i32 %48, i1 false) #14
  br label %53

51:                                               ; preds = %40
  %52 = call i32 @__do_semtimedop(i32 noundef %0, ptr noundef nonnull %29, i32 noundef %2, ptr noundef %3, ptr noundef %10)
  br label %53

53:                                               ; preds = %51, %47, %35
  %54 = phi i32 [ %52, %51 ], [ -14, %35 ], [ -14, %47 ]
  %55 = icmp eq ptr %29, %5
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @kvfree(ptr noundef nonnull %29) #14
  br label %57

57:                                               ; preds = %56, %53, %23, %20, %14, %4
  %58 = phi i32 [ -7, %4 ], [ -22, %14 ], [ -12, %23 ], [ %54, %56 ], [ %54, %53 ], [ -12, %20 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #14
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semtimedop(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = inttoptr i32 %1 to ptr
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #14, !annotation !14
  %10 = call i32 @get_timespec64(ptr noundef nonnull %5, ptr noundef nonnull %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %6, i32 noundef %2, ptr noundef nonnull %5) #14
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ -14, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %18

16:                                               ; preds = %4
  %17 = tail call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %6, i32 noundef %2, ptr noundef null) #14
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @compat_ksys_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !14
  %8 = call i32 @get_old_timespec32(ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5)
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ -14, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %16

14:                                               ; preds = %4
  %15 = tail call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null)
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semtimedop_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = inttoptr i32 %1 to ptr
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #14, !annotation !14
  %10 = call i32 @get_old_timespec32(ptr noundef nonnull %5, ptr noundef nonnull %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %6, i32 noundef %2, ptr noundef nonnull %5) #14
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ -14, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %18

16:                                               ; preds = %4
  %17 = tail call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %6, i32 noundef %2, ptr noundef null) #14
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semop(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @do_semtimedop(i32 noundef %0, ptr noundef %4, i32 noundef %2, ptr noundef null) #14
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_semundo(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 262144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 87
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 4197824, i32 noundef 16) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sem_undo_list, ptr %12, i32 0, i32 1
  store i32 0, ptr %15, align 4
  store volatile i32 1, ptr %12, align 8
  %16 = getelementptr inbounds %struct.sem_undo_list, ptr %12, i32 0, i32 2
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sem_undo_list, ptr %12, i32 0, i32 2, i32 1
  store ptr %16, ptr %17, align 4
  store ptr %12, ptr %7, align 4
  br label %18

18:                                               ; preds = %14, %5
  %19 = phi ptr [ %12, %14 ], [ %8, %5 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #14, !srcloc !24
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #14, !srcloc !25
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !21

23:                                               ; preds = %18
  %24 = add i32 %21, 1
  %25 = or i32 %24, %21
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %29, label %27, !prof !23

27:                                               ; preds = %23, %18
  %28 = phi i32 [ 2, %18 ], [ 1, %23 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef %28) #14
  br label %29

29:                                               ; preds = %27, %23, %2
  %30 = phi ptr [ %19, %23 ], [ %19, %27 ], [ null, %2 ]
  %31 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 87
  store ptr %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %10
  %33 = phi i32 [ -12, %10 ], [ 0, %29 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_sem(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wake_q_head, align 8
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 87
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %245, label %7

7:                                                ; preds = %1
  store ptr null, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #14, !srcloc !24
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !35
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %245, label %13, !prof !23

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #14
  br label %245

14:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !36
  %15 = getelementptr inbounds %struct.wake_q_head, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr inttoptr (i32 1 to ptr), ptr %3, align 8
  store ptr %3, ptr %15, align 4
  %16 = call i32 @__cond_resched() #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %17 = getelementptr inbounds %struct.sem_undo_list, ptr %5, i32 0, i32 2
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %241, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sem_undo_list, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 92
  br label %23

23:                                               ; preds = %237, %20
  %24 = phi ptr [ %18, %20 ], [ %239, %237 ]
  call void @_raw_spin_lock(ptr noundef %21) #14
  %25 = getelementptr inbounds %struct.sem_undo, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %27 = load i16, ptr %21, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %29 = icmp eq i32 %26, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %237

31:                                               ; preds = %23
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr inbounds %struct.nsproxy, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = call ptr @ipc_obtain_object_check(ptr noundef %34, i32 noundef %26) #14
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %237

38:                                               ; preds = %31
  call void @_raw_spin_lock(ptr noundef %35) #14
  %39 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 7
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  store volatile i32 10, ptr %39, align 8
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 5
  %44 = load i32, ptr %43, align 32
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %46, %42
  %47 = phi i32 [ %51, %46 ], [ 0, %42 ]
  %48 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %47, i32 2
  call void @_raw_spin_lock(ptr noundef %48) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %51 = add nuw nsw i32 %47, 1
  %52 = load i32, ptr %43, align 32
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %46, label %54

54:                                               ; preds = %46, %42, %38
  %55 = getelementptr inbounds %struct.kern_ipc_perm, ptr %35, i32 0, i32 1
  %56 = load i8, ptr %55, align 4, !range !20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %78, label %66

66:                                               ; preds = %66, %62
  %67 = phi ptr [ %68, %66 ], [ %64, %62 ]
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sem_queue, ptr %67, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %72, i32 3
  %74 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %72, i32 3, i32 1
  %75 = load ptr, ptr %74, align 4
  store ptr %67, ptr %74, align 4
  store ptr %73, ptr %67, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  store volatile ptr %67, ptr %75, align 4
  %77 = icmp eq ptr %68, %63
  br i1 %77, label %78, label %66

78:                                               ; preds = %66, %62
  store volatile ptr %63, ptr %63, align 4
  %79 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 2, i32 1
  store ptr %63, ptr %79, align 4
  %80 = load i32, ptr %59, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32, ptr %39, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %88

86:                                               ; preds = %82
  %87 = add i32 %83, -1
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ %87, %86 ], [ 0, %85 ]
  store volatile i32 %89, ptr %39, align 8
  br label %90

90:                                               ; preds = %88, %78, %58
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %91 = load i16, ptr %35, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %237

93:                                               ; preds = %97, %54
  %94 = phi ptr [ %95, %97 ], [ %17, %54 ]
  %95 = load volatile ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %17
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sem_undo, ptr %95, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, %26
  br i1 %100, label %101, label %93

101:                                              ; preds = %97
  %102 = icmp eq ptr %95, null
  br i1 %102, label %103, label %138

103:                                              ; preds = %101, %93
  %104 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 6
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, %108
  br i1 %110, label %123, label %111

111:                                              ; preds = %111, %107
  %112 = phi ptr [ %113, %111 ], [ %109, %107 ]
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.sem_queue, ptr %112, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %117, i32 3
  %119 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %117, i32 3, i32 1
  %120 = load ptr, ptr %119, align 4
  store ptr %112, ptr %119, align 4
  store ptr %118, ptr %112, align 4
  %121 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %120, ptr %121, align 4
  store volatile ptr %112, ptr %120, align 4
  %122 = icmp eq ptr %113, %108
  br i1 %122, label %123, label %111

123:                                              ; preds = %111, %107
  store volatile ptr %108, ptr %108, align 4
  %124 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 2, i32 1
  store ptr %108, ptr %124, align 4
  %125 = load i32, ptr %104, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i32, ptr %39, align 8
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %133

131:                                              ; preds = %127
  %132 = add i32 %128, -1
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ %132, %131 ], [ 0, %130 ]
  store volatile i32 %134, ptr %39, align 8
  br label %135

135:                                              ; preds = %133, %123, %103
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %136 = load i16, ptr %35, align 4
  %137 = add i16 %136, 1
  store i16 %137, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %237

138:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %139 = load volatile i32, ptr %35, align 4
  store volatile i32 %139, ptr %2, align 4
  %140 = lshr i32 %139, 16
  %141 = and i32 %139, 65535
  %142 = icmp eq i32 %141, %140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %142, label %143, label %144, !prof !21

143:                                              ; preds = %138
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #14, !srcloc !26
  unreachable

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.sem_undo, ptr %95, i32 0, i32 3
  %146 = getelementptr inbounds %struct.sem_undo, ptr %95, i32 0, i32 3, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %145, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  store ptr %147, ptr %149, align 4
  store volatile ptr %148, ptr %147, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %145, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %146, align 4
  call void @_raw_spin_lock(ptr noundef %21) #14
  %150 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = load ptr, ptr %95, align 4
  %153 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  store ptr %151, ptr %153, align 4
  store volatile ptr %152, ptr %151, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %150, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %154 = load i16, ptr %21, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %156 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 5
  %157 = load i32, ptr %156, align 32
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %201

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.sem_undo, ptr %95, i32 0, i32 5
  br label %161

161:                                              ; preds = %197, %159
  %162 = phi i32 [ %157, %159 ], [ %198, %197 ]
  %163 = phi i32 [ 0, %159 ], [ %199, %197 ]
  %164 = load ptr, ptr %160, align 4
  %165 = getelementptr i16, ptr %164, i32 %163
  %166 = load i16, ptr %165, align 2
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %197, label %168

168:                                              ; preds = %161
  %169 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %163
  %170 = sext i16 %166 to i32
  %171 = load i32, ptr %169, align 64
  %172 = add i32 %171, %170
  %173 = call i32 @llvm.smax.i32(i32 %172, i32 0)
  %174 = call i32 @llvm.umin.i32(i32 %173, i32 32767)
  store i32 %174, ptr %169, align 64
  %175 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %163, i32 1
  %176 = tail call ptr @llvm.thread.pointer() #14
  %177 = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 93
  %178 = load ptr, ptr %177, align 16
  %179 = getelementptr %struct.signal_struct, ptr %178, i32 0, i32 22, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %175, align 4
  %182 = icmp eq ptr %181, %180
  br i1 %182, label %197, label %183

183:                                              ; preds = %168
  %184 = icmp eq ptr %180, null
  br i1 %184, label %195, label %185

185:                                              ; preds = %183
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %180) #14, !srcloc !24
  %186 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %180, ptr nonnull %180, i32 1, ptr nonnull elementtype(i32) %180) #14, !srcloc !25
  %187 = extractvalue { i32, i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189, !prof !21

189:                                              ; preds = %185
  %190 = add i32 %187, 1
  %191 = or i32 %190, %187
  %192 = icmp sgt i32 %191, -1
  br i1 %192, label %195, label %193, !prof !23

193:                                              ; preds = %189, %185
  %194 = phi i32 [ 2, %185 ], [ 1, %189 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %180, i32 noundef %194) #14
  br label %195

195:                                              ; preds = %193, %189, %183
  store ptr %180, ptr %175, align 4
  call void @put_pid(ptr noundef %181) #14
  %196 = load i32, ptr %156, align 32
  br label %197

197:                                              ; preds = %195, %168, %161
  %198 = phi i32 [ %196, %195 ], [ %162, %168 ], [ %162, %161 ]
  %199 = add nuw nsw i32 %163, 1
  %200 = icmp slt i32 %199, %198
  br i1 %200, label %161, label %201

201:                                              ; preds = %197, %144
  call fastcc void @do_smart_update(ptr noundef %35, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3)
  %202 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %233

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 2
  %207 = load ptr, ptr %206, align 8
  %208 = icmp eq ptr %207, %206
  br i1 %208, label %221, label %209

209:                                              ; preds = %209, %205
  %210 = phi ptr [ %211, %209 ], [ %207, %205 ]
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.sem_queue, ptr %210, i32 0, i32 5
  %213 = load ptr, ptr %212, align 4
  %214 = load i16, ptr %213, align 2
  %215 = zext i16 %214 to i32
  %216 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %215, i32 3
  %217 = getelementptr %struct.sem_array, ptr %35, i32 0, i32 9, i32 %215, i32 3, i32 1
  %218 = load ptr, ptr %217, align 4
  store ptr %210, ptr %217, align 4
  store ptr %216, ptr %210, align 4
  %219 = getelementptr inbounds %struct.list_head, ptr %210, i32 0, i32 1
  store ptr %218, ptr %219, align 4
  store volatile ptr %210, ptr %218, align 4
  %220 = icmp eq ptr %211, %206
  br i1 %220, label %221, label %209

221:                                              ; preds = %209, %205
  store volatile ptr %206, ptr %206, align 4
  %222 = getelementptr inbounds %struct.sem_array, ptr %35, i32 0, i32 2, i32 1
  store ptr %206, ptr %222, align 4
  %223 = load i32, ptr %202, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load i32, ptr %39, align 8
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  br label %231

229:                                              ; preds = %225
  %230 = add i32 %226, -1
  br label %231

231:                                              ; preds = %229, %228
  %232 = phi i32 [ %230, %229 ], [ 0, %228 ]
  store volatile i32 %232, ptr %39, align 8
  br label %233

233:                                              ; preds = %231, %221, %201
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %234 = load i16, ptr %35, align 4
  %235 = add i16 %234, 1
  store i16 %235, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %3) #14
  %236 = getelementptr inbounds %struct.sem_undo, ptr %95, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %236, ptr noundef nonnull inttoptr (i32 8 to ptr)) #14
  br label %237

237:                                              ; preds = %233, %135, %90, %37, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr inttoptr (i32 1 to ptr), ptr %3, align 8
  store ptr %3, ptr %15, align 4
  %238 = call i32 @__cond_resched() #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %239 = load volatile ptr, ptr %17, align 4
  %240 = icmp eq ptr %239, %17
  br i1 %240, label %241, label %23

241:                                              ; preds = %237, %14
  %242 = getelementptr inbounds %struct.sem_undo_list, ptr %5, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %242) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %243 = load i16, ptr %242, align 4
  %244 = add i16 %243, 1
  store i16 %244, ptr %242, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @kfree(ptr noundef nonnull %5) #14
  br label %245

245:                                              ; preds = %241, %13, %11, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipc_update_pid(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #14, !srcloc !24
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #14, !srcloc !25
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !21

11:                                               ; preds = %7
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !23

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 2, %7 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %16) #14
  br label %17

17:                                               ; preds = %15, %11, %5
  store ptr %1, ptr %0, align 4
  tail call void @put_pid(ptr noundef %3) #14
  br label %18

18:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_addid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rcu_putref(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sem_rcu_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  tail call void @kvfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_to_ipc64_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_idr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc64_perm_to_ipc_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipc_rcu_getref(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sem_lock_and_putref(ptr noundef %0) unnamed_addr #8 {
  tail call void @_raw_spin_lock(ptr noundef %0) #14
  %2 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  store volatile i32 10, ptr %2, align 8
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %14, %9 ], [ 0, %5 ]
  %11 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %10, i32 2
  tail call void @_raw_spin_lock(ptr noundef %11) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !8
  %12 = load i16, ptr %11, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %14 = add nuw nsw i32 %10, 1
  %15 = load i32, ptr %6, align 32
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %9, label %17

17:                                               ; preds = %9, %5, %1
  tail call void @ipc_rcu_putref(ptr noundef %0, ptr noundef nonnull @sem_rcu_free) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @count_semcnt(ptr noundef readonly %0, i16 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = zext i16 %1 to i32
  %5 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %4, i32 4
  %6 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %4, i32 3
  %7 = select i1 %2, ptr %5, ptr %6
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i32 [ 0, %3 ], [ %13, %8 ]
  %10 = phi ptr [ %7, %3 ], [ %11, %8 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %7
  %13 = add i32 %9, 1
  br i1 %12, label %14, label %8

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = load i1, ptr @check_qop.__already_done, align 1
  br label %20

20:                                               ; preds = %45, %18
  %21 = phi i1 [ %34, %45 ], [ %19, %18 ]
  %22 = phi ptr [ %48, %45 ], [ %16, %18 ]
  %23 = phi i32 [ %47, %45 ], [ %9, %18 ]
  %24 = getelementptr inbounds %struct.sem_queue, ptr %22, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  br i1 %21, label %33, label %26, !prof !23

26:                                               ; preds = %20
  store i1 true, ptr @check_qop.__already_done, align 1
  %27 = tail call ptr @llvm.thread.pointer() #14
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 85
  %29 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 52
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30) #15
  %32 = load i1, ptr @check_qop.__already_done, align 1
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi i1 [ %32, %26 ], [ true, %20 ]
  %35 = load i16, ptr %25, align 2
  %36 = icmp eq i16 %35, %1
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sembuf, ptr %25, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  br i1 %2, label %40, label %42

40:                                               ; preds = %37
  %41 = icmp eq i16 %39, 0
  br i1 %41, label %45, label %44

42:                                               ; preds = %37
  %43 = icmp slt i16 %39, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %42, %40, %33
  %46 = phi i32 [ 0, %44 ], [ 0, %33 ], [ 1, %40 ], [ 1, %42 ]
  %47 = add i32 %46, %23
  %48 = load ptr, ptr %22, align 4
  %49 = icmp eq ptr %48, %15
  br i1 %49, label %50, label %20

50:                                               ; preds = %45, %14
  %51 = phi i32 [ %9, %14 ], [ %47, %45 ]
  br i1 %2, label %52, label %85

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %85, label %56

56:                                               ; preds = %52
  %57 = load i1, ptr @check_qop.__already_done, align 1
  br label %58

58:                                               ; preds = %80, %56
  %59 = phi i1 [ %72, %80 ], [ %57, %56 ]
  %60 = phi ptr [ %83, %80 ], [ %54, %56 ]
  %61 = phi i32 [ %82, %80 ], [ %51, %56 ]
  %62 = getelementptr inbounds %struct.sem_queue, ptr %60, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  br i1 %59, label %71, label %64, !prof !23

64:                                               ; preds = %58
  store i1 true, ptr @check_qop.__already_done, align 1
  %65 = tail call ptr @llvm.thread.pointer() #14
  %66 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 85
  %67 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 52
  %68 = load i32, ptr %67, align 8
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %66, i32 noundef %68) #15
  %70 = load i1, ptr @check_qop.__already_done, align 1
  br label %71

71:                                               ; preds = %64, %58
  %72 = phi i1 [ %70, %64 ], [ true, %58 ]
  %73 = load i16, ptr %63, align 2
  %74 = icmp eq i16 %73, %1
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sembuf, ptr %63, i32 0, i32 1
  %77 = load i16, ptr %76, align 2
  %78 = icmp eq i16 %77, 0
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %75, %71
  %81 = phi i32 [ 0, %71 ], [ %79, %75 ]
  %82 = add i32 %81, %61
  %83 = load ptr, ptr %60, align 4
  %84 = icmp eq ptr %83, %53
  br i1 %84, label %85, label %58

85:                                               ; preds = %80, %52, %50
  %86 = phi i32 [ %51, %50 ], [ %51, %52 ], [ %82, %80 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipcctl_obtain_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_update_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rmid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lookup_undo(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.sem_undo_list, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %5 = load volatile i32, ptr %4, align 4
  store volatile i32 %5, ptr %3, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %8, label %9, label %10, !prof !21

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/sem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1887, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sem_undo_list, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sem_undo, ptr %14, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = icmp eq ptr %14, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  %27 = load ptr, ptr %11, align 4
  store ptr %27, ptr %14, align 4
  store ptr %11, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  store volatile ptr %14, ptr %11, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %14, ptr %28, align 4
  br label %29

29:                                               ; preds = %22, %20, %12
  %30 = phi ptr [ %14, %22 ], [ null, %20 ], [ null, %12 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @perform_atomic_semop_slow(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.sembuf, ptr %4, i32 %6
  %8 = icmp ult ptr %4, %7
  br i1 %8, label %9, label %56

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %13 = getelementptr inbounds %struct.sem_undo, ptr %11, i32 0, i32 5
  br label %14

14:                                               ; preds = %53, %9
  %15 = phi ptr [ %4, %9 ], [ %54, %53 ]
  %16 = load i16, ptr %15, align 2
  %17 = load i32, ptr %12, align 32
  %18 = zext i16 %16 to i32
  %19 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %18, i32 %17) #14, !srcloc !27
  %20 = trunc i32 %19 to i16
  %21 = and i16 %16, %20
  %22 = zext i16 %21 to i32
  %23 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %22
  %24 = getelementptr inbounds %struct.sembuf, ptr %15, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = sext i16 %25 to i32
  %27 = load i32, ptr %23, align 64
  %28 = icmp eq i16 %25, 0
  %29 = icmp ne i32 %27, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %86, label %31

31:                                               ; preds = %14
  %32 = add i32 %27, %26
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %31
  %35 = icmp ugt i32 %32, 32767
  br i1 %35, label %93, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.sembuf, ptr %15, i32 0, i32 2
  %38 = load i16, ptr %37, align 2
  %39 = and i16 %38, 4096
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %13, align 4
  %43 = load i16, ptr %15, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr i16, ptr %42, i32 %44
  %46 = load i16, ptr %45, align 2
  %47 = sext i16 %46 to i32
  %48 = sub nsw i32 %47, %26
  %49 = add nsw i32 %48, -32768
  %50 = icmp ult i32 %49, -65536
  br i1 %50, label %93, label %51

51:                                               ; preds = %41
  %52 = trunc i32 %48 to i16
  store i16 %52, ptr %45, align 2
  br label %53

53:                                               ; preds = %51, %36
  store i32 %32, ptr %23, align 64
  %54 = getelementptr %struct.sembuf, ptr %15, i32 1
  %55 = icmp ult ptr %54, %7
  br i1 %55, label %14, label %56

56:                                               ; preds = %53, %2
  %57 = phi ptr [ %4, %2 ], [ %54, %53 ]
  %58 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr %struct.sembuf, ptr %57, i32 -1
  %61 = icmp ult ptr %60, %4
  br i1 %61, label %122, label %62

62:                                               ; preds = %56
  %63 = icmp eq ptr %59, null
  br label %64

64:                                               ; preds = %83, %62
  %65 = phi ptr [ %60, %62 ], [ %84, %83 ]
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %67, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %59
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  br i1 %63, label %82, label %72

72:                                               ; preds = %71
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %59) #14, !srcloc !24
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %59, ptr nonnull %59, i32 1, ptr nonnull elementtype(i32) %59) #14, !srcloc !25
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76, !prof !21

76:                                               ; preds = %72
  %77 = add i32 %74, 1
  %78 = or i32 %77, %74
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %82, label %80, !prof !23

80:                                               ; preds = %76, %72
  %81 = phi i32 [ 2, %72 ], [ 1, %76 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %59, i32 noundef %81) #14
  br label %82

82:                                               ; preds = %80, %76, %71
  store ptr %59, ptr %68, align 4
  tail call void @put_pid(ptr noundef %69) #14
  br label %83

83:                                               ; preds = %82, %64
  %84 = getelementptr %struct.sembuf, ptr %65, i32 -1
  %85 = icmp ult ptr %84, %4
  br i1 %85, label %122, label %64

86:                                               ; preds = %31, %14
  %87 = getelementptr inbounds %struct.sem_queue, ptr %1, i32 0, i32 6
  store ptr %15, ptr %87, align 4
  %88 = getelementptr inbounds %struct.sembuf, ptr %15, i32 0, i32 2
  %89 = load i16, ptr %88, align 2
  %90 = and i16 %89, 2048
  %91 = icmp eq i16 %90, 0
  %92 = select i1 %91, i32 1, i32 -11
  br label %93

93:                                               ; preds = %86, %41, %34
  %94 = phi i32 [ %92, %86 ], [ -34, %34 ], [ -34, %41 ]
  %95 = getelementptr %struct.sembuf, ptr %15, i32 -1
  %96 = icmp ult ptr %95, %4
  br i1 %96, label %122, label %97

97:                                               ; preds = %119, %93
  %98 = phi ptr [ %120, %119 ], [ %95, %93 ]
  %99 = phi ptr [ %98, %119 ], [ %15, %93 ]
  %100 = getelementptr %struct.sembuf, ptr %99, i32 -1, i32 1
  %101 = load i16, ptr %100, align 2
  %102 = sext i16 %101 to i32
  %103 = load i16, ptr %98, align 2
  %104 = zext i16 %103 to i32
  %105 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %104
  %106 = load i32, ptr %105, align 64
  %107 = sub i32 %106, %102
  store i32 %107, ptr %105, align 64
  %108 = getelementptr %struct.sembuf, ptr %99, i32 -1, i32 2
  %109 = load i16, ptr %108, align 2
  %110 = and i16 %109, 4096
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %97
  %113 = load ptr, ptr %13, align 4
  %114 = load i16, ptr %98, align 2
  %115 = zext i16 %114 to i32
  %116 = getelementptr i16, ptr %113, i32 %115
  %117 = load i16, ptr %116, align 2
  %118 = add i16 %117, %101
  store i16 %118, ptr %116, align 2
  br label %119

119:                                              ; preds = %112, %97
  %120 = getelementptr %struct.sembuf, ptr %98, i32 -1
  %121 = icmp ult ptr %120, %4
  br i1 %121, label %122, label %97

122:                                              ; preds = %119, %93, %83, %56
  %123 = phi i32 [ %94, %93 ], [ 0, %56 ], [ %94, %119 ], [ 0, %83 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_smart_wakeup_zero(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %12, label %55

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %30, label %55

12:                                               ; preds = %25, %6
  %13 = phi i32 [ %27, %25 ], [ 0, %6 ]
  %14 = phi i32 [ %26, %25 ], [ 0, %6 ]
  %15 = phi i32 [ %28, %25 ], [ 0, %6 ]
  %16 = getelementptr %struct.sembuf, ptr %1, i32 %15
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %18
  %20 = load i32, ptr %19, align 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = tail call fastcc i32 @wake_const_ops(ptr noundef %0, i32 noundef %18, ptr noundef %3)
  %24 = or i32 %23, %14
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %24, %22 ], [ %14, %12 ]
  %27 = phi i32 [ 1, %22 ], [ %13, %12 ]
  %28 = add nuw nsw i32 %15, 1
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %48, label %12

30:                                               ; preds = %42, %8
  %31 = phi i32 [ %43, %42 ], [ %10, %8 ]
  %32 = phi i32 [ %45, %42 ], [ 0, %8 ]
  %33 = phi i32 [ %44, %42 ], [ 0, %8 ]
  %34 = phi i32 [ %46, %42 ], [ 0, %8 ]
  %35 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %34
  %36 = load i32, ptr %35, align 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = tail call fastcc i32 @wake_const_ops(ptr noundef %0, i32 noundef %34, ptr noundef %3)
  %40 = or i32 %39, %33
  %41 = load i32, ptr %9, align 32
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i32 [ %41, %38 ], [ %31, %30 ]
  %44 = phi i32 [ %40, %38 ], [ %33, %30 ]
  %45 = phi i32 [ 1, %38 ], [ %32, %30 ]
  %46 = add nuw nsw i32 %34, 1
  %47 = icmp slt i32 %46, %43
  br i1 %47, label %30, label %48

48:                                               ; preds = %42, %25
  %49 = phi i32 [ %44, %42 ], [ %26, %25 ]
  %50 = phi i32 [ %45, %42 ], [ %27, %25 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = tail call fastcc i32 @wake_const_ops(ptr noundef %0, i32 noundef -1, ptr noundef %3)
  %54 = or i32 %53, %49
  br label %55

55:                                               ; preds = %52, %48, %8, %6
  %56 = phi i32 [ %54, %52 ], [ %49, %48 ], [ 0, %8 ], [ 0, %6 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_queue(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, -1
  %5 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 2
  %6 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %1, i32 3
  %7 = select i1 %4, ptr %5, ptr %6
  %8 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %1
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %74, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 6
  br label %16

13:                                               ; preds = %65
  %14 = load ptr, ptr %7, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %74, label %71

16:                                               ; preds = %71, %11
  %17 = phi ptr [ %9, %11 ], [ %72, %71 ]
  %18 = phi i32 [ 0, %11 ], [ %73, %71 ]
  %19 = load ptr, ptr %17, align 4
  br i1 %4, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %20, %16
  %24 = tail call fastcc i32 @perform_atomic_semop(ptr noundef %0, ptr noundef %17)
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %31 = getelementptr inbounds %struct.sem_queue, ptr %17, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, ptr %12, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %12, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = icmp eq i32 %24, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.sem_queue, ptr %17, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %31, align 4
  %43 = tail call fastcc i32 @do_smart_wakeup_zero(ptr noundef %0, ptr noundef %41, i32 noundef %42, ptr noundef %2)
  %44 = load volatile ptr, ptr %5, align 4
  %45 = icmp eq ptr %44, %5
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, ptr %31, align 4
  %48 = icmp sgt i32 %47, 1
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %46, %39, %37
  %51 = phi i32 [ %18, %37 ], [ 1, %39 ], [ 1, %46 ]
  %52 = phi i32 [ 0, %37 ], [ 1, %39 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.sem_queue, ptr %17, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #14, !srcloc !24
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #14, !srcloc !25
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !21

59:                                               ; preds = %50
  %60 = add i32 %57, 1
  %61 = or i32 %60, %57
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %65, label %63, !prof !23

63:                                               ; preds = %59, %50
  %64 = phi i32 [ 2, %50 ], [ 1, %59 ]
  tail call void @refcount_warn_saturate(ptr noundef %55, i32 noundef %64) #14
  br label %65

65:                                               ; preds = %63, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %66 = getelementptr inbounds %struct.sem_queue, ptr %17, i32 0, i32 4
  store volatile i32 %24, ptr %66, align 4
  tail call void @wake_q_add_safe(ptr noundef %2, ptr noundef %54) #14
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %68, label %13

68:                                               ; preds = %65, %23
  %69 = phi i32 [ %18, %23 ], [ %51, %65 ]
  %70 = icmp eq ptr %19, %7
  br i1 %70, label %74, label %71

71:                                               ; preds = %68, %13
  %72 = phi ptr [ %19, %68 ], [ %14, %13 ]
  %73 = phi i32 [ %69, %68 ], [ %51, %13 ]
  br label %16

74:                                               ; preds = %68, %20, %13, %3
  %75 = phi i32 [ 0, %3 ], [ %51, %13 ], [ %18, %20 ], [ %69, %68 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wake_const_ops(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, -1
  %5 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 3
  %6 = getelementptr %struct.sem_array, ptr %0, i32 0, i32 9, i32 %1, i32 4
  %7 = select i1 %4, ptr %5, ptr %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %49, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sem_array, ptr %0, i32 0, i32 6
  br label %12

12:                                               ; preds = %46, %10
  %13 = phi ptr [ %8, %10 ], [ %15, %46 ]
  %14 = phi i32 [ 0, %10 ], [ %47, %46 ]
  %15 = load ptr, ptr %13, align 4
  %16 = tail call fastcc i32 @perform_atomic_semop(ptr noundef %0, ptr noundef %13)
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %23 = getelementptr inbounds %struct.sem_queue, ptr %13, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, ptr %11, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %11, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = getelementptr inbounds %struct.sem_queue, ptr %13, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #14, !srcloc !24
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #14, !srcloc !25
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !21

36:                                               ; preds = %29
  %37 = add i32 %34, 1
  %38 = or i32 %37, %34
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %42, label %40, !prof !23

40:                                               ; preds = %36, %29
  %41 = phi i32 [ 2, %29 ], [ 1, %36 ]
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef %41) #14
  br label %42

42:                                               ; preds = %40, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !28
  %43 = getelementptr inbounds %struct.sem_queue, ptr %13, i32 0, i32 4
  store volatile i32 %16, ptr %43, align 4
  tail call void @wake_q_add_safe(ptr noundef %2, ptr noundef %31) #14
  %44 = icmp eq i32 %16, 0
  %45 = select i1 %44, i32 1, i32 %14
  br label %46

46:                                               ; preds = %42, %12
  %47 = phi i32 [ %45, %42 ], [ %14, %12 ]
  %48 = icmp eq ptr %15, %7
  br i1 %48, label %49, label %12

49:                                               ; preds = %46, %3
  %50 = phi i32 [ 0, %3 ], [ %47, %46 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind allocsize(2) }

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
!8 = !{i64 2148965199}
!9 = !{i64 2148961023}
!10 = !{i64 2148961098, i64 2148961125, i64 2148961172, i64 2148961194, i64 2148961222, i64 2148961242}
!11 = !{i64 2148988202}
!12 = !{i64 2154079475}
!13 = !{i64 2149157283}
!14 = !{!"auto-init"}
!15 = !{i64 2151123036, i64 2151123061}
!16 = !{i64 3618570}
!17 = !{i64 3618767}
!18 = !{i64 2151104046}
!19 = !{i64 2149157066}
!20 = !{i8 0, i8 2}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2151122458, i64 2151122483}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 496289, i64 2147986260, i64 2147986286, i64 2147986333, i64 2147986355, i64 2147986383, i64 2147986403}
!25 = !{i64 2147999133, i64 2147999165, i64 2147999194, i64 2147999228, i64 2147999259, i64 2147999282}
!26 = !{i64 2154063965, i64 2154064440, i64 2154064002, i64 2154064058, i64 2154064092, i64 2154064116, i64 2154064157, i64 2154064178, i64 2154064206, i64 2154064240}
!27 = !{i64 447378, i64 447395, i64 2147931465}
!28 = !{i64 2154122297}
!29 = !{i64 2154251465, i64 2154251940, i64 2154251502, i64 2154251558, i64 2154251592, i64 2154251616, i64 2154251657, i64 2154251678, i64 2154251706, i64 2154251740}
!30 = !{i64 2149759475}
!31 = !{i64 2154253034, i64 2154253509, i64 2154253071, i64 2154253127, i64 2154253161, i64 2154253185, i64 2154253226, i64 2154253247, i64 2154253275, i64 2154253309}
!32 = !{i64 2154264452}
!33 = !{i64 2154096320}
!34 = !{i64 2148099331}
!35 = !{i64 2148001490, i64 2148001522, i64 2148001551, i64 2148001585, i64 2148001616, i64 2148001639}
!36 = !{i64 2149193967}
