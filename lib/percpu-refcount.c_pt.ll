; ModuleID = '/llk/IR/lib/percpu-refcount.c_pt.bc'
source_filename = "../lib/percpu-refcount.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_init:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_init\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_exit\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_switch_to_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_switch_to_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_switch_to_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_switch_to_atomic_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_switch_to_atomic_sync\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_switch_to_atomic_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_switch_to_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_switch_to_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_switch_to_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_kill_and_confirm:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_kill_and_confirm\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_kill_and_confirm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_is_zero\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_reinit\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_resurrect:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_resurrect\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_resurrect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_percpu_ref_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_init = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_init to i32), ptr @__kstrtab_percpu_ref_init, ptr @__kstrtabns_percpu_ref_init }, section "___ksymtab_gpl+percpu_ref_init", align 4
@percpu_ref_switch_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_percpu_ref_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_exit to i32), ptr @__kstrtab_percpu_ref_exit, ptr @__kstrtabns_percpu_ref_exit }, section "___ksymtab_gpl+percpu_ref_exit", align 4
@__kstrtab_percpu_ref_switch_to_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_switch_to_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_switch_to_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_switch_to_atomic to i32), ptr @__kstrtab_percpu_ref_switch_to_atomic, ptr @__kstrtabns_percpu_ref_switch_to_atomic }, section "___ksymtab_gpl+percpu_ref_switch_to_atomic", align 4
@percpu_ref_switch_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @percpu_ref_switch_waitq, i64 4), ptr getelementptr (i8, ptr @percpu_ref_switch_waitq, i64 4) } }, align 4
@__kstrtab_percpu_ref_switch_to_atomic_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_switch_to_atomic_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_switch_to_atomic_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_switch_to_atomic_sync to i32), ptr @__kstrtab_percpu_ref_switch_to_atomic_sync, ptr @__kstrtabns_percpu_ref_switch_to_atomic_sync }, section "___ksymtab_gpl+percpu_ref_switch_to_atomic_sync", align 4
@__kstrtab_percpu_ref_switch_to_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_switch_to_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_switch_to_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_switch_to_percpu to i32), ptr @__kstrtab_percpu_ref_switch_to_percpu, ptr @__kstrtabns_percpu_ref_switch_to_percpu }, section "___ksymtab_gpl+percpu_ref_switch_to_percpu", align 4
@percpu_ref_kill_and_confirm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"lib/percpu-refcount.c\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s called more than once on %ps!\00", align 1
@__func__.percpu_ref_kill_and_confirm = private unnamed_addr constant [28 x i8] c"percpu_ref_kill_and_confirm\00", align 1
@__kstrtab_percpu_ref_kill_and_confirm = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_kill_and_confirm = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_kill_and_confirm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_kill_and_confirm to i32), ptr @__kstrtab_percpu_ref_kill_and_confirm, ptr @__kstrtabns_percpu_ref_kill_and_confirm }, section "___ksymtab_gpl+percpu_ref_kill_and_confirm", align 4
@__kstrtab_percpu_ref_is_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_is_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_is_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_is_zero to i32), ptr @__kstrtab_percpu_ref_is_zero, ptr @__kstrtabns_percpu_ref_is_zero }, section "___ksymtab_gpl+percpu_ref_is_zero", align 4
@percpu_ref_reinit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_percpu_ref_reinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_reinit = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_reinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_reinit to i32), ptr @__kstrtab_percpu_ref_reinit, ptr @__kstrtabns_percpu_ref_reinit }, section "___ksymtab_gpl+percpu_ref_reinit", align 4
@percpu_ref_resurrect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@percpu_ref_resurrect.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_percpu_ref_resurrect = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_resurrect = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_resurrect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_resurrect to i32), ptr @__kstrtab_percpu_ref_resurrect, ptr @__kstrtabns_percpu_ref_resurrect }, section "___ksymtab_gpl+percpu_ref_resurrect", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__percpu_ref_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@percpu_ref_switch_to_atomic_rcu.underflows = internal global %struct.atomic_t zeroinitializer, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@percpu_ref_switch_to_atomic_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"percpu ref (%ps) <= 0 (%ld) after switching to atomic\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013%s: %s(): percpu_ref underflow\00", align 1
@__func__.percpu_ref_switch_to_atomic_rcu = private unnamed_addr constant [32 x i8] c"percpu_ref_switch_to_atomic_rcu\00", align 1
@__percpu_ref_switch_to_percpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_percpu_ref_exit, ptr @__ksymtab_percpu_ref_init, ptr @__ksymtab_percpu_ref_is_zero, ptr @__ksymtab_percpu_ref_kill_and_confirm, ptr @__ksymtab_percpu_ref_reinit, ptr @__ksymtab_percpu_ref_resurrect, ptr @__ksymtab_percpu_ref_switch_to_atomic, ptr @__ksymtab_percpu_ref_switch_to_atomic_sync, ptr @__ksymtab_percpu_ref_switch_to_percpu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @percpu_ref_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %3) #10
  %6 = ptrtoint ptr %5 to i32
  store i32 %6, ptr %0, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  %9 = and i32 %3, 17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !9

11:                                               ; preds = %8
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ 0, %8 ], [ %14, %11 ]
  %17 = or i32 %3, 256
  %18 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %16, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef %17, i32 noundef 28) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, ptr %0, align 4
  %24 = inttoptr i32 %23 to ptr
  tail call void @free_percpu(ptr noundef %24) #12
  br label %56

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.percpu_ref_data, ptr %20, i32 0, i32 3
  %27 = trunc i32 %2 to i8
  %28 = and i8 %27, 1
  %29 = load i8, ptr %26, align 4
  %30 = and i8 %29, -4
  %31 = or i8 %30, %28
  %32 = lshr i8 %27, 1
  %33 = and i8 %32, 2
  %34 = or i8 %31, %33
  store i8 %34, ptr %26, align 4
  %35 = and i32 %2, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load i32, ptr %0, align 4
  %39 = or i32 %38, 1
  store i32 %39, ptr %0, align 4
  %40 = or i8 %31, 2
  store i8 %40, ptr %26, align 4
  br label %41

41:                                               ; preds = %37, %25
  %42 = phi i32 [ 0, %37 ], [ -2147483648, %25 ]
  %43 = and i32 %2, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %0, align 4
  %47 = or i32 %46, 2
  store i32 %47, ptr %0, align 4
  br label %50

48:                                               ; preds = %41
  %49 = or i32 %42, 1
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %42, %45 ], [ %49, %48 ]
  store volatile i32 %51, ptr %20, align 8
  %52 = getelementptr inbounds %struct.percpu_ref_data, ptr %20, i32 0, i32 1
  store ptr %1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.percpu_ref_data, ptr %20, i32 0, i32 2
  store ptr null, ptr %53, align 8
  %54 = getelementptr inbounds %struct.percpu_ref_data, ptr %20, i32 0, i32 5
  store ptr %0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  store ptr %20, ptr %55, align 4
  br label %56

56:                                               ; preds = %50, %22, %4
  %57 = phi i32 [ 0, %50 ], [ -12, %22 ], [ -12, %4 ]
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_ref_exit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.percpu_ref_data, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ne ptr %12, null
  %14 = load i1, ptr @__percpu_ref_exit.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %10
  store i1 true, ptr @__percpu_ref_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %10, %8
  tail call void @free_percpu(ptr noundef nonnull %6) #12
  store i32 3, ptr %0, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = icmp eq ptr %3, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %23 = load ptr, ptr %2, align 4
  %24 = load volatile i32, ptr %23, align 4
  %25 = shl i32 %24, 2
  %26 = load i32, ptr %0, align 4
  %27 = or i32 %26, %25
  store i32 %27, ptr %0, align 4
  store ptr null, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %22) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %28

28:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_ref_switch_to_atomic(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %4 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %6, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %0, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__percpu_ref_switch_mode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #12
  %10 = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %3, i32 noundef 2) #12
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %13, %9
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %14 = load i16, ptr @percpu_ref_switch_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @percpu_ref_switch_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  call void @schedule() #12
  call void @_raw_spin_lock_irq(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %16 = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %3, i32 noundef 2) #12
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13

19:                                               ; preds = %13, %9
  call void @finish_wait(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 3
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = load i32, ptr %0, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %24, i1 %27, i1 false
  br i1 %28, label %59, label %29

29:                                               ; preds = %20
  %30 = and i32 %25, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = icmp eq ptr %1, null
  br i1 %33, label %95, label %34

34:                                               ; preds = %32
  call void %1(ptr noundef %0) #12
  br label %95

35:                                               ; preds = %29
  %36 = or i32 %25, 1
  store i32 %36, ptr %0, align 4
  %37 = icmp eq ptr %1, null
  %38 = select i1 %37, ptr @percpu_ref_noop_confirm_switch, ptr %1
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.percpu_ref_data, ptr %39, i32 0, i32 2
  store ptr %38, ptr %40, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %41 = load volatile i32, ptr %0, align 4
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53, !prof !9

44:                                               ; preds = %35
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %46 = call i32 @llvm.read_register.i32(metadata !0) #12
  %47 = inttoptr i32 %46 to ptr
  %48 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #9, !srcloc !19
  %49 = add i32 %48, %41
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #12, !srcloc !20
  br label %56

53:                                               ; preds = %35
  %54 = load ptr, ptr %4, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #12, !srcloc !21
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #12, !srcloc !22
  br label %56

56:                                               ; preds = %53, %44
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.percpu_ref_data, ptr %57, i32 0, i32 4
  call void @call_rcu(ptr noundef %58, ptr noundef nonnull @percpu_ref_switch_to_atomic_rcu) #12
  br label %95

59:                                               ; preds = %20
  %60 = and i32 %25, -4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !10

62:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/percpu-refcount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #12, !srcloc !24
  unreachable

63:                                               ; preds = %59
  %64 = and i32 %25, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %95, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.percpu_ref_data, ptr %67, i32 0, i32 3
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  %72 = load i1, ptr @__percpu_ref_switch_to_percpu.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !10

75:                                               ; preds = %66
  store i1 true, ptr @__percpu_ref_switch_to_percpu.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #12
  br label %76

76:                                               ; preds = %75, %66
  br i1 %71, label %95, label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %4, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #12, !srcloc !21
  %79 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 -2147483648, ptr elementtype(i32) %78) #12, !srcloc !22
  %80 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %81 = load i32, ptr @nr_cpu_ids, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %83, %77
  %84 = phi i32 [ %89, %83 ], [ %80, %77 ]
  %85 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, %60
  %88 = inttoptr i32 %87 to ptr
  store i32 0, ptr %88, align 4
  %89 = call i32 @cpumask_next(i32 noundef %84, ptr noundef nonnull @__cpu_possible_mask) #13
  %90 = load i32, ptr @nr_cpu_ids, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %83, label %92

92:                                               ; preds = %83, %77
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %93 = load i32, ptr %0, align 4
  %94 = and i32 %93, -2
  store volatile i32 %94, ptr %0, align 4
  br label %95

95:                                               ; preds = %92, %76, %63, %56, %34, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_ref_switch_to_atomic_sync(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %4 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %6, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %0, ptr noundef null) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %3) #12
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.percpu_ref_data, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  %14 = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %2, i32 noundef 2) #12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.percpu_ref_data, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %13
  call void @schedule() #12
  %20 = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %2, i32 noundef 2) #12
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %13
  call void @finish_wait(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_ref_switch_to_percpu(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %3 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.percpu_ref_data, ptr %4, i32 0, i32 3
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, -2
  store i8 %7, ptr %5, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %0, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_ref_kill_and_confirm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %4 = load i32, ptr %0, align 4
  %5 = and i32 %4, 2
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @percpu_ref_kill_and_confirm.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16, !prof !10

10:                                               ; preds = %2
  store i1 true, ptr @percpu_ref_kill_and_confirm.__already_done, align 1
  %11 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.percpu_ref_data, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.percpu_ref_kill_and_confirm, ptr noundef %14) #12
  %15 = load i32, ptr %0, align 4
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ %15, %10 ], [ %4, %2 ]
  %18 = or i32 %17, 2
  store i32 %18, ptr %0, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %0, ptr noundef %1)
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31, !prof !9

22:                                               ; preds = %16
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #9, !srcloc !19
  %27 = add i32 %26, %19
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #12, !srcloc !20
  br label %41

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #12, !srcloc !21
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #12, !srcloc !27
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !28
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41, !prof !10

37:                                               ; preds = %31
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr inbounds %struct.percpu_ref_data, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %0) #12
  br label %41

41:                                               ; preds = %37, %31, %22
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @percpu_ref_is_zero(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %7 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr %8, align 4
  br label %15

12:                                               ; preds = %5
  %13 = load i32, ptr %0, align 4
  %14 = lshr i32 %13, 2
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %6) #12
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i1 [ %17, %15 ], [ false, %1 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_ref_reinit(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %7 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr %8, align 4
  br label %15

12:                                               ; preds = %5
  %13 = load i32, ptr %0, align 4
  %14 = lshr i32 %13, 2
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %6) #12
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i1 [ %17, %15 ], [ false, %1 ]
  %20 = load i1, ptr @percpu_ref_reinit.__already_done, align 1
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %23, label %22, !prof !9

22:                                               ; preds = %18
  store i1 true, ptr @percpu_ref_reinit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef null) #12
  br label %23

23:                                               ; preds = %22, %18
  tail call void @percpu_ref_resurrect(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_ref_resurrect(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #12
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 2
  %5 = icmp ne i32 %4, 0
  %6 = load i1, ptr @percpu_ref_resurrect.__already_done, align 1
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @percpu_ref_resurrect.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 468, i32 noundef 9, ptr noundef null) #12
  br label %9

9:                                                ; preds = %8, %1
  %10 = load volatile i32, ptr %0, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @percpu_ref_resurrect.__already_done.2, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !10

16:                                               ; preds = %9
  store i1 true, ptr @percpu_ref_resurrect.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 469, i32 noundef 9, ptr noundef null) #12
  %17 = load i32, ptr %0, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi i32 [ %17, %16 ], [ %10, %9 ]
  %20 = and i32 %19, -3
  store i32 %20, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %21 = load volatile i32, ptr %0, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33, !prof !9

24:                                               ; preds = %18
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #9, !srcloc !19
  %29 = add i32 %28, %21
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #12, !srcloc !20
  br label %37

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #12, !srcloc !21
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #12, !srcloc !22
  br label %37

37:                                               ; preds = %33, %24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %0, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @percpu_ref_noop_confirm_switch(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @percpu_ref_switch_to_atomic_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -4
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %9 = icmp ult i32 %8, %7
  br i1 %9, label %10, label %23

10:                                               ; preds = %10, %1
  %11 = phi i32 [ %19, %10 ], [ %8, %1 ]
  %12 = phi i32 [ %18, %10 ], [ 0, %1 ]
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %6
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %12
  %19 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #13
  %20 = icmp ult i32 %19, %7
  br i1 %20, label %10, label %21

21:                                               ; preds = %10
  %22 = xor i32 %18, -2147483648
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i32 [ -2147483648, %1 ], [ %22, %21 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !21
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %24, ptr elementtype(i32) %2) #12, !srcloc !22
  %26 = load volatile i32, ptr %2, align 4
  %27 = icmp slt i32 %26, 1
  %28 = load i1, ptr @percpu_ref_switch_to_atomic_rcu.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %35, !prof !10

31:                                               ; preds = %23
  store i1 true, ptr @percpu_ref_switch_to_atomic_rcu.__already_done, align 1
  %32 = getelementptr i8, ptr %0, i32 -12
  %33 = load ptr, ptr %32, align 4
  %34 = load volatile i32, ptr %2, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %33, i32 noundef %34) #12
  br label %35

35:                                               ; preds = %31, %23
  br i1 %27, label %36, label %42

36:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @percpu_ref_switch_to_atomic_rcu.underflows) #12, !srcloc !21
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @percpu_ref_switch_to_atomic_rcu.underflows, ptr nonnull @percpu_ref_switch_to_atomic_rcu.underflows, i32 1, ptr nonnull elementtype(i32) @percpu_ref_switch_to_atomic_rcu.underflows) #12, !srcloc !30
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.percpu_ref_switch_to_atomic_rcu, ptr noundef nonnull @__func__.percpu_ref_switch_to_atomic_rcu) #14
  tail call void @mem_dump_obj(ptr noundef %2) #12
  br label %42

42:                                               ; preds = %40, %36, %35
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %0, i32 -8
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %43) #12
  store ptr null, ptr %44, align 4
  tail call void @__wake_up(ptr noundef nonnull @percpu_ref_switch_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %46 = getelementptr i8, ptr %0, i32 -4
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %42
  %51 = load i32, ptr %43, align 4
  %52 = and i32 %51, -4
  %53 = inttoptr i32 %52 to ptr
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.percpu_ref, ptr %43, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.percpu_ref_data, ptr %57, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ne ptr %61, null
  %63 = load i1, ptr @__percpu_ref_exit.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !10

66:                                               ; preds = %59
  store i1 true, ptr @__percpu_ref_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #12
  br label %67

67:                                               ; preds = %66, %59, %55
  tail call void @free_percpu(ptr noundef nonnull %53) #12
  store i32 3, ptr %43, align 4
  br label %68

68:                                               ; preds = %67, %50, %42
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %69 = load volatile i32, ptr %43, align 4
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81, !prof !9

72:                                               ; preds = %68
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !18
  %74 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %75 = inttoptr i32 %74 to ptr
  %76 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %75) #9, !srcloc !19
  %77 = add i32 %76, %69
  %78 = inttoptr i32 %77 to ptr
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #12, !srcloc !20
  br label %91

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.percpu_ref, ptr %43, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #12, !srcloc !21
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #12, !srcloc !27
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !28
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91, !prof !10

87:                                               ; preds = %81
  %88 = load ptr, ptr %82, align 4
  %89 = getelementptr inbounds %struct.percpu_ref_data, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %43) #12
  br label %91

91:                                               ; preds = %87, %81, %72
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_dump_obj(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i64 2149178692}
!13 = !{i64 2149174516}
!14 = !{i64 2149174591, i64 2149174618, i64 2149174665, i64 2149174687, i64 2149174715, i64 2149174735}
!15 = !{i64 319556}
!16 = !{i64 2149202836}
!17 = !{i64 2148952493}
!18 = !{i64 319311, i64 319372}
!19 = !{i64 338011}
!20 = !{i64 322328}
!21 = !{i64 424072, i64 2147914043, i64 2147914069, i64 2147914116, i64 2147914138, i64 2147914166, i64 2147914186}
!22 = !{i64 2147926255, i64 2147926281, i64 2147926310, i64 2147926344, i64 2147926375, i64 2147926398}
!23 = !{i64 2148952710}
!24 = !{i64 2152057216, i64 2152057702, i64 2152057253, i64 2152057309, i64 2152057343, i64 2152057367, i64 2152057408, i64 2152057429, i64 2152057457, i64 2152057491}
!25 = !{i64 2152062265}
!26 = !{i64 2148026910}
!27 = !{i64 2147929296, i64 2147929328, i64 2147929357, i64 2147929391, i64 2147929422, i64 2147929445}
!28 = !{i64 2148027113}
!29 = !{i64 2148024077}
!30 = !{i64 2147926939, i64 2147926971, i64 2147927000, i64 2147927034, i64 2147927065, i64 2147927088}
!31 = !{i64 2148024280}
