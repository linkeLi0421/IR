; ModuleID = '/llk/IR/lib/crypto/arc4.c_pt.bc'
source_filename = "../lib/crypto/arc4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arc4_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22arc4_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_arc4_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arc4_crypt:\09\09\09\09\09"
module asm "\09.asciz \09\22arc4_crypt\22\09\09\09\09\09"
module asm "__kstrtabns_arc4_crypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }

@__kstrtab_arc4_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_arc4_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_arc4_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arc4_setkey to i32), ptr @__kstrtab_arc4_setkey, ptr @__kstrtabns_arc4_setkey }, section "___ksymtab+arc4_setkey", align 4
@__kstrtab_arc4_crypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_arc4_crypt = external dso_local constant [0 x i8], align 1
@__ksymtab_arc4_crypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arc4_crypt to i32), ptr @__kstrtab_arc4_crypt, ptr @__kstrtabns_arc4_crypt }, section "___ksymtab+arc4_crypt", align 4
@__UNIQUE_ID_license100 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_license100, ptr @__ksymtab_arc4_crypt, ptr @__ksymtab_arc4_setkey], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arc4_setkey(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.arc4_ctx, ptr %0, i32 0, i32 1
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.arc4_ctx, ptr %0, i32 0, i32 2
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %8 = getelementptr [256 x i32], ptr %0, i32 0, i32 %7
  store i32 %7, ptr %8, align 4
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %6

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %28, %11 ], [ 0, %6 ]
  %13 = phi i32 [ %27, %11 ], [ 0, %6 ]
  %14 = phi i32 [ %22, %11 ], [ 0, %6 ]
  %15 = getelementptr [256 x i32], ptr %0, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %1, i32 %13
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %16, %14
  %21 = add i32 %20, %19
  %22 = and i32 %21, 255
  %23 = getelementptr [256 x i32], ptr %0, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %15, align 4
  store i32 %16, ptr %23, align 4
  %25 = add i32 %13, 1
  %26 = icmp ult i32 %25, %2
  %27 = select i1 %26, i32 %25, i32 0
  %28 = add nuw nsw i32 %12, 1
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %11

30:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arc4_crypt(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #1 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.arc4_ctx, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.arc4_ctx, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %0, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = and i32 %13, 255
  %15 = getelementptr i32, ptr %0, i32 %14
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %44, %6
  %18 = phi ptr [ %1, %6 ], [ %45, %44 ]
  %19 = phi ptr [ %2, %6 ], [ %46, %44 ]
  %20 = phi i32 [ %3, %6 ], [ %42, %44 ]
  %21 = phi i32 [ %8, %6 ], [ %30, %44 ]
  %22 = phi i32 [ %14, %6 ], [ %34, %44 ]
  %23 = phi i32 [ %12, %6 ], [ %32, %44 ]
  %24 = phi i32 [ %16, %6 ], [ %36, %44 ]
  %25 = getelementptr i32, ptr %0, i32 %22
  store i32 %23, ptr %25, align 4
  %26 = add i32 %24, %23
  %27 = and i32 %26, 255
  %28 = getelementptr i32, ptr %0, i32 %21
  store i32 %24, ptr %28, align 4
  %29 = add i32 %21, 1
  %30 = and i32 %29, 255
  %31 = getelementptr i32, ptr %0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %22
  %34 = and i32 %33, 255
  %35 = getelementptr i32, ptr %0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i8, ptr %19, align 1
  %38 = getelementptr i32, ptr %0, i32 %27
  %39 = load i32, ptr %38, align 4
  %40 = trunc i32 %39 to i8
  %41 = xor i8 %37, %40
  store i8 %41, ptr %18, align 1
  %42 = add i32 %20, -1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %17
  %45 = getelementptr i8, ptr %18, i32 1
  %46 = getelementptr i8, ptr %19, i32 1
  br label %17

47:                                               ; preds = %17
  store i32 %30, ptr %7, align 4
  store i32 %22, ptr %9, align 4
  br label %48

48:                                               ; preds = %47, %4
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
