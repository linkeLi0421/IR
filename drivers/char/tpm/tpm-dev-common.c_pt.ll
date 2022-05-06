; ModuleID = '/llk/IR/drivers/char/tpm/tpm-dev-common.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm-dev-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.file_priv = type { ptr, ptr, %struct.mutex, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, i8, i8, [4096 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tpm_header = type <{ i16, i32, %union.anon.65 }>
%union.anon.65 = type { i32 }

@tpm_common_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [20 x i8] c"&priv->buffer_mutex\00", align 1
@tpm_common_open.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"&priv->async_wait\00", align 1
@tpm_dev_wq = internal unnamed_addr global ptr null, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [11 x i8] c"tpm_dev_wq\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\014TPM user space timeout is deprecated (pid=%d)\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm_common_open(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store ptr %1, ptr %2, align 4
  %5 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 8
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @tpm_common_open.__key) #8
  %8 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %8, ptr noundef nonnull @user_reader_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %9 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 4
  store i32 -32, ptr %9, align 4
  %10 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 4, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 4, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 4, i32 2
  store ptr @tpm_timeout_work, ptr %12, align 4
  %13 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 5
  store i32 -32, ptr %13, align 4
  %14 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 5, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 5, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 5, i32 2
  store ptr @tpm_dev_async_work, ptr %16, align 4
  %17 = getelementptr inbounds %struct.file_priv, ptr %2, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull @tpm_common_open.__key.1) #8
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %2, ptr %18, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @user_reader_timeout(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 53
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %4) #9
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpm_timeout_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -40
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr i8, ptr %0, i32 48
  store i8 1, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 44
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 50
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(4096) %5, i8 0, i32 4096, i1 false)
  tail call void @mutex_unlock(ptr noundef %2) #8
  %6 = getelementptr i8, ptr %0, i32 32
  tail call void @__wake_up(ptr noundef %6, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpm_dev_async_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = getelementptr i8, ptr %0, i32 -56
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr i8, ptr %0, i32 33
  store i8 0, ptr %5, align 1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @tpm_try_get_ops(ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 28
  store i32 %7, ptr %10, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %0, i32 -60
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %16 = tail call i32 @tpm2_prepare_space(ptr noundef %12, ptr noundef %14, ptr noundef %15, i32 noundef 4096) #8
  switch i32 %16, label %29 [
    i32 -95, label %17
    i32 0, label %21
  ]

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %0, i32 36
  store i32 167772160, ptr %18, align 1
  store i16 384, ptr %15, align 1
  %19 = getelementptr i8, ptr %0, i32 40
  store i32 1124141824, ptr %19, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %20 = load ptr, ptr %3, align 4
  tail call void @tpm_put_ops(ptr noundef %20) #8
  br label %36

21:                                               ; preds = %11
  %22 = tail call i32 @tpm_transmit(ptr noundef %12, ptr noundef %15, i32 noundef 4096) #8
  store i32 %22, ptr %2, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %25 = load ptr, ptr %3, align 4
  tail call void @tpm_put_ops(ptr noundef %25) #8
  br label %43

26:                                               ; preds = %21
  %27 = call i32 @tpm2_commit_space(ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef nonnull %2) #8
  %28 = load i32, ptr %2, align 4
  br label %29

29:                                               ; preds = %26, %11
  %30 = phi i32 [ %28, %26 ], [ 0, %11 ]
  %31 = phi i32 [ %27, %26 ], [ %16, %11 ]
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 %30, i32 %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %34 = load ptr, ptr %3, align 4
  call void @tpm_put_ops(ptr noundef %34) #8
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29, %17
  %37 = phi i32 [ 10, %17 ], [ %33, %29 ]
  %38 = getelementptr i8, ptr %0, i32 28
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 -36
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = add i32 %40, 12000
  %42 = call i32 @mod_timer(ptr noundef %39, i32 noundef %41) #8
  br label %43

43:                                               ; preds = %36, %29, %24, %9
  call void @mutex_unlock(ptr noundef %4) #8
  %44 = getelementptr i8, ptr %0, i32 16
  call void @__wake_up(ptr noundef %44, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_common_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 8
  store i8 1, ptr %12, align 4
  %13 = tail call i32 @llvm.smin.i32(i32 %9, i32 %2)
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 10
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %13, i32 -1090519040) #10, !srcloc !8
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i64, ptr %3, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr i8, ptr %16, i32 %22
  %24 = tail call ptr @llvm.thread.pointer() #8
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #11, !srcloc !9
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %29 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %23, i32 noundef %13) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20, %15
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(4096) %16, i8 0, i32 4096, i1 false)
  br label %43

32:                                               ; preds = %20
  %33 = load i64, ptr %3, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr i8, ptr %16, i32 %34
  tail call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %13, i1 false)
  %36 = load i32, ptr %8, align 4
  %37 = sub i32 %36, %13
  store i32 %37, ptr %8, align 4
  %38 = zext i32 %13 to i64
  %39 = load i64, ptr %3, align 8
  %40 = add i64 %39, %38
  store i64 %40, ptr %3, align 8
  %41 = load i32, ptr %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %51

43:                                               ; preds = %31, %11
  %44 = phi i32 [ -14, %31 ], [ %13, %11 ]
  store i32 0, ptr %8, align 4
  br label %45

45:                                               ; preds = %43, %32, %4
  %46 = phi i32 [ %13, %32 ], [ 0, %4 ], [ %44, %43 ]
  store i64 0, ptr %3, align 8
  %47 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 3
  %48 = tail call i32 @del_timer_sync(ptr noundef %47) #8
  %49 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 4
  %50 = tail call zeroext i1 @flush_work(ptr noundef %49) #8
  br label %51

51:                                               ; preds = %45, %32
  %52 = phi i32 [ %46, %45 ], [ %13, %32 ]
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_common_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ugt i32 %2, 4096
  br i1 %7, label %74, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 8
  %11 = load i8, ptr %10, align 4, !range !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %13, %8
  %18 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 9
  %19 = load i8, ptr %18, align 1, !range !12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 10
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #10, !srcloc !13
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33, !prof !14

26:                                               ; preds = %21
  %27 = tail call ptr @llvm.thread.pointer() #8
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #11, !srcloc !9
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  %32 = tail call i32 @arm_copy_from_user(ptr noundef %22, ptr noundef %1, i32 noundef %2) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #8, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !11
  br label %33

33:                                               ; preds = %26, %21
  %34 = phi i32 [ %32, %26 ], [ %2, %21 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36, !prof !14

36:                                               ; preds = %33
  %37 = sub i32 %2, %34
  %38 = getelementptr i8, ptr %22, i32 %37
  tail call void @llvm.memset.p0.i32(ptr align 1 %38, i8 0, i32 %34, i1 false) #8
  br label %72

39:                                               ; preds = %33
  %40 = icmp ult i32 %2, 6
  br i1 %40, label %72, label %41

41:                                               ; preds = %39
  %42 = getelementptr %struct.file_priv, ptr %6, i32 0, i32 10, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = icmp ugt i32 %44, %2
  br i1 %45, label %72, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 7
  store i32 0, ptr %47, align 4
  store i8 0, ptr %10, align 4
  store i64 0, ptr %3, align 8
  %48 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  store i8 1, ptr %18, align 1
  %53 = load ptr, ptr @tpm_dev_wq, align 4
  %54 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 5
  %55 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %54) #8
  br label %72

56:                                               ; preds = %46
  %57 = load ptr, ptr %6, align 4
  %58 = tail call i32 @tpm_try_get_ops(ptr noundef %57) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call fastcc i32 @tpm_dev_transmit(ptr noundef %61, ptr noundef %63, ptr noundef %22)
  %65 = load ptr, ptr %6, align 4
  tail call void @tpm_put_ops(ptr noundef %65) #8
  %66 = icmp sgt i32 %64, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  store i32 %64, ptr %47, align 4
  %68 = getelementptr inbounds %struct.file_priv, ptr %6, i32 0, i32 3
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = add i32 %69, 12000
  %71 = tail call i32 @mod_timer(ptr noundef %68, i32 noundef %70) #8
  br label %72

72:                                               ; preds = %67, %60, %56, %52, %41, %39, %36, %17, %13
  %73 = phi i32 [ %2, %52 ], [ %2, %67 ], [ %64, %60 ], [ -16, %17 ], [ -16, %13 ], [ -22, %41 ], [ -22, %39 ], [ -32, %56 ], [ -14, %36 ]
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %74

74:                                               ; preds = %72, %4
  %75 = phi i32 [ -7, %4 ], [ %73, %72 ]
  ret i32 %75
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_try_get_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tpm_dev_transmit(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = tail call i32 @tpm2_prepare_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4096) #8
  switch i32 %5, label %15 [
    i32 -95, label %6
    i32 0, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 1
  store i32 167772160, ptr %7, align 1
  store i16 384, ptr %2, align 1
  %8 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 2
  store i32 1124141824, ptr %8, align 1
  br label %20

9:                                                ; preds = %3
  %10 = tail call i32 @tpm_transmit(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #8
  store i32 %10, ptr %4, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = call i32 @tpm2_commit_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #8
  %14 = load i32, ptr %4, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %17 = phi i32 [ %13, %12 ], [ %5, %3 ]
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %16, i32 %17
  br label %20

20:                                               ; preds = %15, %9, %6
  %21 = phi i32 [ 10, %6 ], [ %10, %9 ], [ %19, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_put_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_common_poll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file_priv, ptr %4, i32 0, i32 6
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.file_priv, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.file_priv, ptr %4, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 260, i32 65
  tail call void @mutex_unlock(ptr noundef %14) #8
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm_common_release(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 5
  %4 = tail call zeroext i1 @flush_work(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 3
  %6 = tail call i32 @del_timer_sync(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 4
  %8 = tail call zeroext i1 @flush_work(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 7
  store i32 0, ptr %10, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tpm_dev_common_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #8
  store ptr %1, ptr @tpm_dev_wq, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tpm_dev_common_exit() local_unnamed_addr #5 section ".exit.text" {
  %1 = load ptr, ptr @tpm_dev_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #8
  store ptr null, ptr @tpm_dev_wq, align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_prepare_space(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_commit_space(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!8 = !{i64 2150970205, i64 2150970230}
!9 = !{i64 3465739}
!10 = !{i64 3465936}
!11 = !{i64 2150951215}
!12 = !{i8 0, i8 2}
!13 = !{i64 2150969627, i64 2150969652}
!14 = !{!"branch_weights", i32 2000, i32 1}
