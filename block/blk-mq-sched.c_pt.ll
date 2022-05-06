; ModuleID = '/llk/IR/block/blk-mq-sched.c_pt.bc'
source_filename = "../block/blk-mq-sched.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_sched_mark_restart_hctx:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_sched_mark_restart_hctx\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_sched_mark_restart_hctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_sched_try_insert_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_sched_try_insert_merge\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_sched_try_insert_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
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
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.36, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.36 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_mq_ctx = type { %struct.anon.1, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [60 x i8] }
%struct.anon.1 = type { %struct.spinlock, [3 x %struct.list_head], [36 x i8] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.66, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.72, %union.anon.73, %union.anon.74, %union.anon.79, ptr, ptr }
%union.anon.66 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.74 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, ptr }
%union.anon.79 = type { i64, [8 x i8] }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }

@__kstrtab_blk_mq_sched_mark_restart_hctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_sched_mark_restart_hctx = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_sched_mark_restart_hctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_sched_mark_restart_hctx to i32), ptr @__kstrtab_blk_mq_sched_mark_restart_hctx, ptr @__kstrtabns_blk_mq_sched_mark_restart_hctx }, section "___ksymtab_gpl+blk_mq_sched_mark_restart_hctx", align 4
@__kstrtab_blk_mq_sched_try_insert_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_sched_try_insert_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_sched_try_insert_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_sched_try_insert_merge to i32), ptr @__kstrtab_blk_mq_sched_try_insert_merge, ptr @__kstrtabns_blk_mq_sched_try_insert_merge }, section "___ksymtab_gpl+blk_mq_sched_try_insert_merge", align 4
@.str = private unnamed_addr constant [21 x i8] c"block/blk-mq-sched.c\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_blk_mq_sched_mark_restart_hctx, ptr @__ksymtab_blk_mq_sched_try_insert_merge], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_mark_restart_hctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %2) #7
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__blk_mq_sched_restart(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %2) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void @blk_mq_run_hw_queue(ptr noundef %0, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_dispatch_requests(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23, !prof !10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 16777216
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23, !prof !10

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = tail call fastcc i32 @__blk_mq_sched_dispatch_requests(ptr noundef %0)
  %18 = icmp eq i32 %17, -11
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = tail call fastcc i32 @__blk_mq_sched_dispatch_requests(ptr noundef %0)
  %21 = icmp eq i32 %20, -11
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @blk_mq_run_hw_queue(ptr noundef %0, i1 noundef zeroext true) #7
  br label %23

23:                                               ; preds = %22, %19, %13, %8, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__blk_mq_sched_dispatch_requests(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %31, label %16

16:                                               ; preds = %12, %1
  call void @_raw_spin_lock(ptr noundef %0) #7
  %17 = load volatile ptr, ptr %9, align 4
  %18 = icmp eq ptr %17, %9
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load volatile ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %2, ptr %26, align 4
  store ptr %20, ptr %2, align 8
  store ptr %23, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %24, align 4
  br label %28

28:                                               ; preds = %22, %19, %16
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %29 = load i16, ptr %0, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %31

31:                                               ; preds = %28, %12
  %32 = load volatile ptr, ptr %2, align 8
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void @_set_bit(i32 noundef 2, ptr noundef %35) #7
  br label %40

40:                                               ; preds = %39, %34
  %41 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #7
  br i1 %41, label %42, label %58

42:                                               ; preds = %40
  br i1 %7, label %45, label %43

43:                                               ; preds = %42
  %44 = call fastcc i32 @blk_mq_do_dispatch_sched(ptr noundef %0)
  br label %58

45:                                               ; preds = %42
  %46 = call fastcc i32 @blk_mq_do_dispatch_ctx(ptr noundef %0)
  br label %58

47:                                               ; preds = %31
  br i1 %7, label %50, label %48

48:                                               ; preds = %47
  %49 = call fastcc i32 @blk_mq_do_dispatch_sched(ptr noundef %0)
  br label %58

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call fastcc i32 @blk_mq_do_dispatch_ctx(ptr noundef %0)
  br label %58

56:                                               ; preds = %50
  call void @blk_mq_flush_busy_ctxs(ptr noundef %0, ptr noundef nonnull %2) #7
  %57 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #7
  br label %58

58:                                               ; preds = %56, %54, %48, %45, %43, %40
  %59 = phi i32 [ %49, %48 ], [ %55, %54 ], [ 0, %56 ], [ %44, %43 ], [ %46, %45 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_sched_bio_merge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.elevator_type, ptr %8, i32 0, i32 1, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i1 %10(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7
  br label %54

14:                                               ; preds = %7, %3
  %15 = tail call ptr @llvm.thread.pointer() #7
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16777216
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = select i1 %28, i32 %31, i32 2
  %33 = getelementptr %struct.blk_mq_ctx, ptr %24, i32 0, i32 3, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %34, i32 0, i32 13
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr %struct.anon.1, ptr %24, i32 0, i32 1, i32 %42
  %44 = load volatile ptr, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = getelementptr %struct.anon.1, ptr %24, i32 0, i32 1, i32 %42, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %43
  br i1 %49, label %54, label %50

50:                                               ; preds = %46, %39
  tail call void @_raw_spin_lock(ptr noundef %24) #7
  %51 = tail call zeroext i1 @blk_bio_list_merge(ptr noundef %0, ptr noundef %43, ptr noundef %1, i32 noundef %2) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %52 = load i16, ptr %24, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %54

54:                                               ; preds = %50, %46, %14, %12
  %55 = phi i1 [ %13, %12 ], [ false, %46 ], [ %51, %50 ], [ false, %14 ]
  ret i1 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_bio_list_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_sched_try_insert_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 254
  %7 = icmp eq i32 %6, 34
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = trunc i32 %5 to i8
  switch i8 %9, label %10 [
    i8 2, label %20
    i8 9, label %20
    i8 13, label %20
  ]

10:                                               ; preds = %8
  %11 = and i32 %5, 409600
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 262170
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call zeroext i1 @elv_attempt_insert_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %20

20:                                               ; preds = %18, %13, %10, %8, %8, %8, %3
  %21 = phi i1 [ false, %13 ], [ %19, %18 ], [ false, %3 ], [ false, %8 ], [ false, %8 ], [ false, %8 ], [ false, %10 ]
  ret i1 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @elv_attempt_insert_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_insert_request(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.list_head, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %8, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %19, label %18, !prof !10

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #7
  br label %19

19:                                               ; preds = %18, %14, %4
  %20 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 254
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = icmp ne i32 %22, 0
  %31 = or i1 %30, %1
  tail call void @blk_mq_request_bypass_insert(ptr noundef %0, i1 noundef zeroext %31, i1 noundef zeroext false) #7
  br label %43

32:                                               ; preds = %24
  br i1 %13, label %40, label %33

33:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %34 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12
  store ptr %35, ptr %34, align 4
  store ptr %5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %5, ptr %36, align 4
  store volatile ptr %35, ptr %5, align 8
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.elevator_type, ptr %37, i32 0, i32 1, i32 13
  %39 = load ptr, ptr %38, align 4
  call void %39(ptr noundef %12, ptr noundef nonnull %5, i1 noundef zeroext %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %43

40:                                               ; preds = %32
  tail call void @_raw_spin_lock(ptr noundef %10) #7
  tail call void @__blk_mq_insert_request(ptr noundef %12, ptr noundef %0, i1 noundef zeroext %1) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %41 = load i16, ptr %10, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %43

43:                                               ; preds = %40, %33, %29
  br i1 %2, label %44, label %45

44:                                               ; preds = %43
  call void @blk_mq_run_hw_queue(ptr noundef %12, i1 noundef zeroext %3) #7
  br label %45

45:                                               ; preds = %44, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_request_bypass_insert(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_insert_request(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_insert_requests(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20, !prof !10

11:                                               ; preds = %4
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !17
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #5, !srcloc !18
  %16 = add i32 %15, %8
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #7, !srcloc !19
  br label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #7, !srcloc !20
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #7, !srcloc !21
  br label %24

24:                                               ; preds = %20, %11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %25 = load ptr, ptr %5, align 64
  %26 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.elevator_type, ptr %30, i32 0, i32 1, i32 13
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %0, ptr noundef %2, i1 noundef zeroext false) #7
  br label %59

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %35 = load i32, ptr %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = or i1 %36, %3
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 11
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  tail call void @blk_mq_try_issue_list_directly(ptr noundef %0, ptr noundef %2) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  br label %55

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 58
  %46 = tail call i32 @__srcu_read_lock(ptr noundef %45) #7
  tail call void @blk_mq_try_issue_list_directly(ptr noundef %0, ptr noundef %2) #7
  %47 = load ptr, ptr %5, align 64
  %48 = getelementptr inbounds %struct.request_queue, ptr %47, i32 0, i32 58
  %49 = icmp ugt i32 %46, 1
  %50 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %54, !prof !23

53:                                               ; preds = %44
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 189, i32 noundef 9, ptr noundef null) #7
  br label %54

54:                                               ; preds = %53, %44
  tail call void @__srcu_read_unlock(ptr noundef %48, i32 noundef %46) #7
  br label %55

55:                                               ; preds = %54, %43
  %56 = load volatile ptr, ptr %2, align 4
  %57 = icmp eq ptr %56, %2
  br i1 %57, label %60, label %58

58:                                               ; preds = %55, %33
  tail call void @blk_mq_insert_requests(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %59

59:                                               ; preds = %58, %29
  tail call void @blk_mq_run_hw_queue(ptr noundef %0, i1 noundef zeroext %3) #7
  br label %60

60:                                               ; preds = %59, %55
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %61 = load volatile i32, ptr %7, align 4
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73, !prof !10

64:                                               ; preds = %60
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !17
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #5, !srcloc !18
  %69 = add i32 %68, %61
  %70 = inttoptr i32 %69 to ptr
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, -1
  store i32 %72, ptr %70, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #7, !srcloc !19
  br label %83

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 2, i32 1
  %75 = load ptr, ptr %74, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #7, !srcloc !20
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #7, !srcloc !25
  %77 = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83, !prof !23

79:                                               ; preds = %73
  %80 = load ptr, ptr %74, align 4
  %81 = getelementptr inbounds %struct.percpu_ref_data, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %7) #7
  br label %83

83:                                               ; preds = %79, %73, %64
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_try_issue_list_directly(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_insert_requests(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_init_sched(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 20
  store i32 %9, ptr %10, align 4
  br label %174

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %4, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 128)
  %17 = shl nuw nsw i32 %16, 1
  %18 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 20
  store i32 %17, ptr %18, align 4
  %19 = and i32 %13, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %11
  %22 = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %4, i32 noundef -1, i32 noundef 2048) #7
  %23 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %174, label %25

25:                                               ; preds = %21
  tail call void @blk_mq_tag_update_sched_shared_tags(ptr noundef %0) #7
  br label %26

26:                                               ; preds = %25, %11
  %27 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %32 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  br label %33

33:                                               ; preds = %51, %30
  %34 = phi i32 [ 0, %30 ], [ %54, %51 ]
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %38, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load ptr, ptr %32, align 8
  br label %51

45:                                               ; preds = %33
  %46 = load i32, ptr %18, align 4
  %47 = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %38, i32 noundef %34, i32 noundef %46) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 20
  store ptr null, ptr %50, align 4
  br label %114

51:                                               ; preds = %45, %43
  %52 = phi ptr [ %44, %43 ], [ %47, %45 ]
  %53 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 20
  store ptr %52, ptr %53, align 4
  %54 = add nuw i32 %34, 1
  %55 = load i32, ptr %27, align 8
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %33, label %57

57:                                               ; preds = %51, %26
  %58 = getelementptr inbounds %struct.elevator_type, ptr %1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %0, ptr noundef nonnull %1) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %114

62:                                               ; preds = %57
  tail call void @blk_mq_debugfs_register_sched(ptr noundef %0) #7
  %63 = load i32, ptr %27, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %174, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %67 = getelementptr inbounds %struct.elevator_type, ptr %1, i32 0, i32 1, i32 2
  br label %68

68:                                               ; preds = %110, %65
  %69 = phi i32 [ 0, %65 ], [ %111, %110 ]
  %70 = load ptr, ptr %66, align 4
  %71 = getelementptr ptr, ptr %70, i32 %69
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %67, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %110, label %75

75:                                               ; preds = %68
  %76 = tail call i32 %73(ptr noundef %72, i32 noundef %69) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %81, i32 0, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, ptr %27, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %108, label %92

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  %91 = load ptr, ptr %90, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %81, ptr noundef %91, i32 noundef -1) #7
  br label %108

92:                                               ; preds = %104, %86
  %93 = phi i32 [ %105, %104 ], [ %87, %86 ]
  %94 = phi i32 [ %106, %104 ], [ 0, %86 ]
  %95 = load ptr, ptr %66, align 4
  %96 = getelementptr ptr, ptr %95, i32 %94
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %97, i32 0, i32 20
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load ptr, ptr %3, align 4
  tail call void @blk_mq_free_rqs(ptr noundef %102, ptr noundef nonnull %99, i32 noundef %94) #7
  %103 = load i32, ptr %27, align 8
  br label %104

104:                                              ; preds = %101, %92
  %105 = phi i32 [ %93, %92 ], [ %103, %101 ]
  %106 = add nuw i32 %94, 1
  %107 = icmp ult i32 %106, %105
  br i1 %107, label %92, label %108

108:                                              ; preds = %104, %89, %86
  tail call void @blk_mq_exit_sched(ptr noundef %0, ptr noundef %80)
  %109 = getelementptr inbounds %struct.elevator_queue, ptr %80, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %109) #7
  br label %174

110:                                              ; preds = %75, %68
  tail call void @blk_mq_debugfs_register_sched_hctx(ptr noundef %0, ptr noundef %72) #7
  %111 = add nuw i32 %69, 1
  %112 = load i32, ptr %27, align 8
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %68, label %174

114:                                              ; preds = %57, %49
  %115 = phi i32 [ -12, %49 ], [ %60, %57 ]
  %116 = load ptr, ptr %3, align 4
  %117 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %116, i32 0, i32 9
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load i32, ptr %27, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %168, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %130

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  %128 = load ptr, ptr %127, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %116, ptr noundef %128, i32 noundef -1) #7
  %129 = load i32, ptr %27, align 8
  br label %146

130:                                              ; preds = %142, %124
  %131 = phi i32 [ %122, %124 ], [ %143, %142 ]
  %132 = phi i32 [ 0, %124 ], [ %144, %142 ]
  %133 = load ptr, ptr %125, align 4
  %134 = getelementptr ptr, ptr %133, i32 %132
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %135, i32 0, i32 20
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %130
  %140 = load ptr, ptr %3, align 4
  tail call void @blk_mq_free_rqs(ptr noundef %140, ptr noundef nonnull %137, i32 noundef %132) #7
  %141 = load i32, ptr %27, align 8
  br label %142

142:                                              ; preds = %139, %130
  %143 = phi i32 [ %131, %130 ], [ %141, %139 ]
  %144 = add nuw i32 %132, 1
  %145 = icmp ult i32 %144, %143
  br i1 %145, label %130, label %146

146:                                              ; preds = %142, %126
  %147 = phi i32 [ %129, %126 ], [ %143, %142 ]
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %151

151:                                              ; preds = %164, %149
  %152 = phi i32 [ %147, %149 ], [ %165, %164 ]
  %153 = phi i32 [ 0, %149 ], [ %166, %164 ]
  %154 = load ptr, ptr %150, align 4
  %155 = getelementptr ptr, ptr %154, i32 %153
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %156, i32 0, i32 20
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %151
  br i1 %20, label %161, label %162

161:                                              ; preds = %160
  tail call void @blk_mq_free_rq_map(ptr noundef nonnull %158) #7
  br label %162

162:                                              ; preds = %161, %160
  store ptr null, ptr %157, align 4
  %163 = load i32, ptr %27, align 8
  br label %164

164:                                              ; preds = %162, %151
  %165 = phi i32 [ %152, %151 ], [ %163, %162 ]
  %166 = add nuw i32 %153, 1
  %167 = icmp ult i32 %166, %165
  br i1 %167, label %151, label %168

168:                                              ; preds = %164, %146, %121
  br i1 %20, label %172, label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  %171 = load ptr, ptr %170, align 8
  tail call void @blk_mq_free_rq_map(ptr noundef %171) #7
  store ptr null, ptr %170, align 8
  br label %172

172:                                              ; preds = %169, %168
  %173 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  store ptr null, ptr %173, align 4
  br label %174

174:                                              ; preds = %172, %110, %108, %62, %21, %6
  %175 = phi i32 [ %115, %172 ], [ %76, %108 ], [ 0, %6 ], [ -12, %21 ], [ 0, %62 ], [ 0, %110 ]
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_sched(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_free_rqs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  %16 = load ptr, ptr %15, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %3, ptr noundef %16, i32 noundef -1) #7
  br label %33

17:                                               ; preds = %29, %12
  %18 = phi i32 [ %10, %12 ], [ %30, %29 ]
  %19 = phi i32 [ 0, %12 ], [ %31, %29 ]
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %22, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr %2, align 4
  tail call void @blk_mq_free_rqs(ptr noundef %27, ptr noundef nonnull %24, i32 noundef %19) #7
  %28 = load i32, ptr %9, align 8
  br label %29

29:                                               ; preds = %26, %17
  %30 = phi i32 [ %18, %17 ], [ %28, %26 ]
  %31 = add nuw i32 %19, 1
  %32 = icmp ult i32 %31, %30
  br i1 %32, label %17, label %33

33:                                               ; preds = %29, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_exit_sched(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %8

8:                                                ; preds = %22, %6
  %9 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  tail call void @blk_mq_debugfs_unregister_sched_hctx(ptr noundef %12) #7
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.elevator_type, ptr %13, i32 0, i32 1, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %15(ptr noundef %12, i32 noundef %9) #7
  store ptr null, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %17, %8
  %23 = add nuw i32 %9, 1
  %24 = load i32, ptr %3, align 8
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %8, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i32 [ %29, %26 ], [ 0, %2 ]
  tail call void @blk_mq_debugfs_unregister_sched(ptr noundef %0) #7
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.elevator_type, ptr %32, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef %1) #7
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, ptr %3, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %42 = icmp eq i32 %31, 0
  br label %43

43:                                               ; preds = %56, %40
  %44 = phi i32 [ %38, %40 ], [ %57, %56 ]
  %45 = phi i32 [ 0, %40 ], [ %58, %56 ]
  %46 = load ptr, ptr %41, align 4
  %47 = getelementptr ptr, ptr %46, i32 %45
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %48, i32 0, i32 20
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  br i1 %42, label %53, label %54

53:                                               ; preds = %52
  tail call void @blk_mq_free_rq_map(ptr noundef nonnull %50) #7
  br label %54

54:                                               ; preds = %53, %52
  store ptr null, ptr %49, align 4
  %55 = load i32, ptr %3, align 8
  br label %56

56:                                               ; preds = %54, %43
  %57 = phi i32 [ %44, %43 ], [ %55, %54 ]
  %58 = add nuw i32 %45, 1
  %59 = icmp ult i32 %58, %57
  br i1 %59, label %43, label %60

60:                                               ; preds = %56, %37
  %61 = icmp eq i32 %31, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  %64 = load ptr, ptr %63, align 8
  tail call void @blk_mq_free_rq_map(ptr noundef %64) #7
  store ptr null, ptr %63, align 8
  br label %65

65:                                               ; preds = %62, %60
  %66 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  store ptr null, ptr %66, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_sched_hctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_sched_hctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_sched(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blk_mq_do_dispatch_sched(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %7 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %10

10:                                               ; preds = %146, %1
  %11 = load ptr, ptr %4, align 64
  %12 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %5, align 4
  %14 = load i32, ptr %6, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %18, %16 ], [ 1, %10 ]
  %21 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 5
  %22 = call i32 @llvm.umax.i32(i32 %20, i32 1) #7
  br label %23

23:                                               ; preds = %93, %19
  %24 = phi i1 [ false, %19 ], [ %75, %93 ]
  %25 = phi i32 [ 0, %19 ], [ %71, %93 ]
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.elevator_type, ptr %26, i32 0, i32 1, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call zeroext i1 %28(ptr noundef %0) #7
  br i1 %31, label %32, label %96

32:                                               ; preds = %30, %23
  %33 = load volatile ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %34 = icmp eq ptr %33, %7
  br i1 %34, label %35, label %96

35:                                               ; preds = %32
  %36 = load ptr, ptr %8, align 4
  %37 = icmp eq ptr %36, %7
  br i1 %37, label %38, label %96

38:                                               ; preds = %35
  %39 = load ptr, ptr %21, align 8
  %40 = getelementptr inbounds %struct.blk_mq_ops, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = call i32 %41(ptr noundef %11) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %96, label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %44, %43 ], [ 0, %38 ]
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr inbounds %struct.elevator_type, ptr %48, i32 0, i32 1, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = call ptr %50(ptr noundef %0) #7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load ptr, ptr %21, align 8
  %55 = getelementptr inbounds %struct.blk_mq_ops, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %96, label %58

58:                                               ; preds = %53
  call void %56(ptr noundef %11, i32 noundef %47) #7
  br label %96

59:                                               ; preds = %46
  %60 = load ptr, ptr %51, align 8
  %61 = getelementptr inbounds %struct.request_queue, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.blk_mq_ops, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  call void %64(ptr noundef nonnull %51, i32 noundef %47) #7
  br label %67

67:                                               ; preds = %66, %59
  %68 = getelementptr inbounds %struct.request, ptr %51, i32 0, i32 12
  %69 = load ptr, ptr %5, align 4
  store ptr %68, ptr %5, align 4
  store ptr %3, ptr %68, align 4
  %70 = getelementptr inbounds %struct.request, ptr %51, i32 0, i32 12, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  store volatile ptr %68, ptr %69, align 4
  %71 = add nuw i32 %25, 1
  %72 = getelementptr inbounds %struct.request, ptr %51, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = icmp ne ptr %73, %0
  %75 = select i1 %74, i1 true, i1 %24
  %76 = getelementptr inbounds %struct.request, ptr %51, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %90, label %79

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %73, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %73, i32 0, i32 19
  %86 = load ptr, ptr %85, align 16
  %87 = getelementptr inbounds %struct.blk_mq_tags, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr ptr, ptr %88, i32 %77
  store ptr %51, ptr %89, align 4
  br label %93

90:                                               ; preds = %79, %67
  %91 = call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %73, ptr noundef nonnull %51) #7
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  br i1 %75, label %103, label %142

93:                                               ; preds = %90, %84
  %94 = icmp eq i32 %71, %22
  br i1 %94, label %95, label %23

95:                                               ; preds = %93
  br i1 %75, label %103, label %142

96:                                               ; preds = %58, %53, %43, %35, %32, %30
  %97 = phi i1 [ false, %58 ], [ false, %53 ], [ false, %30 ], [ true, %32 ], [ true, %35 ], [ false, %43 ]
  %98 = phi i1 [ true, %58 ], [ true, %53 ], [ false, %30 ], [ false, %32 ], [ false, %35 ], [ false, %43 ]
  %99 = icmp eq i32 %25, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  br i1 %98, label %101, label %146

101:                                              ; preds = %100
  call void @blk_mq_delay_run_hw_queues(ptr noundef %11, i32 noundef 3) #7
  br label %146

102:                                              ; preds = %96
  br i1 %24, label %103, label %142

103:                                              ; preds = %102, %95, %92
  %104 = phi i1 [ false, %92 ], [ %97, %102 ], [ false, %95 ]
  call void @list_sort(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @sched_rq_cmp) #7
  %105 = load ptr, ptr %3, align 8
  br label %106

106:                                              ; preds = %136, %103
  %107 = phi ptr [ %105, %103 ], [ %140, %136 ]
  %108 = phi i1 [ false, %103 ], [ %139, %136 ]
  %109 = getelementptr i8, ptr %107, i32 -48
  %110 = load ptr, ptr %109, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %9, align 4
  %111 = icmp eq ptr %107, %3
  br i1 %111, label %129, label %112

112:                                              ; preds = %125, %106
  %113 = phi ptr [ %127, %125 ], [ %107, %106 ]
  %114 = phi i32 [ %126, %125 ], [ 0, %106 ]
  %115 = getelementptr i8, ptr %113, i32 -48
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, %110
  br i1 %117, label %125, label %118

118:                                              ; preds = %112
  %119 = icmp eq ptr %107, %113
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  store volatile ptr %2, ptr %2, align 8
  store ptr %2, ptr %9, align 4
  br label %136

121:                                              ; preds = %118
  store ptr %107, ptr %2, align 8
  %122 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  store ptr %2, ptr %122, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  store ptr %124, ptr %9, align 4
  store ptr %2, ptr %124, align 4
  store ptr %113, ptr %3, align 8
  store ptr %3, ptr %123, align 4
  br label %136

125:                                              ; preds = %112
  %126 = add i32 %114, 1
  %127 = load ptr, ptr %113, align 4
  %128 = icmp eq ptr %127, %3
  br i1 %128, label %129, label %112

129:                                              ; preds = %125, %106
  %130 = phi i32 [ 0, %106 ], [ %126, %125 ]
  %131 = load volatile ptr, ptr %3, align 8
  %132 = icmp eq ptr %131, %3
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %5, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %2, ptr %135, align 4
  store ptr %131, ptr %2, align 8
  store ptr %2, ptr %134, align 4
  store ptr %134, ptr %9, align 4
  store volatile ptr %3, ptr %3, align 8
  store ptr %3, ptr %5, align 4
  br label %136

136:                                              ; preds = %133, %129, %121, %120
  %137 = phi i32 [ %130, %133 ], [ %130, %129 ], [ %114, %121 ], [ %114, %120 ]
  %138 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %110, ptr noundef nonnull %2, i32 noundef %137) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %139 = or i1 %108, %138
  %140 = load volatile ptr, ptr %3, align 8
  %141 = icmp eq ptr %140, %3
  br i1 %141, label %146, label %106

142:                                              ; preds = %102, %95, %92
  %143 = phi i32 [ %71, %92 ], [ %25, %102 ], [ %22, %95 ]
  %144 = phi i1 [ false, %92 ], [ %97, %102 ], [ false, %95 ]
  %145 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %143) #7
  br label %146

146:                                              ; preds = %142, %136, %101, %100
  %147 = phi i1 [ %144, %142 ], [ %97, %101 ], [ %97, %100 ], [ %104, %136 ]
  %148 = phi i1 [ %145, %142 ], [ false, %101 ], [ false, %100 ], [ %139, %136 ]
  %149 = zext i1 %148 to i32
  %150 = select i1 %147, i32 -11, i32 %149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %10, label %152

152:                                              ; preds = %146
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blk_mq_do_dispatch_ctx(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1, i32 1
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 5
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 14
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 15
  br label %15

15:                                               ; preds = %51, %1
  %16 = phi ptr [ %7, %1 ], [ %69, %51 ]
  %17 = load volatile ptr, ptr %8, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %18 = icmp eq ptr %17, %8
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, %8
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  %23 = call zeroext i1 @sbitmap_any_bit_set(ptr noundef %10) #7
  br i1 %23, label %24, label %73

24:                                               ; preds = %22
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr inbounds %struct.blk_mq_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i32 %27(ptr noundef %4) #7
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ %30, %29 ], [ 0, %24 ]
  %34 = call ptr @blk_mq_dequeue_from_ctx(ptr noundef %0, ptr noundef %16) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load ptr, ptr %11, align 8
  %38 = getelementptr inbounds %struct.blk_mq_ops, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  call void %39(ptr noundef %4, i32 noundef %33) #7
  br label %42

42:                                               ; preds = %41, %36
  call void @blk_mq_delay_run_hw_queues(ptr noundef %4, i32 noundef 3) #7
  br label %73

43:                                               ; preds = %32
  %44 = load ptr, ptr %34, align 8
  %45 = getelementptr inbounds %struct.request_queue, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.blk_mq_ops, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  call void %48(ptr noundef nonnull %34, i32 noundef %33) #7
  br label %51

51:                                               ; preds = %50, %43
  %52 = getelementptr inbounds %struct.request, ptr %34, i32 0, i32 12
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store ptr %53, ptr %52, align 4
  %55 = getelementptr inbounds %struct.request, ptr %34, i32 0, i32 12, i32 0, i32 1
  store ptr %2, ptr %55, align 4
  store volatile ptr %52, ptr %2, align 8
  %56 = getelementptr inbounds %struct.request, ptr %34, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load i16, ptr %12, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr %struct.blk_mq_ctx, ptr %57, i32 0, i32 2, i32 %59
  %61 = load i16, ptr %60, align 2
  %62 = add i16 %61, 1
  %63 = load i16, ptr %13, align 2
  %64 = icmp eq i16 %62, %63
  %65 = select i1 %64, i16 0, i16 %62
  %66 = load ptr, ptr %14, align 16
  %67 = zext i16 %65 to i32
  %68 = getelementptr ptr, ptr %66, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.request, ptr %34, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %71, ptr noundef nonnull %2, i32 noundef 1) #7
  br i1 %72, label %15, label %73

73:                                               ; preds = %51, %42, %29, %22, %19, %15
  %74 = phi i32 [ 0, %42 ], [ -11, %15 ], [ -11, %19 ], [ 0, %22 ], [ 0, %29 ], [ 0, %51 ]
  %75 = phi ptr [ %16, %42 ], [ %16, %15 ], [ %16, %19 ], [ %16, %22 ], [ %16, %29 ], [ %69, %51 ]
  store volatile ptr %75, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_flush_busy_ctxs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_delay_run_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sched_rq_cmp(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr i8, ptr %1, i32 -48
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %2, i32 -48
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ugt ptr %5, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_mq_get_driver_tag(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sbitmap_any_bit_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_dequeue_from_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_map_and_rqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tag_update_sched_shared_tags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rq_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!9 = !{i64 2153926820}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148497935}
!12 = !{i64 2148941930}
!13 = !{i64 2148937754}
!14 = !{i64 2148937829, i64 2148937856, i64 2148937903, i64 2148937925, i64 2148937953, i64 2148937973}
!15 = !{i64 2148964933}
!16 = !{i64 2149060285}
!17 = !{i64 321251, i64 321312}
!18 = !{i64 339951}
!19 = !{i64 324268}
!20 = !{i64 426012, i64 2147915983, i64 2147916009, i64 2147916056, i64 2147916078, i64 2147916106, i64 2147916126}
!21 = !{i64 2147928195, i64 2147928221, i64 2147928250, i64 2147928284, i64 2147928315, i64 2147928338}
!22 = !{i64 2149060502}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2148028850}
!25 = !{i64 2147931236, i64 2147931268, i64 2147931297, i64 2147931331, i64 2147931362, i64 2147931385}
!26 = !{i64 2148029053}
