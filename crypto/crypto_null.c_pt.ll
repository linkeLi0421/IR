; ModuleID = '/llk/IR/crypto/crypto_null.c_pt.bc'
source_filename = "../crypto/crypto_null.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_get_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_get_default_null_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_get_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_put_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_put_default_null_skcipher\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_put_default_null_skcipher:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.compress_alg = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.skcipher_walk = type { %union.anon.68, %union.anon.68, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.anon.70 = type { ptr, ptr }

@__UNIQUE_ID_alias_userspace220 = internal constant [32 x i8] c"crypto_null.alias=compress_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto221 = internal constant [39 x i8] c"crypto_null.alias=crypto-compress_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace222 = internal constant [30 x i8] c"crypto_null.alias=digest_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto223 = internal constant [37 x i8] c"crypto_null.alias=crypto-digest_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace224 = internal constant [30 x i8] c"crypto_null.alias=cipher_null\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto225 = internal constant [37 x i8] c"crypto_null.alias=crypto-cipher_null\00", section ".modinfo", align 1
@crypto_default_null_skcipher_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_default_null_skcipher_lock, i64 12), ptr getelementptr (i8, ptr @crypto_default_null_skcipher_lock, i64 12) } }, align 4
@crypto_default_null_skcipher = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [17 x i8] c"ecb(cipher_null)\00", align 1
@crypto_default_null_skcipher_refcnt = internal unnamed_addr global i32 0, align 4
@__kstrtab_crypto_get_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_get_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_get_default_null_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_get_default_null_skcipher to i32), ptr @__kstrtab_crypto_get_default_null_skcipher, ptr @__kstrtabns_crypto_get_default_null_skcipher }, section "___ksymtab_gpl+crypto_get_default_null_skcipher", align 4
@__kstrtab_crypto_put_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_put_default_null_skcipher = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_put_default_null_skcipher = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_put_default_null_skcipher to i32), ptr @__kstrtab_crypto_put_default_null_skcipher, ptr @__kstrtabns_crypto_put_default_null_skcipher }, section "___ksymtab_gpl+crypto_put_default_null_skcipher", align 4
@digest_null = internal global %struct.shash_alg { ptr @null_init, ptr @null_update, ptr @null_final, ptr @null_digest, ptr @null_digest, ptr null, ptr null, ptr @null_hash_setkey, ptr null, ptr null, i32 0, [20 x i8] undef, i32 0, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"digest_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"digest_null-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@skcipher_null = internal global %struct.skcipher_alg { ptr @null_skcipher_setkey, ptr @null_skcipher_crypt, ptr @null_skcipher_crypt, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(cipher_null)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-cipher_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }, align 64
@__initcall__kmod_crypto_null__226_221_crypto_null_mod_init4 = internal global ptr @crypto_null_mod_init, section ".initcall4.init", align 4
@__exitcall_crypto_null_mod_fini = internal global ptr @crypto_null_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [36 x i8] c"crypto_null.file=crypto/crypto_null\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [24 x i8] c"crypto_null.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [54 x i8] c"crypto_null.description=Null Cryptographic Algorithms\00", section ".modinfo", align 1
@null_algs = internal global <{ %struct.crypto_alg, { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, [48 x i8] } }> <{ %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cipher_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cipher_null-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 0, i32 0, ptr @null_setkey, ptr @null_crypt, ptr @null_crypt } }, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef }, { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, { %struct.compress_alg, [12 x i8] }, ptr, ptr, ptr, ptr, [48 x i8] } { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"compress_null\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"compress_null-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, { %struct.compress_alg, [12 x i8] } { %struct.compress_alg { ptr @null_compress, ptr @null_compress }, [12 x i8] undef }, ptr null, ptr null, ptr null, ptr null, [48 x i8] undef } }>, align 64
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto221, ptr @__UNIQUE_ID_alias_crypto223, ptr @__UNIQUE_ID_alias_crypto225, ptr @__UNIQUE_ID_alias_userspace220, ptr @__UNIQUE_ID_alias_userspace222, ptr @__UNIQUE_ID_alias_userspace224, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_crypto_null_mod_fini, ptr @__initcall__kmod_crypto_null__226_221_crypto_null_mod_init4, ptr @__ksymtab_crypto_get_default_null_skcipher, ptr @__ksymtab_crypto_put_default_null_skcipher, ptr @crypto_null_mod_fini], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_get_default_null_skcipher() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @crypto_default_null_skcipher_lock) #9
  %1 = load ptr, ptr @crypto_default_null_skcipher, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  store ptr %4, ptr @crypto_default_null_skcipher, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = phi ptr [ %1, %0 ], [ %4, %6 ]
  %9 = load i32, ptr @crypto_default_null_skcipher_refcnt, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr @crypto_default_null_skcipher_refcnt, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %8, %7 ], [ %4, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_default_null_skcipher_lock) #9
  ret ptr %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_put_default_null_skcipher() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @crypto_default_null_skcipher_lock) #9
  %1 = load i32, ptr @crypto_default_null_skcipher_refcnt, align 4
  %2 = add i32 %1, -1
  store i32 %2, ptr @crypto_default_null_skcipher_refcnt, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @crypto_default_null_skcipher, align 4
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %6) #9
  store ptr null, ptr @crypto_default_null_skcipher, align 4
  br label %7

7:                                                ; preds = %4, %0
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_default_null_skcipher_lock) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @crypto_null_mod_fini() #3 section ".exit.text" {
  tail call void @crypto_unregister_algs(ptr noundef nonnull @null_algs, i32 noundef 2) #9
  tail call void @crypto_unregister_shash(ptr noundef nonnull @digest_null) #9
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @skcipher_null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_algs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @crypto_null_mod_init() #3 section ".init.text" {
  %1 = tail call i32 @crypto_register_algs(ptr noundef nonnull @null_algs, i32 noundef 2) #9
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @crypto_register_shash(ptr noundef nonnull @digest_null) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @skcipher_null) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  tail call void @crypto_unregister_shash(ptr noundef nonnull @digest_null) #9
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  tail call void @crypto_unregister_algs(ptr noundef nonnull @null_algs, i32 noundef 2) #9
  br label %12

12:                                               ; preds = %10, %6, %0
  %13 = phi i32 [ 0, %6 ], [ %1, %0 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @null_setkey(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @null_crypt(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i8, ptr %2, align 1
  store i8 %4, ptr %1, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @null_compress(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #6 {
  %6 = load i32, ptr %4, align 4
  %7 = icmp ult i32 %6, %2
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %1, i32 %2, i1 false)
  store i32 %2, ptr %4, align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ 0, %8 ], [ -22, %5 ]
  ret i32 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @null_init(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @null_update(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @null_final(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @null_digest(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @null_hash_setkey(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @null_skcipher_setkey(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @null_skcipher_crypt(ptr noundef %0) #0 {
  %2 = alloca %struct.skcipher_walk, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  %3 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #9
  %4 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.anon.70, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  br label %10

10:                                               ; preds = %16, %7
  %11 = phi i32 [ %5, %7 ], [ %18, %16 ]
  %12 = load ptr, ptr %8, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %12, i32 %11, i1 false)
  br label %16

16:                                               ; preds = %15, %10
  %17 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef 0) #9
  %18 = load i32, ptr %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10

20:                                               ; preds = %16, %1
  %21 = phi i32 [ %3, %1 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #9
  ret i32 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_algs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }

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
!8 = !{!"auto-init"}
