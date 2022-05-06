; ModuleID = '/llk/IR/build_arm/crypto/rsapubkey.asn1.c_pt.bc'
source_filename = "crypto/rsapubkey.asn1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.asn1_decoder = type { ptr, i32, ptr }

@rsapubkey_machine = internal constant [10 x i8] c"\000\02\02\01\02\02\00 \1D", align 1
@rsapubkey_action_table = internal constant [2 x ptr] [ptr @rsa_get_e, ptr @rsa_get_n], align 4
@rsapubkey_decoder = dso_local local_unnamed_addr constant %struct.asn1_decoder { ptr @rsapubkey_machine, i32 10, ptr @rsapubkey_action_table }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_get_e(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsa_get_n(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
