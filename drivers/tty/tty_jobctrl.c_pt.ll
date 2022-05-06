; ModuleID = '/llk/IR/drivers/tty/tty_jobctrl.c_pt.bc'
source_filename = "../drivers/tty/tty_jobctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_check_change:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_check_change\22\09\09\09\09\09"
module asm "__kstrtabns_tty_check_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_current_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22get_current_tty\22\09\09\09\09\09"
module asm "__kstrtabns_get_current_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_get_pgrp:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_get_pgrp\22\09\09\09\09\09"
module asm "__kstrtabns_tty_get_pgrp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.46, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.46 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.59, %struct.anon.60, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.59 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.60 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [37 x i8] c"\014%s %s: sig=%d, tty->pgrp == NULL!\0A\00", align 1
@__kstrtab_tty_check_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_check_change = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_check_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_check_change to i32), ptr @__kstrtab_tty_check_change, ptr @__kstrtabns_tty_check_change }, section "___ksymtab+tty_check_change", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@__kstrtab_get_current_tty = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_current_tty = external dso_local constant [0 x i8], align 1
@__ksymtab_get_current_tty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_current_tty to i32), ptr @__kstrtab_get_current_tty, ptr @__kstrtabns_get_current_tty }, section "___ksymtab_gpl+get_current_tty", align 4
@__kstrtab_tty_get_pgrp = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_get_pgrp = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_get_pgrp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_get_pgrp to i32), ptr @__kstrtab_tty_get_pgrp, ptr @__kstrtabns_tty_get_pgrp }, section "___ksymtab_gpl+tty_get_pgrp", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_get_current_tty, ptr @__ksymtab_tty_check_change, ptr @__ksymtab_tty_get_pgrp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__tty_check_change(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #5
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %10 = load ptr, ptr %4, align 16
  %11 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 22, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #5
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #5
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %12, %16
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %44, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 95
  %22 = add i32 %1, -1
  %23 = lshr i32 %22, 5
  %24 = getelementptr [2 x i32], ptr %21, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.sighand_struct, ptr %32, i32 0, i32 3, i32 %22
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, inttoptr (i32 1 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %20
  %37 = icmp eq i32 %1, 21
  %38 = select i1 %37, i32 -5, i32 0
  br label %44

39:                                               ; preds = %30
  %40 = tail call i32 @is_current_pgrp_orphaned() #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call i32 @kill_pgrp(ptr noundef %12, i32 noundef %1, i32 noundef 1) #5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %3) #5
  br label %44

44:                                               ; preds = %42, %39, %36, %9
  %45 = phi i32 [ -512, %42 ], [ 0, %9 ], [ %38, %36 ], [ -5, %39 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br i1 %17, label %46, label %50

46:                                               ; preds = %44
  %47 = tail call ptr @tty_driver_name(ptr noundef %0) #5
  %48 = tail call ptr @tty_name(ptr noundef %0) #5
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %47, ptr noundef %48, i32 noundef %1) #6
  br label %50

50:                                               ; preds = %46, %44, %2
  %51 = phi i32 [ 0, %2 ], [ %45, %46 ], [ %45, %44 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_driver_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_check_change(ptr noundef %0) #0 {
  %2 = tail call i32 @__tty_check_change(ptr noundef %0, i32 noundef 22)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_clear_tty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  store ptr null, ptr %7, align 8
  %9 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %4) #5
  tail call void @tty_kref_put(ptr noundef %8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_open_proc_set_tty(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %3 = tail call ptr @llvm.thread.pointer() #5
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %5 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call fastcc void @__proc_set_tty(ptr noundef %1)
  br label %25

25:                                               ; preds = %24, %19, %15, %11, %2
  %26 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !16
  %29 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !17
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  br label %33

33:                                               ; preds = %32, %25
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__proc_set_tty(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @put_pid(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @put_pid(ptr noundef %7) #5
  %8 = tail call ptr @llvm.thread.pointer() #5
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 22, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %12) #5, !srcloc !16
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #5, !srcloc !19
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !20

18:                                               ; preds = %14
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !21

22:                                               ; preds = %18, %14
  %23 = phi i32 [ 2, %14 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef %23) #5
  br label %24

24:                                               ; preds = %22, %18, %1
  store ptr %12, ptr %6, align 4
  %25 = load ptr, ptr %9, align 16
  %26 = getelementptr %struct.signal_struct, ptr %25, i32 0, i32 22, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #5, !srcloc !16
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #5, !srcloc !19
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !20

33:                                               ; preds = %29
  %34 = add i32 %31, 1
  %35 = or i32 %34, %31
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %39, label %37, !prof !21

37:                                               ; preds = %33, %29
  %38 = phi i32 [ 2, %29 ], [ 1, %33 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef %38) #5
  br label %39

39:                                               ; preds = %37, %33, %24
  store ptr %27, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #5
  %40 = load ptr, ptr %9, align 16
  %41 = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  tail call void @tty_kref_put(ptr noundef nonnull %42) #5
  %45 = load ptr, ptr %9, align 16
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %40, %39 ]
  %48 = getelementptr inbounds %struct.signal_struct, ptr %47, i32 0, i32 23
  %49 = load ptr, ptr %48, align 8
  tail call void @put_pid(ptr noundef %49) #5
  %50 = icmp eq ptr %0, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #5, !srcloc !16
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #5, !srcloc !19
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56, !prof !20

56:                                               ; preds = %51
  %57 = add i32 %54, 1
  %58 = or i32 %57, %54
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %62, label %60, !prof !21

60:                                               ; preds = %56, %51
  %61 = phi i32 [ 2, %51 ], [ 1, %56 ]
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef %61) #5
  br label %62

62:                                               ; preds = %60, %56, %46
  %63 = load ptr, ptr %9, align 16
  %64 = getelementptr inbounds %struct.signal_struct, ptr %63, i32 0, i32 25
  store ptr %0, ptr %64, align 8
  %65 = load ptr, ptr %9, align 16
  %66 = getelementptr inbounds %struct.signal_struct, ptr %65, i32 0, i32 23
  store ptr null, ptr %66, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_current_tty() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #5
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #5, !srcloc !16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #5, !srcloc !19
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !20

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !21

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #5
  br label %21

21:                                               ; preds = %19, %15, %0
  %22 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %4) #5
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @session_clear_tty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.pid, ptr %0, i32 0, i32 3, i32 3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -1372
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %26, label %10

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %23, %10 ], [ %7, %3 ]
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 94
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #5
  %15 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 93
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  store ptr null, ptr %17, align 8
  %19 = load ptr, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %14) #5
  tail call void @tty_kref_put(ptr noundef %18) #5
  %20 = getelementptr %struct.task_struct, ptr %11, i32 0, i32 63, i32 3
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -1372
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %26, label %10

26:                                               ; preds = %10, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_signal_session_leader(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %88, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.pid, ptr %5, i32 0, i32 3, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -1372
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %88, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 1
  br label %16

16:                                               ; preds = %80, %14
  %17 = phi ptr [ %11, %14 ], [ %85, %80 ]
  %18 = phi i32 [ 0, %14 ], [ %32, %80 ]
  %19 = phi ptr [ null, %14 ], [ %81, %80 ]
  %20 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 94
  %21 = load ptr, ptr %20, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #5
  %22 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 93
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  store ptr null, ptr %24, align 8
  %28 = add i32 %18, 1
  %29 = load ptr, ptr %22, align 16
  br label %30

30:                                               ; preds = %27, %16
  %31 = phi ptr [ %29, %27 ], [ %23, %16 ]
  %32 = phi i32 [ %28, %27 ], [ %18, %16 ]
  %33 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 24
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %80

40:                                               ; preds = %30
  %41 = tail call i32 @__group_send_sig_info(i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %17) #5
  %42 = tail call i32 @__group_send_sig_info(i32 noundef 18, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %17) #5
  %43 = load ptr, ptr %22, align 16
  %44 = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 23
  %45 = load ptr, ptr %44, align 8
  tail call void @put_pid(ptr noundef %45) #5
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %46 = load ptr, ptr %15, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %74, label %48

48:                                               ; preds = %40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %46) #5, !srcloc !16
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %46, ptr nonnull %46, i32 1, ptr nonnull elementtype(i32) %46) #5, !srcloc !19
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !20

52:                                               ; preds = %48
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !21

56:                                               ; preds = %52, %48
  %57 = phi i32 [ 2, %48 ], [ 1, %52 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %46, i32 noundef %57) #5
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %15, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %59) #5, !srcloc !16
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %59, ptr nonnull %59, i32 1, ptr nonnull elementtype(i32) %59) #5, !srcloc !19
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65, !prof !20

65:                                               ; preds = %61
  %66 = add i32 %63, 1
  %67 = or i32 %66, %63
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %71, label %69, !prof !21

69:                                               ; preds = %65, %61
  %70 = phi i32 [ 2, %61 ], [ 1, %65 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %59, i32 noundef %70) #5
  br label %71

71:                                               ; preds = %69, %65
  %72 = load ptr, ptr %22, align 16
  %73 = getelementptr inbounds %struct.signal_struct, ptr %72, i32 0, i32 23
  store ptr %59, ptr %73, align 8
  br label %74

74:                                               ; preds = %71, %58, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %75 = load i16, ptr %3, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %77 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %78 = load i16, ptr %77, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %77, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %80

80:                                               ; preds = %74, %36
  %81 = phi ptr [ %46, %74 ], [ %19, %36 ]
  %82 = getelementptr %struct.task_struct, ptr %17, i32 0, i32 63, i32 3
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  %85 = getelementptr i8, ptr %83, i32 -1372
  %86 = icmp eq ptr %85, null
  %87 = or i1 %84, %86
  br i1 %87, label %88, label %16

88:                                               ; preds = %80, %7, %2
  %89 = phi ptr [ null, %2 ], [ null, %7 ], [ %81, %80 ]
  %90 = phi i32 [ 0, %2 ], [ 0, %7 ], [ %32, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !16
  %91 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !17
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  br label %95

95:                                               ; preds = %94, %88
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %96 = icmp eq ptr %89, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %95
  %98 = icmp eq i32 %1, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = tail call i32 @kill_pgrp(ptr noundef nonnull %89, i32 noundef 1, i32 noundef %1) #5
  br label %101

101:                                              ; preds = %99, %97
  tail call void @put_pid(ptr noundef nonnull %89) #5
  br label %102

102:                                              ; preds = %101, %95
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__group_send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #5, !srcloc !16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #5, !srcloc !19
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !20

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !21

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %12) #5
  br label %13

13:                                               ; preds = %11, %7, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disassociate_ctty(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #5
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %149, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #5
  %12 = load ptr, ptr %3, align 16
  %13 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #5, !srcloc !16
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #5, !srcloc !19
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !20

21:                                               ; preds = %16
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !21

25:                                               ; preds = %21, %16
  %26 = phi i32 [ 2, %16 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef %26) #5
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %11) #5
  %29 = icmp eq i32 %0, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tty_driver, ptr %32, i32 0, i32 10
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 4
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @tty_vhangup_session(ptr noundef nonnull %14) #5
  br label %59

37:                                               ; preds = %30, %27
  %38 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 20
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #5
  %40 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 20, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %41) #5, !srcloc !16
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #5, !srcloc !19
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !20

47:                                               ; preds = %43
  %48 = add i32 %45, 1
  %49 = or i32 %48, %45
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %54, label %51, !prof !21

51:                                               ; preds = %47, %43
  %52 = phi i32 [ 2, %43 ], [ 1, %47 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef %52) #5
  br label %54

53:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #5
  br label %59

54:                                               ; preds = %51, %47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #5
  %55 = tail call i32 @kill_pgrp(ptr noundef nonnull %41, i32 noundef 1, i32 noundef %0) #5
  br i1 %29, label %56, label %58

56:                                               ; preds = %54
  %57 = tail call i32 @kill_pgrp(ptr noundef nonnull %41, i32 noundef 18, i32 noundef 0) #5
  br label %58

58:                                               ; preds = %56, %54
  tail call void @put_pid(ptr noundef nonnull %41) #5
  br label %59

59:                                               ; preds = %58, %53, %36
  tail call void @tty_kref_put(ptr noundef nonnull %14) #5
  br label %75

60:                                               ; preds = %8
  %61 = load ptr, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %11) #5
  %62 = icmp eq i32 %0, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %9, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %64) #5
  %65 = load ptr, ptr %3, align 16
  %66 = getelementptr inbounds %struct.signal_struct, ptr %65, i32 0, i32 23
  %67 = load ptr, ptr %66, align 8
  store ptr null, ptr %66, align 8
  %68 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %69 = load i16, ptr %68, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %68, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %71 = icmp eq ptr %67, null
  br i1 %71, label %149, label %72

72:                                               ; preds = %63
  %73 = tail call i32 @kill_pgrp(ptr noundef nonnull %67, i32 noundef 1, i32 noundef %0) #5
  %74 = tail call i32 @kill_pgrp(ptr noundef nonnull %67, i32 noundef 18, i32 noundef %0) #5
  tail call void @put_pid(ptr noundef nonnull %67) #5
  br label %149

75:                                               ; preds = %60, %59
  %76 = load ptr, ptr %9, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %76) #5
  %77 = load ptr, ptr %3, align 16
  %78 = getelementptr inbounds %struct.signal_struct, ptr %77, i32 0, i32 23
  %79 = load ptr, ptr %78, align 8
  tail call void @put_pid(ptr noundef %79) #5
  %80 = load ptr, ptr %3, align 16
  %81 = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 23
  store ptr null, ptr %81, align 8
  %82 = load ptr, ptr %3, align 16
  %83 = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 25
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %111, label %86

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.tty_struct, ptr %84, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #5, !srcloc !16
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #5, !srcloc !19
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !20

91:                                               ; preds = %86
  %92 = add i32 %89, 1
  %93 = or i32 %92, %89
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %100, label %95, !prof !21

95:                                               ; preds = %91, %86
  %96 = phi i32 [ 2, %86 ], [ 1, %91 ]
  tail call void @refcount_warn_saturate(ptr noundef %87, i32 noundef %96) #5
  %97 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %98 = load i16, ptr %97, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %97, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %104

100:                                              ; preds = %91
  %101 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %102 = load i16, ptr %101, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %101, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %104

104:                                              ; preds = %100, %95
  tail call void @tty_lock(ptr noundef nonnull %84) #5
  %105 = getelementptr inbounds %struct.tty_struct, ptr %84, i32 0, i32 20
  %106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %105) #5
  %107 = getelementptr inbounds %struct.tty_struct, ptr %84, i32 0, i32 20, i32 2
  %108 = load ptr, ptr %107, align 4
  tail call void @put_pid(ptr noundef %108) #5
  %109 = getelementptr inbounds %struct.tty_struct, ptr %84, i32 0, i32 20, i32 1
  %110 = load ptr, ptr %109, align 4
  tail call void @put_pid(ptr noundef %110) #5
  store ptr null, ptr %107, align 4
  store ptr null, ptr %109, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %105, i32 noundef %106) #5
  tail call void @tty_unlock(ptr noundef nonnull %84) #5
  tail call void @tty_kref_put(ptr noundef nonnull %84) #5
  br label %115

111:                                              ; preds = %75
  %112 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %113 = load i16, ptr %112, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %112, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %115

115:                                              ; preds = %111, %104
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %116 = load ptr, ptr %3, align 16
  %117 = getelementptr %struct.signal_struct, ptr %116, i32 0, i32 22, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %143, label %120

120:                                              ; preds = %115
  %121 = getelementptr %struct.pid, ptr %118, i32 0, i32 3, i32 3
  %122 = load volatile ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  %124 = getelementptr i8, ptr %122, i32 -1372
  %125 = icmp eq ptr %124, null
  %126 = or i1 %123, %125
  br i1 %126, label %143, label %127

127:                                              ; preds = %127, %120
  %128 = phi ptr [ %140, %127 ], [ %124, %120 ]
  %129 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 94
  %130 = load ptr, ptr %129, align 4
  %131 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %130) #5
  %132 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 93
  %133 = load ptr, ptr %132, align 16
  %134 = getelementptr inbounds %struct.signal_struct, ptr %133, i32 0, i32 25
  %135 = load ptr, ptr %134, align 8
  store ptr null, ptr %134, align 8
  %136 = load ptr, ptr %129, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %131) #5
  tail call void @tty_kref_put(ptr noundef %135) #5
  %137 = getelementptr %struct.task_struct, ptr %128, i32 0, i32 63, i32 3
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  %140 = getelementptr i8, ptr %138, i32 -1372
  %141 = icmp eq ptr %140, null
  %142 = or i1 %139, %141
  br i1 %142, label %143, label %127

143:                                              ; preds = %127, %120, %115
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !16
  %144 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !17
  %145 = extractvalue { i32, i32 } %144, 0
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  br label %148

148:                                              ; preds = %147, %143
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  br label %149

149:                                              ; preds = %148, %72, %63, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_get_pgrp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #5, !srcloc !16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #5, !srcloc !19
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !20

11:                                               ; preds = %7
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !21

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 2, %7 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef %16) #5
  br label %17

17:                                               ; preds = %15, %11, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #5
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @no_tty() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #5
  tail call void @disassociate_ctty(i32 noundef 0)
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  store ptr null, ptr %7, align 8
  %9 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %4) #5
  tail call void @tty_kref_put(ptr noundef %8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_jobctrl_ioctl(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = inttoptr i32 %4 to ptr
  switch i32 %3, label %197 [
    i32 21538, label %7
    i32 21518, label %22
    i32 21519, label %91
    i32 21520, label %124
    i32 21545, label %173
  ]

7:                                                ; preds = %5
  %8 = tail call ptr @llvm.thread.pointer() #5
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %197

14:                                               ; preds = %7
  tail call void @disassociate_ctty(i32 noundef 0) #5
  %15 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 94
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #5
  %18 = load ptr, ptr %9, align 16
  %19 = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 25
  %20 = load ptr, ptr %19, align 8
  store ptr null, ptr %19, align 8
  %21 = load ptr, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %17) #5
  tail call void @tty_kref_put(ptr noundef %20) #5
  br label %197

22:                                               ; preds = %5
  tail call void @tty_lock(ptr noundef %1) #5
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %23 = tail call ptr @llvm.thread.pointer() #5
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 93
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.signal_struct, ptr %25, i32 0, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %84, label %29

29:                                               ; preds = %22
  %30 = getelementptr %struct.signal_struct, ptr %25, i32 0, i32 22, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %84, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.signal_struct, ptr %25, i32 0, i32 25
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  %40 = icmp eq ptr %33, null
  br i1 %40, label %71, label %41

41:                                               ; preds = %39
  %42 = icmp eq i32 %4, 1
  br i1 %42, label %43, label %84

43:                                               ; preds = %41
  %44 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %44, label %45, label %84

45:                                               ; preds = %43
  %46 = load ptr, ptr %32, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %45
  %49 = getelementptr %struct.pid, ptr %46, i32 0, i32 3, i32 3
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = getelementptr i8, ptr %50, i32 -1372
  %53 = icmp eq ptr %52, null
  %54 = or i1 %51, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %55, %48
  %56 = phi ptr [ %68, %55 ], [ %52, %48 ]
  %57 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 94
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #5
  %60 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 93
  %61 = load ptr, ptr %60, align 16
  %62 = getelementptr inbounds %struct.signal_struct, ptr %61, i32 0, i32 25
  %63 = load ptr, ptr %62, align 8
  store ptr null, ptr %62, align 8
  %64 = load ptr, ptr %57, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %59) #5
  tail call void @tty_kref_put(ptr noundef %63) #5
  %65 = getelementptr %struct.task_struct, ptr %56, i32 0, i32 63, i32 3
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  %68 = getelementptr i8, ptr %66, i32 -1372
  %69 = icmp eq ptr %68, null
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %55

71:                                               ; preds = %55, %48, %45, %39
  %72 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %77, label %78, label %84

78:                                               ; preds = %76, %71
  %79 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 94
  %80 = load ptr, ptr %79, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %80) #5
  tail call fastcc void @__proc_set_tty(ptr noundef %1) #5
  %81 = load ptr, ptr %79, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %82 = load i16, ptr %81, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %84

84:                                               ; preds = %78, %76, %43, %41, %35, %29, %22
  %85 = phi i32 [ 0, %29 ], [ 0, %78 ], [ -1, %35 ], [ -1, %43 ], [ -1, %41 ], [ -1, %76 ], [ -1, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !16
  %86 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !17
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  br label %90

90:                                               ; preds = %89, %84
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  tail call void @tty_unlock(ptr noundef %1) #5
  br label %197

91:                                               ; preds = %5
  %92 = icmp eq ptr %0, %1
  br i1 %92, label %93, label %100

93:                                               ; preds = %91
  %94 = tail call ptr @llvm.thread.pointer() #5
  %95 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 93
  %96 = load ptr, ptr %95, align 16
  %97 = getelementptr inbounds %struct.signal_struct, ptr %96, i32 0, i32 25
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, %0
  br i1 %99, label %100, label %197

100:                                              ; preds = %93, %91
  %101 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20
  %102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %101) #5
  %103 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %100
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %104) #5, !srcloc !16
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %104, ptr nonnull %104, i32 1, ptr nonnull elementtype(i32) %104) #5, !srcloc !19
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110, !prof !20

110:                                              ; preds = %106
  %111 = add i32 %108, 1
  %112 = or i32 %111, %108
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %116, label %114, !prof !21

114:                                              ; preds = %110, %106
  %115 = phi i32 [ 2, %106 ], [ 1, %110 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %104, i32 noundef %115) #5
  br label %116

116:                                              ; preds = %114, %110, %100
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %101, i32 noundef %102) #5
  %117 = tail call i32 @pid_vnr(ptr noundef %104) #5
  %118 = tail call ptr @llvm.thread.pointer() #5
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 3
  %120 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %119) #7, !srcloc !23
  %121 = and i32 %120, -13
  %122 = or i32 %121, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #5, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !25
  %123 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %117, i32 -1090519041) #5, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #5, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !25
  tail call void @put_pid(ptr noundef %104) #5
  br label %197

124:                                              ; preds = %5
  %125 = tail call i32 @__tty_check_change(ptr noundef %1, i32 noundef 22) #5
  switch i32 %125, label %126 [
    i32 -5, label %197
    i32 0, label %127
  ]

126:                                              ; preds = %124
  br label %197

127:                                              ; preds = %124
  %128 = tail call ptr @llvm.thread.pointer() #5
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 3
  %130 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %129) #7, !srcloc !23
  %131 = and i32 %130, -13
  %132 = or i32 %131, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #5, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !25
  %133 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #5, !srcloc !27
  %134 = extractvalue { i32, i32 } %133, 0
  %135 = extractvalue { i32, i32 } %133, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #5, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !25
  %136 = icmp eq i32 %134, 0
  br i1 %136, label %137, label %197

137:                                              ; preds = %127
  %138 = icmp slt i32 %135, 0
  br i1 %138, label %197, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %140) #5
  %141 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 93
  %142 = load ptr, ptr %141, align 16
  %143 = getelementptr inbounds %struct.signal_struct, ptr %142, i32 0, i32 25
  %144 = load ptr, ptr %143, align 8
  %145 = icmp ne ptr %144, null
  %146 = icmp eq ptr %144, %1
  %147 = and i1 %145, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr %struct.signal_struct, ptr %142, i32 0, i32 22, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %150, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %155 = tail call ptr @find_vpid(i32 noundef %135) #5
  %156 = icmp eq ptr %155, null
  br i1 %156, label %167, label %157

157:                                              ; preds = %154
  %158 = tail call fastcc ptr @session_of_pgrp(ptr noundef nonnull %155) #5
  %159 = load ptr, ptr %141, align 16
  %160 = getelementptr %struct.signal_struct, ptr %159, i32 0, i32 22, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 1
  %165 = load ptr, ptr %164, align 4
  tail call void @put_pid(ptr noundef %165) #5
  %166 = tail call fastcc ptr @get_pid(ptr noundef nonnull %155) #5
  store ptr %155, ptr %164, align 4
  br label %167

167:                                              ; preds = %163, %157, %154
  %168 = phi i32 [ -1, %157 ], [ 0, %163 ], [ -3, %154 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %169

169:                                              ; preds = %167, %148, %139
  %170 = phi i32 [ %168, %167 ], [ -25, %148 ], [ -25, %139 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %171 = load i16, ptr %140, align 4
  %172 = add i16 %171, 1
  store i16 %172, ptr %140, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %197

173:                                              ; preds = %5
  %174 = icmp eq ptr %0, %1
  br i1 %174, label %175, label %182

175:                                              ; preds = %173
  %176 = tail call ptr @llvm.thread.pointer() #5
  %177 = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 93
  %178 = load ptr, ptr %177, align 16
  %179 = getelementptr inbounds %struct.signal_struct, ptr %178, i32 0, i32 25
  %180 = load ptr, ptr %179, align 8
  %181 = icmp eq ptr %180, %0
  br i1 %181, label %182, label %197

182:                                              ; preds = %175, %173
  %183 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20
  %184 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %183) #5
  %185 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 20, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %196, label %188

188:                                              ; preds = %182
  %189 = tail call i32 @pid_vnr(ptr noundef nonnull %186) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %183, i32 noundef %184) #5
  %190 = tail call ptr @llvm.thread.pointer() #5
  %191 = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 3
  %192 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %191) #7, !srcloc !23
  %193 = and i32 %192, -13
  %194 = or i32 %193, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #5, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !25
  %195 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %189, i32 -1090519041) #5, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %192) #5, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !25
  br label %197

196:                                              ; preds = %182
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %183, i32 noundef %184) #5
  br label %197

197:                                              ; preds = %196, %188, %175, %169, %137, %127, %126, %124, %116, %93, %90, %14, %7, %5
  %198 = phi i32 [ %85, %90 ], [ 0, %14 ], [ -25, %7 ], [ -515, %5 ], [ %123, %116 ], [ -25, %93 ], [ %125, %126 ], [ %170, %169 ], [ -25, %124 ], [ -14, %127 ], [ -22, %137 ], [ %195, %188 ], [ -25, %196 ], [ -25, %175 ]
  ret i32 %198
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @session_of_pgrp(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @pid_task(ptr noundef %0, i32 noundef 2) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call ptr @pid_task(ptr noundef %0, i32 noundef 0) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi ptr [ %12, %7 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readonly }

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
!8 = !{i64 2148939131}
!9 = !{i64 2148939348}
!10 = !{i64 2149245460}
!11 = !{i64 2149241284}
!12 = !{i64 2149241359, i64 2149241386, i64 2149241433, i64 2149241455, i64 2149241483, i64 2149241503}
!13 = !{i64 545716}
!14 = !{i64 2149269604}
!15 = !{i64 2149253342}
!16 = !{i64 639793, i64 2148129764, i64 2148129790, i64 2148129837, i64 2148129859, i64 2148129887, i64 2148129907}
!17 = !{i64 1756766, i64 1756789, i64 1756809, i64 1756833, i64 1756849}
!18 = !{i64 2149290945}
!19 = !{i64 2148142637, i64 2148142669, i64 2148142698, i64 2148142732, i64 2148142763, i64 2148142786}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149268463}
!23 = !{i64 2468189}
!24 = !{i64 2468386}
!25 = !{i64 2149953665}
!26 = !{i64 2152079849, i64 2152080129, i64 2152080463, i64 2152080797}
!27 = !{i64 2152091016, i64 2152091296, i64 2152091630, i64 2152091964}
!28 = !{i64 2152100353, i64 2152100633, i64 2152100967, i64 2152101301}
