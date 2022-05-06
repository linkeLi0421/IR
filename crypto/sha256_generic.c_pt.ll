; ModuleID = '/llk/IR/crypto/sha256_generic.c_pt.bc'
source_filename = "../crypto/sha256_generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha224_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha224_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha224_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha256_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha256_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha256_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha256_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha256_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha256_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@sha224_zero_message_hash = dso_local constant [28 x i8] c"\D1J\02\8C*:+\C9Ga\02\BB(\824\C4\15\A2\B0\1F\82\8E\A6*\C5\B3\E4/", align 1
@__kstrtab_sha224_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha224_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha224_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha224_zero_message_hash to i32), ptr @__kstrtab_sha224_zero_message_hash, ptr @__kstrtabns_sha224_zero_message_hash }, section "___ksymtab_gpl+sha224_zero_message_hash", align 4
@sha256_zero_message_hash = dso_local constant [32 x i8] c"\E3\B0\C4B\98\FC\1C\14\9A\FB\F4\C8\99o\B9$'\AEA\E4d\9B\93L\A4\95\99\1BxR\B8U", align 1
@__kstrtab_sha256_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha256_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha256_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha256_zero_message_hash to i32), ptr @__kstrtab_sha256_zero_message_hash, ptr @__kstrtabns_sha256_zero_message_hash }, section "___ksymtab_gpl+sha256_zero_message_hash", align 4
@__kstrtab_crypto_sha256_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_update to i32), ptr @__kstrtab_crypto_sha256_update, ptr @__kstrtabns_crypto_sha256_update }, section "___ksymtab+crypto_sha256_update", align 4
@__kstrtab_crypto_sha256_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha256_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha256_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha256_finup to i32), ptr @__kstrtab_crypto_sha256_finup, ptr @__kstrtabns_crypto_sha256_finup }, section "___ksymtab+crypto_sha256_finup", align 4
@__UNIQUE_ID_license220 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description221 = internal constant [54 x i8] c"description=SHA-224 and SHA-256 Secure Hash Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace222 = internal constant [13 x i8] c"alias=sha224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto223 = internal constant [20 x i8] c"alias=crypto-sha224\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace224 = internal constant [21 x i8] c"alias=sha224-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto225 = internal constant [28 x i8] c"alias=crypto-sha224-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace226 = internal constant [13 x i8] c"alias=sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto227 = internal constant [20 x i8] c"alias=crypto-sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace228 = internal constant [21 x i8] c"alias=sha256-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto229 = internal constant [28 x i8] c"alias=crypto-sha256-generic\00", section ".modinfo", align 1
@sha256_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha256_base_init, ptr @crypto_sha256_update, ptr @crypto_sha256_final, ptr @crypto_sha256_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [20 x i8] undef, i32 32, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha256-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @sha224_base_init, ptr @crypto_sha256_update, ptr @crypto_sha256_final, ptr @crypto_sha256_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, [20 x i8] undef, i32 28, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha224-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto223, ptr @__UNIQUE_ID_alias_crypto225, ptr @__UNIQUE_ID_alias_crypto227, ptr @__UNIQUE_ID_alias_crypto229, ptr @__UNIQUE_ID_alias_userspace222, ptr @__UNIQUE_ID_alias_userspace224, ptr @__UNIQUE_ID_alias_userspace226, ptr @__UNIQUE_ID_alias_userspace228, ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_license220, ptr @__ksymtab_crypto_sha256_finup, ptr @__ksymtab_crypto_sha256_update, ptr @__ksymtab_sha224_zero_message_hash, ptr @__ksymtab_sha256_zero_message_hash], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  tail call void @sha256_update(ptr noundef %4, ptr noundef %1, i32 noundef %2) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha256_finup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  tail call void @sha256_update(ptr noundef %5, ptr noundef %1, i32 noundef %2) #4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = icmp eq i32 %10, 28
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void @sha224_final(ptr noundef %5, ptr noundef %3) #4
  br label %14

13:                                               ; preds = %4
  tail call void @sha256_final(ptr noundef %5, ptr noundef %3) #4
  br label %14

14:                                               ; preds = %13, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_sha256_final(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -64
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 28
  %9 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  br i1 %8, label %10, label %11

10:                                               ; preds = %2
  tail call void @sha224_final(ptr noundef %9, ptr noundef %1) #4
  br label %12

11:                                               ; preds = %2
  tail call void @sha256_final(ptr noundef %9, ptr noundef %1) #4
  br label %12

12:                                               ; preds = %11, %10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha256_algs, i32 noundef 2) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha256_algs, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha224_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha256_base_init(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i32 1779033703, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  store i32 -1150833019, ptr %3, align 4
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i32 1013904242, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  store i32 -1521486534, ptr %5, align 4
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i32 1359893119, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 3, i32 1
  store i32 -1694144372, ptr %7, align 4
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i32 528734635, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 4, i32 1
  store i32 1541459225, ptr %9, align 4
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  store i64 0, ptr %10, align 8
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha224_base_init(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i32 -1056596264, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  store i32 914150663, ptr %3, align 4
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i32 812702999, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  store i32 -150054599, ptr %5, align 4
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i32 -4191439, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 3, i32 1
  store i32 1750603025, ptr %7, align 4
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i32 1694076839, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 4, i32 1
  store i32 -1090891868, ptr %9, align 4
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 5
  store i64 0, ptr %10, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
