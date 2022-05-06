; ModuleID = '/llk/IR/kernel/futex/pi.c_pt.bc'
source_filename = "../kernel/futex/pi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.37 }
%struct.anon.37 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.23, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.23 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, ptr, ptr, i32, i32, i64, ptr }
%struct.rt_wake_q_head = type { %struct.wake_q_head, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [48 x i8] }
%struct.plist_head = type { %struct.list_head }

@get_pi_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [18 x i8] c"kernel/futex/pi.c\00", align 1
@fixup_pi_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8
@futex_unlock_pi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__fixup_pi_state_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__fixup_pi_state_owner.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@wake_futex_pi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @refill_pi_state_cache() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #9
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 127
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !8

5:                                                ; preds = %0
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 48) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  store volatile ptr %7, ptr %7, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 2
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 3
  store volatile i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr %7, ptr %2, align 8
  br label %14

14:                                               ; preds = %9, %5, %0
  %15 = phi i32 [ 0, %9 ], [ 0, %0 ], [ -12, %5 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @get_pi_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ %13, %15 ], [ %3, %1 ]
  %7 = add i32 %6, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !9
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %6, i32 %7, ptr elementtype(i32) %2) #9, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %5

17:                                               ; preds = %15, %12, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %15 ], [ %6, %12 ]
  %19 = add i32 %18, 1
  %20 = or i32 %19, %18
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 0) #9
  br label %23

23:                                               ; preds = %22, %17
  %24 = icmp ne i32 %18, 0
  %25 = load i1, ptr @get_pi_state.__already_done, align 1
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %28, label %27, !prof !11

27:                                               ; preds = %23
  store i1 true, ptr @get_pi_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %28

28:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_pi_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %41, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #9
  br label %41

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %12 = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 1
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #9
  %18 = load ptr, ptr %12, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %21) #9
  %22 = load volatile ptr, ptr %0, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %26, !prof !8

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #9
  %25 = load ptr, ptr %0, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %27, ptr %29, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %31 = load i16, ptr %21, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %33

33:                                               ; preds = %26, %15
  tail call void @rt_mutex_proxy_unlock(ptr noundef %16) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #9
  br label %34

34:                                               ; preds = %33, %11
  %35 = tail call ptr @llvm.thread.pointer() #9
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 127
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %41

40:                                               ; preds = %34
  store ptr null, ptr %12, align 8
  store volatile i32 1, ptr %4, align 4
  store ptr %0, ptr %36, align 8
  br label %41

41:                                               ; preds = %40, %39, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pi_state_update_owner(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %8 = load volatile ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #9
  %11 = load ptr, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %17 = load i16, ptr %7, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %19

19:                                               ; preds = %12, %2
  %20 = icmp eq ptr %1, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %22) #9
  %23 = load volatile ptr, ptr %0, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #9
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 126
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %0, ptr %29, align 4
  store ptr %28, ptr %0, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %27, ptr %30, align 4
  store volatile ptr %0, ptr %27, align 4
  store ptr %1, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %31 = load i16, ptr %22, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %33

33:                                               ; preds = %26, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_proxy_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_lock_pi_atomic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !annotation !19
  %13 = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef null) #9
  %14 = call i32 @futex_get_value_locked(ptr noundef nonnull %12, ptr noundef %0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %194

16:                                               ; preds = %7
  %17 = load i32, ptr %12, align 4
  %18 = and i32 %17, 1073741823
  %19 = icmp eq i32 %18, %13
  br i1 %19, label %194, label %20, !prof !8

20:                                               ; preds = %16
  %21 = call ptr @futex_top_waiter(ptr noundef %1, ptr noundef %2) #9
  %22 = icmp eq ptr %21, null
  %23 = load i32, ptr %12, align 4
  br i1 %22, label %90, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.futex_q, ptr %21, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = and i32 %23, 1073741823
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !annotation !19
  %28 = icmp eq ptr %26, null
  br i1 %28, label %88, label %29, !prof !8

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.futex_pi_state, ptr %26, i32 0, i32 3
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 228, i32 noundef 9, ptr noundef null) #9
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.futex_pi_state, ptr %26, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %35) #9
  %36 = call i32 @futex_get_value_locked(ptr noundef nonnull %11, ptr noundef %0) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %34
  %39 = load i32, ptr %11, align 4
  %40 = icmp eq i32 %39, %23
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  %42 = and i32 %23, 1073741824
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.futex_pi_state, ptr %26, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %43, label %51, label %47

47:                                               ; preds = %41
  %48 = icmp eq i32 %27, 0
  br i1 %46, label %49, label %50

49:                                               ; preds = %47
  br i1 %48, label %55, label %84

50:                                               ; preds = %47
  br i1 %48, label %55, label %52

51:                                               ; preds = %41
  br i1 %46, label %84, label %52

52:                                               ; preds = %51, %50
  %53 = call i32 @__task_pid_nr_ns(ptr noundef nonnull %45, i32 noundef 0, ptr noundef null) #9
  %54 = icmp eq i32 %27, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %52, %50, %49
  %56 = load volatile i32, ptr %30, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %68, %55
  %59 = phi i32 [ %66, %68 ], [ %56, %55 ]
  %60 = add i32 %59, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #9, !srcloc !9
  br label %61

61:                                               ; preds = %61, %58
  %62 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %59, i32 %60, ptr elementtype(i32) %30) #9, !srcloc !10
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %61

65:                                               ; preds = %61
  %66 = extractvalue { i32, i32 } %62, 1
  %67 = icmp eq i32 %66, %59
  br i1 %67, label %70, label %68, !prof !11

68:                                               ; preds = %65
  %69 = icmp eq i32 %66, 0
  br i1 %69, label %70, label %58

70:                                               ; preds = %68, %65, %55
  %71 = phi i32 [ 0, %55 ], [ 0, %68 ], [ %59, %65 ]
  %72 = add i32 %71, 1
  %73 = or i32 %72, %71
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %76, label %75, !prof !11

75:                                               ; preds = %70
  call void @refcount_warn_saturate(ptr noundef %30, i32 noundef 0) #9
  br label %76

76:                                               ; preds = %75, %70
  %77 = icmp ne i32 %71, 0
  %78 = load i1, ptr @get_pi_state.__already_done, align 1
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %81, label %80, !prof !11

80:                                               ; preds = %76
  store i1 true, ptr @get_pi_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %81

81:                                               ; preds = %80, %76
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %82 = load i16, ptr %35, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  store ptr %26, ptr %3, align 4
  br label %88

84:                                               ; preds = %52, %51, %49, %38, %34
  %85 = phi i32 [ -22, %52 ], [ -22, %51 ], [ -22, %49 ], [ -11, %38 ], [ -14, %34 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %86 = load i16, ptr %35, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  br label %88

88:                                               ; preds = %84, %81, %24
  %89 = phi i32 [ %85, %84 ], [ 0, %81 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  br label %194

90:                                               ; preds = %20
  %91 = and i32 %23, 1073741823
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %90
  %94 = and i32 %23, 1073741824
  %95 = or i32 %94, %13
  %96 = icmp eq i32 %6, 0
  %97 = or i32 %95, -2147483648
  %98 = select i1 %96, i32 %95, i32 %97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4, !annotation !19
  %99 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %23, i32 noundef %98) #9
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr %10, align 4
  %102 = icmp eq i32 %101, %23
  %103 = select i1 %102, i32 0, i32 -11
  %104 = select i1 %100, i32 %103, i32 %99, !prof !11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  %105 = icmp ne i32 %104, 0
  %106 = or i1 %96, %105
  %107 = select i1 %105, i32 %104, i32 1
  br i1 %106, label %194, label %108

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 108
  call void @_raw_spin_lock_irq(ptr noundef %109) #9
  %110 = tail call ptr @llvm.thread.pointer() #9
  %111 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 127
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115, !prof !8

114:                                              ; preds = %108
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef null) #9
  br label %115

115:                                              ; preds = %114, %108
  store ptr null, ptr %111, align 8
  %116 = getelementptr inbounds %struct.futex_pi_state, ptr %112, i32 0, i32 1
  call void @rt_mutex_init_proxy_locked(ptr noundef %116, ptr noundef %4) #9
  %117 = getelementptr inbounds %struct.futex_pi_state, ptr %112, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %117, ptr noundef align 8 dereferenceable(16) %2, i32 16, i1 false) #9
  %118 = load volatile ptr, ptr %112, align 4
  %119 = icmp eq ptr %118, %112
  br i1 %119, label %121, label %120, !prof !11

120:                                              ; preds = %115
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #9
  br label %121

121:                                              ; preds = %120, %115
  %122 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 126
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  store ptr %112, ptr %124, align 4
  store ptr %123, ptr %112, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %122, ptr %125, align 4
  store volatile ptr %112, ptr %122, align 4
  %126 = getelementptr inbounds %struct.futex_pi_state, ptr %112, i32 0, i32 2
  store ptr %4, ptr %126, align 8
  store ptr %112, ptr %3, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %127 = load i16, ptr %109, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %109, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  br label %194

129:                                              ; preds = %90
  %130 = or i32 %23, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4, !annotation !19
  %131 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %9, ptr noundef %0, i32 noundef %23, i32 noundef %130) #9
  %132 = icmp eq i32 %131, 0
  %133 = load i32, ptr %9, align 4
  %134 = icmp eq i32 %133, %23
  %135 = select i1 %134, i32 0, i32 -11
  %136 = select i1 %132, i32 %135, i32 %131, !prof !11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %194

138:                                              ; preds = %129
  %139 = call ptr @find_get_task_by_vpid(i32 noundef %91) #9
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !19
  %142 = call i32 @futex_get_value_locked(ptr noundef nonnull %8, ptr noundef %0) #9
  %143 = icmp eq i32 %142, 0
  %144 = load i32, ptr %8, align 4
  %145 = icmp eq i32 %144, %130
  %146 = select i1 %145, i32 -3, i32 -11
  %147 = select i1 %143, i32 %146, i32 -14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %194

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 2097152
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153, !prof !11

153:                                              ; preds = %148
  call fastcc void @put_task_struct(ptr noundef nonnull %139) #9
  br label %194

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 108
  call void @_raw_spin_lock_irq(ptr noundef %155) #9
  %156 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 129
  %157 = load i32, ptr %156, align 32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %166, label %159, !prof !11

159:                                              ; preds = %154
  %160 = call fastcc i32 @handle_exit_race(ptr noundef %0, i32 noundef %130, ptr noundef nonnull %139) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %161 = load i16, ptr %155, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %155, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %163 = icmp eq i32 %160, -16
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store ptr %139, ptr %5, align 4
  br label %194

165:                                              ; preds = %159
  call fastcc void @put_task_struct(ptr noundef nonnull %139) #9
  br label %194

166:                                              ; preds = %154
  %167 = tail call ptr @llvm.thread.pointer() #9
  %168 = getelementptr inbounds %struct.task_struct, ptr %167, i32 0, i32 127
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %172, !prof !8

171:                                              ; preds = %166
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef null) #9
  br label %172

172:                                              ; preds = %171, %166
  store ptr null, ptr %168, align 8
  %173 = getelementptr inbounds %struct.futex_pi_state, ptr %169, i32 0, i32 1
  call void @rt_mutex_init_proxy_locked(ptr noundef %173, ptr noundef nonnull %139) #9
  %174 = getelementptr inbounds %struct.futex_pi_state, ptr %169, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %174, ptr noundef align 8 dereferenceable(16) %2, i32 16, i1 false) #9
  %175 = load volatile ptr, ptr %169, align 4
  %176 = icmp eq ptr %175, %169
  br i1 %176, label %178, label %177, !prof !11

177:                                              ; preds = %172
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #9
  br label %178

178:                                              ; preds = %177, %172
  %179 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 126
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  store ptr %169, ptr %181, align 4
  store ptr %180, ptr %169, align 4
  %182 = getelementptr inbounds %struct.list_head, ptr %169, i32 0, i32 1
  store ptr %179, ptr %182, align 4
  store volatile ptr %169, ptr %179, align 4
  %183 = getelementptr inbounds %struct.futex_pi_state, ptr %169, i32 0, i32 2
  store ptr %139, ptr %183, align 8
  store ptr %169, ptr %3, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %184 = load i16, ptr %155, align 4
  %185 = add i16 %184, 1
  store i16 %185, ptr %155, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %186 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #9, !srcloc !9
  %187 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 1, ptr elementtype(i32) %186) #9, !srcloc !13
  %188 = extractvalue { i32, i32, i32 } %187, 0
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %193, label %190

190:                                              ; preds = %178
  %191 = icmp sgt i32 %188, 0
  br i1 %191, label %194, label %192, !prof !11

192:                                              ; preds = %190
  call void @refcount_warn_saturate(ptr noundef %186, i32 noundef 3) #9
  br label %194

193:                                              ; preds = %178
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  call void @__put_task_struct(ptr noundef nonnull %139) #9
  br label %194

194:                                              ; preds = %193, %192, %190, %165, %164, %153, %141, %129, %121, %93, %88, %16, %7
  %195 = phi i32 [ %89, %88 ], [ -14, %7 ], [ -35, %16 ], [ %107, %93 ], [ 1, %121 ], [ %136, %129 ], [ -1, %153 ], [ %147, %141 ], [ %160, %165 ], [ -16, %164 ], [ 0, %190 ], [ 0, %192 ], [ 0, %193 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_top_waiter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fixup_pi_owner(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = icmp eq ptr %8, %9
  br i1 %4, label %12, label %11

11:                                               ; preds = %3
  br i1 %10, label %28, label %25

12:                                               ; preds = %3
  br i1 %10, label %25, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 1, i32 2
  %15 = load volatile ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, -2
  %18 = inttoptr i32 %17 to ptr
  %19 = icmp eq ptr %9, %18
  %20 = load i1, ptr @fixup_pi_owner.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %13
  store i1 true, ptr @fixup_pi_owner.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 915, i32 noundef 9, ptr noundef null) #9
  br label %24

24:                                               ; preds = %23, %13
  br i1 %19, label %25, label %28

25:                                               ; preds = %24, %12, %11
  %26 = phi ptr [ %9, %11 ], [ null, %12 ], [ %9, %24 ]
  %27 = tail call fastcc i32 @fixup_pi_state_owner(ptr noundef %0, ptr noundef %1, ptr noundef %26)
  br label %28

28:                                               ; preds = %25, %24, %11
  %29 = phi i32 [ 1, %11 ], [ 0, %24 ], [ %27, %25 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fixup_pi_state_owner(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #9
  %9 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !19
  %10 = getelementptr inbounds %struct.futex_pi_state, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %2, null
  %13 = getelementptr inbounds %struct.futex_pi_state, ptr %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.futex_pi_state, ptr %9, i32 0, i32 1, i32 2
  %15 = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 2
  %16 = tail call ptr @llvm.thread.pointer() #9
  %17 = icmp ne ptr %16, %2
  %18 = icmp eq ptr %11, %16
  br label %19

19:                                               ; preds = %85, %3
  br i1 %12, label %20, label %30

20:                                               ; preds = %19
  br i1 %18, label %21, label %92

21:                                               ; preds = %20
  %22 = call i32 @__rt_mutex_futex_trylock(ptr noundef %13) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %21
  %25 = load volatile ptr, ptr %14, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = and i32 %26, -2
  %28 = inttoptr i32 %27 to ptr
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %63, label %36, !prof !8

30:                                               ; preds = %19
  %31 = load i1, ptr @__fixup_pi_state_owner.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %17, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %30
  store i1 true, ptr @__fixup_pi_state_owner.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 749, i32 noundef 9, ptr noundef null) #9
  br label %35

35:                                               ; preds = %34, %30
  br i1 %18, label %92, label %36

36:                                               ; preds = %35, %24
  %37 = phi ptr [ %28, %24 ], [ %2, %35 ]
  %38 = call i32 @__task_pid_nr_ns(ptr noundef nonnull %37, i32 noundef 0, ptr noundef null) #9
  %39 = load ptr, ptr %10, align 8
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i32 -1073741824, i32 -2147483648
  %42 = or i32 %41, %38
  %43 = call i32 @futex_get_value_locked(ptr noundef nonnull %4, ptr noundef %0) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = load i32, ptr %4, align 4
  %47 = and i32 %46, 1073741824
  %48 = or i32 %47, %42
  %49 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %46, i32 noundef %48) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %55, %45
  %52 = load i32, ptr %5, align 4
  %53 = load i32, ptr %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  store i32 %52, ptr %4, align 4
  %56 = and i32 %52, 1073741824
  %57 = or i32 %56, %42
  %58 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %52, i32 noundef %57) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %51, label %63

60:                                               ; preds = %51
  call fastcc void @pi_state_update_owner(ptr noundef %9, ptr noundef %37) #9
  %61 = icmp eq ptr %16, %2
  %62 = zext i1 %61 to i32
  br label %92

63:                                               ; preds = %55, %45, %36, %24
  %64 = phi i32 [ %43, %36 ], [ -11, %24 ], [ %49, %45 ], [ %58, %55 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %65 = load i16, ptr %13, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %13, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %67 = load ptr, ptr %15, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %68 = load i16, ptr %67, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  switch i32 %64, label %74 [
    i32 -14, label %70
    i32 -11, label %72
  ]

70:                                               ; preds = %63
  %71 = call i32 @fault_in_user_writeable(ptr noundef %0) #9
  br label %77

72:                                               ; preds = %63
  %73 = call i32 @__cond_resched() #9
  br label %77

74:                                               ; preds = %63
  %75 = load i1, ptr @__fixup_pi_state_owner.__already_done.1, align 1
  br i1 %75, label %77, label %76, !prof !11

76:                                               ; preds = %74
  store i1 true, ptr @__fixup_pi_state_owner.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 817, i32 noundef 9, ptr noundef null) #9
  br label %77

77:                                               ; preds = %76, %74, %72, %70
  %78 = phi i32 [ 0, %72 ], [ %71, %70 ], [ %64, %76 ], [ %64, %74 ]
  %79 = load ptr, ptr %15, align 8
  call void @_raw_spin_lock(ptr noundef %79) #9
  call void @_raw_spin_lock_irq(ptr noundef %13) #9
  %80 = load ptr, ptr %10, align 8
  %81 = icmp eq ptr %80, %11
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = icmp eq ptr %16, %2
  %84 = zext i1 %83 to i32
  br label %92

85:                                               ; preds = %77
  %86 = icmp eq i32 %78, 0
  br i1 %86, label %19, label %87

87:                                               ; preds = %85
  %88 = load volatile ptr, ptr %14, align 4
  %89 = ptrtoint ptr %88 to i32
  %90 = and i32 %89, -2
  %91 = inttoptr i32 %90 to ptr
  call fastcc void @pi_state_update_owner(ptr noundef %9, ptr noundef %91) #9
  br label %92

92:                                               ; preds = %87, %82, %60, %35, %21, %20
  %93 = phi i32 [ %84, %82 ], [ %78, %87 ], [ %62, %60 ], [ 0, %20 ], [ 1, %21 ], [ 1, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %94 = load i16, ptr %8, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_lock_pi(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.hrtimer_sleeper, align 8
  %6 = alloca ptr, align 4
  %7 = alloca %struct.rt_mutex_waiter, align 8
  %8 = alloca %struct.futex_q, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) @futex_q_init, i32 72, i1 false)
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 127
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22, !prof !8

13:                                               ; preds = %4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 48) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %146, label %17

17:                                               ; preds = %13
  store volatile ptr %15, ptr %15, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.futex_pi_state, ptr %15, i32 0, i32 2
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %struct.futex_pi_state, ptr %15, i32 0, i32 3
  store volatile i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.futex_pi_state, ptr %15, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false) #9
  store ptr %15, ptr %10, align 8
  br label %22

22:                                               ; preds = %17, %4
  %23 = call ptr @futex_setup_timer(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %1, i64 noundef 0) #9
  %24 = and i32 %1, 1
  %25 = icmp ne i32 %24, 0
  %26 = getelementptr inbounds %struct.futex_q, ptr %8, i32 0, i32 3
  %27 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %25, ptr noundef %26, i32 noundef 1) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %133, !prof !11

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.futex_q, ptr %8, i32 0, i32 4
  br label %31

31:                                               ; preds = %145, %29
  %32 = call ptr @futex_q_lock(ptr noundef nonnull %8) #9
  %33 = call i32 @futex_lock_pi_atomic(ptr noundef %0, ptr noundef %32, ptr noundef %26, ptr noundef %30, ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0)
  switch i32 %33, label %130 [
    i32 0, label %40
    i32 1, label %131
    i32 -14, label %141
    i32 -16, label %34
    i32 -11, label %34
  ], !prof !22

34:                                               ; preds = %31, %31
  call void @futex_q_unlock(ptr noundef %32) #9
  %35 = load ptr, ptr %6, align 4
  call void @wait_for_owner_exiting(i32 noundef %33, ptr noundef %35) #9
  %36 = call i32 @__cond_resched() #9
  br label %37

37:                                               ; preds = %144, %34
  %38 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %25, ptr noundef %26, i32 noundef 1) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %145, label %133, !prof !11

40:                                               ; preds = %31
  %41 = load ptr, ptr %30, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %40
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %44

44:                                               ; preds = %43, %40
  call void @__futex_queue(ptr noundef nonnull %8, ptr noundef %32) #9
  %45 = icmp eq i32 %3, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %30, align 8
  %48 = getelementptr inbounds %struct.futex_pi_state, ptr %47, i32 0, i32 1
  %49 = call i32 @rt_mutex_futex_trylock(ptr noundef %48) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %98, label %93

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  store i32 %53, ptr %52, align 4
  %54 = ptrtoint ptr %7 to i32
  store i32 %54, ptr %7, align 8
  %55 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 4
  store i32 3, ptr %55, align 8
  %56 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 2
  store ptr null, ptr %56, align 8
  %57 = load ptr, ptr %30, align 8
  %58 = getelementptr inbounds %struct.futex_pi_state, ptr %57, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %58) #9
  %59 = getelementptr inbounds %struct.futex_q, ptr %8, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %61 = load i16, ptr %60, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %63 = load ptr, ptr %30, align 8
  %64 = getelementptr inbounds %struct.futex_pi_state, ptr %63, i32 0, i32 1
  %65 = call i32 @__rt_mutex_start_proxy_lock(ptr noundef %64, ptr noundef nonnull %7, ptr noundef %9) #9
  %66 = load ptr, ptr %30, align 8
  %67 = getelementptr inbounds %struct.futex_pi_state, ptr %66, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %68 = load i16, ptr %67, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  switch i32 %65, label %70 [
    i32 0, label %74
    i32 1, label %72
  ]

70:                                               ; preds = %51
  %71 = load ptr, ptr %59, align 8
  call void @_raw_spin_lock(ptr noundef %71) #9
  br label %83

72:                                               ; preds = %51
  %73 = load ptr, ptr %59, align 8
  call void @_raw_spin_lock(ptr noundef %73) #9
  br label %88

74:                                               ; preds = %51
  %75 = icmp eq ptr %23, null
  br i1 %75, label %77, label %76, !prof !11

76:                                               ; preds = %74
  call void @hrtimer_sleeper_start_expires(ptr noundef nonnull %23, i32 noundef 0) #9
  br label %77

77:                                               ; preds = %76, %74
  %78 = load ptr, ptr %30, align 8
  %79 = getelementptr inbounds %struct.futex_pi_state, ptr %78, i32 0, i32 1
  %80 = call i32 @rt_mutex_wait_proxy_lock(ptr noundef %79, ptr noundef %23, ptr noundef nonnull %7) #9
  %81 = load ptr, ptr %59, align 8
  call void @_raw_spin_lock(ptr noundef %81) #9
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77, %70
  %84 = phi i32 [ %65, %70 ], [ %80, %77 ]
  %85 = load ptr, ptr %30, align 8
  %86 = getelementptr inbounds %struct.futex_pi_state, ptr %85, i32 0, i32 1
  %87 = call zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %86, ptr noundef nonnull %7) #9
  br i1 %87, label %98, label %93

88:                                               ; preds = %77, %72
  %89 = load ptr, ptr %30, align 8
  %90 = getelementptr inbounds %struct.futex_pi_state, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, %9
  br i1 %92, label %124, label %116

93:                                               ; preds = %83, %46
  %94 = load ptr, ptr %30, align 8
  %95 = getelementptr inbounds %struct.futex_pi_state, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, %9
  br i1 %97, label %124, label %116

98:                                               ; preds = %83, %46
  %99 = phi i32 [ -11, %46 ], [ %84, %83 ]
  %100 = load ptr, ptr %30, align 8
  %101 = getelementptr inbounds %struct.futex_pi_state, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, %9
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.futex_pi_state, ptr %100, i32 0, i32 1, i32 2
  %106 = load volatile ptr, ptr %105, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = and i32 %107, -2
  %109 = inttoptr i32 %108 to ptr
  %110 = icmp eq ptr %9, %109
  %111 = load i1, ptr @fixup_pi_owner.__already_done, align 1
  %112 = xor i1 %111, true
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %115, !prof !8

114:                                              ; preds = %104
  store i1 true, ptr @fixup_pi_owner.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 915, i32 noundef 9, ptr noundef null) #9
  br label %115

115:                                              ; preds = %114, %104
  br i1 %110, label %116, label %122

116:                                              ; preds = %115, %98, %93, %88
  %117 = phi i32 [ 0, %93 ], [ %99, %98 ], [ %99, %115 ], [ 0, %88 ]
  %118 = phi ptr [ %9, %93 ], [ null, %98 ], [ %9, %115 ], [ %9, %88 ]
  %119 = call fastcc i32 @fixup_pi_state_owner(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %118) #9
  %120 = icmp eq i32 %119, 0
  %121 = call i32 @llvm.smin.i32(i32 %119, i32 0)
  br i1 %120, label %122, label %124

122:                                              ; preds = %116, %115
  %123 = phi i32 [ %117, %116 ], [ %99, %115 ]
  br label %124

124:                                              ; preds = %122, %116, %93, %88
  %125 = phi i32 [ %123, %122 ], [ %121, %116 ], [ 0, %93 ], [ 0, %88 ]
  call void @futex_unqueue_pi(ptr noundef nonnull %8) #9
  %126 = getelementptr inbounds %struct.futex_q, ptr %8, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %128 = load i16, ptr %127, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %127, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %133

130:                                              ; preds = %31
  br label %131

131:                                              ; preds = %130, %31
  %132 = phi i32 [ %33, %130 ], [ 0, %31 ]
  call void @futex_q_unlock(ptr noundef %32) #9
  br label %133

133:                                              ; preds = %141, %131, %124, %37, %22
  %134 = phi i32 [ %132, %131 ], [ %125, %124 ], [ %27, %22 ], [ %38, %37 ], [ %142, %141 ]
  %135 = icmp eq ptr %23, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = call i32 @hrtimer_cancel(ptr noundef nonnull %23) #9
  br label %138

138:                                              ; preds = %136, %133
  %139 = icmp eq i32 %134, -4
  %140 = select i1 %139, i32 -513, i32 %134
  br label %146

141:                                              ; preds = %31
  call void @futex_q_unlock(ptr noundef %32) #9
  %142 = call i32 @fault_in_user_writeable(ptr noundef %0) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %133

144:                                              ; preds = %141
  br i1 %25, label %37, label %145

145:                                              ; preds = %144, %37
  br label %31

146:                                              ; preds = %138, %13
  %147 = phi i32 [ %140, %138 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #9
  ret i32 %147
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_q_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_q_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_owner_exiting(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_futex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rt_mutex_start_proxy_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_sleeper_start_expires(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_wait_proxy_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_unqueue_pi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_user_writeable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_unlock_pi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rt_wake_q_head, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.futex_key, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !19
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 0, ptr noundef null) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %9 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #11, !srcloc !23
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %13 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #9, !srcloc !26
  %14 = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %137

16:                                               ; preds = %2
  %17 = and i32 %1, 1
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr inbounds %struct.wake_q_head, ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.rt_wake_q_head, ptr %3, i32 0, i32 1
  br label %21

21:                                               ; preds = %127, %16
  %22 = phi { i32, i32 } [ %13, %16 ], [ %131, %127 ]
  %23 = extractvalue { i32, i32 } %22, 1
  %24 = and i32 %23, 1073741823
  %25 = icmp eq i32 %24, %8
  br i1 %25, label %26, label %137

26:                                               ; preds = %21
  %27 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %18, ptr noundef nonnull %6, i32 noundef 1) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %137

29:                                               ; preds = %26
  %30 = call ptr @futex_hash(ptr noundef nonnull %6) #9
  %31 = getelementptr inbounds %struct.futex_hash_bucket, ptr %30, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %31) #9
  %32 = call ptr @futex_top_waiter(ptr noundef %30, ptr noundef nonnull %6) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %107, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.futex_q, ptr %32, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %121, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.futex_pi_state, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, %7
  br i1 %41, label %42, label %121

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.futex_pi_state, ptr %36, i32 0, i32 3
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %56, %42
  %47 = phi i32 [ %54, %56 ], [ %44, %42 ]
  %48 = add i32 %47, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #9, !srcloc !9
  br label %49

49:                                               ; preds = %49, %46
  %50 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 %47, i32 %48, ptr elementtype(i32) %43) #9, !srcloc !10
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %49

53:                                               ; preds = %49
  %54 = extractvalue { i32, i32 } %50, 1
  %55 = icmp eq i32 %54, %47
  br i1 %55, label %58, label %56, !prof !11

56:                                               ; preds = %53
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %58, label %46

58:                                               ; preds = %56, %53, %42
  %59 = phi i32 [ 0, %42 ], [ %47, %53 ], [ 0, %56 ]
  %60 = add i32 %59, 1
  %61 = or i32 %60, %59
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %64, label %63, !prof !11

63:                                               ; preds = %58
  call void @refcount_warn_saturate(ptr noundef %43, i32 noundef 0) #9
  br label %64

64:                                               ; preds = %63, %58
  %65 = icmp ne i32 %59, 0
  %66 = load i1, ptr @get_pi_state.__already_done, align 1
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %69, label %68, !prof !11

68:                                               ; preds = %64
  store i1 true, ptr @get_pi_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %struct.futex_pi_state, ptr %36, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %70) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %71 = load i16, ptr %31, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store ptr inttoptr (i32 1 to ptr), ptr %3, align 4
  store ptr %3, ptr %19, align 4
  store ptr null, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !19
  %73 = getelementptr inbounds %struct.futex_pi_state, ptr %36, i32 0, i32 1, i32 1, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %74, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %70
  br i1 %79, label %84, label %80, !prof !11

80:                                               ; preds = %76
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/../locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !27
  unreachable

81:                                               ; preds = %69
  %82 = load i1, ptr @wake_futex_pi.__already_done, align 1
  br i1 %82, label %100, label %83, !prof !11

83:                                               ; preds = %81
  store i1 true, ptr @wake_futex_pi.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 623, i32 noundef 9, ptr noundef null) #9
  br label %100

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %74, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = call i32 @__task_pid_nr_ns(ptr noundef %86, i32 noundef 0, ptr noundef null) #9
  %88 = or i32 %87, -2147483648
  %89 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %23, i32 noundef %88) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load i32, ptr %4, align 4
  %93 = icmp eq i32 %92, %23
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = and i32 %92, 1073741823
  %96 = icmp eq i32 %95, %23
  %97 = select i1 %96, i32 -11, i32 -22
  br label %100

98:                                               ; preds = %91
  call fastcc void @pi_state_update_owner(ptr noundef nonnull %36, ptr noundef %86) #9
  %99 = call zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %70, ptr noundef nonnull %3) #9
  br label %100

100:                                              ; preds = %98, %94, %84, %83, %81
  %101 = phi i1 [ %99, %98 ], [ false, %83 ], [ false, %81 ], [ false, %84 ], [ false, %94 ]
  %102 = phi i32 [ 0, %98 ], [ -11, %83 ], [ -11, %81 ], [ %89, %84 ], [ %97, %94 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %103 = load i16, ptr %70, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %70, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  br i1 %101, label %105, label %106

105:                                              ; preds = %100
  call void @rt_mutex_postunlock(ptr noundef nonnull %3) #9
  br label %106

106:                                              ; preds = %105, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @put_pi_state(ptr noundef nonnull %36)
  switch i32 %102, label %137 [
    i32 -11, label %125
    i32 -14, label %134
  ]

107:                                              ; preds = %29
  %108 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %23, i32 noundef 0) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %111 = load i16, ptr %31, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  switch i32 %108, label %113 [
    i32 -14, label %134
    i32 -11, label %125
  ]

113:                                              ; preds = %110
  %114 = load i1, ptr @futex_unlock_pi.__already_done, align 1
  br i1 %114, label %137, label %115, !prof !11

115:                                              ; preds = %113
  store i1 true, ptr @futex_unlock_pi.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1207, i32 noundef 9, ptr noundef null) #9
  br label %137

116:                                              ; preds = %107
  %117 = extractvalue { i32, i32 } %22, 1
  %118 = load i32, ptr %5, align 4
  %119 = icmp eq i32 %118, %117
  %120 = select i1 %119, i32 0, i32 -11
  br label %121

121:                                              ; preds = %116, %38, %34
  %122 = phi i32 [ %120, %116 ], [ -22, %34 ], [ -22, %38 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %123 = load i16, ptr %31, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %137

125:                                              ; preds = %110, %106
  %126 = call i32 @__cond_resched() #9
  br label %127

127:                                              ; preds = %134, %125
  %128 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #11, !srcloc !23
  %129 = and i32 %128, -13
  %130 = or i32 %129, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %131 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #9, !srcloc !26
  %132 = extractvalue { i32, i32 } %131, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #9, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !25
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %21, label %137

134:                                              ; preds = %110, %106
  %135 = call i32 @fault_in_user_writeable(ptr noundef %0) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %127, label %137

137:                                              ; preds = %134, %127, %121, %115, %113, %106, %26, %21, %2
  %138 = phi i32 [ %122, %121 ], [ %108, %115 ], [ %108, %113 ], [ -14, %2 ], [ %102, %106 ], [ %135, %134 ], [ %27, %26 ], [ -1, %21 ], [ -14, %127 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_cmpxchg_value_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_init_proxy_locked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_exit_race(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !19
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 129
  %8 = load i32, ptr %7, align 32
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %6, %3
  %11 = call i32 @futex_get_value_locked(ptr noundef nonnull %4, ptr noundef %0) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, %1
  %16 = select i1 %15, i32 -3, i32 -11
  br label %17

17:                                               ; preds = %13, %10, %6
  %18 = phi i32 [ -16, %6 ], [ -14, %10 ], [ %16, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %18
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_task_struct(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #9, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #9
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void @__put_task_struct(ptr noundef %0) #9
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rt_mutex_futex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rt_mutex_futex_unlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_postunlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 786854, i64 2148276825, i64 2148276851, i64 2148276898, i64 2148276920, i64 2148276948, i64 2148276968}
!10 = !{i64 772917, i64 772941, i64 772962, i64 772979, i64 772996}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148389920}
!13 = !{i64 2148292055, i64 2148292087, i64 2148292116, i64 2148292150, i64 2148292181, i64 2148292204}
!14 = !{i64 2149304810}
!15 = !{i64 2148955458}
!16 = !{i64 2148951282}
!17 = !{i64 2148951357, i64 2148951384, i64 2148951431, i64 2148951453, i64 2148951481, i64 2148951501}
!18 = !{i64 2148978461}
!19 = !{!"auto-init"}
!20 = !{i64 692777}
!21 = !{i64 2148979602}
!22 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!23 = !{i64 3183207}
!24 = !{i64 3183404}
!25 = !{i64 2150668683}
!26 = !{i64 2150783002, i64 2150783282, i64 2150783616, i64 2150783950}
!27 = !{i64 2150744895, i64 2150745400, i64 2150744932, i64 2150744988, i64 2150745022, i64 2150745046, i64 2150745087, i64 2150745108, i64 2150745136, i64 2150745170}
