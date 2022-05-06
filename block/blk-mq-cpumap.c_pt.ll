; ModuleID = '/llk/IR/block/blk-mq-cpumap.c_pt.bc'
source_filename = "../block/blk-mq-cpumap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_map_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_blk_mq_map_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_map_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_map_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_map_queues to i32), ptr @__kstrtab_blk_mq_map_queues, ptr @__kstrtabns_blk_mq_map_queues }, section "___ksymtab_gpl+blk_mq_map_queues", align 4
@cpu_topology = external dso_local global [16 x %struct.cpu_topology], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_blk_mq_map_queues], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_map_queues(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #4
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %16, %1
  %9 = phi i32 [ %6, %1 ], [ %20, %16 ]
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #4
  %11 = icmp ult i32 %10, %9
  %12 = icmp ne i32 %4, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 2
  br label %26

16:                                               ; preds = %16, %1
  %17 = phi i32 [ %19, %16 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %2, i32 %17
  store i32 -1, ptr %18, align 4
  %19 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_possible_mask) #4
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %16, label %8

22:                                               ; preds = %26, %8
  %23 = phi i32 [ %9, %8 ], [ %34, %26 ]
  %24 = phi i32 [ 0, %8 ], [ %29, %26 ]
  %25 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 2
  br label %73

26:                                               ; preds = %26, %14
  %27 = phi i32 [ %10, %14 ], [ %33, %26 ]
  %28 = phi i32 [ 0, %14 ], [ %29, %26 ]
  %29 = add nuw i32 %28, 1
  %30 = load i32, ptr %15, align 4
  %31 = add i32 %28, %30
  %32 = getelementptr i32, ptr %2, i32 %27
  store i32 %31, ptr %32, align 4
  %33 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef nonnull @__cpu_present_mask) #4
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = icmp ult i32 %33, %34
  %36 = icmp ult i32 %29, %4
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %26, label %22

38:                                               ; preds = %73, %42
  %39 = phi i32 [ %40, %42 ], [ %75, %73 ]
  %40 = tail call i32 @cpumask_next(i32 noundef %39, ptr noundef nonnull @__cpu_possible_mask) #4
  %41 = icmp ult i32 %40, %74
  br i1 %41, label %42, label %77

42:                                               ; preds = %38
  %43 = getelementptr i32, ptr %2, i32 %40
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %38

46:                                               ; preds = %42
  %47 = getelementptr i32, ptr %2, i32 %40
  %48 = icmp ult i32 %76, %4
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = add nuw i32 %76, 1
  %51 = load i32, ptr %25, align 4
  %52 = urem i32 %76, %4
  %53 = add i32 %52, %51
  br label %69

54:                                               ; preds = %46
  %55 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %40, i32 5
  %56 = tail call i32 @_find_first_bit_le(ptr noundef %55, i32 noundef 16) #5
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %58 = icmp ult i32 %56, %57
  %59 = select i1 %58, i32 %56, i32 %40
  %60 = icmp eq i32 %59, %40
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = add i32 %76, 1
  %63 = load i32, ptr %25, align 4
  %64 = urem i32 %76, %4
  %65 = add i32 %64, %63
  br label %69

66:                                               ; preds = %54
  %67 = getelementptr i32, ptr %2, i32 %59
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %61, %49
  %70 = phi i32 [ %65, %61 ], [ %68, %66 ], [ %53, %49 ]
  %71 = phi i32 [ %62, %61 ], [ %76, %66 ], [ %50, %49 ]
  store i32 %70, ptr %47, align 4
  %72 = load i32, ptr @nr_cpu_ids, align 4
  br label %73

73:                                               ; preds = %69, %22
  %74 = phi i32 [ %23, %22 ], [ %72, %69 ]
  %75 = phi i32 [ -1, %22 ], [ %40, %69 ]
  %76 = phi i32 [ %24, %22 ], [ %71, %69 ]
  br label %38

77:                                               ; preds = %38
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @blk_mq_hw_queue_to_node(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi i32 [ -1, %2 ], [ %6, %8 ]
  %6 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #4
  %7 = icmp ult i32 %6, %3
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i32, ptr %9, i32 %6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4

13:                                               ; preds = %8, %4
  %14 = phi i32 [ 0, %8 ], [ -1, %4 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
