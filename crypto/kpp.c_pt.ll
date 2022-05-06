; ModuleID = '/llk/IR/crypto/kpp.c_pt.bc'
source_filename = "../crypto/kpp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_kpp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_kpp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_kpp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_report_kpp = type { [64 x i8] }

@crypto_kpp_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_kpp_init_tfm, ptr @crypto_kpp_show, ptr @crypto_kpp_report, ptr null, i32 8, i32 -16, i32 15, i32 0 }, align 4
@__kstrtab_crypto_alloc_kpp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_kpp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_kpp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_kpp to i32), ptr @__kstrtab_crypto_alloc_kpp, ptr @__kstrtabns_crypto_alloc_kpp }, section "___ksymtab_gpl+crypto_alloc_kpp", align 4
@__kstrtab_crypto_register_kpp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_kpp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_kpp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_kpp to i32), ptr @__kstrtab_crypto_register_kpp, ptr @__kstrtabns_crypto_register_kpp }, section "___ksymtab_gpl+crypto_register_kpp", align 4
@__kstrtab_crypto_unregister_kpp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_kpp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_kpp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_kpp to i32), ptr @__kstrtab_crypto_unregister_kpp, ptr @__kstrtabns_crypto_unregister_kpp }, section "___ksymtab_gpl+crypto_unregister_kpp", align 4
@__UNIQUE_ID_file263 = internal constant [20 x i8] c"kpp.file=crypto/kpp\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [16 x i8] c"kpp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [50 x i8] c"kpp.description=Key-agreement Protocol Primitives\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"type         : kpp\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"kpp\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__ksymtab_crypto_alloc_kpp, ptr @__ksymtab_crypto_register_kpp, ptr @__ksymtab_crypto_unregister_kpp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_kpp(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_kpp_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_kpp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kpp_alg, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.kpp_alg, ptr %0, i32 0, i32 8, i32 10
  store ptr @crypto_kpp_type, ptr %3, align 8
  %4 = getelementptr inbounds %struct.kpp_alg, ptr %0, i32 0, i32 8, i32 2
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, -16
  %7 = or i32 %6, 8
  store i32 %7, ptr %4, align 16
  %8 = tail call i32 @crypto_register_alg(ptr noundef %2) #4
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_kpp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kpp_alg, ptr %0, i32 0, i32 8
  tail call void @crypto_unregister_alg(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_kpp_init_tfm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -44
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 2
  store ptr @crypto_kpp_exit_tfm, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr i8, ptr %3, i32 -48
  %11 = load ptr, ptr %10, align 16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_kpp_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_kpp_report(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.crypto_report_kpp, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 64) #4
  %5 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 64, ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_kpp_exit_tfm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -44
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
