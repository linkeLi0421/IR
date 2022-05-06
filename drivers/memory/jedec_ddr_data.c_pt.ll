; ModuleID = '/llk/IR/drivers/memory/jedec_ddr_data.c_pt.bc'
source_filename = "../drivers/memory/jedec_ddr_data.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_addressing_table:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_addressing_table\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_addressing_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_timings\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_min_tck\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lpddr2_jedec_manufacturer:\09\09\09\09\09"
module asm "\09.asciz \09\22lpddr2_jedec_manufacturer\22\09\09\09\09\09"
module asm "__kstrtabns_lpddr2_jedec_manufacturer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lpddr2_addressing = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lpddr2_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr2_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@lpddr2_jedec_addressing_table = dso_local constant [11 x %struct.lpddr2_addressing] [%struct.lpddr2_addressing { i32 2, i32 15600, i32 90000 }, %struct.lpddr2_addressing { i32 2, i32 15600, i32 90000 }, %struct.lpddr2_addressing { i32 2, i32 7800, i32 90000 }, %struct.lpddr2_addressing { i32 2, i32 7800, i32 90000 }, %struct.lpddr2_addressing { i32 3, i32 7800, i32 130000 }, %struct.lpddr2_addressing { i32 3, i32 3900, i32 130000 }, %struct.lpddr2_addressing { i32 3, i32 3900, i32 130000 }, %struct.lpddr2_addressing { i32 3, i32 3900, i32 210000 }, %struct.lpddr2_addressing { i32 2, i32 7800, i32 130000 }, %struct.lpddr2_addressing { i32 2, i32 3900, i32 130000 }, %struct.lpddr2_addressing zeroinitializer], align 4
@__kstrtab_lpddr2_jedec_addressing_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_addressing_table = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_addressing_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_addressing_table to i32), ptr @__kstrtab_lpddr2_jedec_addressing_table, ptr @__kstrtabns_lpddr2_jedec_addressing_table }, section "___ksymtab_gpl+lpddr2_jedec_addressing_table", align 4
@lpddr2_jedec_timings = dso_local constant [4 x %struct.lpddr2_timings] [%struct.lpddr2_timings { i32 200000000, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 10000, i32 7500, i32 7500, i32 15000, i32 5500, i32 6000, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }, %struct.lpddr2_timings { i32 266666666, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 7500, i32 7500, i32 7500, i32 15000, i32 5500, i32 6000, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }, %struct.lpddr2_timings { i32 400000000, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 7500, i32 7500, i32 7500, i32 15000, i32 5500, i32 6000, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }, %struct.lpddr2_timings { i32 533333333, i32 10000000, i32 21000, i32 18000, i32 15000, i32 42000, i32 10000, i32 7500, i32 7500, i32 7500, i32 15000, i32 5500, i32 5620, i32 50000, i32 90000, i32 360000, i32 1000000, i32 70000 }], align 4
@__kstrtab_lpddr2_jedec_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_timings to i32), ptr @__kstrtab_lpddr2_jedec_timings, ptr @__kstrtabns_lpddr2_jedec_timings }, section "___ksymtab_gpl+lpddr2_jedec_timings", align 4
@lpddr2_jedec_min_tck = dso_local constant %struct.lpddr2_min_tck { i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 8 }, align 4
@__kstrtab_lpddr2_jedec_min_tck = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_min_tck = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_min_tck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_min_tck to i32), ptr @__kstrtab_lpddr2_jedec_min_tck, ptr @__kstrtabns_lpddr2_jedec_min_tck }, section "___ksymtab_gpl+lpddr2_jedec_min_tck", align 4
@.str = private unnamed_addr constant [8 x i8] c"Samsung\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Qimonda\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Elpida\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Etron\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Nanya\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Hynix\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Mosel\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Winbond\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ESMT\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Spansion\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"SST\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ZMOS\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Numonyx\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Micron\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@__kstrtab_lpddr2_jedec_manufacturer = external dso_local constant [0 x i8], align 1
@__kstrtabns_lpddr2_jedec_manufacturer = external dso_local constant [0 x i8], align 1
@__ksymtab_lpddr2_jedec_manufacturer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lpddr2_jedec_manufacturer to i32), ptr @__kstrtab_lpddr2_jedec_manufacturer, ptr @__kstrtabns_lpddr2_jedec_manufacturer }, section "___ksymtab_gpl+lpddr2_jedec_manufacturer", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_lpddr2_jedec_addressing_table, ptr @__ksymtab_lpddr2_jedec_manufacturer, ptr @__ksymtab_lpddr2_jedec_min_tck, ptr @__ksymtab_lpddr2_jedec_timings], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @lpddr2_jedec_manufacturer(i32 noundef %0) #0 {
  switch i32 %0, label %16 [
    i32 1, label %17
    i32 2, label %2
    i32 3, label %3
    i32 4, label %4
    i32 5, label %5
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 11, label %10
    i32 12, label %11
    i32 13, label %12
    i32 14, label %13
    i32 254, label %14
    i32 255, label %15
  ]

2:                                                ; preds = %1
  br label %17

3:                                                ; preds = %1
  br label %17

4:                                                ; preds = %1
  br label %17

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  br label %17

11:                                               ; preds = %1
  br label %17

12:                                               ; preds = %1
  br label %17

13:                                               ; preds = %1
  br label %17

14:                                               ; preds = %1
  br label %17

15:                                               ; preds = %1
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %18 = phi ptr [ @.str.15, %16 ], [ @.str.14, %15 ], [ @.str.13, %14 ], [ @.str.12, %13 ], [ @.str.11, %12 ], [ @.str.10, %11 ], [ @.str.9, %10 ], [ @.str.8, %9 ], [ @.str.7, %8 ], [ @.str.6, %7 ], [ @.str.5, %6 ], [ @.str.4, %5 ], [ @.str.3, %4 ], [ @.str.2, %3 ], [ @.str.1, %2 ], [ @.str, %1 ]
  ret ptr %18
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
