; ModuleID = '/llk/IR/lib/errseq.c_pt.bc'
source_filename = "../lib/errseq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_set:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_set\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_sample:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_sample\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_sample:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_check:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_check\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_check_and_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_check_and_advance\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_check_and_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"lib/errseq.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1
@__kstrtab_errseq_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_set = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_set to i32), ptr @__kstrtab_errseq_set, ptr @__kstrtabns_errseq_set }, section "___ksymtab+errseq_set", align 4
@__kstrtab_errseq_sample = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_sample = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_sample = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_sample to i32), ptr @__kstrtab_errseq_sample, ptr @__kstrtabns_errseq_sample }, section "___ksymtab+errseq_sample", align 4
@__kstrtab_errseq_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_check = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_check to i32), ptr @__kstrtab_errseq_check, ptr @__kstrtabns_errseq_check }, section "___ksymtab+errseq_check", align 4
@__kstrtab_errseq_check_and_advance = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_check_and_advance = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_check_and_advance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_check_and_advance to i32), ptr @__kstrtab_errseq_check_and_advance, ptr @__kstrtabns_errseq_check_and_advance }, section "___ksymtab+errseq_check_and_advance", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_errseq_check, ptr @__ksymtab_errseq_check_and_advance, ptr @__ksymtab_errseq_sample, ptr @__ksymtab_errseq_set], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @errseq_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = icmp eq i32 %1, 0
  %5 = sub i32 0, %1
  %6 = icmp ugt i32 %5, 4095
  %7 = or i1 %4, %6
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %1) #3
  br label %30

9:                                                ; preds = %23, %2
  %10 = phi i32 [ %24, %23 ], [ %3, %2 ]
  %11 = and i32 %10, -8192
  %12 = or i32 %11, %5
  %13 = and i32 %10, 4096
  %14 = icmp eq i32 %13, 0
  %15 = add i32 %12, 8192
  %16 = select i1 %14, i32 %12, i32 %15
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %30, label %18

18:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !10
  br label %19

19:                                               ; preds = %19, %18
  %20 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %0, i32 %10, i32 %16) #3, !srcloc !11
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  %24 = extractvalue { i32, i32 } %20, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %25 = icmp eq i32 %24, %10
  %26 = icmp eq i32 %24, %16
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %9

28:                                               ; preds = %23
  %29 = extractvalue { i32, i32 } %20, 1
  br label %30

30:                                               ; preds = %28, %9, %8
  %31 = phi i32 [ %3, %8 ], [ %29, %28 ], [ %10, %9 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @errseq_sample(ptr noundef %0) #2 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4096
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 %2
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @errseq_check(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = icmp eq i32 %3, %1
  br i1 %4, label %8, label %5, !prof !13

5:                                                ; preds = %2
  %6 = and i32 %3, 4095
  %7 = sub nsw i32 0, %6
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @errseq_check_and_advance(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = or i32 %3, 4096
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #3, !srcloc !10
  br label %10

10:                                               ; preds = %10, %9
  %11 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %0, i32 %3, i32 %7) #3, !srcloc !11
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !15
  br label %15

15:                                               ; preds = %14, %6
  store i32 %7, ptr %1, align 4
  %16 = and i32 %3, 4095
  %17 = sub nsw i32 0, %16
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %17, %15 ], [ 0, %2 ]
  ret i32 %19
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!9 = !{i64 2148374605}
!10 = !{i64 377186, i64 2147878752, i64 2147878778, i64 2147878825, i64 2147878847, i64 2147878875, i64 2147878895}
!11 = !{i64 461644, i64 461665, i64 461688, i64 461707, i64 461726}
!12 = !{i64 2148374984}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148391791}
!15 = !{i64 2148392170}
