; ModuleID = '/llk/IR/kernel/async.c_pt.bc'
source_filename = "../kernel/async.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_schedule_node_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22async_schedule_node_domain\22\09\09\09\09\09"
module asm "__kstrtabns_async_schedule_node_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_schedule_node:\09\09\09\09\09"
module asm "\09.asciz \09\22async_schedule_node\22\09\09\09\09\09"
module asm "__kstrtabns_async_schedule_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_synchronize_full:\09\09\09\09\09"
module asm "\09.asciz \09\22async_synchronize_full\22\09\09\09\09\09"
module asm "__kstrtabns_async_synchronize_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_synchronize_full_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22async_synchronize_full_domain\22\09\09\09\09\09"
module asm "__kstrtabns_async_synchronize_full_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_synchronize_cookie_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22async_synchronize_cookie_domain\22\09\09\09\09\09"
module asm "__kstrtabns_async_synchronize_cookie_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_synchronize_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22async_synchronize_cookie\22\09\09\09\09\09"
module asm "__kstrtabns_async_synchronize_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_current_is_async:\09\09\09\09\09"
module asm "\09.asciz \09\22current_is_async\22\09\09\09\09\09"
module asm "__kstrtabns_current_is_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.async_entry = type { %struct.list_head, %struct.list_head, %struct.work_struct, i64, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.worker = type { %union.anon.1, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.list_head, i32, i32, i32, i32, [24 x i8], ptr, ptr }
%union.anon.1 = type { %struct.list_head }

@entry_count = internal global %struct.atomic_t zeroinitializer, align 4
@async_lock = internal global %struct.spinlock zeroinitializer, align 4
@next_cookie = internal unnamed_addr global i64 1, align 8
@async_global_pending = internal global %struct.list_head { ptr @async_global_pending, ptr @async_global_pending }, align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_async_schedule_node_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_schedule_node_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_async_schedule_node_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_schedule_node_domain to i32), ptr @__kstrtab_async_schedule_node_domain, ptr @__kstrtabns_async_schedule_node_domain }, section "___ksymtab_gpl+async_schedule_node_domain", align 4
@async_dfl_domain = internal global %struct.async_domain { %struct.list_head { ptr @async_dfl_domain, ptr @async_dfl_domain }, i8 1 }, align 4
@__kstrtab_async_schedule_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_schedule_node = external dso_local constant [0 x i8], align 1
@__ksymtab_async_schedule_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_schedule_node to i32), ptr @__kstrtab_async_schedule_node, ptr @__kstrtabns_async_schedule_node }, section "___ksymtab_gpl+async_schedule_node", align 4
@__kstrtab_async_synchronize_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_synchronize_full = external dso_local constant [0 x i8], align 1
@__ksymtab_async_synchronize_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_synchronize_full to i32), ptr @__kstrtab_async_synchronize_full, ptr @__kstrtabns_async_synchronize_full }, section "___ksymtab_gpl+async_synchronize_full", align 4
@__kstrtab_async_synchronize_full_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_synchronize_full_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_async_synchronize_full_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_synchronize_full_domain to i32), ptr @__kstrtab_async_synchronize_full_domain, ptr @__kstrtabns_async_synchronize_full_domain }, section "___ksymtab_gpl+async_synchronize_full_domain", align 4
@async_done = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @async_done, i64 4), ptr getelementptr (i8, ptr @async_done, i64 4) } }, align 4
@__kstrtab_async_synchronize_cookie_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_synchronize_cookie_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_async_synchronize_cookie_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_synchronize_cookie_domain to i32), ptr @__kstrtab_async_synchronize_cookie_domain, ptr @__kstrtabns_async_synchronize_cookie_domain }, section "___ksymtab_gpl+async_synchronize_cookie_domain", align 4
@__kstrtab_async_synchronize_cookie = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_synchronize_cookie = external dso_local constant [0 x i8], align 1
@__ksymtab_async_synchronize_cookie = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_synchronize_cookie to i32), ptr @__kstrtab_async_synchronize_cookie, ptr @__kstrtabns_async_synchronize_cookie }, section "___ksymtab_gpl+async_synchronize_cookie", align 4
@__kstrtab_current_is_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_current_is_async = external dso_local constant [0 x i8], align 1
@__ksymtab_current_is_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @current_is_async to i32), ptr @__kstrtab_current_is_async, ptr @__kstrtabns_current_is_async }, section "___ksymtab_gpl+current_is_async", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_async_schedule_node, ptr @__ksymtab_async_schedule_node_domain, ptr @__ksymtab_async_synchronize_cookie, ptr @__ksymtab_async_synchronize_cookie_domain, ptr @__ksymtab_async_synchronize_full, ptr @__ksymtab_async_synchronize_full_domain, ptr @__ksymtab_current_is_async], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @async_schedule_node_domain(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 56) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load volatile i32, ptr @entry_count, align 4
  %10 = icmp sgt i32 %9, 32768
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %4
  tail call void @kfree(ptr noundef %6) #7
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @async_lock) #7
  %13 = load i64, ptr @next_cookie, align 8
  %14 = add i64 %13, 1
  store i64 %14, ptr @next_cookie, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @async_lock, i32 noundef %12) #7
  tail call void %0(ptr noundef %1, i64 noundef %13) #7
  br label %42

15:                                               ; preds = %8
  store volatile ptr %6, ptr %6, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 2
  store i32 -32, ptr %19, align 8
  %20 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 2, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 2, i32 1, i32 1
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 2, i32 2
  store ptr @async_run_entry_fn, ptr %22, align 4
  %23 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 4
  store ptr %0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 5
  store ptr %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 6
  store ptr %3, ptr %25, align 8
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @async_lock) #7
  %27 = load i64, ptr @next_cookie, align 8
  %28 = add i64 %27, 1
  store i64 %28, ptr @next_cookie, align 8
  %29 = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 3
  store i64 %27, ptr %29, align 8
  %30 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr %6, ptr %30, align 4
  store ptr %3, ptr %6, align 8
  store ptr %31, ptr %16, align 4
  store volatile ptr %6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.async_domain, ptr %3, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %15
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @async_global_pending, i32 0, i32 1), align 4
  store ptr %17, ptr getelementptr inbounds (%struct.list_head, ptr @async_global_pending, i32 0, i32 1), align 4
  store ptr @async_global_pending, ptr %17, align 8
  store ptr %37, ptr %18, align 4
  store volatile ptr %17, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @entry_count) #7, !srcloc !8
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @entry_count, ptr nonnull @entry_count, i32 1, ptr nonnull elementtype(i32) @entry_count) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @async_lock, i32 noundef %26) #7
  %40 = load ptr, ptr @system_unbound_wq, align 4
  %41 = tail call zeroext i1 @queue_work_node(i32 noundef %2, ptr noundef %40, ptr noundef %19) #7
  br label %42

42:                                               ; preds = %38, %11
  %43 = phi i64 [ %13, %11 ], [ %27, %38 ]
  ret i64 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_run_entry_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = tail call i64 @ktime_get() #7
  %4 = getelementptr i8, ptr %0, i32 24
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 16
  %9 = load i64, ptr %8, align 8
  tail call void %5(ptr noundef %7, i64 noundef %9) #7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @async_lock) #7
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %11, align 4
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %16, align 4
  tail call void @kfree(ptr noundef %2) #7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @entry_count) #7, !srcloc !8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @entry_count, ptr nonnull @entry_count, i32 1, ptr nonnull elementtype(i32) @entry_count) #7, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @async_lock, i32 noundef %10) #7
  tail call void @__wake_up(ptr noundef nonnull @async_done, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_node(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @async_schedule_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i64 @async_schedule_node_domain(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @async_dfl_domain)
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @async_synchronize_full() #0 {
  tail call void @async_synchronize_cookie_domain(i64 noundef -1, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @async_synchronize_full_domain(ptr noundef %0) #0 {
  tail call void @async_synchronize_cookie_domain(i64 noundef -1, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @async_synchronize_cookie_domain(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = tail call i64 @ktime_get() #7
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @async_lock) #7
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load volatile ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %18, label %15

10:                                               ; preds = %2
  %11 = load volatile ptr, ptr @async_global_pending, align 4
  %12 = icmp eq ptr %11, @async_global_pending
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 -8
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %8, %7 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %10, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @async_lock, i32 noundef %5) #7
  br label %45

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.async_entry, ptr %16, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @async_lock, i32 noundef %5) #7
  %22 = icmp ult i64 %21, %0
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #7
  br label %24

24:                                               ; preds = %43, %23
  %25 = call i32 @prepare_to_wait_event(ptr noundef nonnull @async_done, ptr noundef nonnull %3, i32 noundef 2) #7
  %26 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @async_lock) #7
  br i1 %6, label %30, label %27

27:                                               ; preds = %24
  %28 = load volatile ptr, ptr %1, align 4
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %38, label %35

30:                                               ; preds = %24
  %31 = load volatile ptr, ptr @async_global_pending, align 4
  %32 = icmp eq ptr %31, @async_global_pending
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %31, i32 -8
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %34, %33 ], [ %28, %27 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %30, %27
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @async_lock, i32 noundef %26) #7
  br label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.async_entry, ptr %36, i32 0, i32 3
  %41 = load i64, ptr %40, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @async_lock, i32 noundef %26) #7
  %42 = icmp ult i64 %41, %0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @schedule() #7
  br label %24

44:                                               ; preds = %39, %38
  call void @finish_wait(ptr noundef nonnull @async_done, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  br label %45

45:                                               ; preds = %44, %19, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @async_synchronize_cookie(i64 noundef %0) #0 {
  tail call void @async_synchronize_cookie_domain(i64 noundef %0, ptr noundef nonnull @async_dfl_domain)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @current_is_async() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #7
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 15728640
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 983040
  %7 = or i32 %6, %4
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 256
  %10 = or i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @kthread_data(ptr noundef %1) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.worker, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @async_run_entry_fn
  br label %24

24:                                               ; preds = %20, %17, %12, %0
  %25 = phi i1 [ false, %17 ], [ %23, %20 ], [ false, %12 ], [ false, %0 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
!8 = !{i64 586483, i64 2148088049, i64 2148088075, i64 2148088122, i64 2148088144, i64 2148088172, i64 2148088192}
!9 = !{i64 2148151311, i64 2148151337, i64 2148151366, i64 2148151400, i64 2148151431, i64 2148151454}
!10 = !{i64 2148153668, i64 2148153694, i64 2148153723, i64 2148153757, i64 2148153788, i64 2148153811}
!11 = !{!"auto-init"}
