; ModuleID = '/llk/IR/arch/arm/kernel/opcodes.c_pt.bc'
source_filename = "../arch/arm/kernel/opcodes.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_check_condition:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_check_condition\22\09\09\09\09\09"
module asm "__kstrtabns_arm_check_condition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@cc_map = internal unnamed_addr constant [16 x i16] [i16 -3856, i16 3855, i16 -13108, i16 13107, i16 -256, i16 255, i16 -21846, i16 21845, i16 3084, i16 -3085, i16 -21931, i16 21930, i16 2565, i16 -2566, i16 -1, i16 0], align 2
@__kstrtab_arm_check_condition = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_check_condition = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_check_condition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_check_condition to i32), ptr @__kstrtab_arm_check_condition, ptr @__kstrtabns_arm_check_condition }, section "___ksymtab_gpl+arm_check_condition", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_arm_check_condition], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @arm_check_condition(i32 noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %0, 28
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = lshr i32 %1, 28
  %7 = getelementptr [16 x i16], ptr @cc_map, i32 0, i32 %3
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = lshr i32 %9, %6
  %11 = and i32 %10, 1
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ %11, %5 ], [ 2, %2 ]
  ret i32 %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
