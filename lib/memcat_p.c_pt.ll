; ModuleID = '/llk/IR/lib/memcat_p.c_pt.bc'
source_filename = "../lib/memcat_p.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___memcat_p:\09\09\09\09\09"
module asm "\09.asciz \09\22__memcat_p\22\09\09\09\09\09"
module asm "__kstrtabns___memcat_p:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___memcat_p = external dso_local constant [0 x i8], align 1
@__kstrtabns___memcat_p = external dso_local constant [0 x i8], align 1
@__ksymtab___memcat_p = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__memcat_p to i32), ptr @__kstrtab___memcat_p, ptr @__kstrtabns___memcat_p }, section "___ksymtab_gpl+__memcat_p", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___memcat_p], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__memcat_p(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %2
  %6 = phi i32 [ 0, %2 ], [ %12, %9 ]
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %16

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %12, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %13, %9 ], [ %0, %2 ]
  %12 = add i32 %10, 1
  %13 = getelementptr ptr, ptr %11, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %5, label %9

16:                                               ; preds = %16, %5
  %17 = phi i32 [ %19, %16 ], [ %6, %5 ]
  %18 = phi ptr [ %20, %16 ], [ %1, %5 ]
  %19 = add i32 %17, 1
  %20 = getelementptr ptr, ptr %18, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %5
  %24 = phi ptr [ %1, %5 ], [ %20, %16 ]
  %25 = phi i32 [ %6, %5 ], [ %19, %16 ]
  %26 = add i32 %25, 1
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #3
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %46, label %29, !prof !8

29:                                               ; preds = %23
  %30 = extractvalue { i32, i1 } %27, 0
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = icmp sgt i32 %25, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %35, %33
  %36 = phi i32 [ %40, %35 ], [ %25, %33 ]
  %37 = phi ptr [ %44, %35 ], [ %24, %33 ]
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr ptr, ptr %31, i32 %36
  store ptr %38, ptr %39, align 4
  %40 = add nsw i32 %36, -1
  %41 = icmp eq ptr %37, %1
  %42 = getelementptr ptr, ptr %0, i32 %40
  %43 = getelementptr ptr, ptr %37, i32 -1
  %44 = select i1 %41, ptr %42, ptr %43
  %45 = icmp eq i32 %36, 0
  br i1 %45, label %46, label %35

46:                                               ; preds = %35, %33, %29, %23
  %47 = phi ptr [ null, %29 ], [ null, %23 ], [ %31, %33 ], [ %31, %35 ]
  ret ptr %47
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(0) }

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
