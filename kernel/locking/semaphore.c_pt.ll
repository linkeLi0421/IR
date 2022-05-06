; ModuleID = '/llk/IR/kernel/locking/semaphore.c_pt.bc'
source_filename = "../kernel/locking/semaphore.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down:\09\09\09\09\09"
module asm "\09.asciz \09\22down\22\09\09\09\09\09"
module asm "__kstrtabns_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22down_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_down_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22down_killable\22\09\09\09\09\09"
module asm "__kstrtabns_down_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22down_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_down_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22down_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_down_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_up:\09\09\09\09\09"
module asm "\09.asciz \09\22up\22\09\09\09\09\09"
module asm "__kstrtabns_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.semaphore_waiter = type { %struct.list_head, ptr, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_down = external dso_local constant [0 x i8], align 1
@__ksymtab_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down to i32), ptr @__kstrtab_down, ptr @__kstrtabns_down }, section "___ksymtab+down", align 4
@__kstrtab_down_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_down_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_interruptible to i32), ptr @__kstrtab_down_interruptible, ptr @__kstrtabns_down_interruptible }, section "___ksymtab+down_interruptible", align 4
@__kstrtab_down_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_down_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_killable to i32), ptr @__kstrtab_down_killable, ptr @__kstrtabns_down_killable }, section "___ksymtab+down_killable", align 4
@__kstrtab_down_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_down_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_trylock to i32), ptr @__kstrtab_down_trylock, ptr @__kstrtabns_down_trylock }, section "___ksymtab+down_trylock", align 4
@__kstrtab_down_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_down_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_timeout to i32), ptr @__kstrtab_down_timeout, ptr @__kstrtabns_down_timeout }, section "___ksymtab+down_timeout", align 4
@__kstrtab_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_up = external dso_local constant [0 x i8], align 1
@__ksymtab_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @up to i32), ptr @__kstrtab_up, ptr @__kstrtabns_up }, section "___ksymtab+up", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_down, ptr @__ksymtab_down_interruptible, ptr @__ksymtab_down_killable, ptr @__ksymtab_down_timeout, ptr @__ksymtab_down_trylock, ptr @__ksymtab_up], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @down(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  store i32 %7, ptr %3, align 4
  br label %9

8:                                                ; preds = %1
  tail call fastcc void @__down(ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__down(ptr noundef %0) unnamed_addr #3 section ".sched.text" {
  %2 = alloca %struct.semaphore_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %2, ptr %5, align 4
  store ptr %4, ptr %2, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store volatile ptr %2, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #5
  %9 = getelementptr inbounds %struct.semaphore_waiter, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  br label %11

11:                                               ; preds = %14, %1
  %12 = phi i32 [ 2147483647, %1 ], [ %17, %14 ]
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %20, label %14, !prof !8

14:                                               ; preds = %11
  store volatile i32 2, ptr %10, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %15 = load i16, ptr %0, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %17 = call i32 @schedule_timeout(i32 noundef %12) #5
  call void @_raw_spin_lock_irq(ptr noundef %0) #5
  %18 = load i8, ptr %3, align 4, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %24

20:                                               ; preds = %11
  %21 = load ptr, ptr %7, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  br label %24

24:                                               ; preds = %20, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_interruptible(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  store i32 %7, ptr %3, align 4
  br label %10

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @__down_interruptible(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ 0, %6 ], [ %9, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #5
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__down_interruptible(ptr noundef %0) unnamed_addr #3 section ".sched.text" {
  %2 = alloca %struct.semaphore_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %2, ptr %5, align 4
  store ptr %4, ptr %2, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store volatile ptr %2, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #5
  %9 = getelementptr inbounds %struct.semaphore_waiter, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  br label %11

11:                                               ; preds = %26, %1
  %12 = phi i32 [ 2147483647, %1 ], [ %29, %26 ]
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20, !prof !16

16:                                               ; preds = %11
  %17 = load volatile i32, ptr %8, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %7, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  br label %36

24:                                               ; preds = %16
  %25 = icmp slt i32 %12, 1
  br i1 %25, label %32, label %26, !prof !8

26:                                               ; preds = %24
  store volatile i32 1, ptr %10, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %27 = load i16, ptr %0, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %29 = call i32 @schedule_timeout(i32 noundef %12) #5
  call void @_raw_spin_lock_irq(ptr noundef %0) #5
  %30 = load i8, ptr %3, align 4, !range !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %11, label %36

32:                                               ; preds = %24
  %33 = load ptr, ptr %7, align 4
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %26, %20
  %37 = phi i32 [ -4, %20 ], [ -62, %32 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_killable(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  store i32 %7, ptr %3, align 4
  br label %10

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @__down_killable(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ 0, %6 ], [ %9, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #5
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__down_killable(ptr noundef %0) unnamed_addr #3 section ".sched.text" {
  %2 = alloca %struct.semaphore_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %2, ptr %5, align 4
  store ptr %4, ptr %2, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store volatile ptr %2, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #5
  %9 = getelementptr inbounds %struct.semaphore_waiter, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 98, i32 1
  %11 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  br label %12

12:                                               ; preds = %27, %1
  %13 = phi i32 [ 2147483647, %1 ], [ %30, %27 ]
  %14 = load volatile i32, ptr %8, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21, !prof !16

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %12
  %22 = load i32, ptr %10, align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21, %17
  %26 = icmp slt i32 %13, 1
  br i1 %26, label %33, label %27, !prof !8

27:                                               ; preds = %25
  store volatile i32 258, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %28 = load i16, ptr %0, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %30 = call i32 @schedule_timeout(i32 noundef %13) #5
  call void @_raw_spin_lock_irq(ptr noundef %0) #5
  %31 = load i8, ptr %3, align 4, !range !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %12, label %41

33:                                               ; preds = %25
  %34 = load ptr, ptr %7, align 4
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  br label %41

37:                                               ; preds = %21
  %38 = load ptr, ptr %7, align 4
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %33, %27
  %42 = phi i32 [ -4, %37 ], [ -62, %33 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_trylock(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8, !prof !16

7:                                                ; preds = %1
  store i32 %5, ptr %3, align 4
  br label %8

8:                                                ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #5
  %9 = lshr i32 %5, 31
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 4
  br label %11

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @__down_timeout(ptr noundef %0, i32 noundef %1)
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ 0, %7 ], [ %10, %9 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #5
  ret i32 %12
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__down_timeout(ptr noundef %0, i32 noundef %1) unnamed_addr #3 section ".sched.text" {
  %3 = alloca %struct.semaphore_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  store ptr %3, ptr %6, align 4
  store ptr %5, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %3, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #5
  %10 = getelementptr inbounds %struct.semaphore_waiter, ptr %3, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  br label %12

12:                                               ; preds = %15, %2
  %13 = phi i32 [ %1, %2 ], [ %18, %15 ]
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %21, label %15, !prof !8

15:                                               ; preds = %12
  store volatile i32 2, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %16 = load i16, ptr %0, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %18 = call i32 @schedule_timeout(i32 noundef %13) #5
  call void @_raw_spin_lock_irq(ptr noundef %0) #5
  %19 = load i8, ptr %4, align 4, !range !15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %12, label %25

21:                                               ; preds = %12
  %22 = load ptr, ptr %8, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i32 [ -62, %21 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @up(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %10, !prof !16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  br label %11

10:                                               ; preds = %1
  tail call fastcc void @__up(ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__up(ptr nocapture noundef readonly %0) unnamed_addr #3 section ".sched.text" {
  %2 = getelementptr inbounds %struct.semaphore, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = getelementptr inbounds %struct.semaphore_waiter, ptr %3, i32 0, i32 2
  store i8 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.semaphore_waiter, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @wake_up_process(ptr noundef %10) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2149170479}
!11 = !{i64 2149166303}
!12 = !{i64 2149166378, i64 2149166405, i64 2149166452, i64 2149166474, i64 2149166502, i64 2149166522}
!13 = !{i64 311343}
!14 = !{i64 2149194623}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
