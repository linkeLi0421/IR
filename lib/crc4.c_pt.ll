; ModuleID = '/llk/IR/lib/crc4.c_pt.bc'
source_filename = "../lib/crc4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc4:\09\09\09\09\09"
module asm "\09.asciz \09\22crc4\22\09\09\09\09\09"
module asm "__kstrtabns_crc4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@crc4_tab = internal unnamed_addr constant [16 x i8] c"\00\07\0E\09\0B\0C\05\02\01\06\0F\08\0A\0D\04\03", align 1
@__kstrtab_crc4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc4 = external dso_local constant [0 x i8], align 1
@__ksymtab_crc4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc4 to i32), ptr @__kstrtab_crc4, ptr @__kstrtabns_crc4 }, section "___ksymtab_gpl+crc4", align 4
@__UNIQUE_ID_description100 = internal constant [30 x i8] c"description=CRC4 calculations\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_description100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_crc4], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local zeroext i8 @crc4(i8 noundef zeroext %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = zext i32 %2 to i64
  %5 = shl nsw i64 -1, %4
  %6 = xor i64 %5, -1
  %7 = and i64 %6, %1
  %8 = add i32 %2, -1
  %9 = and i32 %8, -4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %24

11:                                               ; preds = %11, %3
  %12 = phi i32 [ %22, %11 ], [ %9, %3 ]
  %13 = phi i8 [ %21, %11 ], [ %0, %3 ]
  %14 = zext i8 %13 to i64
  %15 = zext i32 %12 to i64
  %16 = lshr i64 %7, %15
  %17 = and i64 %16, 15
  %18 = xor i64 %17, %14
  %19 = trunc i64 %18 to i32
  %20 = getelementptr [16 x i8], ptr @crc4_tab, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = add nsw i32 %12, -4
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %24, label %11

24:                                               ; preds = %11, %3
  %25 = phi i8 [ %0, %3 ], [ %21, %11 ]
  ret i8 %25
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
