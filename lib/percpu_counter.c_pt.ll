; ModuleID = '/llk/IR/lib/percpu_counter.c_pt.bc'
source_filename = "../lib/percpu_counter.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_set:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_set\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_add_batch\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_sync\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_counter_sum:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_counter_sum\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_counter_sum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_counter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_counter_init\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_counter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_batch\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_counter_compare:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_counter_compare\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_counter_compare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_percpu_counter_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_set = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_set to i32), ptr @__kstrtab_percpu_counter_set, ptr @__kstrtabns_percpu_counter_set }, section "___ksymtab+percpu_counter_set", align 4
@__kstrtab_percpu_counter_add_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_add_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_add_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_add_batch to i32), ptr @__kstrtab_percpu_counter_add_batch, ptr @__kstrtabns_percpu_counter_add_batch }, section "___ksymtab+percpu_counter_add_batch", align 4
@__kstrtab_percpu_counter_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_sync to i32), ptr @__kstrtab_percpu_counter_sync, ptr @__kstrtabns_percpu_counter_sync }, section "___ksymtab+percpu_counter_sync", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab___percpu_counter_sum = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_counter_sum = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_counter_sum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_counter_sum to i32), ptr @__kstrtab___percpu_counter_sum, ptr @__kstrtabns___percpu_counter_sum }, section "___ksymtab+__percpu_counter_sum", align 4
@percpu_counters_lock = internal global %struct.spinlock zeroinitializer, align 4
@percpu_counters = internal global %struct.list_head { ptr @percpu_counters, ptr @percpu_counters }, align 4
@__kstrtab___percpu_counter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_counter_init = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_counter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_counter_init to i32), ptr @__kstrtab___percpu_counter_init, ptr @__kstrtabns___percpu_counter_init }, section "___ksymtab+__percpu_counter_init", align 4
@__kstrtab_percpu_counter_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_destroy to i32), ptr @__kstrtab_percpu_counter_destroy, ptr @__kstrtabns_percpu_counter_destroy }, section "___ksymtab+percpu_counter_destroy", align 4
@percpu_counter_batch = dso_local global i32 32, section ".data..read_mostly", align 4
@__kstrtab_percpu_counter_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_batch to i32), ptr @__kstrtab_percpu_counter_batch, ptr @__kstrtabns_percpu_counter_batch }, section "___ksymtab+percpu_counter_batch", align 4
@__kstrtab___percpu_counter_compare = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_counter_compare = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_counter_compare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_counter_compare to i32), ptr @__kstrtab___percpu_counter_compare, ptr @__kstrtabns___percpu_counter_compare }, section "___ksymtab+__percpu_counter_compare", align 4
@__initcall__kmod_percpu_counter__165_257_percpu_counter_startup6 = internal global ptr @percpu_counter_startup, section ".initcall6.init", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"lib/percpu_cnt:online\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"lib/percpu_counter.c\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"lib/percpu_cnt:dead\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_percpu_counter__165_257_percpu_counter_startup6, ptr @__ksymtab___percpu_counter_compare, ptr @__ksymtab___percpu_counter_init, ptr @__ksymtab___percpu_counter_sum, ptr @__ksymtab_percpu_counter_add_batch, ptr @__ksymtab_percpu_counter_batch, ptr @__ksymtab_percpu_counter_destroy, ptr @__ksymtab_percpu_counter_set, ptr @__ksymtab_percpu_counter_sync], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_counter_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %4, %7 ], [ %17, %9 ]
  %11 = load ptr, ptr %8, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = inttoptr i32 %15 to ptr
  store i32 0, ptr %16, align 4
  %17 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #9
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %2
  %21 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  store i64 %1, ptr %21, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_counter_add_batch(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %4 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #5, !srcloc !10
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, %1
  %15 = tail call i64 @llvm.abs.i64(i64 %14, i1 false)
  %16 = sext i32 %2 to i64
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %32, label %18

18:                                               ; preds = %3
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %20 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %14
  store i64 %22, ptr %20, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #5, !srcloc !10
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %30, %12
  store i32 %31, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %19) #8
  br label %44

32:                                               ; preds = %3
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !11
  %34 = load ptr, ptr %4, align 8
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #5, !srcloc !10
  %39 = add i32 %38, %35
  %40 = inttoptr i32 %39 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = trunc i64 %1 to i32
  %43 = add i32 %41, %42
  store i32 %43, ptr %40, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #8, !srcloc !12
  br label %44

44:                                               ; preds = %32, %18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_counter_sync(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #5, !srcloc !10
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, %12
  store i64 %15, ptr %13, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #5, !srcloc !10
  %19 = add i32 %18, %5
  %20 = inttoptr i32 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %11
  store i32 %22, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @__percpu_counter_sum(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i32
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %6, %8 ], [ %22, %12 ]
  %14 = phi i64 [ %4, %8 ], [ %21, %12 ]
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %14, %20
  %22 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_online_mask) #9
  %23 = icmp ult i32 %22, %5
  br i1 %23, label %12, label %24

24:                                               ; preds = %12, %1
  %25 = phi i64 [ %4, %1 ], [ %21, %12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #8
  ret i64 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__percpu_counter_init(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  store i32 0, ptr %0, align 8
  %5 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  store i64 %1, ptr %5, align 8
  %6 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %2) #10
  %7 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 3
  store ptr %6, ptr %7, align 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 2
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 2, i32 1
  store ptr %10, ptr %11, align 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_counters_lock) #8
  %13 = load ptr, ptr @percpu_counters, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %10, ptr %14, align 4
  store ptr %13, ptr %10, align 4
  store ptr @percpu_counters, ptr %11, align 4
  store volatile ptr %10, ptr @percpu_counters, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_counters_lock, i32 noundef %12) #8
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ 0, %9 ], [ -12, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_counter_destroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_counters_lock) #8
  %7 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_counters_lock, i32 noundef %6) #8
  %12 = load ptr, ptr %2, align 8
  tail call void @free_percpu(ptr noundef %12) #8
  store ptr null, ptr %2, align 8
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__percpu_counter_compare(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %5, %1
  %7 = tail call i64 @llvm.abs.i64(i64 %6, i1 false)
  %8 = load volatile i32, ptr @__num_online_cpus, align 4
  %9 = mul i32 %8, %2
  %10 = zext i32 %9 to i64
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = icmp sgt i64 %5, %1
  %14 = select i1 %13, i32 1, i32 -1
  br label %43

15:                                               ; preds = %3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %17 = load i64, ptr %4, align 8
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %23 to i32
  br label %25

25:                                               ; preds = %25, %21
  %26 = phi i32 [ %19, %21 ], [ %35, %25 ]
  %27 = phi i64 [ %17, %21 ], [ %34, %25 ]
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %24
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %27, %33
  %35 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @__cpu_online_mask) #9
  %36 = icmp ult i32 %35, %18
  br i1 %36, label %25, label %37

37:                                               ; preds = %25, %15
  %38 = phi i64 [ %17, %15 ], [ %34, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %16) #8
  %39 = icmp sgt i64 %38, %1
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = icmp slt i64 %38, %1
  %42 = sext i1 %41 to i32
  br label %43

43:                                               ; preds = %40, %37, %12
  %44 = phi i32 [ %14, %12 ], [ 1, %37 ], [ %42, %40 ]
  ret i32 %44
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @percpu_counter_startup() #4 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.2, i1 noundef zeroext true, ptr noundef nonnull @compute_batch_value, ptr noundef null, i1 noundef zeroext false) #8
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4, !prof !14

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 250, i32 noundef 9, ptr noundef null) #8
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @__cpuhp_setup_state(i32 noundef 31, ptr noundef nonnull @.str.4, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @percpu_counter_cpu_dead, i1 noundef zeroext false) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !14

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 254, i32 noundef 9, ptr noundef null) #8
  br label %8

8:                                                ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @compute_batch_value(i32 noundef %0) #6 {
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = shl i32 %2, 1
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 32)
  store i32 %4, ptr @percpu_counter_batch, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @percpu_counter_cpu_dead(i32 noundef %0) #0 {
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = shl i32 %2, 1
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 32) #8
  store i32 %4, ptr @percpu_counter_batch, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @percpu_counters_lock) #8
  %5 = load ptr, ptr @percpu_counters, align 4
  %6 = icmp eq ptr %5, @percpu_counters
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %5, %7 ], [ %25, %9 ]
  %11 = getelementptr i8, ptr %10, i32 -16
  tail call void @_raw_spin_lock(ptr noundef %11) #8
  %12 = getelementptr i8, ptr %10, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = load i32, ptr %8, align 4
  %16 = add i32 %15, %14
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, ptr %10, i32 -8
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8
  store i32 0, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %23 = load i16, ptr %11, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, @percpu_counters
  br i1 %26, label %27, label %9

27:                                               ; preds = %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %28 = load i16, ptr @percpu_counters_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @percpu_counters_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i64 2151134128}
!10 = !{i64 586047}
!11 = !{i64 567347, i64 567408}
!12 = !{i64 570364}
!13 = !{i64 2151156311}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148830273}
!16 = !{i64 2148826097}
!17 = !{i64 2148826172, i64 2148826199, i64 2148826246, i64 2148826268, i64 2148826296, i64 2148826316}
!18 = !{i64 2148853276}
!19 = !{i64 567592}
!20 = !{i64 2148854417}
