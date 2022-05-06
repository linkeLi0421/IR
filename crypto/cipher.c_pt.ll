; ModuleID = '/llk/IR/crypto/cipher.c_pt.bc'
source_filename = "../crypto/cipher.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_cipher_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_cipher_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_cipher_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22CRYPTO_INTERNAL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_cipher_encrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_cipher_encrypt_one\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_cipher_encrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22CRYPTO_INTERNAL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_cipher_decrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_cipher_decrypt_one\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_cipher_decrypt_one:\09\09\09\09\09"
module asm "\09.asciz \09\22CRYPTO_INTERNAL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }

@__kstrtab_crypto_cipher_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_cipher_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_cipher_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_cipher_setkey to i32), ptr @__kstrtab_crypto_cipher_setkey, ptr @__kstrtabns_crypto_cipher_setkey }, section "___ksymtab_gpl+crypto_cipher_setkey", align 4
@__kstrtab_crypto_cipher_encrypt_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_cipher_encrypt_one = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_cipher_encrypt_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_cipher_encrypt_one to i32), ptr @__kstrtab_crypto_cipher_encrypt_one, ptr @__kstrtabns_crypto_cipher_encrypt_one }, section "___ksymtab_gpl+crypto_cipher_encrypt_one", align 4
@__kstrtab_crypto_cipher_decrypt_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_cipher_decrypt_one = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_cipher_decrypt_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_cipher_decrypt_one to i32), ptr @__kstrtab_crypto_cipher_decrypt_one, ptr @__kstrtabns_crypto_cipher_decrypt_one }, section "___ksymtab_gpl+crypto_cipher_decrypt_one", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_crypto_cipher_decrypt_one, ptr @__ksymtab_crypto_cipher_encrypt_one, ptr @__ksymtab_crypto_cipher_setkey], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_cipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 11
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp ugt i32 %9, %2
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %2
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = ptrtoint ptr %1 to i32
  %17 = and i32 %8, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = add i32 %8, %2
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 2592) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = ptrtoint ptr %21 to i32
  %25 = add i32 %8, %24
  %26 = xor i32 %8, -1
  %27 = and i32 %25, %26
  %28 = inttoptr i32 %27 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr align 1 %1, i32 %2, i1 false) #7
  %29 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 11, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0, ptr noundef %28, i32 noundef %2) #7
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %2, i1 false) #7
  tail call void @kfree(ptr noundef nonnull %21) #7
  br label %36

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 11, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7
  br label %36

36:                                               ; preds = %32, %23, %19, %11, %3
  %37 = phi i32 [ %35, %32 ], [ -22, %11 ], [ -22, %3 ], [ %31, %23 ], [ -12, %19 ]
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_cipher_encrypt_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [31 x i8], align 1
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 11, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %1 to i32
  %12 = ptrtoint ptr %2 to i32
  %13 = or i32 %12, %11
  %14 = and i32 %8, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16, !prof !8

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %4, i8 0, i32 31, i1 false) #7, !annotation !9
  %19 = ptrtoint ptr %4 to i32
  %20 = add i32 %8, %19
  %21 = xor i32 %8, -1
  %22 = and i32 %20, %21
  %23 = inttoptr i32 %22 to ptr
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %2, i32 %18, i1 false) #7
  call void %10(ptr noundef %0, ptr noundef %23, ptr noundef %23) #7
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %23, i32 %18, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %4) #7
  br label %25

24:                                               ; preds = %3
  tail call void %10(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %25

25:                                               ; preds = %24, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_cipher_decrypt_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [31 x i8], align 1
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 11, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %1 to i32
  %12 = ptrtoint ptr %2 to i32
  %13 = or i32 %12, %11
  %14 = and i32 %8, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16, !prof !8

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %4, i8 0, i32 31, i1 false) #7, !annotation !9
  %19 = ptrtoint ptr %4 to i32
  %20 = add i32 %8, %19
  %21 = xor i32 %8, -1
  %22 = and i32 %20, %21
  %23 = inttoptr i32 %22 to ptr
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %2, i32 %18, i1 false) #7
  call void %10(ptr noundef %0, ptr noundef %23, ptr noundef %23) #7
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %23, i32 %18, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %4) #7
  br label %25

24:                                               ; preds = %3
  tail call void %10(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %25

25:                                               ; preds = %24, %16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
