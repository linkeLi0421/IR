; ModuleID = '/llk/IR/crypto/akcipher.c_pt.bc'
source_filename = "../crypto/akcipher.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_grab_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_grab_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_grab_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_akcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_akcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_akcipher_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22akcipher_register_instance\22\09\09\09\09\09"
module asm "__kstrtabns_akcipher_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.89, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.89 = type { ptr }
%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.akcipher_instance = type { ptr, [60 x i8], %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.90, [52 x i8], [0 x ptr] }
%union.anon.90 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_report_akcipher = type { [64 x i8] }

@crypto_akcipher_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_akcipher_init_tfm, ptr @crypto_akcipher_show, ptr @crypto_akcipher_report, ptr @crypto_akcipher_free_instance, i32 13, i32 -16, i32 15, i32 0 }, align 4
@__kstrtab_crypto_grab_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_grab_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_grab_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_grab_akcipher to i32), ptr @__kstrtab_crypto_grab_akcipher, ptr @__kstrtabns_crypto_grab_akcipher }, section "___ksymtab_gpl+crypto_grab_akcipher", align 4
@__kstrtab_crypto_alloc_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_akcipher to i32), ptr @__kstrtab_crypto_alloc_akcipher, ptr @__kstrtabns_crypto_alloc_akcipher }, section "___ksymtab_gpl+crypto_alloc_akcipher", align 4
@__kstrtab_crypto_register_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_akcipher to i32), ptr @__kstrtab_crypto_register_akcipher, ptr @__kstrtabns_crypto_register_akcipher }, section "___ksymtab_gpl+crypto_register_akcipher", align 4
@__kstrtab_crypto_unregister_akcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_akcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_akcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_akcipher to i32), ptr @__kstrtab_crypto_unregister_akcipher, ptr @__kstrtabns_crypto_unregister_akcipher }, section "___ksymtab_gpl+crypto_unregister_akcipher", align 4
@.str = private unnamed_addr constant [18 x i8] c"crypto/akcipher.c\00", align 1
@__kstrtab_akcipher_register_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_akcipher_register_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_akcipher_register_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @akcipher_register_instance to i32), ptr @__kstrtab_akcipher_register_instance, ptr @__kstrtabns_akcipher_register_instance }, section "___ksymtab_gpl+akcipher_register_instance", align 4
@__UNIQUE_ID_file263 = internal constant [30 x i8] c"akcipher.file=crypto/akcipher\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [21 x i8] c"akcipher.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [52 x i8] c"akcipher.description=Generic public key cipher type\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"type         : akcipher\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"akcipher\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__ksymtab_akcipher_register_instance, ptr @__ksymtab_crypto_alloc_akcipher, ptr @__ksymtab_crypto_grab_akcipher, ptr @__ksymtab_crypto_register_akcipher, ptr @__ksymtab_crypto_unregister_akcipher], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_grab_akcipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 3
  store ptr @crypto_akcipher_type, ptr %6, align 4
  %7 = tail call i32 @crypto_grab_spawn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_akcipher(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_akcipher_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #5
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_akcipher(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr @akcipher_default_op, ptr %0, align 64
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.akcipher_alg, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store ptr @akcipher_default_op, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.akcipher_alg, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr @akcipher_default_op, ptr %11, align 8
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.akcipher_alg, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store ptr @akcipher_default_op, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.akcipher_alg, ptr %0, i32 0, i32 11
  %22 = getelementptr inbounds %struct.akcipher_alg, ptr %0, i32 0, i32 11, i32 10
  store ptr @crypto_akcipher_type, ptr %22, align 8
  %23 = getelementptr inbounds %struct.akcipher_alg, ptr %0, i32 0, i32 11, i32 2
  %24 = load i32, ptr %23, align 16
  %25 = and i32 %24, -16
  %26 = or i32 %25, 13
  store i32 %26, ptr %23, align 16
  %27 = tail call i32 @crypto_register_alg(ptr noundef %21) #5
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @akcipher_default_op(ptr nocapture noundef readnone %0) #3 {
  ret i32 -38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_akcipher(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.akcipher_alg, ptr %0, i32 0, i32 11
  tail call void @crypto_unregister_alg(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @akcipher_register_instance(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #5
  br label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.akcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  store ptr @crypto_akcipher_type, ptr %7, align 8
  %8 = getelementptr inbounds %struct.akcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 16
  %10 = and i32 %9, -16
  %11 = or i32 %10, 13
  store i32 %11, ptr %8, align 16
  %12 = getelementptr inbounds %struct.akcipher_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  %13 = tail call i32 @crypto_register_instance(ptr noundef %0, ptr noundef %12) #5
  br label %14

14:                                               ; preds = %6, %5
  %15 = phi i32 [ -22, %5 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_akcipher_init_tfm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -32
  %5 = load ptr, ptr %4, align 32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 2
  store ptr @crypto_akcipher_exit_tfm, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr i8, ptr %3, i32 -36
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #5
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_akcipher_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_akcipher_report(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.crypto_report_akcipher, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, i32 noundef 64) #5
  %5 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 64, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_akcipher_free_instance(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = load ptr, ptr %2, align 64
  tail call void %3(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_akcipher_exit_tfm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -32
  %5 = load ptr, ptr %4, align 32
  tail call void %5(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
