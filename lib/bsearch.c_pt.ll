; ModuleID = '/llk/IR/lib/bsearch.c_pt.bc'
source_filename = "../lib/bsearch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsearch:\09\09\09\09\09"
module asm "\09.asciz \09\22bsearch\22\09\09\09\09\09"
module asm "__kstrtabns_bsearch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_bsearch = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsearch = external dso_local constant [0 x i8], align 1
@__ksymtab_bsearch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsearch to i32), ptr @__kstrtab_bsearch, ptr @__kstrtabns_bsearch }, section "___ksymtab+bsearch", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_bsearch], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bsearch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %15, %5
  %8 = phi ptr [ %20, %15 ], [ %1, %5 ]
  %9 = phi i32 [ %21, %15 ], [ %2, %5 ]
  %10 = lshr i32 %9, 1
  %11 = mul i32 %10, %3
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 %4(ptr noundef %0, ptr noundef %12) #1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %7
  %16 = icmp sgt i32 %13, 0
  %17 = getelementptr i8, ptr %12, i32 %3
  %18 = sext i1 %16 to i32
  %19 = add i32 %9, %18
  %20 = select i1 %16, ptr %17, ptr %8
  %21 = lshr i32 %19, 1
  %22 = icmp ult i32 %19, 2
  br i1 %22, label %23, label %7

23:                                               ; preds = %15, %7, %5
  %24 = phi ptr [ null, %5 ], [ %12, %7 ], [ null, %15 ]
  ret ptr %24
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
