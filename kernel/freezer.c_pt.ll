; ModuleID = '/llk/IR/kernel/freezer.c_pt.bc'
source_filename = "../kernel/freezer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_freezing_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22system_freezing_cnt\22\09\09\09\09\09"
module asm "__kstrtabns_system_freezing_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freezing_slow_path:\09\09\09\09\09"
module asm "\09.asciz \09\22freezing_slow_path\22\09\09\09\09\09"
module asm "__kstrtabns_freezing_slow_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___refrigerator:\09\09\09\09\09"
module asm "\09.asciz \09\22__refrigerator\22\09\09\09\09\09"
module asm "__kstrtabns___refrigerator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_freezable:\09\09\09\09\09"
module asm "\09.asciz \09\22set_freezable\22\09\09\09\09\09"
module asm "__kstrtabns_set_freezable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@system_freezing_cnt = dso_local global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_system_freezing_cnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_freezing_cnt = external dso_local constant [0 x i8], align 1
@__ksymtab_system_freezing_cnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_freezing_cnt to i32), ptr @__kstrtab_system_freezing_cnt, ptr @__kstrtabns_system_freezing_cnt }, section "___ksymtab+system_freezing_cnt", align 4
@pm_nosig_freezing = dso_local local_unnamed_addr global i8 0, align 1
@pm_freezing = dso_local local_unnamed_addr global i8 0, align 1
@__kstrtab_freezing_slow_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_freezing_slow_path = external dso_local constant [0 x i8], align 1
@__ksymtab_freezing_slow_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freezing_slow_path to i32), ptr @__kstrtab_freezing_slow_path, ptr @__kstrtabns_freezing_slow_path }, section "___ksymtab+freezing_slow_path", align 4
@freezer_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab___refrigerator = external dso_local constant [0 x i8], align 1
@__kstrtabns___refrigerator = external dso_local constant [0 x i8], align 1
@__ksymtab___refrigerator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__refrigerator to i32), ptr @__kstrtab___refrigerator, ptr @__kstrtabns___refrigerator }, section "___ksymtab+__refrigerator", align 4
@__kstrtab_set_freezable = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_freezable = external dso_local constant [0 x i8], align 1
@__ksymtab_set_freezable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_freezable to i32), ptr @__kstrtab_set_freezable, ptr @__kstrtabns_set_freezable }, section "___ksymtab+set_freezable", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___refrigerator, ptr @__ksymtab_freezing_slow_path, ptr @__ksymtab_set_freezable, ptr @__ksymtab_system_freezing_cnt], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @freezing_slow_path(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -2147450880
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %0, align 4
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i8, ptr @pm_nosig_freezing, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i8, ptr @pm_freezing, align 1, !range !8
  %15 = icmp ne i8 %14, 0
  %16 = and i32 %3, 2097152
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br label %19

19:                                               ; preds = %13, %10, %6, %1
  %20 = phi i1 [ false, %1 ], [ false, %6 ], [ true, %10 ], [ %18, %13 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__refrigerator(i1 noundef zeroext %0) #1 {
  %2 = tail call ptr @llvm.thread.pointer() #5
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = phi i1 [ false, %1 ], [ true, %42 ]
  store volatile i32 2, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @freezer_lock) #5
  %8 = load i32, ptr %5, align 4
  %9 = or i32 %8, 65536
  store i32 %9, ptr %5, align 4
  %10 = load volatile i32, ptr @system_freezing_cnt, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %8, -2147450880
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load volatile i32, ptr %2, align 4
  %17 = and i32 %16, 262144
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i8, ptr @pm_nosig_freezing, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8, ptr @pm_freezing, align 1, !range !8
  %24 = icmp ne i8 %23, 0
  %25 = and i32 %8, 2097152
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %19
  br i1 %0, label %29, label %36

29:                                               ; preds = %28
  %30 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  br label %33

33:                                               ; preds = %31, %22, %15, %12, %6
  %34 = phi i32 [ %32, %31 ], [ %9, %15 ], [ %9, %12 ], [ %9, %6 ], [ %9, %22 ]
  %35 = and i32 %34, -65537
  store i32 %35, ptr %5, align 4
  br label %36

36:                                               ; preds = %33, %29, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %37 = load i16, ptr @freezer_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @freezer_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %39 = load i32, ptr %5, align 4
  %40 = and i32 %39, 65536
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void @schedule() #5
  br label %6

43:                                               ; preds = %36
  store volatile i32 %4, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  ret i1 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @freeze_task(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1073741824
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @freezer_lock) #5
  %9 = load volatile i32, ptr @system_freezing_cnt, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11, !prof !10

11:                                               ; preds = %7
  %12 = tail call zeroext i1 @freezing_slow_path(ptr noundef %0) #5
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %11, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_lock, i32 noundef %8) #5
  br label %32

18:                                               ; preds = %13
  %19 = and i32 %14, 2097152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !18
  %22 = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef nonnull %2) #5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  call void @signal_wake_up_state(ptr noundef %0, i32 noundef 0) #5
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #5
  br label %28

28:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %31

29:                                               ; preds = %18
  %30 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef 1) #5
  br label %31

31:                                               ; preds = %29, %28
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_lock, i32 noundef %8) #5
  br label %32

32:                                               ; preds = %31, %17, %1
  %33 = phi i1 [ false, %17 ], [ true, %31 ], [ false, %1 ]
  ret i1 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__thaw_task(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @freezer_lock) #5
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @wake_up_process(ptr noundef %0) #5
  br label %9

9:                                                ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @freezer_lock, i32 noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @set_freezable() #1 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @freezer_lock) #5
  %1 = tail call ptr @llvm.thread.pointer() #5
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -32769
  store i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %5 = load i16, ptr @freezer_lock, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr @freezer_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %7 = load i32, ptr %2, align 4
  %8 = load volatile i32, ptr @system_freezing_cnt, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10, !prof !10

10:                                               ; preds = %0
  %11 = and i32 %7, -2147450880
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load volatile i32, ptr %1, align 4
  %15 = and i32 %14, 262144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i8, ptr @pm_nosig_freezing, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26, !prof !19

20:                                               ; preds = %17
  %21 = load i8, ptr @pm_freezing, align 1, !range !8
  %22 = icmp ne i8 %21, 0
  %23 = and i32 %7, 2097152
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28, !prof !20

26:                                               ; preds = %20, %17
  %27 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #5
  br label %28

28:                                               ; preds = %26, %20, %13, %10, %0
  %29 = phi i1 [ %27, %26 ], [ false, %20 ], [ false, %0 ], [ false, %10 ], [ false, %13 ]
  ret i1 %29
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2153950606}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149234471}
!12 = !{i64 2149230295}
!13 = !{i64 2149230370, i64 2149230397, i64 2149230444, i64 2149230466, i64 2149230494, i64 2149230514}
!14 = !{i64 334014}
!15 = !{i64 2149258615}
!16 = !{i64 2153954081}
!17 = !{i64 2153343004}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = !{!"branch_weights", i32 1, i32 2000}
