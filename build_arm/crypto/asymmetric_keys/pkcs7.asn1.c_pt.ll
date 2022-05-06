; ModuleID = '/llk/IR/build_arm/crypto/asymmetric_keys/pkcs7.asn1.c_pt.bc'
source_filename = "crypto/asymmetric_keys/pkcs7.asn1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.asn1_decoder = type { ptr, i32, ptr }

@pkcs7_machine = internal constant [239 x i8] c"\000\02\06\02\1E\00\05\A0\0C \1D\000\02\02\07\051=\150C\1C\000\02\06\02\1E\02\05\A0I \1E\04\05\A0M\15\A2U\1E\03\05\A1Z\15\A3`\051f\150l\1C  (\040r#=(\040r\22C(\0A\05 (\0B\01\1B\01\1C#M(\0A\01\22U(\040x#Z(\040x\22`(\040}#f(\040}\22l(\02\06\02\09 (\0A\01\22x(\02\02\08\050\A9\13\80\10\1C\040r\1E\0A\05\A0\C0\1F\0E\15\A2\C6\000\02\06\02\09 \1E\0C\02\04\0F\05\A1\CF\15\A3\D5$\06(\000\001\000\02\06\02\08 #\AD\22\AB\1E\0B\00\02\1E\0D (\040\DB#\C0(\000\040\DB\22\C8 (\040\E6#\CF(\040\E6\22\D5(\02\06\02\001\0A\09#\E0 (\00\06\001\08#\EA (", align 1
@pkcs7_action_table = internal constant [17 x ptr] [ptr @pkcs7_check_content_type, ptr @pkcs7_extract_cert, ptr @pkcs7_note_OID, ptr @pkcs7_note_certificate_list, ptr @pkcs7_note_content, ptr @pkcs7_note_data, ptr @pkcs7_note_signed_info, ptr @pkcs7_note_signeddata_version, ptr @pkcs7_note_signerinfo_version, ptr @pkcs7_sig_note_authenticated_attr, ptr @pkcs7_sig_note_digest_algo, ptr @pkcs7_sig_note_issuer, ptr @pkcs7_sig_note_pkey_algo, ptr @pkcs7_sig_note_serial, ptr @pkcs7_sig_note_set_of_authattrs, ptr @pkcs7_sig_note_signature, ptr @pkcs7_sig_note_skid], align 4
@pkcs7_decoder = dso_local local_unnamed_addr constant %struct.asn1_decoder { ptr @pkcs7_machine, i32 239, ptr @pkcs7_action_table }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_check_content_type(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_extract_cert(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_note_OID(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_note_certificate_list(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_note_content(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_note_data(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_note_signed_info(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_note_signeddata_version(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_note_signerinfo_version(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_authenticated_attr(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_digest_algo(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_issuer(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_pkey_algo(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_serial(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_set_of_authattrs(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_signature(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkcs7_sig_note_skid(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

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
