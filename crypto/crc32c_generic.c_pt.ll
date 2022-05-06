; ModuleID = '/llk/IR/crypto/crc32c_generic.c_pt.bc'
source_filename = "../crypto/crc32c_generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@alg = internal global %struct.shash_alg { ptr @chksum_init, ptr @chksum_update, ptr @chksum_final, ptr @chksum_finup, ptr @chksum_digest, ptr null, ptr null, ptr @chksum_setkey, ptr null, ptr null, i32 4, [20 x i8] undef, i32 4, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 1, i32 4, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"crc32c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"crc32c-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @crc32c_cra_init, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@__initcall__kmod_crc32c_generic__104_161_crc32c_mod_init4 = internal global ptr @crc32c_mod_init, section ".initcall4.init", align 4
@__exitcall_crc32c_mod_fini = internal global ptr @crc32c_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author105 = internal constant [56 x i8] c"crc32c_generic.author=Clay Haapala <chaapala@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description106 = internal constant [83 x i8] c"crc32c_generic.description=CRC32c (Castagnoli) calculations wrapper for lib/crc32c\00", section ".modinfo", align 1
@__UNIQUE_ID_file107 = internal constant [42 x i8] c"crc32c_generic.file=crypto/crc32c_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [27 x i8] c"crc32c_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace109 = internal constant [28 x i8] c"crc32c_generic.alias=crc32c\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto110 = internal constant [35 x i8] c"crc32c_generic.alias=crypto-crc32c\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace111 = internal constant [36 x i8] c"crc32c_generic.alias=crc32c-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto112 = internal constant [43 x i8] c"crc32c_generic.alias=crypto-crc32c-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto110, ptr @__UNIQUE_ID_alias_crypto112, ptr @__UNIQUE_ID_alias_userspace109, ptr @__UNIQUE_ID_alias_userspace111, ptr @__UNIQUE_ID_author105, ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_crc32c_mod_fini, ptr @__initcall__kmod_crc32c_generic__104_161_crc32c_mod_init4, ptr @crc32c_mod_fini], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @crc32c_mod_fini() #0 section ".exit.text" {
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @crc32c_mod_init() #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #7
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chksum_init(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 1
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr %4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chksum_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @__crc32c_le(i32 noundef %5, ptr noundef %1, i32 noundef %2) #8
  store i32 %6, ptr %4, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chksum_final(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = xor i32 %4, -1
  store i32 %5, ptr %1, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chksum_finup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @__crc32c_le(i32 noundef %6, ptr noundef %1, i32 noundef %2) #8
  %8 = xor i32 %7, -1
  store i32 %8, ptr %3, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chksum_digest(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @__crc32c_le(i32 noundef %7, ptr noundef %1, i32 noundef %2) #8
  %9 = xor i32 %8, -1
  store i32 %9, ptr %3, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @chksum_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 1
  %7 = load i32, ptr %1, align 1
  store i32 %7, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @crc32c_cra_init(ptr nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store i32 -1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
