; ModuleID = '/llk/IR/kernel/futex/syscalls.c_pt.bc'
source_filename = "../kernel/futex/syscalls.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.92, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.92 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.timespec64 = type { i64, i32 }
%struct.futex_waitv = type { i64, i64, i32, i32 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.futex_vector = type { %struct.futex_waitv, %struct.futex_q }

@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8

@sys_set_robust_list = dso_local alias i32 (ptr, i32), ptr @__se_sys_set_robust_list
@sys_get_robust_list = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_get_robust_list
@sys_futex = dso_local alias i32 (ptr, i32, i32, ptr, ptr, i32), ptr @__se_sys_futex
@sys_futex_waitv = dso_local alias i32 (ptr, i32, i32, ptr, i32), ptr @__se_sys_futex_waitv
@sys_futex_time32 = dso_local alias i32 (ptr, i32, i32, ptr, ptr, i32), ptr @__se_sys_futex_time32

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @__se_sys_set_robust_list(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 12
  br i1 %3, label %4, label %8, !prof !8

4:                                                ; preds = %2
  %5 = inttoptr i32 %0 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #8
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 125
  store ptr %5, ptr %7, align 4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_get_robust_list(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = inttoptr i32 %1 to ptr
  %5 = inttoptr i32 %2 to ptr
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #8
  br label %12

9:                                                ; preds = %3
  %10 = tail call ptr @find_task_by_vpid(i32 noundef %0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %10, %9 ], [ %8, %7 ]
  %14 = tail call zeroext i1 @ptrace_may_access(ptr noundef %13, i32 noundef 17) #8
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 125
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %18 = tail call ptr @llvm.thread.pointer() #8
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #9, !srcloc !11
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 12, i32 -1090519041) #8, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #9, !srcloc !11
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, ptr %17, i32 -1090519041) #8, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  br label %32

30:                                               ; preds = %12, %9
  %31 = phi i32 [ -1, %12 ], [ -3, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  br label %32

32:                                               ; preds = %30, %25, %15
  %33 = phi i32 [ %29, %25 ], [ %31, %30 ], [ -14, %15 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_futex(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = alloca i32, align 4
  store i32 %6, ptr %8, align 4
  %9 = and i32 %1, -385
  %10 = lshr i32 %1, 7
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = and i32 %1, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = or i32 %12, 2
  %17 = and i32 %1, -387
  %18 = icmp ne i32 %17, 9
  %19 = icmp ne i32 %9, 13
  %20 = and i1 %18, %19
  br i1 %20, label %50, label %21

21:                                               ; preds = %15, %7
  %22 = phi i32 [ %16, %15 ], [ %12, %7 ]
  switch i32 %9, label %50 [
    i32 0, label %23
    i32 9, label %24
    i32 1, label %27
    i32 10, label %28
    i32 3, label %31
    i32 4, label %33
    i32 5, label %35
    i32 6, label %37
    i32 13, label %39
    i32 7, label %42
    i32 8, label %44
    i32 11, label %46
    i32 12, label %48
  ]

23:                                               ; preds = %21
  store i32 -1, ptr %8, align 4
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %6, %21 ], [ -1, %23 ]
  %26 = tail call i32 @futex_wait(ptr noundef %0, i32 noundef %22, i32 noundef %2, ptr noundef %3, i32 noundef %25) #8
  br label %50

27:                                               ; preds = %21
  store i32 -1, ptr %8, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32 [ %6, %21 ], [ -1, %27 ]
  %30 = tail call i32 @futex_wake(ptr noundef %0, i32 noundef %22, i32 noundef %2, i32 noundef %29) #8
  br label %50

31:                                               ; preds = %21
  %32 = tail call i32 @futex_requeue(ptr noundef %0, i32 noundef %22, ptr noundef %4, i32 noundef %2, i32 noundef %5, ptr noundef null, i32 noundef 0) #8
  br label %50

33:                                               ; preds = %21
  %34 = call i32 @futex_requeue(ptr noundef %0, i32 noundef %22, ptr noundef %4, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %8, i32 noundef 0) #8
  br label %50

35:                                               ; preds = %21
  %36 = tail call i32 @futex_wake_op(ptr noundef %0, i32 noundef %22, ptr noundef %4, i32 noundef %2, i32 noundef %5, i32 noundef %6) #8
  br label %50

37:                                               ; preds = %21
  %38 = or i32 %22, 2
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi i32 [ %22, %21 ], [ %38, %37 ]
  %41 = tail call i32 @futex_lock_pi(ptr noundef %0, i32 noundef %40, ptr noundef %3, i32 noundef 0) #8
  br label %50

42:                                               ; preds = %21
  %43 = tail call i32 @futex_unlock_pi(ptr noundef %0, i32 noundef %22) #8
  br label %50

44:                                               ; preds = %21
  %45 = tail call i32 @futex_lock_pi(ptr noundef %0, i32 noundef %22, ptr noundef null, i32 noundef 1) #8
  br label %50

46:                                               ; preds = %21
  store i32 -1, ptr %8, align 4
  %47 = tail call i32 @futex_wait_requeue_pi(ptr noundef %0, i32 noundef %22, i32 noundef %2, ptr noundef %3, i32 noundef -1, ptr noundef %4) #8
  br label %50

48:                                               ; preds = %21
  %49 = call i32 @futex_requeue(ptr noundef %0, i32 noundef %22, ptr noundef %4, i32 noundef %2, i32 noundef %5, ptr noundef nonnull %8, i32 noundef 1) #8
  br label %50

50:                                               ; preds = %48, %46, %44, %42, %39, %35, %33, %31, %28, %24, %21, %15
  %51 = phi i32 [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %39 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %28 ], [ %26, %24 ], [ -38, %15 ], [ -38, %21 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_requeue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wake_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_lock_pi(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_unlock_pi(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait_requeue_pi(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futex(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = inttoptr i32 %0 to ptr
  %10 = inttoptr i32 %3 to ptr
  %11 = inttoptr i32 %4 to ptr
  %12 = and i32 %1, -385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #8, !annotation !16
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %6
  switch i32 %12, label %38 [
    i32 0, label %15
    i32 6, label %15
    i32 13, label %15
    i32 9, label %15
    i32 11, label %15
  ]

15:                                               ; preds = %14, %14, %14, %14, %14
  %16 = call i32 @get_timespec64(ptr noundef nonnull %8, ptr noundef nonnull %10) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load i64, ptr %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, 1000000000
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = icmp ugt i64 %19, 9223372035
  br i1 %26, label %32, label %27, !prof !17

27:                                               ; preds = %25
  %28 = load i64, ptr %22, align 8
  %29 = mul nuw nsw i64 %19, 1000000000
  %30 = and i64 %28, 4294967295
  %31 = add nuw i64 %30, %29
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i64 [ %31, %27 ], [ 9223372036854775807, %25 ]
  store i64 %33, ptr %7, align 8
  %34 = icmp eq i32 %12, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i64 @ktime_get() #8
  %37 = call i64 @ktime_add_safe(i64 noundef %36, i64 noundef %33) #8
  store i64 %37, ptr %7, align 8
  br label %38

38:                                               ; preds = %35, %32, %14, %6
  %39 = phi ptr [ null, %6 ], [ null, %14 ], [ %7, %35 ], [ %7, %32 ]
  %40 = call i32 @do_futex(ptr noundef %9, i32 noundef %1, i32 noundef %2, ptr noundef %39, ptr noundef %11, i32 noundef %3, i32 noundef %5) #8
  br label %41

41:                                               ; preds = %38, %21, %18, %15
  %42 = phi i32 [ %40, %38 ], [ -14, %15 ], [ -22, %21 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futex_waitv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.futex_waitv, align 8
  %7 = alloca %struct.hrtimer_sleeper, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca i64, align 8
  %10 = inttoptr i32 %0 to ptr
  %11 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false) #8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !annotation !16
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %13, label %99

13:                                               ; preds = %5
  %14 = add i32 %1, -1
  %15 = icmp ult i32 %14, 128
  %16 = icmp ne i32 %0, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %99

18:                                               ; preds = %13
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %18
  %21 = icmp eq i32 %4, 0
  %22 = select i1 %21, i32 2, i32 0
  %23 = icmp ugt i32 %4, 1
  br i1 %23, label %99, label %24

24:                                               ; preds = %20
  %25 = call i32 @get_timespec64(ptr noundef nonnull %8, ptr noundef nonnull %11) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %99

27:                                               ; preds = %24
  %28 = load i64, ptr %8, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %99, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = icmp ult i32 %32, 1000000000
  br i1 %33, label %34, label %99

34:                                               ; preds = %30
  %35 = icmp ugt i64 %28, 9223372035
  br i1 %35, label %41, label %36, !prof !17

36:                                               ; preds = %34
  %37 = load i64, ptr %31, align 8
  %38 = mul nuw nsw i64 %28, 1000000000
  %39 = and i64 %37, 4294967295
  %40 = add nuw i64 %39, %38
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i64 [ %40, %36 ], [ 9223372036854775807, %34 ]
  store i64 %42, ptr %9, align 8
  %43 = call ptr @futex_setup_timer(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef %22, i64 noundef 0) #8
  br label %44

44:                                               ; preds = %41, %18
  %45 = mul nuw nsw i32 %1, 96
  %46 = call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %99, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false) #8, !annotation !16
  %49 = getelementptr inbounds %struct.futex_waitv, ptr %6, i32 0, i32 2
  %50 = getelementptr inbounds %struct.futex_waitv, ptr %6, i32 0, i32 3
  %51 = getelementptr inbounds %struct.futex_waitv, ptr %6, i32 0, i32 1
  br label %52

52:                                               ; preds = %80, %48
  %53 = phi i32 [ 0, %48 ], [ %87, %80 ]
  %54 = getelementptr %struct.futex_waitv, ptr %10, i32 %53
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 24, i32 -1090519040) #11, !srcloc !18
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66, !prof !8

58:                                               ; preds = %52
  %59 = tail call ptr @llvm.thread.pointer() #8
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #9, !srcloc !11
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %64 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %54, i32 noundef 24) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #8, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !prof !8

66:                                               ; preds = %58, %52
  %67 = phi i32 [ %64, %58 ], [ 24, %52 ]
  %68 = sub i32 24, %67
  %69 = getelementptr i8, ptr %6, i32 %68
  call void @llvm.memset.p0.i32(ptr align 1 %69, i8 0, i32 %67, i1 false) #8
  br label %89

70:                                               ; preds = %58
  %71 = load i32, ptr %49, align 8
  %72 = and i32 %71, -131
  %73 = icmp ne i32 %72, 0
  %74 = load i32, ptr %50, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  %77 = and i32 %71, 2
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %70
  %81 = getelementptr %struct.futex_vector, ptr %46, i32 %53
  %82 = getelementptr inbounds %struct.futex_waitv, ptr %81, i32 0, i32 2
  store i32 %71, ptr %82, align 16
  %83 = load i64, ptr %6, align 8
  store i64 %83, ptr %81, align 32
  %84 = load i64, ptr %51, align 8
  %85 = getelementptr inbounds %struct.futex_waitv, ptr %81, i32 0, i32 1
  store i64 %84, ptr %85, align 8
  %86 = getelementptr %struct.futex_vector, ptr %46, i32 %53, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(72) %86, ptr noundef nonnull align 8 dereferenceable(72) @futex_q_init, i32 72, i1 false) #8
  %87 = add nuw i32 %53, 1
  %88 = icmp eq i32 %87, %1
  br i1 %88, label %91, label %52

89:                                               ; preds = %70, %66
  %90 = phi i32 [ -14, %66 ], [ -22, %70 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  br label %94

91:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  %92 = select i1 %19, ptr null, ptr %7
  %93 = call i32 @futex_wait_multiple(ptr noundef nonnull %46, i32 noundef %1, ptr noundef %92) #8
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi i32 [ %93, %91 ], [ %90, %89 ]
  br i1 %19, label %98, label %96

96:                                               ; preds = %94
  %97 = call i32 @hrtimer_cancel(ptr noundef nonnull %7) #8
  br label %98

98:                                               ; preds = %96, %94
  call void @kfree(ptr noundef nonnull %46) #8
  br label %99

99:                                               ; preds = %98, %44, %30, %27, %24, %20, %13, %5
  %100 = phi i32 [ %95, %98 ], [ -22, %5 ], [ -22, %13 ], [ -12, %44 ], [ -14, %24 ], [ -22, %20 ], [ -22, %30 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futex_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = inttoptr i32 %0 to ptr
  %10 = inttoptr i32 %3 to ptr
  %11 = inttoptr i32 %4 to ptr
  %12 = and i32 %1, -385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #8, !annotation !16
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %6
  switch i32 %12, label %38 [
    i32 0, label %15
    i32 6, label %15
    i32 13, label %15
    i32 9, label %15
    i32 11, label %15
  ]

15:                                               ; preds = %14, %14, %14, %14, %14
  %16 = call i32 @get_old_timespec32(ptr noundef nonnull %8, ptr noundef nonnull %10) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load i64, ptr %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, 1000000000
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = icmp ugt i64 %19, 9223372035
  br i1 %26, label %32, label %27, !prof !17

27:                                               ; preds = %25
  %28 = load i64, ptr %22, align 8
  %29 = mul nuw nsw i64 %19, 1000000000
  %30 = and i64 %28, 4294967295
  %31 = add nuw i64 %30, %29
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i64 [ %31, %27 ], [ 9223372036854775807, %25 ]
  store i64 %33, ptr %7, align 8
  %34 = icmp eq i32 %12, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i64 @ktime_get() #8
  %37 = call i64 @ktime_add_safe(i64 noundef %36, i64 noundef %33) #8
  store i64 %37, ptr %7, align 8
  br label %38

38:                                               ; preds = %35, %32, %14, %6
  %39 = phi ptr [ null, %6 ], [ null, %14 ], [ %7, %35 ], [ %7, %32 ]
  %40 = call i32 @do_futex(ptr noundef %9, i32 noundef %1, i32 noundef %2, ptr noundef %39, ptr noundef %11, i32 noundef %3, i32 noundef %5) #8
  br label %41

41:                                               ; preds = %38, %21, %18, %15
  %42 = phi i32 [ %40, %38 ], [ -14, %15 ], [ -22, %21 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait_multiple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2149102148}
!10 = !{i64 2149102365}
!11 = !{i64 3563652}
!12 = !{i64 3563849}
!13 = !{i64 2151049128}
!14 = !{i64 2153740110, i64 2153740390, i64 2153740724, i64 2153741058}
!15 = !{i64 2153748255, i64 2153748535, i64 2153748869, i64 2153749203}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2151067540, i64 2151067565}
