; ModuleID = '/llk/IR/arch/arm/kernel/traps.c_pt.bc'
source_filename = "../arch/arm/kernel/traps.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___readwrite_bug:\09\09\09\09\09"
module asm "\09.asciz \09\22__readwrite_bug\22\09\09\09\09\09"
module asm "__kstrtabns___readwrite_bug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___div0:\09\09\09\09\09"
module asm "\09.asciz \09\22__div0\22\09\09\09\09\09"
module asm "__kstrtabns___div0:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [17 x i8] c"%s %ps from %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Exception stack\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" r%d:%08x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Oops - BUG\00", align 1
@undef_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@undef_hook = internal global %struct.list_head { ptr @undef_hook, ptr @undef_hook }, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Oops - undefined instruction\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\012Bad mode in %s handler detected\0A\00", align 1
@handler = internal unnamed_addr constant [5 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Oops - bad mode\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bad mode\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"branch through zero\00", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"Oops - bad syscall(2)\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"unknown data abort code\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\013%s called, but not implemented\0A\00", align 1
@__kstrtab___readwrite_bug = external dso_local constant [0 x i8], align 1
@__kstrtabns___readwrite_bug = external dso_local constant [0 x i8], align 1
@__ksymtab___readwrite_bug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__readwrite_bug to i32), ptr @__kstrtab___readwrite_bug, ptr @__kstrtabns___readwrite_bug }, section "___ksymtab+__readwrite_bug", align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"\013%s:%d: bad pte %08llx.\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"\013%s:%d: bad pmd %08llx.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\013%s:%d: bad pgd %08llx.\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"\013Division by zero in kernel.\0A\00", align 1
@__kstrtab___div0 = external dso_local constant [0 x i8], align 1
@__kstrtabns___div0 = external dso_local constant [0 x i8], align 1
@__ksymtab___div0 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__div0 to i32), ptr @__kstrtab___div0, ptr @__kstrtabns___div0 }, section "___ksymtab+__div0", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [62 x i8] c"\013CPU%u: Spectre BHB workaround too late - system vulnerable\0A\00", align 1
@__vectors_bhb_loop8_start = external dso_local global [0 x i8], align 1
@__vectors_bhb_loop8_end = external dso_local global [0 x i8], align 1
@__vectors_bhb_bpiall_start = external dso_local global [0 x i8], align 1
@__vectors_bhb_bpiall_end = external dso_local global [0 x i8], align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"\013CPU%u: unknown Spectre BHB state %d\0A\00", align 1
@vectors_page = dso_local local_unnamed_addr global ptr null, align 4
@__vectors_start = external dso_local global [0 x i8], align 1
@__vectors_end = external dso_local global [0 x i8], align 1
@__stubs_start = external dso_local global [0 x i8], align 1
@__stubs_end = external dso_local global [0 x i8], align 1
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"%s%s(0x%08lx to 0x%08lx)\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" %08lx\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c" ????????\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%s%04lx:%s\0A\00", align 1
@die_lock = internal global %struct.arch_spinlock_t zeroinitializer, align 4
@die_owner = internal unnamed_addr global i32 -1, align 4
@die_nest_count = internal unnamed_addr global i32 0, align 4
@__die.die_counter = internal unnamed_addr global i32 0, align 4
@.str.24 = private unnamed_addr constant [40 x i8] c"\010Internal error: %s: %x [#%d] SMP ARM\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"\010Process %.*s (pid: %d, stack limit = 0x%p)\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Stack: \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"(%0*x) \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%0*x \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"bad PC value\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"%sCode: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = external dso_local local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [16 x i8] c"Fatal exception\00", align 1
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@.str.36 = private unnamed_addr constant [15 x i8] c"prefetch abort\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"data abort\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"address exception\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"undefined instruction\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"Oops - bad syscall\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__kuser_helper_end = external dso_local global [0 x i8], align 1
@__kuser_helper_start = external dso_local global [0 x i8], align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab___div0, ptr @__ksymtab___readwrite_bug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_backtrace_entry(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %2, 4
  %6 = add i32 %2, 76
  %7 = inttoptr i32 %0 to ptr
  %8 = inttoptr i32 %1 to ptr
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %7, ptr noundef %8) #14
  %10 = icmp uge ptr %8, @__entry_text_start
  %11 = getelementptr i8, ptr %8, i32 1
  %12 = icmp ule ptr %11, @__entry_text_end
  %13 = and i1 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = add i32 %2, 8191
  %16 = and i32 %15, -8192
  %17 = icmp ugt i32 %6, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @dump_mem(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %6)
  br label %19

19:                                               ; preds = %18, %14, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dump_mem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [81 x i8], align 1
  %6 = alloca i32, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #14
  %8 = and i32 %2, -32
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %40

10:                                               ; preds = %4
  %11 = getelementptr inbounds [81 x i8], ptr %5, i32 0, i32 80
  br label %12

12:                                               ; preds = %35, %10
  %13 = phi i32 [ %8, %10 ], [ %38, %35 ]
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(81) %5, i8 32, i32 80, i1 false)
  store i8 0, ptr %11, align 1
  br label %14

14:                                               ; preds = %29, %12
  %15 = phi i32 [ %30, %29 ], [ 0, %12 ]
  %16 = phi i32 [ %31, %29 ], [ %13, %12 ]
  %17 = icmp ult i32 %16, %2
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !9
  %19 = inttoptr i32 %16 to ptr
  %20 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %6, ptr noundef %19, i32 noundef 4) #15
  %21 = icmp eq i32 %20, 0
  %22 = mul nuw nsw i32 %15, 9
  %23 = getelementptr i8, ptr %5, i32 %22
  br i1 %21, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, ptr %6, align 4
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %23, ptr noundef nonnull @.str.21, i32 noundef %25)
  br label %28

27:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %23, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i32 10, i1 false)
  br label %28

28:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %29

29:                                               ; preds = %28, %14
  %30 = add nuw nsw i32 %15, 1
  %31 = add i32 %16, 4
  %32 = icmp ult i32 %15, 7
  %33 = icmp ult i32 %31, %3
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %14, label %35

35:                                               ; preds = %29
  %36 = and i32 %13, 65504
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %0, i32 noundef %36, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %5) #15
  %38 = add i32 %13, 32
  %39 = icmp ult i32 %38, %3
  br i1 %39, label %12, label %40

40:                                               ; preds = %35, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_backtrace_stm(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !9
  br label %5

5:                                                ; preds = %22, %3
  %6 = phi ptr [ %0, %3 ], [ %25, %22 ]
  %7 = phi ptr [ %4, %3 ], [ %24, %22 ]
  %8 = phi i32 [ 10, %3 ], [ %26, %22 ]
  %9 = phi i32 [ 0, %3 ], [ %23, %22 ]
  %10 = shl nuw i32 1, %8
  %11 = and i32 %10, %1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %5
  %14 = getelementptr i32, ptr %6, i32 -1
  %15 = load i32, ptr %6, align 4
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %8, i32 noundef %15)
  %17 = getelementptr i8, ptr %7, i32 %16
  %18 = add i32 %9, 1
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %2, ptr noundef nonnull %4) #14
  br label %22

22:                                               ; preds = %20, %13, %5
  %23 = phi i32 [ 0, %20 ], [ %18, %13 ], [ %9, %5 ]
  %24 = phi ptr [ %4, %20 ], [ %17, %13 ], [ %7, %5 ]
  %25 = phi ptr [ %14, %20 ], [ %14, %13 ], [ %6, %5 ]
  %26 = add nsw i32 %8, -1
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %5

28:                                               ; preds = %22
  %29 = icmp eq ptr %24, %4
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %2, ptr noundef nonnull %4) #14
  br label %32

32:                                               ; preds = %30, %28
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_stack(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @unwind_backtrace(ptr noundef null, ptr noundef %0, ptr noundef %2) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @die(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [53 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  tail call void @oops_enter() #15
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !11
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @die_lock) #15, !srcloc !12
  br label %11

11:                                               ; preds = %11, %3
  %12 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @die_lock, i32 65536) #15, !srcloc !13
  %13 = extractvalue { i32, i32, i32 } %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32, i32 } %12, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  br label %33

19:                                               ; preds = %15
  %20 = load i32, ptr @die_owner, align 4
  %21 = icmp eq i32 %10, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @die_lock) #15, !srcloc !12
  %23 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @die_lock, i32 65536) #15, !srcloc !15
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = lshr i32 %24, 16
  %26 = and i32 %24, 65535
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %22
  tail call void asm sideeffect "wfe", "~{memory}"() #15, !srcloc !16
  %29 = load volatile i16, ptr @die_lock, align 4
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  br label %33

33:                                               ; preds = %32, %19, %18
  %34 = load i32, ptr @die_nest_count, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr @die_nest_count, align 4
  store i32 %10, ptr @die_owner, align 4
  tail call void @console_verbose() #15
  tail call void @bust_spinlocks(i32 noundef 1) #15
  %36 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @report_bug(i32 noundef %42, ptr noundef %1) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi ptr [ %0, %45 ], [ @.str.4, %40 ]
  %48 = load i32, ptr @__die.die_counter, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr @__die.die_counter, align 4
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %47, i32 noundef %2, i32 noundef %49) #14
  %51 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 152, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @notify_die(i32 noundef 1, ptr noundef %47, ptr noundef %1, i32 noundef %2, i32 noundef %52, i32 noundef 11) #15
  %54 = icmp eq i32 %53, 32769
  br i1 %54, label %140, label %55

55:                                               ; preds = %46
  tail call void @print_modules() #15
  tail call void @__show_regs(ptr noundef %1) #15
  tail call void @__show_regs_alloc_free(ptr noundef %1) #15
  %56 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 85
  %57 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 52
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 16, ptr noundef %56, i32 noundef %58, ptr noundef %60) #14
  %62 = load i32, ptr %36, align 4
  %63 = and i32 %62, 15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 15728640
  %69 = load volatile i32, ptr %66, align 4
  %70 = and i32 %69, 983040
  %71 = or i32 %70, %68
  %72 = load volatile i32, ptr %66, align 4
  %73 = and i32 %72, 65280
  %74 = or i32 %71, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %140, label %76

76:                                               ; preds = %65, %55
  %77 = getelementptr [18 x i32], ptr %1, i32 0, i32 13
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %59, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = add i32 %80, 8192
  tail call fastcc void @dump_mem(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %78, i32 noundef %81) #15
  tail call void @unwind_backtrace(ptr noundef %1, ptr noundef %8, ptr noundef nonnull @.str.26) #15
  %82 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %36, align 4
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 8, i32 4
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(53) %4, i8 0, i32 53, i1 false) #15, !annotation !9
  %88 = lshr exact i32 %85, 5
  %89 = inttoptr i32 %83 to ptr
  %90 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  br label %91

91:                                               ; preds = %134, %76
  %92 = phi i32 [ %84, %76 ], [ %137, %134 ]
  %93 = phi ptr [ %4, %76 ], [ %136, %134 ]
  %94 = phi i32 [ -4, %76 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %95 = and i32 %92, 15
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  br i1 %86, label %103, label %98

98:                                               ; preds = %97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  store i16 0, ptr %6, align 2, !annotation !9
  %99 = getelementptr i16, ptr %89, i32 %94
  %100 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %6, ptr noundef %99, i32 noundef 2) #15
  %101 = load i16, ptr %6, align 2
  %102 = zext i16 %101 to i32
  store i32 %102, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  br label %124

103:                                              ; preds = %97
  %104 = getelementptr i32, ptr %89, i32 %94
  %105 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %5, ptr noundef %104, i32 noundef 4) #15
  br label %124

106:                                              ; preds = %91
  br i1 %86, label %116, label %107

107:                                              ; preds = %106
  %108 = getelementptr i16, ptr %89, i32 %94
  %109 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %90) #11, !srcloc !18
  %110 = and i32 %109, -13
  %111 = or i32 %110, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %112 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %108, i32 -1090519041) #15, !srcloc !21
  %113 = extractvalue { i32, i32 } %112, 0
  %114 = extractvalue { i32, i32 } %112, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %115 = and i32 %114, 65535
  store i32 %115, ptr %5, align 4
  br label %124

116:                                              ; preds = %106
  %117 = getelementptr i32, ptr %89, i32 %94
  %118 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %90) #11, !srcloc !18
  %119 = and i32 %118, -13
  %120 = or i32 %119, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %121 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %117, i32 -1090519041) #15, !srcloc !22
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = extractvalue { i32, i32 } %121, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  store i32 %123, ptr %5, align 4
  br label %124

124:                                              ; preds = %116, %107, %103, %98
  %125 = phi i32 [ %113, %107 ], [ %122, %116 ], [ %100, %98 ], [ %105, %103 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %93, ptr noundef nonnull align 1 dereferenceable(13) @.str.30, i32 13, i1 false) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %138

128:                                              ; preds = %124
  %129 = icmp eq i32 %94, 0
  %130 = select i1 %129, ptr @.str.28, ptr @.str.29
  %131 = load i32, ptr %5, align 4
  %132 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %93, ptr noundef nonnull %130, i32 noundef %87, i32 noundef %131) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %133 = icmp eq i32 %94, %88
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = add nsw i32 %94, 1
  %136 = getelementptr i8, ptr %93, i32 %132
  %137 = load i32, ptr %36, align 4
  br label %91

138:                                              ; preds = %128, %127
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %4) #15
  br label %140

140:                                              ; preds = %138, %65, %46
  %141 = phi i32 [ 0, %46 ], [ 11, %138 ], [ 11, %65 ]
  %142 = icmp eq ptr %1, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = call i32 @kexec_should_crash(ptr noundef %8) #15
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void @crash_kexec(ptr noundef nonnull %1) #15
  br label %147

147:                                              ; preds = %146, %143, %140
  call void @bust_spinlocks(i32 noundef 0) #15
  store i32 -1, ptr @die_owner, align 4
  call void @add_taint(i32 noundef 7, i32 noundef 1) #15
  %148 = load i32, ptr @die_nest_count, align 4
  %149 = add i32 %148, -1
  store i32 %149, ptr @die_nest_count, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %152 = load i16, ptr @die_lock, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr @die_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  br label %154

154:                                              ; preds = %151, %147
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #15, !srcloc !26
  call void @oops_exit() #15
  %155 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %156, 15728640
  %158 = load volatile i32, ptr %155, align 4
  %159 = and i32 %158, 983040
  %160 = or i32 %159, %157
  %161 = load volatile i32, ptr %155, align 4
  %162 = and i32 %161, 65280
  %163 = or i32 %160, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %154
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.32) #16
  unreachable

166:                                              ; preds = %154
  %167 = load i32, ptr @panic_on_oops, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.33) #16
  unreachable

170:                                              ; preds = %166
  br i1 %54, label %172, label %171

171:                                              ; preds = %170
  call void @make_task_dead(i32 noundef %141) #17
  unreachable

172:                                              ; preds = %170
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_bug(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arm_notify_die(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 152, i32 2
  store i32 %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 152, i32 1
  store i32 %6, ptr %15, align 4
  %16 = tail call i32 @force_sig_fault(i32 noundef %2, i32 noundef %3, ptr noundef %4) #15
  br label %18

17:                                               ; preds = %7
  tail call void @die(ptr noundef %0, ptr noundef %1, i32 noundef %5)
  br label %18

18:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @is_valid_bugaddr(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = inttoptr i32 %0 to ptr
  %4 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 4) #15
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, -403701262
  %8 = select i1 %5, i1 %7, i1 false
  %9 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_undef_hook(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @undef_lock) #15
  %3 = load ptr, ptr @undef_hook, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %0, ptr %4, align 4
  store ptr %3, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @undef_hook, ptr %5, align 4
  store volatile ptr %0, ptr @undef_hook, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_undef_hook(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @undef_lock) #15
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_undefinstr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  %8 = icmp eq i32 %7, 19
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, ptr %4, align 4
  br label %45

11:                                               ; preds = %1
  %12 = and i32 %6, 32
  %13 = icmp eq i32 %12, 0
  %14 = tail call ptr @llvm.thread.pointer() #15
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #15
  tail call void asm sideeffect "isb ", "~{memory}"() #15
  br i1 %13, label %39, label %19

19:                                               ; preds = %11
  %20 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #15, !srcloc !27
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %19
  %25 = and i32 %22, 65535
  %26 = icmp ugt i32 %25, 59391
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = getelementptr i16, ptr %4, i32 1
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !18
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %32 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %28, i32 -1090519041) #15, !srcloc !28
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %34 = icmp eq i32 %33, 0
  %35 = extractvalue { i32, i32 } %32, 1
  %36 = and i32 %35, 65535
  %37 = shl i32 %22, 16
  %38 = or i32 %36, %37
  br i1 %34, label %45, label %80

39:                                               ; preds = %11
  %40 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #15, !srcloc !29
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %39
  %44 = extractvalue { i32, i32 } %40, 1
  br label %45

45:                                               ; preds = %43, %27, %24, %9
  %46 = phi i32 [ %10, %9 ], [ %38, %27 ], [ %25, %24 ], [ %44, %43 ]
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @undef_lock) #15
  %48 = load ptr, ptr @undef_hook, align 4
  %49 = icmp eq ptr %48, @undef_hook
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %47) #15
  br label %80

51:                                               ; preds = %71, %45
  %52 = phi ptr [ %73, %71 ], [ %48, %45 ]
  %53 = phi ptr [ %72, %71 ], [ null, %45 ]
  %54 = getelementptr inbounds %struct.undef_hook, ptr %52, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, %46
  %57 = getelementptr inbounds %struct.undef_hook, ptr %52, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load i32, ptr %5, align 4
  %62 = getelementptr inbounds %struct.undef_hook, ptr %52, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, %61
  %65 = getelementptr inbounds %struct.undef_hook, ptr %52, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.undef_hook, ptr %52, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %60, %51
  %72 = phi ptr [ %70, %68 ], [ %53, %60 ], [ %53, %51 ]
  %73 = load ptr, ptr %52, align 4
  %74 = icmp eq ptr %73, @undef_hook
  br i1 %74, label %75, label %51

75:                                               ; preds = %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @undef_lock, i32 noundef %47) #15
  %76 = icmp eq ptr %72, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = tail call i32 %72(ptr noundef %0, i32 noundef %46) #15
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77, %75, %50, %39, %27, %19
  %81 = load i32, ptr %5, align 4
  %82 = and i32 %81, 15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = tail call ptr @llvm.thread.pointer() #15
  %86 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 152, i32 2
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 152, i32 1
  store i32 6, ptr %87, align 4
  %88 = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 1, ptr noundef %4) #15
  br label %90

89:                                               ; preds = %80
  tail call void @die(ptr noundef nonnull @.str.5, ptr noundef %0, i32 noundef 0) #15
  br label %90

90:                                               ; preds = %89, %84, %77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_fiq_as_nmi(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #11, !srcloc !30
  %5 = add i32 %4, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  store ptr %0, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 15728640
  %12 = icmp eq i32 %11, 15728640
  br i1 %12, label %13, label %14, !prof !31

13:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 503, 0\0A.popsection", ""() #15, !srcloc !32
  unreachable

14:                                               ; preds = %1
  %15 = load volatile i32, ptr %9, align 4
  %16 = add i32 %15, 1114112
  store volatile i32 %16, ptr %9, align 4
  tail call void @rcu_nmi_enter() #15
  tail call void @rcu_nmi_exit() #15
  %17 = load volatile i32, ptr %9, align 4
  %18 = and i32 %17, 15728640
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !31

20:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 507, 0\0A.popsection", ""() #15, !srcloc !33
  unreachable

21:                                               ; preds = %14
  %22 = load volatile i32, ptr %9, align 4
  %23 = add i32 %22, -1114112
  store volatile i32 %23, ptr %9, align 4
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #11, !srcloc !30
  %27 = add i32 %26, ptrtoint (ptr @__irq_regs to i32)
  %28 = inttoptr i32 %27 to ptr
  store ptr %7, ptr %28, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_enter() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_exit() local_unnamed_addr #5

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bad_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  tail call void @console_verbose() #15
  %3 = getelementptr [5 x ptr], ptr @handler, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %4) #14
  tail call void @die(ptr noundef nonnull @.str.7, ptr noundef %0, i32 noundef 0)
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !34
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.8) #16
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_syscall(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, -65536
  %4 = icmp eq i32 %3, 983040
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #15
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 46
  %8 = load i32, ptr %7, align 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @send_sig(i32 noundef 11, ptr noundef %6, i32 noundef 1) #15
  br label %30

13:                                               ; preds = %5
  %14 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = inttoptr i32 %20 to ptr
  %22 = and i32 %15, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 -4, i32 -2
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 152, i32 2
  store i32 %0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 152, i32 1
  store i32 0, ptr %27, align 4
  %28 = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 4, ptr noundef %25) #15
  br label %30

29:                                               ; preds = %13
  tail call void @die(ptr noundef nonnull @.str.41, ptr noundef %1, i32 noundef %0) #15
  br label %30

30:                                               ; preds = %29, %18, %11
  %31 = load i32, ptr %1, align 4
  br label %138

32:                                               ; preds = %2
  %33 = trunc i32 %0 to i16
  switch i16 %33, label %117 [
    i16 0, label %34
    i16 1, label %45
    i16 2, label %55
    i16 3, label %91
    i16 4, label %100
    i16 5, label %109
    i16 6, label %113
  ]

34:                                               ; preds = %32
  %35 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = tail call ptr @llvm.thread.pointer() #15
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 152, i32 2
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 152, i32 1
  store i32 0, ptr %42, align 4
  %43 = tail call i32 @force_sig_fault(i32 noundef 11, i32 noundef 1, ptr noundef null) #15
  br label %138

44:                                               ; preds = %34
  tail call void @die(ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 0) #15
  br label %138

45:                                               ; preds = %32
  %46 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 32
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 -4, i32 -2
  %51 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %50, %52
  store i32 %53, ptr %51, align 4
  tail call void @ptrace_break(ptr noundef %1) #15
  %54 = load i32, ptr %1, align 4
  br label %138

55:                                               ; preds = %32
  %56 = load i32, ptr %1, align 4
  %57 = getelementptr [18 x i32], ptr %1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr [18 x i32], ptr %1, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %58, %56
  %62 = icmp ne i32 %60, 0
  %63 = or i1 %61, %62
  br i1 %63, label %138, label %64

64:                                               ; preds = %55
  %65 = sub i32 %58, %56
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(i32 %56, i32 %65, i32 -1090519040) #18, !srcloc !35
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %138

69:                                               ; preds = %64
  %70 = tail call ptr @llvm.thread.pointer() #15
  %71 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 98, i32 1
  br label %72

72:                                               ; preds = %88, %69
  %73 = phi i32 [ %56, %69 ], [ %85, %88 ]
  %74 = load volatile i32, ptr %70, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %71, align 4
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %138

81:                                               ; preds = %77, %72
  %82 = sub i32 %58, %73
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 4096) #15
  %84 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 6), align 4
  %85 = add i32 %83, %73
  %86 = tail call i32 %84(i32 noundef %73, i32 noundef %85) #15
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %138

88:                                               ; preds = %81
  %89 = tail call i32 @__cond_resched() #15
  %90 = icmp ult i32 %85, %58
  br i1 %90, label %72, label %138

91:                                               ; preds = %32
  %92 = load i32, ptr @elf_hwcap, align 4
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %120, label %95

95:                                               ; preds = %91
  %96 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, -17
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %1, align 4
  br label %138

100:                                              ; preds = %32
  %101 = load i32, ptr @elf_hwcap, align 4
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %106, 16
  store i32 %107, ptr %105, align 4
  %108 = load i32, ptr %1, align 4
  br label %138

109:                                              ; preds = %32
  %110 = load i32, ptr %1, align 4
  %111 = tail call ptr @llvm.thread.pointer() #15
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 7
  store i32 %110, ptr %112, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  br label %138

113:                                              ; preds = %32
  %114 = tail call ptr @llvm.thread.pointer() #15
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  br label %138

117:                                              ; preds = %32
  %118 = and i32 %0, 63488
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %117, %100, %91
  %121 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %127 = load i32, ptr %126, align 4
  %128 = inttoptr i32 %127 to ptr
  %129 = and i32 %122, 32
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, i32 -4, i32 -2
  %132 = getelementptr i8, ptr %128, i32 %131
  %133 = tail call ptr @llvm.thread.pointer() #15
  %134 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 152, i32 2
  store i32 %0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 152, i32 1
  store i32 0, ptr %135, align 4
  %136 = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 4, ptr noundef %132) #15
  br label %138

137:                                              ; preds = %120
  tail call void @die(ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %0) #15
  br label %138

138:                                              ; preds = %137, %125, %117, %113, %109, %104, %95, %88, %81, %77, %64, %55, %45, %44, %39, %30
  %139 = phi i32 [ %31, %30 ], [ %116, %113 ], [ 0, %109 ], [ %108, %104 ], [ %99, %95 ], [ %54, %45 ], [ -38, %117 ], [ 0, %39 ], [ 0, %44 ], [ -22, %55 ], [ -14, %64 ], [ 0, %125 ], [ 0, %137 ], [ 0, %88 ], [ %86, %81 ], [ 0, %77 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_break(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @baddataabort(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr [18 x i32], ptr %2, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call ptr @llvm.thread.pointer() #15
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 152, i32 2
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 152, i32 1
  store i32 0, ptr %14, align 4
  %15 = tail call i32 @force_sig_fault(i32 noundef 4, i32 noundef 1, ptr noundef %11) #15
  br label %17

16:                                               ; preds = %3
  tail call void @die(ptr noundef nonnull @.str.11, ptr noundef %2, i32 noundef %1) #15
  br label %17

17:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__readwrite_bug(ptr noundef %0) #6 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %0) #14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 738, 0\0A.popsection", ""() #15, !srcloc !37
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pte_error(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %0, i32 noundef %1, i64 noundef %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pmd_error(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef %1, i64 noundef %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pgd_error(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %0, i32 noundef %1, i64 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__div0() #0 {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  tail call void @dump_stack() #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @abort() local_unnamed_addr #6 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/traps.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 766, 0\0A.popsection", ""() #15, !srcloc !38
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spectre_bhb_update_vectors(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @system_state, align 4
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %7) #14
  br label %26

9:                                                ; preds = %1
  switch i32 %0, label %11 [
    i32 16, label %16
    i32 1, label %10
  ]

10:                                               ; preds = %9
  br label %16

11:                                               ; preds = %9
  %12 = tail call ptr @llvm.thread.pointer() #15
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %14, i32 noundef %0) #14
  br label %26

16:                                               ; preds = %10, %9
  %17 = phi i32 [ ptrtoint (ptr @__vectors_bhb_bpiall_end to i32), %10 ], [ ptrtoint (ptr @__vectors_bhb_loop8_end to i32), %9 ]
  %18 = phi ptr [ @__vectors_bhb_bpiall_start, %10 ], [ @__vectors_bhb_loop8_start, %9 ]
  %19 = load ptr, ptr @vectors_page, align 4
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %17, %20
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr nonnull align 1 %18, i32 %21, i1 false) #15
  %22 = load ptr, ptr @vectors_page, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = add i32 %21, %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  tail call void %25(i32 noundef %23, i32 noundef %24) #15
  br label %26

26:                                               ; preds = %16, %11, %4
  %27 = phi i32 [ 2, %4 ], [ 2, %11 ], [ 1, %16 ]
  ret i32 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_trap_init(ptr noundef %0) local_unnamed_addr #8 section ".init.text" {
  store ptr %0, ptr @vectors_page, align 4
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr i32, ptr %0, i32 %3
  store i32 -402792719, ptr %4, align 4
  %5 = add nuw nsw i32 %3, 1
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr nonnull align 1 @__vectors_start, i32 sub (i32 ptrtoint (ptr @__vectors_end to i32), i32 ptrtoint (ptr @__vectors_start to i32)), i1 false) #15
  %8 = getelementptr i8, ptr %0, i32 4096
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr nonnull align 1 @__stubs_start, i32 sub (i32 ptrtoint (ptr @__stubs_end to i32), i32 ptrtoint (ptr @__stubs_start to i32)), i1 false) #15
  %9 = getelementptr i8, ptr %0, i32 add (i32 sub (i32 0, i32 sub (i32 ptrtoint (ptr @__kuser_helper_end to i32), i32 ptrtoint (ptr @__kuser_helper_start to i32))), i32 4096)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr nonnull align 1 @__kuser_helper_start, i32 sub (i32 ptrtoint (ptr @__kuser_helper_end to i32), i32 ptrtoint (ptr @__kuser_helper_start to i32)), i1 false) #15
  %10 = getelementptr i8, ptr %0, i32 4064
  %11 = getelementptr i8, ptr %0, i32 4072
  %12 = load i32, ptr %11, align 1
  store i32 %12, ptr %10, align 1
  %13 = ptrtoint ptr %0 to i32
  %14 = add i32 %13, 8192
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  tail call void %15(i32 noundef %13, i32 noundef %14) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unwind_backtrace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @oops_enter() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_die(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_modules() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__show_regs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__show_regs_alloc_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kexec_should_crash(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_kexec(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @oops_exit() local_unnamed_addr #5

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @make_task_dead(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i64 2152947474}
!11 = !{i64 552177, i64 552238}
!12 = !{i64 646499, i64 2148136470, i64 2148136496, i64 2148136543, i64 2148136565, i64 2148136593, i64 2148136613}
!13 = !{i64 1438350, i64 1438373, i64 1438391, i64 1438423, i64 1438447}
!14 = !{i64 2148929599}
!15 = !{i64 1437847, i64 1437870, i64 1437890, i64 1437914, i64 1437930}
!16 = !{i64 2148926185}
!17 = !{i64 2148929301}
!18 = !{i64 4026218}
!19 = !{i64 4026415}
!20 = !{i64 2151511694}
!21 = !{i64 2152928921, i64 2152929201, i64 2152929535, i64 2152929869}
!22 = !{i64 2152943450, i64 2152943730, i64 2152944064, i64 2152944398}
!23 = !{i64 2148929894}
!24 = !{i64 2148925718}
!25 = !{i64 2148925793, i64 2148925820, i64 2148925867, i64 2148925889, i64 2148925917, i64 2148925937}
!26 = !{i64 555194}
!27 = !{i64 2152962550, i64 2152962830, i64 2152963164, i64 2152963498}
!28 = !{i64 2152974662, i64 2152974942, i64 2152975276, i64 2152975610}
!29 = !{i64 2152993580, i64 2152993860, i64 2152994194, i64 2152994528}
!30 = !{i64 570877}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2152998524, i64 2152999012, i64 2152998561, i64 2152998617, i64 2152998651, i64 2152998675, i64 2152998716, i64 2152998737, i64 2152998765, i64 2152998799}
!33 = !{i64 2153000540, i64 2153001028, i64 2153000577, i64 2153000633, i64 2153000667, i64 2153000691, i64 2153000732, i64 2153000753, i64 2153000781, i64 2153000815}
!34 = !{i64 552612}
!35 = !{i64 2153004534, i64 2153004559}
!36 = !{i64 2152913349}
!37 = !{i64 2153006952, i64 2153007440, i64 2153006989, i64 2153007045, i64 2153007079, i64 2153007103, i64 2153007144, i64 2153007165, i64 2153007193, i64 2153007227}
!38 = !{i64 2153012095, i64 2153012583, i64 2153012132, i64 2153012188, i64 2153012222, i64 2153012246, i64 2153012287, i64 2153012308, i64 2153012336, i64 2153012370}
