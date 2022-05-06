; ModuleID = '/llk/IR/kernel/task_work.c_pt.bc'
source_filename = "../kernel/task_work.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@work_exited = internal global %struct.callback_head zeroinitializer, align 4
@task_work_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"kernel/task_work.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @task_work_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 102
  %5 = ptrtoint ptr %1 to i32
  br label %6

6:                                                ; preds = %15, %3
  %7 = load volatile ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, @work_exited
  br i1 %8, label %34, label %9, !prof !8

9:                                                ; preds = %6
  store ptr %7, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  %10 = ptrtoint ptr %7 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #3, !srcloc !10
  br label %11

11:                                               ; preds = %11, %9
  %12 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %4, i32 %10, i32 %5) #3, !srcloc !11
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = inttoptr i32 %16 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %18 = icmp eq ptr %7, %17
  br i1 %18, label %19, label %6

19:                                               ; preds = %15
  switch i32 %2, label %31 [
    i32 0, label %34
    i32 1, label %20
    i32 2, label %24
  ]

20:                                               ; preds = %19
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %0) #3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  tail call void @kick_process(ptr noundef %0) #3
  br label %34

24:                                               ; preds = %19
  %25 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %0) #3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef 1) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  tail call void @kick_process(ptr noundef %0) #3
  br label %34

31:                                               ; preds = %19
  %32 = load i1, ptr @task_work_add.__already_done, align 1
  br i1 %32, label %34, label %33, !prof !13

33:                                               ; preds = %31
  store i1 true, ptr @task_work_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 9, ptr noundef null) #3
  br label %34

34:                                               ; preds = %33, %31, %30, %27, %24, %23, %20, %19, %6
  %35 = phi i32 [ 0, %31 ], [ 0, %33 ], [ %2, %19 ], [ 0, %20 ], [ 0, %23 ], [ 0, %24 ], [ 0, %27 ], [ 0, %30 ], [ -3, %6 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @task_work_cancel_match(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 102
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7, !prof !13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #3
  %10 = load volatile ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %28, %7
  %13 = phi ptr [ %30, %28 ], [ %10, %7 ]
  %14 = phi ptr [ %29, %28 ], [ %4, %7 ]
  %15 = tail call zeroext i1 %1(ptr noundef nonnull %13, ptr noundef %2) #3
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !14
  %17 = ptrtoint ptr %13 to i32
  %18 = load ptr, ptr %13, align 4
  %19 = ptrtoint ptr %18 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #3, !srcloc !10
  br label %20

20:                                               ; preds = %20, %16
  %21 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 %17, i32 %19) #3, !srcloc !11
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = extractvalue { i32, i32 } %21, 1
  %26 = inttoptr i32 %25 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !15
  %27 = icmp eq ptr %13, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %12
  %29 = phi ptr [ %14, %24 ], [ %13, %12 ]
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %12

32:                                               ; preds = %28, %24, %7
  %33 = phi ptr [ null, %7 ], [ null, %28 ], [ %13, %24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #3
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi ptr [ %33, %32 ], [ null, %3 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @task_work_cancel(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 102
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6, !prof !13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #3
  %9 = load volatile ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %29, %6
  %12 = phi ptr [ %31, %29 ], [ %9, %6 ]
  %13 = phi ptr [ %30, %29 ], [ %3, %6 ]
  %14 = getelementptr inbounds %struct.callback_head, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !14
  %18 = ptrtoint ptr %12 to i32
  %19 = load ptr, ptr %12, align 4
  %20 = ptrtoint ptr %19 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #3, !srcloc !10
  br label %21

21:                                               ; preds = %21, %17
  %22 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %13, i32 %18, i32 %20) #3, !srcloc !11
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = extractvalue { i32, i32 } %22, 1
  %27 = inttoptr i32 %26 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !15
  %28 = icmp eq ptr %12, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %11
  %30 = phi ptr [ %13, %25 ], [ %12, %11 ]
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %11

33:                                               ; preds = %29, %25, %6
  %34 = phi ptr [ null, %6 ], [ %12, %25 ], [ null, %29 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #3
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi ptr [ %34, %33 ], [ null, %2 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @task_work_run() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #3
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 102
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 108
  br label %5

5:                                                ; preds = %23, %0
  %6 = load volatile ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8, %5
  %13 = phi i32 [ 0, %5 ], [ ptrtoint (ptr @work_exited to i32), %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !16
  %14 = ptrtoint ptr %6 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #3, !srcloc !10
  br label %15

15:                                               ; preds = %15, %12
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %14, i32 %13) #3, !srcloc !11
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  %21 = inttoptr i32 %20 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !17
  %22 = icmp eq ptr %6, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %28, %19
  br label %5

24:                                               ; preds = %19
  br i1 %7, label %35, label %25

25:                                               ; preds = %24
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !18
  %26 = load i16, ptr %4, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %6, %25 ], [ %30, %28 ]
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.callback_head, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %29) #3
  %33 = tail call i32 @__cond_resched() #3
  %34 = icmp eq ptr %30, null
  br i1 %34, label %23, label %28

35:                                               ; preds = %24, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }

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
!9 = !{i64 2153538222}
!10 = !{i64 655240, i64 2148145211, i64 2148145237, i64 2148145284, i64 2148145306, i64 2148145334, i64 2148145354}
!11 = !{i64 666614, i64 666635, i64 666658, i64 666677, i64 666696}
!12 = !{i64 2153538603}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153543447}
!15 = !{i64 2153543834}
!16 = !{i64 2153547960}
!17 = !{i64 2153548341}
!18 = !{i64 2148823844}
!19 = !{i64 2148819668}
!20 = !{i64 2148819743, i64 2148819770, i64 2148819817, i64 2148819839, i64 2148819867, i64 2148819887}
!21 = !{i64 561163}
!22 = !{i64 2148847988}
