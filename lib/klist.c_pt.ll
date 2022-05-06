; ModuleID = '/llk/IR/lib/klist.c_pt.bc'
source_filename = "../lib/klist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_init\22\09\09\09\09\09"
module asm "__kstrtabns_klist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_add_head:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_add_head\22\09\09\09\09\09"
module asm "__kstrtabns_klist_add_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_add_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_add_tail\22\09\09\09\09\09"
module asm "__kstrtabns_klist_add_tail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_add_behind:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_add_behind\22\09\09\09\09\09"
module asm "__kstrtabns_klist_add_behind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_add_before:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_add_before\22\09\09\09\09\09"
module asm "__kstrtabns_klist_add_before:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_del:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_del\22\09\09\09\09\09"
module asm "__kstrtabns_klist_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_remove\22\09\09\09\09\09"
module asm "__kstrtabns_klist_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_node_attached:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_node_attached\22\09\09\09\09\09"
module asm "__kstrtabns_klist_node_attached:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_iter_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_iter_init_node\22\09\09\09\09\09"
module asm "__kstrtabns_klist_iter_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_iter_init\22\09\09\09\09\09"
module asm "__kstrtabns_klist_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_iter_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_iter_exit\22\09\09\09\09\09"
module asm "__kstrtabns_klist_iter_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_prev:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_prev\22\09\09\09\09\09"
module asm "__kstrtabns_klist_prev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_klist_next:\09\09\09\09\09"
module asm "\09.asciz \09\22klist_next\22\09\09\09\09\09"
module asm "__kstrtabns_klist_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.klist_waiter = type { %struct.list_head, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.20, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.klist_iter = type { ptr, ptr }

@__kstrtab_klist_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_init = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_init to i32), ptr @__kstrtab_klist_init, ptr @__kstrtabns_klist_init }, section "___ksymtab_gpl+klist_init", align 4
@__kstrtab_klist_add_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_add_head = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_add_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_add_head to i32), ptr @__kstrtab_klist_add_head, ptr @__kstrtabns_klist_add_head }, section "___ksymtab_gpl+klist_add_head", align 4
@__kstrtab_klist_add_tail = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_add_tail = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_add_tail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_add_tail to i32), ptr @__kstrtab_klist_add_tail, ptr @__kstrtabns_klist_add_tail }, section "___ksymtab_gpl+klist_add_tail", align 4
@__kstrtab_klist_add_behind = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_add_behind = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_add_behind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_add_behind to i32), ptr @__kstrtab_klist_add_behind, ptr @__kstrtabns_klist_add_behind }, section "___ksymtab_gpl+klist_add_behind", align 4
@__kstrtab_klist_add_before = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_add_before = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_add_before = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_add_before to i32), ptr @__kstrtab_klist_add_before, ptr @__kstrtabns_klist_add_before }, section "___ksymtab_gpl+klist_add_before", align 4
@__kstrtab_klist_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_del = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_del to i32), ptr @__kstrtab_klist_del, ptr @__kstrtabns_klist_del }, section "___ksymtab_gpl+klist_del", align 4
@klist_remove_lock = internal global %struct.spinlock zeroinitializer, align 4
@klist_remove_waiters = internal global %struct.list_head { ptr @klist_remove_waiters, ptr @klist_remove_waiters }, align 4
@__kstrtab_klist_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_remove to i32), ptr @__kstrtab_klist_remove, ptr @__kstrtabns_klist_remove }, section "___ksymtab_gpl+klist_remove", align 4
@__kstrtab_klist_node_attached = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_node_attached = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_node_attached = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_node_attached to i32), ptr @__kstrtab_klist_node_attached, ptr @__kstrtabns_klist_node_attached }, section "___ksymtab_gpl+klist_node_attached", align 4
@__kstrtab_klist_iter_init_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_iter_init_node = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_iter_init_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_iter_init_node to i32), ptr @__kstrtab_klist_iter_init_node, ptr @__kstrtabns_klist_iter_init_node }, section "___ksymtab_gpl+klist_iter_init_node", align 4
@__kstrtab_klist_iter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_iter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_iter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_iter_init to i32), ptr @__kstrtab_klist_iter_init, ptr @__kstrtabns_klist_iter_init }, section "___ksymtab_gpl+klist_iter_init", align 4
@__kstrtab_klist_iter_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_iter_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_iter_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_iter_exit to i32), ptr @__kstrtab_klist_iter_exit, ptr @__kstrtabns_klist_iter_exit }, section "___ksymtab_gpl+klist_iter_exit", align 4
@__kstrtab_klist_prev = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_prev = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_prev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_prev to i32), ptr @__kstrtab_klist_prev, ptr @__kstrtabns_klist_prev }, section "___ksymtab_gpl+klist_prev", align 4
@__kstrtab_klist_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_klist_next = external dso_local constant [0 x i8], align 1
@__ksymtab_klist_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @klist_next to i32), ptr @__kstrtab_klist_next, ptr @__kstrtabns_klist_next }, section "___ksymtab_gpl+klist_next", align 4
@.str = private unnamed_addr constant [12 x i8] c"lib/klist.c\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_klist_add_before, ptr @__ksymtab_klist_add_behind, ptr @__ksymtab_klist_add_head, ptr @__ksymtab_klist_add_tail, ptr @__ksymtab_klist_del, ptr @__ksymtab_klist_init, ptr @__ksymtab_klist_iter_exit, ptr @__ksymtab_klist_iter_init, ptr @__ksymtab_klist_iter_init_node, ptr @__ksymtab_klist_next, ptr @__ksymtab_klist_node_attached, ptr @__ksymtab_klist_prev, ptr @__ksymtab_klist_remove], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.klist, ptr %0, i32 0, i32 1
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.klist, ptr %0, i32 0, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  store i32 0, ptr %0, align 4
  %6 = getelementptr inbounds %struct.klist, ptr %0, i32 0, i32 2
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.klist, ptr %0, i32 0, i32 3
  store ptr %2, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_add_head(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 2
  store volatile i32 1, ptr %5, align 4
  store ptr %1, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0) #7
  br label %15

15:                                               ; preds = %14, %10
  tail call void @_raw_spin_lock(ptr noundef %1) #7
  %16 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %3, ptr %18, align 4
  store ptr %17, ptr %3, align 4
  store ptr %16, ptr %4, align 4
  store volatile ptr %3, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %19 = load i16, ptr %1, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_add_tail(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 2
  store volatile i32 1, ptr %5, align 4
  store ptr %1, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0) #7
  br label %15

15:                                               ; preds = %14, %10
  tail call void @_raw_spin_lock(ptr noundef %1) #7
  %16 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %3, ptr %17, align 4
  store ptr %16, ptr %3, align 4
  store ptr %18, ptr %4, align 4
  store volatile ptr %3, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %19 = load i16, ptr %1, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_add_behind(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 2
  store volatile i32 1, ptr %9, align 4
  store ptr %6, ptr %0, align 4
  %10 = getelementptr inbounds %struct.klist, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %13, %2
  tail call void @_raw_spin_lock(ptr noundef %6) #7
  %15 = getelementptr inbounds %struct.klist_node, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %7, ptr %17, align 4
  store ptr %16, ptr %7, align 4
  store ptr %15, ptr %8, align 4
  store volatile ptr %7, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %18 = load i16, ptr %6, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_add_before(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 2
  store volatile i32 1, ptr %9, align 4
  store ptr %6, ptr %0, align 4
  %10 = getelementptr inbounds %struct.klist, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %13, %2
  tail call void @_raw_spin_lock(ptr noundef %6) #7
  %15 = getelementptr inbounds %struct.klist_node, ptr %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.klist_node, ptr %1, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %7, ptr %16, align 4
  store ptr %15, ptr %7, align 4
  store ptr %17, ptr %8, align 4
  store volatile ptr %7, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %18 = load i16, ptr %6, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_del(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = and i32 %3, -2
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.klist, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef %5) #7
  %8 = load ptr, ptr %0, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #7
  %13 = load i32, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ %9, %1 ]
  %16 = or i32 %15, 1
  store i32 %16, ptr %0, align 4
  %17 = tail call fastcc i32 @klist_dec_and_del(ptr noundef %0) #7
  %18 = icmp eq i32 %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %21 = icmp eq ptr %7, null
  %22 = select i1 %18, i1 true, i1 %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void %7(ptr noundef %0) #7
  br label %24

24:                                               ; preds = %23, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_remove(ptr noundef %0) #1 {
  %2 = alloca %struct.klist_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.klist_waiter, ptr %2, i32 0, i32 1
  store ptr %0, ptr %3, align 4
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.klist_waiter, ptr %2, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.klist_waiter, ptr %2, i32 0, i32 3
  store i32 0, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @klist_remove_lock) #7
  %7 = load ptr, ptr @klist_remove_waiters, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  store ptr %7, ptr %2, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr @klist_remove_waiters, ptr %9, align 4
  store volatile ptr %2, ptr @klist_remove_waiters, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %10 = load i16, ptr @klist_remove_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @klist_remove_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %12 = load ptr, ptr %0, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, -2
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.klist, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  call void @_raw_spin_lock(ptr noundef %15) #7
  %18 = load ptr, ptr %0, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #7
  %23 = load i32, ptr %0, align 4
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi i32 [ %23, %22 ], [ %19, %1 ]
  %26 = or i32 %25, 1
  store i32 %26, ptr %0, align 4
  %27 = call fastcc i32 @klist_dec_and_del(ptr noundef %0) #7
  %28 = icmp eq i32 %27, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %29 = load i16, ptr %15, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %31 = icmp eq ptr %17, null
  %32 = select i1 %28, i1 true, i1 %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  call void %17(ptr noundef %0) #7
  br label %34

34:                                               ; preds = %33, %24
  %35 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 2, ptr %35, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %36 = load i32, ptr %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %38, %34
  call void @schedule() #7
  store volatile i32 2, ptr %35, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %39 = load i32, ptr %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %38, label %41

41:                                               ; preds = %38, %34
  store volatile i32 0, ptr %35, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @klist_node_attached(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_iter_init_node(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #1 {
  store ptr %0, ptr %1, align 4
  %4 = getelementptr inbounds %struct.klist_iter, ptr %1, i32 0, i32 1
  store ptr null, ptr %4, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.klist_node, ptr %2, i32 0, i32 2
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %20, %6
  %11 = phi i32 [ %18, %20 ], [ %8, %6 ]
  %12 = add i32 %11, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !14
  br label %13

13:                                               ; preds = %13, %10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %11, i32 %12, ptr elementtype(i32) %7) #7, !srcloc !15
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %10

22:                                               ; preds = %20, %17, %6
  %23 = phi i32 [ 0, %6 ], [ %11, %17 ], [ 0, %20 ]
  %24 = add i32 %23, 1
  %25 = or i32 %24, %23
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 0) #7
  br label %28

28:                                               ; preds = %27, %22
  %29 = icmp eq i32 %23, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  store ptr %2, ptr %4, align 4
  br label %31

31:                                               ; preds = %30, %28, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @klist_iter_init(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  store ptr %0, ptr %1, align 4
  %3 = getelementptr inbounds %struct.klist_iter, ptr %1, i32 0, i32 1
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @klist_iter_exit(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.klist_iter, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = and i32 %7, -2
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.klist, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @_raw_spin_lock(ptr noundef %9) #7
  %12 = tail call fastcc i32 @klist_dec_and_del(ptr noundef nonnull %3) #7
  %13 = icmp eq i32 %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %14 = load i16, ptr %9, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %16 = icmp eq ptr %11, null
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  tail call void %11(ptr noundef nonnull %3) #7
  br label %19

19:                                               ; preds = %18, %5
  store ptr null, ptr %2, align 4
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @klist_prev(ptr nocapture noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.klist, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.klist_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %8 = icmp ne ptr %6, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.klist_node, ptr %6, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc i32 @klist_dec_and_del(ptr noundef nonnull %6)
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr null, ptr %4
  %15 = load ptr, ptr %0, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.klist, ptr %17, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi ptr [ %17, %16 ], [ %15, %9 ]
  %22 = phi ptr [ %19, %16 ], [ %11, %9 ]
  %23 = phi ptr [ %4, %16 ], [ %14, %9 ]
  store ptr null, ptr %5, align 4
  %24 = getelementptr i8, ptr %22, i32 -4
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %51, label %26

26:                                               ; preds = %46, %20
  %27 = phi ptr [ %49, %46 ], [ %24, %20 ]
  %28 = phi ptr [ %48, %46 ], [ %22, %20 ]
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46, !prof !8

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #7, !srcloc !14
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #7, !srcloc !16
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !17

38:                                               ; preds = %33
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !8

42:                                               ; preds = %38, %33
  %43 = phi i32 [ 2, %33 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef %43) #7
  br label %44

44:                                               ; preds = %42, %38
  store ptr %27, ptr %5, align 4
  %45 = load ptr, ptr %0, align 4
  br label %51

46:                                               ; preds = %26
  %47 = getelementptr i8, ptr %28, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 -4
  %50 = icmp eq ptr %49, %21
  br i1 %50, label %51, label %26

51:                                               ; preds = %46, %44, %20
  %52 = phi ptr [ %21, %20 ], [ %45, %44 ], [ %21, %46 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %7) #7
  %53 = icmp ne ptr %23, null
  %54 = select i1 %53, i1 %8, i1 false
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void %23(ptr noundef nonnull %6) #7
  br label %56

56:                                               ; preds = %55, %51
  %57 = load ptr, ptr %5, align 4
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @klist_dec_and_del(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #7, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %42, label %8, !prof !8

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #7
  br label %42

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %10 = load ptr, ptr %0, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !17

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr %struct.klist_node, ptr %0, i32 0, i32 1
  %17 = getelementptr %struct.klist_node, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @klist_remove_lock) #7
  %21 = load ptr, ptr @klist_remove_waiters, align 4
  %22 = icmp eq ptr %21, @klist_remove_waiters
  br i1 %22, label %39, label %23

23:                                               ; preds = %37, %15
  %24 = phi ptr [ %25, %37 ], [ %21, %15 ]
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.klist_waiter, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %25, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %33 = getelementptr inbounds %struct.klist_waiter, ptr %24, i32 0, i32 3
  store i32 1, ptr %33, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %34 = getelementptr inbounds %struct.klist_waiter, ptr %24, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @wake_up_process(ptr noundef %35) #7
  br label %37

37:                                               ; preds = %29, %23
  %38 = icmp eq ptr %25, @klist_remove_waiters
  br i1 %38, label %39, label %23

39:                                               ; preds = %37, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %40 = load i16, ptr @klist_remove_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @klist_remove_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  store ptr null, ptr %0, align 4
  br label %42

42:                                               ; preds = %39, %8, %6
  %43 = phi i32 [ 1, %39 ], [ 0, %6 ], [ 0, %8 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @klist_next(ptr nocapture noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.klist, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.klist_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  %8 = icmp ne ptr %6, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.klist_node, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc i32 @klist_dec_and_del(ptr noundef nonnull %6)
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr null, ptr %4
  %15 = load ptr, ptr %0, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.klist, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi ptr [ %17, %16 ], [ %15, %9 ]
  %22 = phi ptr [ %19, %16 ], [ %11, %9 ]
  %23 = phi ptr [ %4, %16 ], [ %14, %9 ]
  store ptr null, ptr %5, align 4
  %24 = getelementptr i8, ptr %22, i32 -4
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %50, label %26

26:                                               ; preds = %46, %20
  %27 = phi ptr [ %48, %46 ], [ %24, %20 ]
  %28 = phi ptr [ %47, %46 ], [ %22, %20 ]
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46, !prof !8

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #7, !srcloc !14
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #7, !srcloc !16
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !17

38:                                               ; preds = %33
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !8

42:                                               ; preds = %38, %33
  %43 = phi i32 [ 2, %33 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef %43) #7
  br label %44

44:                                               ; preds = %42, %38
  store ptr %27, ptr %5, align 4
  %45 = load ptr, ptr %0, align 4
  br label %50

46:                                               ; preds = %26
  %47 = load ptr, ptr %28, align 4
  %48 = getelementptr i8, ptr %47, i32 -4
  %49 = icmp eq ptr %48, %21
  br i1 %49, label %50, label %26

50:                                               ; preds = %46, %44, %20
  %51 = phi ptr [ %21, %20 ], [ %45, %44 ], [ %21, %46 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %7) #7
  %52 = icmp ne ptr %23, null
  %53 = select i1 %52, i1 %8, i1 false
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void %23(ptr noundef nonnull %6) #7
  br label %55

55:                                               ; preds = %54, %50
  %56 = load ptr, ptr %5, align 4
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148831762}
!10 = !{i64 2148827586}
!11 = !{i64 2148827661, i64 2148827688, i64 2148827735, i64 2148827757, i64 2148827785, i64 2148827805}
!12 = !{i64 2148854765}
!13 = !{i64 2149888433}
!14 = !{i64 663158, i64 2148153129, i64 2148153155, i64 2148153202, i64 2148153224, i64 2148153252, i64 2148153272}
!15 = !{i64 649221, i64 649245, i64 649266, i64 649283, i64 649300}
!16 = !{i64 2148166002, i64 2148166034, i64 2148166063, i64 2148166097, i64 2148166128, i64 2148166151}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2148266224}
!19 = !{i64 2148168359, i64 2148168391, i64 2148168420, i64 2148168454, i64 2148168485, i64 2148168508}
!20 = !{i64 2148902906}
!21 = !{i64 2149884481}
