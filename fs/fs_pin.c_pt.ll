; ModuleID = '/llk/IR/fs/fs_pin.c_pt.bc'
source_filename = "../fs/fs_pin.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fs_pin = type { %struct.wait_queue_head, i32, %struct.hlist_node, %struct.hlist_node, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.60, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.61, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.hlist_node }

@pin_lock = internal global %struct.spinlock zeroinitializer, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pin_remove(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @pin_lock) #4
  %2 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  store volatile ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  store volatile ptr %4, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %6
  store ptr null, ptr %2, align 4
  store ptr null, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 4
  store volatile ptr %18, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %15, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17
  store ptr null, ptr %13, align 4
  store ptr null, ptr %14, align 4
  br label %23

23:                                               ; preds = %22, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %24 = load i16, ptr @pin_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @pin_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #4
  %26 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 1
  store i32 1, ptr %26, align 4
  tail call void @__wake_up_locked(ptr noundef %0, i32 noundef 3, i32 noundef 1) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %27 = load i16, ptr %0, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pin_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @pin_lock) #4
  %3 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  store volatile ptr %7, ptr %3, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  store volatile ptr %3, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %2
  store volatile ptr %3, ptr %6, align 4
  %12 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 2, i32 1
  store volatile ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 3
  %14 = getelementptr i8, ptr %1, i32 144
  %15 = load ptr, ptr %14, align 4
  store volatile ptr %15, ptr %13, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %13, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %11
  store volatile ptr %13, ptr %14, align 4
  %20 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 3, i32 1
  store volatile ptr %14, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %21 = load i16, ptr @pin_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @pin_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pin_kill(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  br label %51

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  store i32 0, ptr %2, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull %0) #4
  %11 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !15

14:                                               ; preds = %5
  store i32 -1, ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %15 = load i16, ptr %0, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  %17 = getelementptr inbounds %struct.fs_pin, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  call void %18(ptr noundef nonnull %0) #4
  br label %51

19:                                               ; preds = %5
  %20 = icmp sgt i32 %12, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %22 = load i16, ptr %0, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  br label %51

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi ptr [ %25, %24 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 -12
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %30, %26
  %36 = phi ptr [ %28, %30 ], [ %25, %26 ]
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %9, ptr %37, align 4
  store ptr %36, ptr %9, align 4
  store ptr %27, ptr %10, align 4
  store volatile ptr %9, ptr %27, align 4
  %38 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  br label %39

39:                                               ; preds = %44, %35
  store volatile i32 2, ptr %38, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %40 = load i16, ptr %0, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  call void @schedule() #4
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %42 = load volatile ptr, ptr %9, align 4
  %43 = icmp eq ptr %42, %9
  br i1 %43, label %50, label %44, !prof !15

44:                                               ; preds = %39
  call void @_raw_spin_lock_irq(ptr noundef nonnull %0) #4
  %45 = load i32, ptr %11, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %39

47:                                               ; preds = %44
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %48 = load i16, ptr %0, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %50

50:                                               ; preds = %47, %39
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  br label %51

51:                                               ; preds = %50, %21, %14, %4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mnt_pin_kill(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %2 = getelementptr inbounds %struct.mount, ptr %0, i32 0, i32 25
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -24
  tail call void @pin_kill(ptr noundef %7)
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %8 = load volatile ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @group_pin_kill(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -16
  tail call void @pin_kill(ptr noundef %6)
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !17
  %7 = load volatile ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %1
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i64 2148995967}
!9 = !{i64 2148991791}
!10 = !{i64 2148991866, i64 2148991893, i64 2148991940, i64 2148991962, i64 2148991990, i64 2148992010}
!11 = !{i64 2149018970}
!12 = !{i64 733286}
!13 = !{i64 2149020111}
!14 = !{i64 2149148888}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151526545}
!17 = !{i64 2149148671}
