; ModuleID = '/llk/IR/lib/math/int_pow.c_pt.bc'
source_filename = "../lib/math/int_pow.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_pow:\09\09\09\09\09"
module asm "\09.asciz \09\22int_pow\22\09\09\09\09\09"
module asm "__kstrtabns_int_pow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_int_pow = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_pow = external dso_local constant [0 x i8], align 1
@__ksymtab_int_pow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_pow to i32), ptr @__kstrtab_int_pow, ptr @__kstrtabns_int_pow }, section "___ksymtab_gpl+int_pow", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_int_pow], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @int_pow(i64 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ %11, %4 ], [ 1, %2 ]
  %6 = phi i32 [ %12, %4 ], [ %1, %2 ]
  %7 = phi i64 [ %13, %4 ], [ %0, %2 ]
  %8 = and i32 %6, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i64 1, i64 %7
  %11 = mul i64 %10, %5
  %12 = lshr i32 %6, 1
  %13 = mul i64 %7, %7
  %14 = icmp ult i32 %6, 2
  br i1 %14, label %15, label %4

15:                                               ; preds = %4, %2
  %16 = phi i64 [ 1, %2 ], [ %11, %4 ]
  ret i64 %16
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
