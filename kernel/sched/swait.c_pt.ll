; ModuleID = '/llk/IR/kernel/sched/swait.c_pt.bc'
source_filename = "../kernel/sched/swait.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___init_swait_queue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22__init_swait_queue_head\22\09\09\09\09\09"
module asm "__kstrtabns___init_swait_queue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22swake_up_locked\22\09\09\09\09\09"
module asm "__kstrtabns_swake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swake_up_one:\09\09\09\09\09"
module asm "\09.asciz \09\22swake_up_one\22\09\09\09\09\09"
module asm "__kstrtabns_swake_up_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swake_up_all:\09\09\09\09\09"
module asm "\09.asciz \09\22swake_up_all\22\09\09\09\09\09"
module asm "__kstrtabns_swake_up_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_swait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_swait_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_swait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_swait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_swait_event\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_swait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_swait:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_swait\22\09\09\09\09\09"
module asm "__kstrtabns_finish_swait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.swait_queue = type { ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab___init_swait_queue_head = external dso_local constant [0 x i8], align 1
@__kstrtabns___init_swait_queue_head = external dso_local constant [0 x i8], align 1
@__ksymtab___init_swait_queue_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__init_swait_queue_head to i32), ptr @__kstrtab___init_swait_queue_head, ptr @__kstrtabns___init_swait_queue_head }, section "___ksymtab+__init_swait_queue_head", align 4
@__kstrtab_swake_up_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_swake_up_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_swake_up_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swake_up_locked to i32), ptr @__kstrtab_swake_up_locked, ptr @__kstrtabns_swake_up_locked }, section "___ksymtab+swake_up_locked", align 4
@__kstrtab_swake_up_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_swake_up_one = external dso_local constant [0 x i8], align 1
@__ksymtab_swake_up_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swake_up_one to i32), ptr @__kstrtab_swake_up_one, ptr @__kstrtabns_swake_up_one }, section "___ksymtab+swake_up_one", align 4
@__kstrtab_swake_up_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_swake_up_all = external dso_local constant [0 x i8], align 1
@__ksymtab_swake_up_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swake_up_all to i32), ptr @__kstrtab_swake_up_all, ptr @__kstrtabns_swake_up_all }, section "___ksymtab+swake_up_all", align 4
@__kstrtab_prepare_to_swait_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_swait_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_swait_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_swait_exclusive to i32), ptr @__kstrtab_prepare_to_swait_exclusive, ptr @__kstrtabns_prepare_to_swait_exclusive }, section "___ksymtab+prepare_to_swait_exclusive", align 4
@__kstrtab_prepare_to_swait_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_swait_event = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_swait_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_swait_event to i32), ptr @__kstrtab_prepare_to_swait_event, ptr @__kstrtabns_prepare_to_swait_event }, section "___ksymtab+prepare_to_swait_event", align 4
@__kstrtab_finish_swait = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_swait = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_swait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_swait to i32), ptr @__kstrtab_finish_swait, ptr @__kstrtabns_finish_swait }, section "___ksymtab+finish_swait", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___init_swait_queue_head, ptr @__ksymtab_finish_swait, ptr @__ksymtab_prepare_to_swait_event, ptr @__ksymtab_prepare_to_swait_exclusive, ptr @__ksymtab_swake_up_all, ptr @__ksymtab_swake_up_locked, ptr @__ksymtab_swake_up_one], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__init_swait_queue_head(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  store i32 0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swake_up_locked(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @wake_up_process(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %9, align 4
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swake_up_all_locked(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %1
  %6 = load volatile ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %6, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @wake_up_process(ptr noundef %10) #6
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %12, align 4
  br label %16

16:                                               ; preds = %8, %5
  %17 = load volatile ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swake_up_one(ptr noundef %0) #1 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @wake_up_process(ptr noundef %8) #6
  %10 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %10, align 4
  br label %14

14:                                               ; preds = %6, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swake_up_all(ptr noundef %0) #1 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @_raw_spin_lock_irq(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  store ptr %5, ptr %2, align 8
  store ptr %8, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %9, align 4
  br label %13

13:                                               ; preds = %7, %1
  %14 = load volatile ptr, ptr %2, align 8
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %32, label %16

16:                                               ; preds = %27, %13
  %17 = phi ptr [ %30, %27 ], [ %14, %13 ]
  %18 = getelementptr i8, ptr %17, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @wake_up_state(ptr noundef %19, i32 noundef 3) #6
  %21 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %21, align 4
  %25 = load volatile ptr, ptr %2, align 8
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %28 = load i16, ptr %0, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  call void @_raw_spin_lock_irq(ptr noundef %0) #6
  %30 = load volatile ptr, ptr %2, align 8
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %32, label %16

32:                                               ; preds = %27, %16, %13
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %33 = load i16, ptr %0, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__prepare_to_swait(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @llvm.thread.pointer() #6
  store ptr %3, ptr %1, align 4
  %4 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %4, ptr %9, align 4
  store ptr %8, ptr %4, align 4
  %11 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %4, ptr %10, align 4
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prepare_to_swait_exclusive(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #6
  %5 = tail call ptr @llvm.thread.pointer() #6
  store ptr %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %6, ptr %11, align 4
  store ptr %10, ptr %6, align 4
  %13 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %6, ptr %12, align 4
  br label %14

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 %2, ptr %15, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prepare_to_swait_event(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #6
  %5 = tail call ptr @llvm.thread.pointer() #6
  %6 = and i32 %2, 257
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %5, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !14

12:                                               ; preds = %8
  %13 = load volatile i32, ptr %5, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12, %8
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %16
  %25 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store volatile ptr %25, ptr %25, align 4
  store ptr %25, ptr %26, align 4
  br label %41

30:                                               ; preds = %19, %12, %3
  store ptr %5, ptr %1, align 4
  %31 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1
  %36 = getelementptr inbounds %struct.swait_queue_head, ptr %0, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %31, ptr %36, align 4
  store ptr %35, ptr %31, align 4
  %38 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %31, ptr %37, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 %2, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  br label %41

41:                                               ; preds = %39, %24
  %42 = phi i32 [ -512, %24 ], [ 0, %39 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #6
  ret i32 %42
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__finish_swait(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @llvm.thread.pointer() #6
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  store volatile i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %6, ptr %10, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @finish_swait(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @llvm.thread.pointer() #6
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  store volatile i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %2
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #6
  %14 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %13) #6
  br label %18

18:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2149249518}
!9 = !{i64 2149245342}
!10 = !{i64 2149245417, i64 2149245444, i64 2149245491, i64 2149245513, i64 2149245541, i64 2149245561}
!11 = !{i64 630297}
!12 = !{i64 2149273662}
!13 = !{i64 2156332784}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2156337526}
!16 = !{i64 2147989427}
