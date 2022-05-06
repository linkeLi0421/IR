; ModuleID = '/llk/IR/crypto/rsa_helper.c_pt.bc'
source_filename = "../crypto/rsa_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsa_parse_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22rsa_parse_pub_key\22\09\09\09\09\09"
module asm "__kstrtabns_rsa_parse_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rsa_parse_priv_key:\09\09\09\09\09"
module asm "\09.asciz \09\22rsa_parse_priv_key\22\09\09\09\09\09"
module asm "__kstrtabns_rsa_parse_priv_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.asn1_decoder = type opaque
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@rsapubkey_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__kstrtab_rsa_parse_pub_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsa_parse_pub_key = external dso_local constant [0 x i8], align 1
@__ksymtab_rsa_parse_pub_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsa_parse_pub_key to i32), ptr @__kstrtab_rsa_parse_pub_key, ptr @__kstrtabns_rsa_parse_pub_key }, section "___ksymtab_gpl+rsa_parse_pub_key", align 4
@rsaprivkey_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__kstrtab_rsa_parse_priv_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_rsa_parse_priv_key = external dso_local constant [0 x i8], align 1
@__ksymtab_rsa_parse_priv_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rsa_parse_priv_key to i32), ptr @__kstrtab_rsa_parse_priv_key, ptr @__kstrtabns_rsa_parse_priv_key }, section "___ksymtab_gpl+rsa_parse_priv_key", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_rsa_parse_priv_key, ptr @__ksymtab_rsa_parse_pub_key], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rsa_get_n(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  store ptr %3, ptr %0, align 4
  %10 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  store i32 %4, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %9 ], [ -22, %5 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_e(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %4, -1
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 1
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 9
  store i32 %4, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %7, %5
  %16 = phi i32 [ 0, %12 ], [ -22, %7 ], [ -22, %5 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_d(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %4, -1
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 2
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 10
  store i32 %4, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %7, %5
  %16 = phi i32 [ 0, %12 ], [ -22, %7 ], [ -22, %5 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_p(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %4
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 11
  store i32 %4, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i32 [ 0, %13 ], [ -22, %9 ], [ -22, %5 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_q(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %4
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 4
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 12
  store i32 %4, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i32 [ 0, %13 ], [ -22, %9 ], [ -22, %5 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_dp(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %4
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 5
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 13
  store i32 %4, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i32 [ 0, %13 ], [ -22, %9 ], [ -22, %5 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_dq(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %4
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 6
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 14
  store i32 %4, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i32 [ 0, %13 ], [ -22, %9 ], [ -22, %5 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsa_get_qinv(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = icmp ne ptr %3, null
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %4
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 7
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rsa_key, ptr %0, i32 0, i32 15
  store i32 %4, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i32 [ 0, %13 ], [ -22, %9 ], [ -22, %5 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsa_parse_pub_key(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @rsapubkey_decoder, ptr noundef %0, ptr noundef %1, i32 noundef %2) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsa_parse_priv_key(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @rsaprivkey_decoder, ptr noundef %0, ptr noundef %1, i32 noundef %2) #4
  ret i32 %4
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
