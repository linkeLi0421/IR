; ModuleID = '/llk/IR/crypto/ecdh_helper.c_pt.bc'
source_filename = "../crypto/ecdh_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_key_len:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_key_len\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_key_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_encode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_encode_key\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_encode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_decode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_decode_key\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_decode_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ecdh = type { ptr, i16 }

@__kstrtab_crypto_ecdh_key_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_key_len = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_key_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_key_len to i32), ptr @__kstrtab_crypto_ecdh_key_len, ptr @__kstrtabns_crypto_ecdh_key_len }, section "___ksymtab_gpl+crypto_ecdh_key_len", align 4
@__kstrtab_crypto_ecdh_encode_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_encode_key = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_encode_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_encode_key to i32), ptr @__kstrtab_crypto_ecdh_encode_key, ptr @__kstrtabns_crypto_ecdh_encode_key }, section "___ksymtab_gpl+crypto_ecdh_encode_key", align 4
@__kstrtab_crypto_ecdh_decode_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_decode_key = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_decode_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_decode_key to i32), ptr @__kstrtab_crypto_ecdh_decode_key, ptr @__kstrtabns_crypto_ecdh_decode_key }, section "___ksymtab_gpl+crypto_ecdh_decode_key", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_crypto_ecdh_decode_key, ptr @__ksymtab_crypto_ecdh_encode_key, ptr @__ksymtab_crypto_ecdh_key_len], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_ecdh_key_len(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ecdh, ptr %0, i32 0, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = add nuw nsw i32 %4, 6
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_ecdh_encode_key(ptr noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = trunc i32 %1 to i16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6, !prof !8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ecdh, ptr %2, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = add nuw nsw i32 %9, 6
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  store i16 2, ptr %0, align 1
  %13 = getelementptr inbounds i8, ptr %0, i32 2
  store i16 %4, ptr %13, align 1
  %14 = getelementptr i8, ptr %0, i32 4
  %15 = load i16, ptr %7, align 1
  store i16 %15, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i32 6
  %17 = load ptr, ptr %2, align 4
  %18 = load i16, ptr %7, align 4
  %19 = zext i16 %18 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %17, i32 %19, i1 false) #4
  br label %20

20:                                               ; preds = %12, %6, %3
  %21 = phi i32 [ 0, %12 ], [ -22, %3 ], [ -22, %6 ]
  ret i32 %21
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @crypto_ecdh_decode_key(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ult i32 %1, 6
  %6 = or i1 %4, %5
  br i1 %6, label %24, label %7, !prof !8

7:                                                ; preds = %3
  %8 = load i16, ptr %0, align 1
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = icmp eq i16 %8, 2
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i32 2
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i32
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %24, label %16, !prof !8

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ecdh, ptr %2, i32 0, i32 1
  %18 = load i16, ptr %9, align 1
  store i16 %18, ptr %17, align 1
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %19, 6
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 6
  store ptr %23, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %16, %11, %7, %3
  %25 = phi i32 [ 0, %22 ], [ -22, %3 ], [ -22, %7 ], [ -22, %11 ], [ -22, %16 ]
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
