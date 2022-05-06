; ModuleID = '/llk/IR/block/blk-mq-pci.c_pt.bc'
source_filename = "../block/blk-mq-pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_pci_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_pci_map_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_pci_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@blk_mq_pci_map_queues.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"block/blk-mq-pci.c\00", align 1
@__kstrtab_blk_mq_pci_map_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_pci_map_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_pci_map_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_pci_map_queues to i32), ptr @__kstrtab_blk_mq_pci_map_queues, ptr @__kstrtabns_blk_mq_pci_map_queues }, section "___ksymtab_gpl+blk_mq_pci_map_queues", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_blk_mq_pci_map_queues], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_pci_map_queues(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 2
  br label %9

9:                                                ; preds = %27, %7
  %10 = phi i32 [ 0, %7 ], [ %28, %27 ]
  %11 = add i32 %10, %2
  %12 = tail call ptr @pci_irq_get_affinity(ptr noundef %1, i32 noundef %11) #3
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %12) #4
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %18, %14
  %19 = phi i32 [ %24, %18 ], [ %15, %14 ]
  %20 = load i32, ptr %8, align 4
  %21 = add i32 %20, %10
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i32, ptr %22, i32 %19
  store i32 %21, ptr %23, align 4
  %24 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull %12) #4
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %18, label %27

27:                                               ; preds = %18, %14
  %28 = add nuw i32 %10, 1
  %29 = load i32, ptr %4, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %9, label %49

31:                                               ; preds = %9
  %32 = load i32, ptr %4, align 4
  %33 = icmp ugt i32 %32, 1
  %34 = load i1, ptr @blk_mq_pci_map_queues.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %31
  store i1 true, ptr @blk_mq_pci_map_queues.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #3
  br label %38

38:                                               ; preds = %37, %31
  %39 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #4
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %42, %38
  %43 = phi i32 [ %46, %42 ], [ %39, %38 ]
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i32, ptr %44, i32 %43
  store i32 0, ptr %45, align 4
  %46 = tail call i32 @cpumask_next(i32 noundef %43, ptr noundef nonnull @__cpu_possible_mask) #4
  %47 = load i32, ptr @nr_cpu_ids, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %42, label %49

49:                                               ; preds = %42, %38, %27, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_irq_get_affinity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
