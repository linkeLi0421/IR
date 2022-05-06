; ModuleID = '/llk/IR/block/blk-mq-tag.c_pt.bc'
source_filename = "../block/blk-mq-tag.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_tagset_busy_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_tagset_busy_iter\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_tagset_busy_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_tagset_wait_completed_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_tagset_wait_completed_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_tagset_wait_completed_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_unique_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_unique_tag\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_unique_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.blk_mq_alloc_data = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.sbq_wait = type { ptr, %struct.wait_queue_entry }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [48 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blk_mq_ctx = type { %struct.anon.1, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [60 x i8] }
%struct.anon.1 = type { %struct.spinlock, [3 x %struct.list_head], [36 x i8] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.66, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.72, %union.anon.73, %union.anon.74, %union.anon.79, ptr, ptr }
%union.anon.66 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.74 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, ptr }
%union.anon.79 = type { i64, [8 x i8] }
%struct.sbitmap_word = type { i32, [60 x i8], i32, [60 x i8], i32, [60 x i8] }

@blk_mq_get_tag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"block/blk-mq-tag.c\00", align 1
@__kstrtab_blk_mq_tagset_busy_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_tagset_busy_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_tagset_busy_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_tagset_busy_iter to i32), ptr @__kstrtab_blk_mq_tagset_busy_iter, ptr @__kstrtabns_blk_mq_tagset_busy_iter }, section "___ksymtab+blk_mq_tagset_busy_iter", align 4
@__kstrtab_blk_mq_tagset_wait_completed_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_tagset_wait_completed_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_tagset_wait_completed_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_tagset_wait_completed_request to i32), ptr @__kstrtab_blk_mq_tagset_wait_completed_request, ptr @__kstrtabns_blk_mq_tagset_wait_completed_request }, section "___ksymtab+blk_mq_tagset_wait_completed_request", align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\013blk-mq: tag depth too large\0A\00", align 1
@__kstrtab_blk_mq_unique_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_unique_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_unique_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_unique_tag to i32), ptr @__kstrtab_blk_mq_unique_tag, ptr @__kstrtabns_blk_mq_unique_tag }, section "___ksymtab+blk_mq_unique_tag", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_blk_mq_tagset_busy_iter, ptr @__ksymtab_blk_mq_tagset_wait_completed_request, ptr @__ksymtab_blk_mq_unique_tag], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__blk_mq_tag_busy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 11
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 268435456
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %6
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 28, ptr noundef %9) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %35

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %17) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21, %13
  %25 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr inbounds %struct.blk_mq_tags, ptr %26, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #10, !srcloc !10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #10, !srcloc !11
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %25, align 16
  %33 = getelementptr inbounds %struct.blk_mq_tags, ptr %32, i32 0, i32 3
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %33, i32 noundef %29) #10
  %34 = getelementptr inbounds %struct.blk_mq_tags, ptr %32, i32 0, i32 4
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %34, i32 noundef %29) #10
  br label %35

35:                                               ; preds = %31, %24, %21, %16, %13, %6
  ret i1 true
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_tag_wakeup_all(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 3
  tail call void @sbitmap_queue_wake_all(ptr noundef %3) #10
  br i1 %1, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 4
  tail call void @sbitmap_queue_wake_all(ptr noundef %5) #10
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_wake_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__blk_mq_tag_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 11
  %12 = tail call i32 @_test_and_clear_bit(i32 noundef 28, ptr noundef %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %16 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds %struct.blk_mq_tags, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #10, !srcloc !14
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.blk_mq_tags, ptr %3, i32 0, i32 3
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %24, i32 noundef %21) #10
  %25 = getelementptr inbounds %struct.blk_mq_tags, ptr %3, i32 0, i32 4
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %25, i32 noundef %21) #10
  br label %26

26:                                               ; preds = %23, %18
  %27 = getelementptr inbounds %struct.blk_mq_tags, ptr %3, i32 0, i32 3
  tail call void @sbitmap_queue_wake_all(ptr noundef %27) #10
  br label %28

28:                                               ; preds = %26, %14, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_get_tags(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4194304
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %9, i32 0, i32 20
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %9, i32 0, i32 19
  %12 = select i1 %7, ptr %11, ptr %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.blk_mq_tags, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %9, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = tail call i32 @__sbitmap_queue_get_batch(ptr noundef %14, i32 noundef %1, ptr noundef %2) #10
  %30 = getelementptr inbounds %struct.blk_mq_tags, ptr %13, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %2, align 4
  %33 = add i32 %32, %31
  store i32 %33, ptr %2, align 4
  br label %34

34:                                               ; preds = %28, %23, %18, %3
  %35 = phi i32 [ %29, %28 ], [ 0, %23 ], [ 0, %18 ], [ 0, %3 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get_batch(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_get_tag(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.sbq_wait, align 8
  %3 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4194304
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %8, i32 0, i32 20
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %8, i32 0, i32 19
  %11 = select i1 %6, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  %13 = getelementptr inbounds %struct.sbq_wait, ptr %2, i32 0, i32 1, i32 1
  %14 = tail call ptr @llvm.thread.pointer() #10
  store i64 0, ptr %2, align 8
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sbq_wait, ptr %2, i32 0, i32 1, i32 2
  store ptr @autoremove_wake_function, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sbq_wait, ptr %2, i32 0, i32 1, i32 3
  store ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sbq_wait, ptr %2, i32 0, i32 1, i32 3, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.blk_mq_tags, ptr %12, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29, !prof !16

26:                                               ; preds = %22
  %27 = load i1, ptr @blk_mq_get_tag.__already_done, align 1
  br i1 %27, label %161, label %28, !prof !17

28:                                               ; preds = %26
  store i1 true, ptr @blk_mq_get_tag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #10
  br label %161

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.blk_mq_tags, ptr %12, i32 0, i32 4
  br label %35

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.blk_mq_tags, ptr %12, i32 0, i32 3
  %33 = getelementptr inbounds %struct.blk_mq_tags, ptr %12, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %37 = phi i32 [ 0, %29 ], [ %34, %31 ]
  %38 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %0, ptr noundef %36)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %147

40:                                               ; preds = %35
  %41 = load i32, ptr %18, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %161

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.sbitmap_queue, ptr %36, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  br label %65

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %45, i32 0, i32 18
  %52 = getelementptr inbounds %struct.sbitmap_queue, ptr %36, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load volatile i32, ptr %51, align 4
  %55 = load volatile i32, ptr %51, align 4
  %56 = add i32 %55, 1
  %57 = and i32 %56, 7
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #10, !srcloc !10
  br label %58

58:                                               ; preds = %58, %50
  %59 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 %55, i32 %57, ptr elementtype(i32) %51) #10, !srcloc !19
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %58

62:                                               ; preds = %58
  %63 = getelementptr %struct.sbq_wait_state, ptr %53, i32 %54
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %64 = load ptr, ptr %7, align 4
  br label %65

65:                                               ; preds = %62, %47
  %66 = phi ptr [ %64, %62 ], [ null, %47 ]
  %67 = phi ptr [ %63, %62 ], [ %49, %47 ]
  call void @blk_mq_run_hw_queue(ptr noundef %66, i1 noundef zeroext false) #10
  %68 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %0, ptr noundef %36)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %142

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %72 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 7
  %73 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 3
  call void @sbitmap_prepare_to_wait(ptr noundef %36, ptr noundef %67, ptr noundef nonnull %2, i32 noundef 2) #10
  %74 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %0, ptr noundef %36)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %79, label %142

76:                                               ; preds = %137
  call void @sbitmap_prepare_to_wait(ptr noundef %112, ptr noundef %139, ptr noundef nonnull %2, i32 noundef 2) #10
  %77 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %0, ptr noundef %112)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %142

79:                                               ; preds = %76, %70
  %80 = phi ptr [ %112, %76 ], [ %36, %70 ]
  %81 = phi ptr [ %139, %76 ], [ %67, %70 ]
  call void @io_schedule() #10
  call void @sbitmap_finish_wait(ptr noundef %80, ptr noundef %81, ptr noundef nonnull %2) #10
  %82 = load ptr, ptr %0, align 4
  %83 = load i32, ptr %71, align 8
  %84 = getelementptr inbounds %struct.request_queue, ptr %82, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = ptrtoint ptr %85 to i32
  %87 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %86
  %90 = inttoptr i32 %89 to ptr
  store ptr %90, ptr %72, align 4
  %91 = load i32, ptr %73, align 4
  %92 = and i32 %91, 16777216
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %91, 255
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = select i1 %93, i32 %96, i32 2
  %98 = getelementptr %struct.blk_mq_ctx, ptr %90, i32 0, i32 3, i32 %97
  %99 = load ptr, ptr %98, align 4
  store ptr %99, ptr %7, align 4
  %100 = load i32, ptr %3, align 4
  %101 = and i32 %100, 4194304
  %102 = icmp eq i32 %101, 0
  %103 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %99, i32 0, i32 20
  %104 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %99, i32 0, i32 19
  %105 = select i1 %102, ptr %104, ptr %103
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %18, align 4
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.blk_mq_tags, ptr %106, i32 0, i32 4
  %111 = getelementptr inbounds %struct.blk_mq_tags, ptr %106, i32 0, i32 3
  %112 = select i1 %109, ptr %111, ptr %110
  %113 = icmp eq ptr %112, %80
  br i1 %113, label %116, label %114

114:                                              ; preds = %79
  call void @sbitmap_queue_wake_up(ptr noundef %80) #10
  %115 = load ptr, ptr %7, align 4
  br label %116

116:                                              ; preds = %114, %79
  %117 = phi ptr [ %115, %114 ], [ %99, %79 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.sbitmap_queue, ptr %112, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  br label %137

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %117, i32 0, i32 18
  %124 = getelementptr inbounds %struct.sbitmap_queue, ptr %112, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = load volatile i32, ptr %123, align 4
  %127 = load volatile i32, ptr %123, align 4
  %128 = add i32 %127, 1
  %129 = and i32 %128, 7
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %123) #10, !srcloc !10
  br label %130

130:                                              ; preds = %130, %122
  %131 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %123, ptr %123, i32 %127, i32 %129, ptr elementtype(i32) %123) #10, !srcloc !19
  %132 = extractvalue { i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %130

134:                                              ; preds = %130
  %135 = getelementptr %struct.sbq_wait_state, ptr %125, i32 %126
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %136 = load ptr, ptr %7, align 4
  br label %137

137:                                              ; preds = %134, %119
  %138 = phi ptr [ %136, %134 ], [ null, %119 ]
  %139 = phi ptr [ %135, %134 ], [ %121, %119 ]
  call void @blk_mq_run_hw_queue(ptr noundef %138, i1 noundef zeroext false) #10
  %140 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %0, ptr noundef %112)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %76, label %142

142:                                              ; preds = %137, %76, %70, %65
  %143 = phi ptr [ %36, %65 ], [ %36, %70 ], [ %112, %76 ], [ %112, %137 ]
  %144 = phi ptr [ %67, %65 ], [ %67, %70 ], [ %139, %76 ], [ %139, %137 ]
  %145 = phi ptr [ %12, %65 ], [ %12, %70 ], [ %106, %76 ], [ %106, %137 ]
  %146 = phi i32 [ %68, %65 ], [ %74, %70 ], [ %77, %76 ], [ %140, %137 ]
  call void @sbitmap_finish_wait(ptr noundef %143, ptr noundef %144, ptr noundef nonnull %2) #10
  br label %147

147:                                              ; preds = %142, %35
  %148 = phi i32 [ %38, %35 ], [ %146, %142 ]
  %149 = phi ptr [ %12, %35 ], [ %145, %142 ]
  %150 = load ptr, ptr %7, align 4
  %151 = getelementptr inbounds %struct.anon, ptr %150, i32 0, i32 2
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %152, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155, !prof !17

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 7
  %157 = load ptr, ptr %156, align 4
  %158 = add i32 %148, %37
  call void @blk_mq_put_tag(ptr noundef %149, ptr noundef %157, i32 noundef %158)
  br label %161

159:                                              ; preds = %147
  %160 = add i32 %148, %37
  br label %161

161:                                              ; preds = %159, %155, %40, %28, %26
  %162 = phi i32 [ -1, %155 ], [ %160, %159 ], [ -1, %28 ], [ -1, %26 ], [ -1, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__blk_mq_get_tag(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %60

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %60, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %1, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %60, label %24

24:                                               ; preds = %21
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 7
  %29 = load ptr, ptr %28, align 64
  %30 = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 11
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 268435456
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %39

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 2
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %34, %27
  %40 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 19
  %41 = load ptr, ptr %40, align 16
  %42 = getelementptr inbounds %struct.blk_mq_tags, ptr %41, i32 0, i32 2
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = add i32 %22, -1
  %47 = add i32 %46, %43
  %48 = udiv i32 %47, %43
  %49 = tail call i32 @llvm.umax.i32(i32 %48, i32 4) #10
  br i1 %26, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 7
  %52 = load ptr, ptr %51, align 64
  %53 = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 29
  br label %56

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 25
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi ptr [ %53, %50 ], [ %55, %54 ]
  %58 = load volatile i32, ptr %57, align 4
  %59 = icmp ult i32 %58, %49
  br i1 %59, label %60, label %68

60:                                               ; preds = %56, %39, %34, %27, %21, %16, %12, %7, %2
  %61 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @__sbitmap_queue_get_shallow(ptr noundef %1, i32 noundef %62) #10
  br label %68

66:                                               ; preds = %60
  %67 = tail call i32 @__sbitmap_queue_get(ptr noundef %1) #10
  br label %68

68:                                               ; preds = %66, %64, %56
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ], [ -1, %56 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_prepare_to_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_finish_wait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_put_tag(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = sub i32 %2, %5
  %9 = load i32, ptr %0, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %12, label %11, !prof !17

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq-tag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #10, !srcloc !21
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.blk_mq_ctx, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 64
  tail call void @sbitmap_queue_clear(ptr noundef %13, i32 noundef %8, i32 noundef %15) #10
  br label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %struct.blk_mq_ctx, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 64
  tail call void @sbitmap_queue_clear(ptr noundef %17, i32 noundef %2, i32 noundef %19) #10
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_put_tags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void @sbitmap_queue_clear_batch(ptr noundef %4, i32 noundef %6, ptr noundef %1, i32 noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear_batch(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_all_tag_iter(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 4
  tail call fastcc void @bt_tags_for_each(ptr noundef %0, ptr noundef %8, ptr noundef %1, ptr noundef %2, i32 noundef 5) #10
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 3
  tail call fastcc void @bt_tags_for_each(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_tagset_busy_iter(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %10, %8 ], [ 1, %3 ]
  %14 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  br label %15

15:                                               ; preds = %31, %12
  %16 = phi i32 [ 0, %12 ], [ %32, %31 ]
  %17 = load ptr, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr ptr, ptr %17, i32 %16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.blk_mq_tags, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.blk_mq_tags, ptr %21, i32 0, i32 4
  tail call fastcc void @bt_tags_for_each(ptr noundef nonnull %21, ptr noundef %28, ptr noundef %1, ptr noundef %2, i32 noundef 3) #10
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.blk_mq_tags, ptr %21, i32 0, i32 3
  tail call fastcc void @bt_tags_for_each(ptr noundef nonnull %21, ptr noundef %30, ptr noundef %1, ptr noundef %2, i32 noundef 2) #10
  br label %31

31:                                               ; preds = %29, %19, %15
  %32 = add nuw nsw i32 %16, 1
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %34, label %15

34:                                               ; preds = %31, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_tagset_wait_completed_request(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  br label %6

6:                                                ; preds = %37, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %11, %10 ], [ 1, %6 ]
  br label %15

15:                                               ; preds = %31, %13
  %16 = phi i32 [ 0, %13 ], [ %32, %31 ]
  %17 = load ptr, ptr %5, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr ptr, ptr %17, i32 %16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.blk_mq_tags, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.blk_mq_tags, ptr %21, i32 0, i32 4
  call fastcc void @bt_tags_for_each(ptr noundef nonnull %21, ptr noundef %28, ptr noundef nonnull @blk_mq_tagset_count_completed_rqs, ptr noundef nonnull %2, i32 noundef 3) #10
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.blk_mq_tags, ptr %21, i32 0, i32 3
  call fastcc void @bt_tags_for_each(ptr noundef nonnull %21, ptr noundef %30, ptr noundef nonnull @blk_mq_tagset_count_completed_rqs, ptr noundef nonnull %2, i32 noundef 2) #10
  br label %31

31:                                               ; preds = %29, %19, %15
  %32 = add nuw nsw i32 %16, 1
  %33 = icmp eq i32 %32, %14
  br i1 %33, label %34, label %15

34:                                               ; preds = %31
  %35 = load i32, ptr %2, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @msleep(i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %6

38:                                               ; preds = %34, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @blk_mq_tagset_count_completed_rqs(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) #3 {
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  %5 = load volatile i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %7, %3
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_queue_tag_busy_iter(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !17

8:                                                ; preds = %3
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !23
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !24
  %13 = add i32 %12, %5
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #10, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  br label %25

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 1, ptr elementtype(i32) %19) #10, !srcloc !28
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  br label %25

24:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  br label %75

25:                                               ; preds = %23, %8
  %26 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %27, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %48

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %27, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.blk_mq_tags, ptr %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.blk_mq_tags, ptr %40, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.blk_mq_tags, ptr %40, i32 0, i32 4
  tail call fastcc void @bt_for_each(ptr noundef null, ptr noundef %0, ptr noundef %46, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  br label %47

47:                                               ; preds = %45, %38
  tail call fastcc void @bt_for_each(ptr noundef null, ptr noundef %0, ptr noundef %41, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  br label %74

48:                                               ; preds = %70, %36
  %49 = phi i32 [ %34, %36 ], [ %71, %70 ]
  %50 = phi i32 [ 0, %36 ], [ %72, %70 ]
  %51 = load ptr, ptr %37, align 4
  %52 = getelementptr ptr, ptr %51, i32 %50
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %53, i32 0, i32 19
  %55 = load ptr, ptr %54, align 16
  %56 = getelementptr inbounds %struct.blk_mq_tags, ptr %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.blk_mq_tags, ptr %55, i32 0, i32 3
  %58 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %53, i32 0, i32 14
  %59 = load i16, ptr %58, align 2
  %60 = icmp ne i16 %59, 0
  %61 = icmp ne ptr %55, null
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.blk_mq_tags, ptr %55, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call fastcc void @bt_for_each(ptr noundef %53, ptr noundef %0, ptr noundef %56, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  br label %68

68:                                               ; preds = %67, %63
  tail call fastcc void @bt_for_each(ptr noundef %53, ptr noundef %0, ptr noundef %57, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  %69 = load i32, ptr %33, align 8
  br label %70

70:                                               ; preds = %68, %48
  %71 = phi i32 [ %49, %48 ], [ %69, %68 ]
  %72 = add nuw i32 %50, 1
  %73 = icmp ult i32 %72, %71
  br i1 %73, label %48, label %74

74:                                               ; preds = %70, %47, %32
  tail call void @blk_queue_exit(ptr noundef %0) #10
  br label %75

75:                                               ; preds = %74, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bt_for_each(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sbitmap, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %96, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sbitmap, ptr %2, i32 0, i32 4
  %13 = getelementptr inbounds %struct.sbitmap, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 49
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %16 = icmp eq ptr %0, null
  br label %17

17:                                               ; preds = %89, %11
  %18 = phi i32 [ %9, %11 ], [ %94, %89 ]
  %19 = phi i32 [ 0, %11 ], [ %93, %89 ]
  %20 = phi i32 [ 0, %11 ], [ %26, %89 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !30
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr %struct.sbitmap_word, ptr %21, i32 %19
  %23 = load i32, ptr %22, align 64
  %24 = sub i32 %18, %20
  %25 = call i32 @llvm.umin.i32(i32 %23, i32 %24) #10
  %26 = add i32 %25, %20
  %27 = getelementptr %struct.sbitmap_word, ptr %21, i32 %19, i32 2
  %28 = load i32, ptr %27, align 64
  %29 = getelementptr %struct.sbitmap_word, ptr %21, i32 %19, i32 4
  %30 = load i32, ptr %29, align 64
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  store i32 %32, ptr %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %17
  %35 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef %25, i32 noundef 0) #10
  %36 = icmp ult i32 %35, %25
  br i1 %36, label %41, label %89

37:                                               ; preds = %86, %85, %76
  %38 = add nuw i32 %42, 1
  %39 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef %25, i32 noundef %38) #10
  %40 = icmp ult i32 %39, %25
  br i1 %40, label %41, label %89

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %39, %37 ], [ %35, %34 ]
  %43 = load i32, ptr %8, align 4
  %44 = shl i32 %19, %43
  %45 = add i32 %44, %42
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %46, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %46, i32 0, i32 12
  %52 = select i1 %50, ptr %15, ptr %51
  %53 = load ptr, ptr %52, align 4
  br i1 %5, label %58, label %54

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.blk_mq_tags, ptr %53, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %45
  br label %58

58:                                               ; preds = %54, %41
  %59 = phi i32 [ %45, %41 ], [ %57, %54 ]
  %60 = getelementptr inbounds %struct.blk_mq_tags, ptr %53, i32 0, i32 8
  %61 = call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #10
  %62 = getelementptr inbounds %struct.blk_mq_tags, ptr %53, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr ptr, ptr %63, i32 %59
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, %59
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 21
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #10, !srcloc !10
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 0, i32 1, ptr elementtype(i32) %72) #10, !srcloc !28
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %67, %58
  call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #10
  br label %37

77:                                               ; preds = %71
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #10
  %78 = load ptr, ptr %65, align 8
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  br i1 %16, label %86, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, %0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %77
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %65) #10
  br label %37

86:                                               ; preds = %81, %80
  %87 = call zeroext i1 %3(ptr noundef nonnull %65, ptr noundef %4, i1 noundef zeroext %5) #10
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %65) #10
  br i1 %87, label %37, label %88

88:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %96

89:                                               ; preds = %37, %34, %17
  %90 = add i32 %19, 1
  %91 = load i32, ptr %13, align 4
  %92 = icmp ult i32 %90, %91
  %93 = select i1 %92, i32 %90, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %94 = load i32, ptr %2, align 4
  %95 = icmp ugt i32 %94, %26
  br i1 %95, label %17, label %96

96:                                               ; preds = %89, %88, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_init_bitmaps(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sub i32 %2, %3
  %8 = icmp eq i32 %5, 1
  %9 = tail call i32 @sbitmap_queue_init_node(ptr noundef %0, i32 noundef %7, i32 noundef -1, i1 noundef zeroext %8, i32 noundef 3264, i32 noundef %4) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = tail call i32 @sbitmap_queue_init_node(ptr noundef %1, i32 noundef %3, i32 noundef -1, i1 noundef zeroext %8, i32 noundef 3264, i32 noundef %4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void @free_percpu(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #10
  store ptr null, ptr %19, align 4
  br label %21

21:                                               ; preds = %14, %11, %6
  %22 = phi i32 [ -12, %14 ], [ -12, %6 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_mq_init_tags(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %0, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %32

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 120) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  store i32 %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 1
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 8
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3
  %16 = sub i32 %0, %1
  %17 = icmp eq i32 %3, 1
  %18 = tail call i32 @sbitmap_queue_init_node(ptr noundef %15, i32 noundef %16, i32 noundef -1, i1 noundef zeroext %17, i32 noundef 3264, i32 noundef %2) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 4
  %22 = tail call i32 @sbitmap_queue_init_node(ptr noundef %21, i32 noundef %1, i32 noundef -1, i1 noundef zeroext %17, i32 noundef 3264, i32 noundef %2) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8
  tail call void @free_percpu(ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #10
  store ptr null, ptr %29, align 4
  br label %31

31:                                               ; preds = %24, %12
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %32

32:                                               ; preds = %31, %20, %8, %6
  %33 = phi ptr [ null, %6 ], [ null, %31 ], [ null, %8 ], [ %10, %20 ]
  ret ptr %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_free_tags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @free_percpu(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  store ptr null, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @free_percpu(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 4, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #10
  store ptr null, ptr %12, align 4
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_tag_update_depth(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.blk_mq_tags, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %2
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ult i32 %10, %2
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 49
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ult i32 %2, 2049
  %18 = and i1 %17, %3
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %16, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %16, i32 noundef %26, i32 noundef %2) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 4
  %31 = load i32, ptr %25, align 4
  tail call void @blk_mq_free_map_and_rqs(ptr noundef %16, ptr noundef %30, i32 noundef %31) #10
  store ptr %27, ptr %1, align 4
  br label %35

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.blk_mq_tags, ptr %5, i32 0, i32 3
  %34 = sub i32 %2, %7
  tail call void @sbitmap_queue_resize(ptr noundef %33, i32 noundef %34) #10
  br label %35

35:                                               ; preds = %32, %29, %24, %19, %12, %4
  %36 = phi i32 [ -22, %4 ], [ 0, %29 ], [ 0, %32 ], [ -12, %24 ], [ 0, %19 ], [ -22, %12 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_map_and_rqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_map_and_rqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_tag_resize_shared_tags(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.blk_mq_tags, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %1, %7
  tail call void @sbitmap_queue_resize(ptr noundef %5, i32 noundef %8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_tag_update_sched_shared_tags(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.blk_mq_tags, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %6, %10
  tail call void @sbitmap_queue_resize(ptr noundef %4, i32 noundef %11) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @blk_mq_unique_tag(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 16
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 65535
  %10 = or i32 %9, %6
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_recalculate_wake_batch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get_shallow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bt_tags_for_each(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sbitmap, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %104, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sbitmap, ptr %1, i32 0, i32 4
  %16 = getelementptr inbounds %struct.sbitmap, ptr %1, i32 0, i32 2
  %17 = and i32 %4, 1
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %4, 4
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 8
  %24 = and i32 %4, 2
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %97, %14
  %27 = phi i32 [ %12, %14 ], [ %102, %97 ]
  %28 = phi i32 [ 0, %14 ], [ %101, %97 ]
  %29 = phi i32 [ 0, %14 ], [ %35, %97 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !30
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr %struct.sbitmap_word, ptr %30, i32 %28
  %32 = load i32, ptr %31, align 64
  %33 = sub i32 %27, %29
  %34 = call i32 @llvm.umin.i32(i32 %32, i32 %33) #10
  %35 = add i32 %34, %29
  %36 = getelementptr %struct.sbitmap_word, ptr %30, i32 %28, i32 2
  %37 = load i32, ptr %36, align 64
  %38 = getelementptr %struct.sbitmap_word, ptr %30, i32 %28, i32 4
  %39 = load i32, ptr %38, align 64
  %40 = xor i32 %39, -1
  %41 = and i32 %37, %40
  store i32 %41, ptr %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %97, label %43

43:                                               ; preds = %26
  %44 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef %34, i32 noundef 0) #10
  %45 = icmp ult i32 %44, %34
  br i1 %45, label %50, label %97

46:                                               ; preds = %95, %94, %93, %92, %82
  %47 = add nuw i32 %51, 1
  %48 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef %34, i32 noundef %47) #10
  %49 = icmp ult i32 %48, %34
  br i1 %49, label %50, label %97

50:                                               ; preds = %46, %43
  %51 = phi i32 [ %48, %46 ], [ %44, %43 ]
  %52 = load i32, ptr %11, align 4
  %53 = shl i32 %28, %52
  %54 = add i32 %53, %51
  br i1 %18, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr %21, align 4
  %57 = add i32 %56, %54
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i32 [ %54, %50 ], [ %57, %55 ]
  br i1 %20, label %64, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %22, align 4
  %62 = getelementptr ptr, ptr %61, i32 %59
  %63 = load ptr, ptr %62, align 4
  br label %82

64:                                               ; preds = %58
  %65 = call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #10
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr ptr, ptr %66, i32 %59
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.request, ptr %68, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %59
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.request, ptr %68, i32 0, i32 21
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #10, !srcloc !10
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 0, i32 1, ptr elementtype(i32) %75) #10, !srcloc !28
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  br label %80

80:                                               ; preds = %79, %74, %70, %64
  %81 = phi ptr [ %68, %79 ], [ null, %74 ], [ null, %70 ], [ null, %64 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %65) #10
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi ptr [ %63, %60 ], [ %81, %80 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %46, label %85

85:                                               ; preds = %82
  br i1 %25, label %90, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.request, ptr %83, i32 0, i32 20
  %88 = load volatile i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86, %85
  %91 = call zeroext i1 %2(ptr noundef nonnull %83, ptr noundef %3, i1 noundef zeroext %18) #10
  br i1 %20, label %94, label %95

92:                                               ; preds = %86
  br i1 %20, label %93, label %46

93:                                               ; preds = %92
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %83) #10
  br label %46

94:                                               ; preds = %90
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %83) #10
  br i1 %91, label %46, label %96

95:                                               ; preds = %90
  br i1 %91, label %46, label %96

96:                                               ; preds = %95, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %104

97:                                               ; preds = %46, %43, %26
  %98 = add i32 %28, 1
  %99 = load i32, ptr %16, align 4
  %100 = icmp ult i32 %98, %99
  %101 = select i1 %100, i32 %98, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %102 = load i32, ptr %1, align 4
  %103 = icmp ugt i32 %102, %35
  br i1 %103, label %26, label %104

104:                                              ; preds = %97, %96, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_rq_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_queue_init_node(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i64 2148027280}
!10 = !{i64 427275, i64 2147917246, i64 2147917272, i64 2147917319, i64 2147917341, i64 2147917369, i64 2147917389}
!11 = !{i64 2147930142, i64 2147930174, i64 2147930203, i64 2147930237, i64 2147930268, i64 2147930291}
!12 = !{i64 2148027483}
!13 = !{i64 2148030113}
!14 = !{i64 2147932499, i64 2147932531, i64 2147932560, i64 2147932594, i64 2147932625, i64 2147932648}
!15 = !{i64 2148030316}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148042860}
!19 = !{i64 413338, i64 413362, i64 413383, i64 413400, i64 413417}
!20 = !{i64 2148043060}
!21 = !{i64 2153238237, i64 2153238720, i64 2153238274, i64 2153238330, i64 2153238364, i64 2153238388, i64 2153238429, i64 2153238450, i64 2153238478, i64 2153238512}
!22 = !{i64 2149061548}
!23 = !{i64 322514, i64 322575}
!24 = !{i64 341214}
!25 = !{i64 325531}
!26 = !{i64 2149061765}
!27 = !{i64 2147928965}
!28 = !{i64 413844, i64 413869, i64 413891, i64 413907, i64 413919, i64 413939, i64 413963, i64 413979, i64 413991}
!29 = !{i64 2147929091}
!30 = !{!"auto-init"}
