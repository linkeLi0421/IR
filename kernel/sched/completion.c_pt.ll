; ModuleID = '/llk/IR/kernel/sched/completion.c_pt.bc'
source_filename = "../kernel/sched/completion.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22complete\22\09\09\09\09\09"
module asm "__kstrtabns_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_complete_all:\09\09\09\09\09"
module asm "\09.asciz \09\22complete_all\22\09\09\09\09\09"
module asm "__kstrtabns_complete_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_io:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_io\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_io_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_interruptible_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_interruptible_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_interruptible_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_killable\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_killable_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_killable_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_killable_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22try_wait_for_completion\22\09\09\09\09\09"
module asm "__kstrtabns_try_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_completion_done:\09\09\09\09\09"
module asm "\09.asciz \09\22completion_done\22\09\09\09\09\09"
module asm "__kstrtabns_completion_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
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

@__kstrtab_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @complete to i32), ptr @__kstrtab_complete, ptr @__kstrtabns_complete }, section "___ksymtab+complete", align 4
@__kstrtab_complete_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_complete_all = external dso_local constant [0 x i8], align 1
@__ksymtab_complete_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @complete_all to i32), ptr @__kstrtab_complete_all, ptr @__kstrtabns_complete_all }, section "___ksymtab+complete_all", align 4
@__kstrtab_wait_for_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion to i32), ptr @__kstrtab_wait_for_completion, ptr @__kstrtabns_wait_for_completion }, section "___ksymtab+wait_for_completion", align 4
@__kstrtab_wait_for_completion_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_timeout to i32), ptr @__kstrtab_wait_for_completion_timeout, ptr @__kstrtabns_wait_for_completion_timeout }, section "___ksymtab+wait_for_completion_timeout", align 4
@__kstrtab_wait_for_completion_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_io = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_io to i32), ptr @__kstrtab_wait_for_completion_io, ptr @__kstrtabns_wait_for_completion_io }, section "___ksymtab+wait_for_completion_io", align 4
@__kstrtab_wait_for_completion_io_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_io_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_io_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_io_timeout to i32), ptr @__kstrtab_wait_for_completion_io_timeout, ptr @__kstrtabns_wait_for_completion_io_timeout }, section "___ksymtab+wait_for_completion_io_timeout", align 4
@__kstrtab_wait_for_completion_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_interruptible to i32), ptr @__kstrtab_wait_for_completion_interruptible, ptr @__kstrtabns_wait_for_completion_interruptible }, section "___ksymtab+wait_for_completion_interruptible", align 4
@__kstrtab_wait_for_completion_interruptible_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_interruptible_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_interruptible_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_interruptible_timeout to i32), ptr @__kstrtab_wait_for_completion_interruptible_timeout, ptr @__kstrtabns_wait_for_completion_interruptible_timeout }, section "___ksymtab+wait_for_completion_interruptible_timeout", align 4
@__kstrtab_wait_for_completion_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_killable to i32), ptr @__kstrtab_wait_for_completion_killable, ptr @__kstrtabns_wait_for_completion_killable }, section "___ksymtab+wait_for_completion_killable", align 4
@__kstrtab_wait_for_completion_killable_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_killable_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_killable_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_killable_timeout to i32), ptr @__kstrtab_wait_for_completion_killable_timeout, ptr @__kstrtabns_wait_for_completion_killable_timeout }, section "___ksymtab+wait_for_completion_killable_timeout", align 4
@__kstrtab_try_wait_for_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_wait_for_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_try_wait_for_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_wait_for_completion to i32), ptr @__kstrtab_try_wait_for_completion, ptr @__kstrtabns_try_wait_for_completion }, section "___ksymtab+try_wait_for_completion", align 4
@__kstrtab_completion_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_completion_done = external dso_local constant [0 x i8], align 1
@__ksymtab_completion_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @completion_done to i32), ptr @__kstrtab_completion_done, ptr @__kstrtabns_completion_done }, section "___ksymtab+completion_done", align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_complete, ptr @__ksymtab_complete_all, ptr @__ksymtab_completion_done, ptr @__ksymtab_try_wait_for_completion, ptr @__ksymtab_wait_for_completion, ptr @__ksymtab_wait_for_completion_interruptible, ptr @__ksymtab_wait_for_completion_interruptible_timeout, ptr @__ksymtab_wait_for_completion_io, ptr @__ksymtab_wait_for_completion_io_timeout, ptr @__ksymtab_wait_for_completion_killable, ptr @__ksymtab_wait_for_completion_killable_timeout, ptr @__ksymtab_wait_for_completion_timeout], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = add nuw i32 %4, 1
  store i32 %7, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %1
  tail call void @swake_up_locked(ptr noundef %2) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @complete_all(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  store i32 -1, ptr %0, align 4
  tail call void @swake_up_all_locked(ptr noundef %2) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_all_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_for_completion(ptr noundef %0) #0 section ".sched.text" {
  %2 = tail call fastcc i32 @wait_for_common(ptr noundef %0, i32 noundef 2147483647, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_common(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 section ".sched.text" {
  %4 = alloca %struct.swait_queue, align 4
  %5 = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #4
  %6 = load i32, ptr %0, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  %9 = tail call ptr @llvm.thread.pointer() #4
  store ptr %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.swait_queue, ptr %4, i32 0, i32 1
  store ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.swait_queue, ptr %4, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 98, i32 1
  %13 = and i32 %2, 257
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  br label %18

18:                                               ; preds = %33, %8
  %19 = phi i32 [ %1, %8 ], [ %36, %33 ]
  br i1 %14, label %33, label %20

20:                                               ; preds = %18
  %21 = load volatile i32, ptr %9, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !8

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %9, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %20
  br i1 %16, label %29, label %41

29:                                               ; preds = %28
  %30 = load i32, ptr %12, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %24, %18
  call void @__prepare_to_swait(ptr noundef %5, ptr noundef nonnull %4) #4
  store volatile i32 %2, ptr %17, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %34 = load i16, ptr %5, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  %36 = call i32 @schedule_timeout(i32 noundef %19) #4, !callees !14
  call void @_raw_spin_lock_irq(ptr noundef %5) #4
  %37 = load i32, ptr %0, align 4
  %38 = icmp eq i32 %37, 0
  %39 = icmp ne i32 %36, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %18, label %41

41:                                               ; preds = %33, %29, %28
  %42 = phi i32 [ %36, %33 ], [ -512, %29 ], [ -512, %28 ]
  call void @__finish_swait(ptr noundef %5, ptr noundef nonnull %4) #4
  %43 = load i32, ptr %0, align 4
  %44 = icmp eq i32 %43, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  br i1 %44, label %54, label %45

45:                                               ; preds = %41, %3
  %46 = phi i32 [ %43, %41 ], [ %6, %3 ]
  %47 = phi i32 [ %42, %41 ], [ %1, %3 ]
  %48 = icmp eq i32 %46, -1
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = add i32 %46, -1
  store i32 %50, ptr %0, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = icmp eq i32 %47, 0
  %53 = select i1 %52, i32 1, i32 %47
  br label %54

54:                                               ; preds = %51, %41
  %55 = phi i32 [ %53, %51 ], [ %42, %41 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %56 = load i16, ptr %5, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_timeout(ptr noundef %0, i32 noundef %1) #0 section ".sched.text" {
  %3 = tail call fastcc i32 @wait_for_common(ptr noundef %0, i32 noundef %1, i32 noundef 2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_for_completion_io(ptr noundef %0) #0 section ".sched.text" {
  %2 = tail call fastcc i32 @wait_for_common_io(ptr noundef %0, i32 noundef 2147483647)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_common_io(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".sched.text" {
  %3 = alloca %struct.swait_queue, align 4
  %4 = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  %8 = tail call ptr @llvm.thread.pointer() #4
  store ptr %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.swait_queue, ptr %3, i32 0, i32 1
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.swait_queue, ptr %3, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i32 [ %1, %7 ], [ %16, %12 ]
  call void @__prepare_to_swait(ptr noundef %4, ptr noundef nonnull %3) #4
  store volatile i32 2, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %14 = load i16, ptr %4, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  %16 = call i32 @io_schedule_timeout(i32 noundef %13) #4, !callees !14
  call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %17 = load i32, ptr %0, align 4
  %18 = icmp eq i32 %17, 0
  %19 = icmp ne i32 %16, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %12, label %21

21:                                               ; preds = %12
  call void @__finish_swait(ptr noundef %4, ptr noundef nonnull %3) #4
  %22 = load i32, ptr %0, align 4
  %23 = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  br i1 %23, label %33, label %24

24:                                               ; preds = %21, %2
  %25 = phi i32 [ %22, %21 ], [ %5, %2 ]
  %26 = phi i32 [ %16, %21 ], [ %1, %2 ]
  %27 = icmp eq i32 %25, -1
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = add i32 %25, -1
  store i32 %29, ptr %0, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = icmp eq i32 %26, 0
  %32 = select i1 %31, i32 1, i32 %26
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi i32 [ %32, %30 ], [ %16, %21 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %35 = load i16, ptr %4, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_io_timeout(ptr noundef %0, i32 noundef %1) #0 section ".sched.text" {
  %3 = tail call fastcc i32 @wait_for_common_io(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_interruptible(ptr noundef %0) #0 section ".sched.text" {
  %2 = tail call fastcc i32 @wait_for_common(ptr noundef %0, i32 noundef 2147483647, i32 noundef 1)
  %3 = icmp eq i32 %2, -512
  %4 = select i1 %3, i32 -512, i32 0
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef %0, i32 noundef %1) #0 section ".sched.text" {
  %3 = tail call fastcc i32 @wait_for_common(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_killable(ptr noundef %0) #0 section ".sched.text" {
  %2 = tail call fastcc i32 @wait_for_common(ptr noundef %0, i32 noundef 2147483647, i32 noundef 258)
  %3 = icmp eq i32 %2, -512
  %4 = select i1 %3, i32 -512, i32 0
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_killable_timeout(ptr noundef %0, i32 noundef %1) #0 section ".sched.text" {
  %3 = tail call fastcc i32 @wait_for_common(ptr noundef %0, i32 noundef %1, i32 noundef 258)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @try_wait_for_completion(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  %7 = load i32, ptr %0, align 4
  %8 = icmp ne i32 %7, 0
  switch i32 %7, label %9 [
    i32 -1, label %11
    i32 0, label %11
  ]

9:                                                ; preds = %4
  %10 = add i32 %7, -1
  store i32 %10, ptr %0, align 4
  br label %11

11:                                               ; preds = %9, %4, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i1 [ %8, %11 ], [ false, %1 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @completion_done(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  br label %7

7:                                                ; preds = %4, %1
  %8 = xor i1 %3, true
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__prepare_to_swait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__finish_swait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2149256116}
!10 = !{i64 2149251940}
!11 = !{i64 2149252015, i64 2149252042, i64 2149252089, i64 2149252111, i64 2149252139, i64 2149252159}
!12 = !{i64 636895}
!13 = !{i64 2149280260}
!14 = !{ptr @io_schedule_timeout, ptr @schedule_timeout}
