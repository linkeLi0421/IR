; ModuleID = '/llk/IR/crypto/compress.c_pt.bc'
source_filename = "../crypto/compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_comp_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_comp_compress\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_comp_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_comp_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_comp_decompress\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_comp_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }

@__kstrtab_crypto_comp_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_comp_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_comp_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_comp_compress to i32), ptr @__kstrtab_crypto_comp_compress, ptr @__kstrtabns_crypto_comp_compress }, section "___ksymtab_gpl+crypto_comp_compress", align 4
@__kstrtab_crypto_comp_decompress = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_comp_decompress = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_comp_decompress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_comp_decompress to i32), ptr @__kstrtab_crypto_comp_decompress, ptr @__kstrtabns_crypto_comp_decompress }, section "___ksymtab_gpl+crypto_comp_decompress", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_crypto_comp_compress, ptr @__ksymtab_crypto_comp_decompress], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_comp_compress(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_comp_decompress(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 11, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1
  ret i32 %10
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
