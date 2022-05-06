; ModuleID = '/llk/IR/block/blk-stat.c_pt.bc'
source_filename = "../block/blk-stat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_stat_disable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_stat_disable_accounting\22\09\09\09\09\09"
module asm "__kstrtabns_blk_stat_disable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_stat_enable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_stat_enable_accounting\22\09\09\09\09\09"
module asm "__kstrtabns_blk_stat_enable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.71, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.72, %union.anon.73, %union.anon.74, %union.anon.79, ptr, ptr }
%union.anon.71 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.73 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.74 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, ptr }
%union.anon.79 = type { i64, [8 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, ptr, ptr, i32, ptr, ptr, ptr, %struct.callback_head }
%struct.blk_queue_stats = type { %struct.list_head, %struct.spinlock, i32 }

@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_blk_stat_disable_accounting = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_stat_disable_accounting = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_stat_disable_accounting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_stat_disable_accounting to i32), ptr @__kstrtab_blk_stat_disable_accounting, ptr @__kstrtabns_blk_stat_disable_accounting }, section "___ksymtab_gpl+blk_stat_disable_accounting", align 4
@__kstrtab_blk_stat_enable_accounting = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_stat_enable_accounting = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_stat_enable_accounting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_stat_enable_accounting to i32), ptr @__kstrtab_blk_stat_enable_accounting, ptr @__kstrtabns_blk_stat_enable_accounting }, section "___ksymtab_gpl+blk_stat_enable_accounting", align 4
@.str = private unnamed_addr constant [17 x i8] c"block/blk-stat.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_blk_stat_disable_accounting, ptr @__ksymtab_blk_stat_enable_accounting], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @blk_rq_stat_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 1
  store i64 -1, ptr %2, align 8
  store i64 0, ptr %0, align 8
  %3 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 3
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 2
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 4
  store i64 0, ptr %5, align 8
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_rq_stat_sum(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.blk_rq_stat, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.blk_rq_stat, ptr %1, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = tail call i64 @llvm.umin.i64(i64 %8, i64 %10)
  store i64 %11, ptr %7, align 8
  %12 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.blk_rq_stat, ptr %1, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = tail call i64 @llvm.umax.i64(i64 %13, i64 %15)
  store i64 %16, ptr %12, align 8
  %17 = getelementptr inbounds %struct.blk_rq_stat, ptr %1, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %0, align 8
  %20 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = zext i32 %21 to i64
  %23 = mul i64 %19, %22
  %24 = add i64 %23, %18
  %25 = load i32, ptr %3, align 8
  %26 = add i32 %25, %21
  %27 = icmp ult i64 %24, 4294967296
  br i1 %27, label %28, label %32, !prof !8

28:                                               ; preds = %6
  %29 = trunc i64 %24 to i32
  %30 = udiv i32 %29, %26
  %31 = zext i32 %30 to i64
  br label %35

32:                                               ; preds = %6
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %24) #10, !srcloc !9
  %34 = extractvalue { i64, i64 } %33, 1
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i64 [ %31, %28 ], [ %34, %32 ]
  store i64 %36, ptr %0, align 8
  %37 = load i32, ptr %3, align 8
  %38 = add i32 %37, %21
  store i32 %38, ptr %20, align 8
  br label %39

39:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @blk_rq_stat_add(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = tail call i64 @llvm.umin.i64(i64 %4, i64 %1)
  store i64 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 %1)
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %1
  store i64 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.blk_rq_stat, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_stat_add(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 15
  %5 = load i64, ptr %4, align 8
  %6 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %5)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %49, label %14

14:                                               ; preds = %2
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  br label %16

16:                                               ; preds = %45, %14
  %17 = phi ptr [ %12, %14 ], [ %46, %45 ]
  %18 = getelementptr inbounds %struct.blk_stat_callback, ptr %17, i32 0, i32 1, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.blk_stat_callback, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.blk_stat_callback, ptr %17, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = load i32, ptr %15, align 4
  %31 = add i32 %30, %29
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr %struct.blk_rq_stat, ptr %32, i32 %24, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = tail call i64 @llvm.umin.i64(i64 %34, i64 %6) #11
  store i64 %35, ptr %33, align 8
  %36 = getelementptr %struct.blk_rq_stat, ptr %32, i32 %24, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = tail call i64 @llvm.umax.i64(i64 %37, i64 %6) #11
  store i64 %38, ptr %36, align 8
  %39 = getelementptr %struct.blk_rq_stat, ptr %32, i32 %24, i32 4
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %6
  store i64 %41, ptr %39, align 8
  %42 = getelementptr %struct.blk_rq_stat, ptr %32, i32 %24, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %26, %21, %16
  %46 = load volatile ptr, ptr %17, align 4
  %47 = load ptr, ptr %10, align 8
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %16

49:                                               ; preds = %45, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_stat_alloc_callback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 60) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 40) #11
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  br i1 %10, label %12, label %14, !prof !14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 5
  store ptr null, ptr %13, align 8
  br label %18

14:                                               ; preds = %8
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #13
  %16 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 5
  store ptr %15, ptr %16, align 8
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @kfree(ptr noundef nonnull %6) #11
  br label %31

19:                                               ; preds = %14
  %20 = tail call noalias ptr @__alloc_percpu(i32 noundef %11, i32 noundef 8) #13
  %21 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %16, align 8
  tail call void @kfree(ptr noundef %24) #11
  tail call void @kfree(ptr noundef nonnull %6) #11
  br label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 6
  store ptr %0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 3
  store ptr %1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 7
  store ptr %3, ptr %28, align 8
  %29 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 4
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.blk_stat_callback, ptr %6, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %30, ptr noundef nonnull @blk_stat_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  br label %31

31:                                               ; preds = %25, %23, %18, %4
  %32 = phi ptr [ %6, %25 ], [ null, %23 ], [ null, %18 ], [ null, %4 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_stat_timer_fn(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 28
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 32
  br label %15

7:                                                ; preds = %15, %1
  %8 = phi i32 [ 0, %1 ], [ %24, %15 ]
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %92

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 20
  %14 = getelementptr i8, ptr %0, i32 32
  br label %33

15:                                               ; preds = %15, %5
  %16 = phi i32 [ 0, %5 ], [ %23, %15 ]
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr %struct.blk_rq_stat, ptr %17, i32 %16
  %19 = getelementptr %struct.blk_rq_stat, ptr %17, i32 %16, i32 1
  store i64 -1, ptr %19, align 8
  store i64 0, ptr %18, align 8
  %20 = getelementptr %struct.blk_rq_stat, ptr %17, i32 %16, i32 3
  store i32 0, ptr %20, align 8
  %21 = getelementptr %struct.blk_rq_stat, ptr %17, i32 %16, i32 2
  store i64 0, ptr %21, align 8
  %22 = getelementptr %struct.blk_rq_stat, ptr %17, i32 %16, i32 4
  store i64 0, ptr %22, align 8
  %23 = add nuw i32 %16, 1
  %24 = load i32, ptr %2, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %15, label %7

26:                                               ; preds = %85
  %27 = load i32, ptr @nr_cpu_ids, align 4
  br label %28

28:                                               ; preds = %33, %26
  %29 = phi i32 [ %27, %26 ], [ %34, %33 ]
  %30 = phi i32 [ %90, %26 ], [ 0, %33 ]
  %31 = tail call i32 @cpumask_next(i32 noundef %36, ptr noundef nonnull @__cpu_online_mask) #14
  %32 = icmp ult i32 %31, %29
  br i1 %32, label %33, label %92

33:                                               ; preds = %28, %12
  %34 = phi i32 [ %10, %12 ], [ %29, %28 ]
  %35 = phi i32 [ %8, %12 ], [ %30, %28 ]
  %36 = phi i32 [ %9, %12 ], [ %31, %28 ]
  %37 = load ptr, ptr %13, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = inttoptr i32 %41 to ptr
  %43 = icmp eq i32 %35, 0
  br i1 %43, label %28, label %44

44:                                               ; preds = %85, %33
  %45 = phi i32 [ %89, %85 ], [ 0, %33 ]
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr %struct.blk_rq_stat, ptr %46, i32 %45
  %48 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45
  %49 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45, i32 3
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %44
  %53 = getelementptr %struct.blk_rq_stat, ptr %46, i32 %45, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45, i32 1
  %56 = load i64, ptr %55, align 8
  %57 = tail call i64 @llvm.umin.i64(i64 %54, i64 %56) #11
  store i64 %57, ptr %53, align 8
  %58 = getelementptr %struct.blk_rq_stat, ptr %46, i32 %45, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = tail call i64 @llvm.umax.i64(i64 %59, i64 %61) #11
  store i64 %62, ptr %58, align 8
  %63 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45, i32 4
  %64 = load i64, ptr %63, align 8
  %65 = load i64, ptr %47, align 8
  %66 = getelementptr %struct.blk_rq_stat, ptr %46, i32 %45, i32 3
  %67 = load i32, ptr %66, align 8
  %68 = zext i32 %67 to i64
  %69 = mul i64 %65, %68
  %70 = add i64 %69, %64
  %71 = load i32, ptr %49, align 8
  %72 = add i32 %71, %67
  %73 = icmp ult i64 %70, 4294967296
  br i1 %73, label %74, label %78, !prof !8

74:                                               ; preds = %52
  %75 = trunc i64 %70 to i32
  %76 = udiv i32 %75, %72
  %77 = zext i32 %76 to i64
  br label %81

78:                                               ; preds = %52
  %79 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %72, i64 %70) #10, !srcloc !9
  %80 = extractvalue { i64, i64 } %79, 1
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i64 [ %77, %74 ], [ %80, %78 ]
  store i64 %82, ptr %47, align 8
  %83 = load i32, ptr %49, align 8
  %84 = add i32 %83, %67
  store i32 %84, ptr %66, align 8
  br label %85

85:                                               ; preds = %81, %44
  %86 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45, i32 1
  store i64 -1, ptr %86, align 8
  store i64 0, ptr %48, align 8
  store i32 0, ptr %49, align 8
  %87 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45, i32 2
  store i64 0, ptr %87, align 8
  %88 = getelementptr %struct.blk_rq_stat, ptr %42, i32 %45, i32 4
  store i64 0, ptr %88, align 8
  %89 = add nuw i32 %45, 1
  %90 = load i32, ptr %2, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %44, label %26

92:                                               ; preds = %28, %7
  %93 = getelementptr i8, ptr %0, i32 -8
  %94 = getelementptr i8, ptr %0, i32 36
  %95 = load ptr, ptr %94, align 4
  tail call void %95(ptr noundef %93) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_stat_add_callback(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.blk_stat_callback, ptr %1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.blk_stat_callback, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  br label %17

10:                                               ; preds = %28
  %11 = load i32, ptr @nr_cpu_ids, align 4
  br label %12

12:                                               ; preds = %17, %10
  %13 = phi i32 [ %11, %10 ], [ %18, %17 ]
  %14 = phi i32 [ %36, %10 ], [ 0, %17 ]
  %15 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_possible_mask) #14
  %16 = icmp ult i32 %15, %13
  br i1 %16, label %17, label %38

17:                                               ; preds = %12, %6
  %18 = phi i32 [ %4, %6 ], [ %13, %12 ]
  %19 = phi i32 [ %9, %6 ], [ %14, %12 ]
  %20 = phi i32 [ %3, %6 ], [ %15, %12 ]
  %21 = load ptr, ptr %7, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = inttoptr i32 %25 to ptr
  %27 = icmp eq i32 %19, 0
  br i1 %27, label %12, label %28

28:                                               ; preds = %28, %17
  %29 = phi i32 [ %35, %28 ], [ 0, %17 ]
  %30 = getelementptr %struct.blk_rq_stat, ptr %26, i32 %29
  %31 = getelementptr %struct.blk_rq_stat, ptr %26, i32 %29, i32 1
  store i64 -1, ptr %31, align 8
  store i64 0, ptr %30, align 8
  %32 = getelementptr %struct.blk_rq_stat, ptr %26, i32 %29, i32 3
  store i32 0, ptr %32, align 8
  %33 = getelementptr %struct.blk_rq_stat, ptr %26, i32 %29, i32 2
  store i64 0, ptr %33, align 8
  %34 = getelementptr %struct.blk_rq_stat, ptr %26, i32 %29, i32 4
  store i64 0, ptr %34, align 8
  %35 = add nuw i32 %29, 1
  %36 = load i32, ptr %8, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %28, label %10

38:                                               ; preds = %12, %2
  %39 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.blk_queue_stats, ptr %40, i32 0, i32 1
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #11
  %43 = load ptr, ptr %39, align 8
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  store ptr %43, ptr %1, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  store volatile ptr %1, ptr %45, align 4
  store ptr %1, ptr %44, align 4
  tail call void @blk_queue_flag_set(i32 noundef 20, ptr noundef %0) #11
  %47 = load ptr, ptr %39, align 8
  %48 = getelementptr inbounds %struct.blk_queue_stats, ptr %47, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %42) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_stat_remove_callback(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_queue_stats, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.blk_queue_stats, ptr %11, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  tail call void @blk_queue_flag_clear(i32 noundef 20, ptr noundef %0) #11
  %19 = load ptr, ptr %3, align 8
  br label %20

20:                                               ; preds = %18, %14, %2
  %21 = phi ptr [ %19, %18 ], [ %11, %14 ], [ %11, %2 ]
  %22 = getelementptr inbounds %struct.blk_queue_stats, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %6) #11
  %23 = getelementptr inbounds %struct.blk_stat_callback, ptr %1, i32 0, i32 1
  %24 = tail call i32 @del_timer_sync(ptr noundef %23) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_stat_free_callback(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.blk_stat_callback, ptr %0, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %4, ptr noundef nonnull @blk_stat_free_callback_rcu) #11
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_stat_free_callback_rcu(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 4
  tail call void @free_percpu(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #11
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_stat_disable_accounting(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.blk_queue_stats, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.blk_queue_stats, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @blk_queue_flag_clear(i32 noundef 20, ptr noundef %0) #11
  br label %12

12:                                               ; preds = %11, %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.blk_queue_stats, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_stat_enable_accounting(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.blk_queue_stats, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.blk_queue_stats, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @blk_queue_flag_set(i32 noundef 20, ptr noundef %0) #11
  br label %12

12:                                               ; preds = %11, %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.blk_queue_stats, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_alloc_queue_stats() local_unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 16) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  store volatile ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.blk_queue_stats, ptr %2, i32 0, i32 1
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.blk_queue_stats, ptr %2, i32 0, i32 2
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_free_queue_stats(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #11
  br label %7

7:                                                ; preds = %6, %3
  tail call void @kfree(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_stats_alloc_enable(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 640) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %7 = ptrtoint ptr %3 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #11, !srcloc !17
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %6, i32 0, i32 %7) #11, !srcloc !18
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  tail call void @blk_stat_add_callback(ptr noundef %0, ptr noundef %18)
  br label %19

19:                                               ; preds = %16, %15, %1
  %20 = phi i1 [ true, %15 ], [ false, %16 ], [ false, %1 ]
  ret i1 %20
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }

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
!9 = !{i64 2148329283, i64 2148329563, i64 2148329897, i64 2148330231}
!10 = !{i64 2148862211}
!11 = !{i64 2153203282}
!12 = !{i64 2153240192}
!13 = !{i64 2148862428}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148887452}
!16 = !{i64 2153251785}
!17 = !{i64 413920, i64 2147903891, i64 2147903917, i64 2147903964, i64 2147903986, i64 2147904014, i64 2147904034}
!18 = !{i64 426091, i64 426112, i64 426135, i64 426154, i64 426173}
!19 = !{i64 2153252178}
