; ModuleID = '/llk/IR/lib/iomap_copy.c_pt.bc'
source_filename = "../lib/iomap_copy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iowrite32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__iowrite32_copy\22\09\09\09\09\09"
module asm "__kstrtabns___iowrite32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ioread32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__ioread32_copy\22\09\09\09\09\09"
module asm "__kstrtabns___ioread32_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iowrite64_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__iowrite64_copy\22\09\09\09\09\09"
module asm "__kstrtabns___iowrite64_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___iowrite32_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___iowrite32_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___iowrite32_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iowrite32_copy to i32), ptr @__kstrtab___iowrite32_copy, ptr @__kstrtabns___iowrite32_copy }, section "___ksymtab_gpl+__iowrite32_copy", align 4
@__kstrtab___ioread32_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___ioread32_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___ioread32_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ioread32_copy to i32), ptr @__kstrtab___ioread32_copy, ptr @__kstrtabns___ioread32_copy }, section "___ksymtab_gpl+__ioread32_copy", align 4
@__kstrtab___iowrite64_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___iowrite64_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___iowrite64_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iowrite64_copy to i32), ptr @__kstrtab___iowrite64_copy, ptr @__kstrtabns___iowrite64_copy }, section "___ksymtab_gpl+__iowrite64_copy", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___ioread32_copy, ptr @__ksymtab___iowrite32_copy, ptr @__ksymtab___iowrite64_copy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @__iowrite32_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i32, ptr %1, i32 %2
  %5 = icmp ugt ptr %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = phi ptr [ %11, %6 ], [ %0, %3 ]
  %9 = getelementptr i32, ptr %7, i32 1
  %10 = load i32, ptr %7, align 4
  %11 = getelementptr i32, ptr %8, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #1, !srcloc !8
  %12 = icmp ult ptr %9, %4
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ioread32_copy(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i32, ptr %1, i32 %2
  %5 = icmp ugt ptr %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = phi ptr [ %11, %6 ], [ %0, %3 ]
  %9 = getelementptr i32, ptr %7, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #1, !srcloc !9
  %11 = getelementptr i32, ptr %8, i32 1
  store i32 %10, ptr %8, align 4
  %12 = icmp ult ptr %9, %4
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @__iowrite64_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl i32 %2, 1
  tail call void @__iowrite32_copy(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  ret void
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
!8 = !{i64 361238}
!9 = !{i64 361656}
