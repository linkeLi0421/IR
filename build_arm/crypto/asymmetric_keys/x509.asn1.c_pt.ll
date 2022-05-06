; ModuleID = '/llk/IR/build_arm/crypto/asymmetric_keys/x509.asn1.c_pt.bc'
source_filename = "crypto/asymmetric_keys/x509.asn1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.asn1_decoder = type { ptr, i32, ptr }

@x509_machine = internal constant [113 x i8] c"\000\000\05\A0F\00\02\1E\08\040J\1E\07\040Q\1E\03\000\01\17\11\18\1C\1E\05\01\17\11\18\1C\1E\04 \040Q\1E\0A\000\040J\02\03\00 \01\81\01\82\05\A3` \1E\0B\040J\02\03\09 \1D\00\02 (\02\06\02\0B\06 (\001\000\02\06\02\0A\01 #S\22Q(\000\000\02\06\02\01\01\02\04\0C \22b (", align 1
@x509_action_table = internal constant [13 x ptr] [ptr @x509_extract_key_data, ptr @x509_extract_name_segment, ptr @x509_note_OID, ptr @x509_note_issuer, ptr @x509_note_not_after, ptr @x509_note_not_before, ptr @x509_note_params, ptr @x509_note_pkey_algo, ptr @x509_note_serial, ptr @x509_note_signature, ptr @x509_note_subject, ptr @x509_note_tbs_certificate, ptr @x509_process_extension], align 4
@x509_decoder = dso_local local_unnamed_addr constant %struct.asn1_decoder { ptr @x509_machine, i32 113, ptr @x509_action_table }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_extract_key_data(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_extract_name_segment(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_OID(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_issuer(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_not_after(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_not_before(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_params(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_pkey_algo(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_serial(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_signature(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_subject(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_note_tbs_certificate(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x509_process_extension(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

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
