; ModuleID = '/llk/IR/block/blk-timeout.c_pt.bc'
source_filename = "../block/blk-timeout.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_abort_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_abort_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_abort_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_blk_abort_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_abort_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_abort_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_abort_request to i32), ptr @__kstrtab_blk_abort_request, ptr @__kstrtabns_blk_abort_request }, section "___ksymtab_gpl+blk_abort_request", align 4
@__initcall__kmod_blk_timeout__273_99_blk_timeout_init7 = internal global ptr @blk_timeout_init, section ".initcall7.init", align 4
@blk_timeout_mask = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_blk_timeout__273_99_blk_timeout_init7, ptr @__ksymtab_blk_abort_request], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_abort_request(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 22
  store volatile i32 %2, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 28
  %6 = tail call i32 @kblockd_schedule_work(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kblockd_schedule_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @blk_timeout_init() #2 section ".init.text" {
  store i1 true, ptr @blk_timeout_mask, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @blk_rq_timeout(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = load i1, ptr @blk_timeout_mask, align 4
  %4 = select i1 %3, i32 127, i32 0
  %5 = add i32 %2, 501
  %6 = add i32 %5, %4
  %7 = sub i32 %6, %0
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %6, i32 %0
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_add_timer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 23
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, -2097153
  store i32 %13, ptr %11, align 8
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = add i32 %10, %14
  %16 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 22
  store volatile i32 %15, ptr %16, align 8
  %17 = load i1, ptr @blk_timeout_mask, align 4
  %18 = select i1 %17, i32 127, i32 0
  %19 = add i32 %15, 1
  %20 = add i32 %19, %18
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = add i32 %21, 501
  %23 = add i32 %22, %18
  %24 = sub i32 %23, %20
  %25 = icmp slt i32 %24, 0
  %26 = select i1 %25, i32 %23, i32 %20
  %27 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 27
  %28 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 27, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 27, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = sub i32 %26, %32
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %30, i1 true, i1 %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %9
  %37 = sub i32 %32, %26
  %38 = load volatile ptr, ptr %28, align 4
  %39 = icmp eq ptr %38, null
  %40 = icmp ugt i32 %37, 49
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = tail call i32 @mod_timer(ptr noundef %27, i32 noundef %26) #4
  br label %44

44:                                               ; preds = %42, %36, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
