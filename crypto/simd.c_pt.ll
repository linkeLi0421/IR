; ModuleID = '/llk/IR/crypto/simd.c_pt.bc'
source_filename = "../crypto/simd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_skcipher_create_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_skcipher_create_compat\22\09\09\09\09\09"
module asm "__kstrtabns_simd_skcipher_create_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_skcipher_create:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_skcipher_create\22\09\09\09\09\09"
module asm "__kstrtabns_simd_skcipher_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_skcipher_free:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_skcipher_free\22\09\09\09\09\09"
module asm "__kstrtabns_simd_skcipher_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_register_skciphers_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_register_skciphers_compat\22\09\09\09\09\09"
module asm "__kstrtabns_simd_register_skciphers_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_unregister_skciphers:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_unregister_skciphers\22\09\09\09\09\09"
module asm "__kstrtabns_simd_unregister_skciphers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_aead_create_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_aead_create_compat\22\09\09\09\09\09"
module asm "__kstrtabns_simd_aead_create_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_aead_create:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_aead_create\22\09\09\09\09\09"
module asm "__kstrtabns_simd_aead_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_aead_free:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_aead_free\22\09\09\09\09\09"
module asm "__kstrtabns_simd_aead_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_register_aeads_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_register_aeads_compat\22\09\09\09\09\09"
module asm "__kstrtabns_simd_register_aeads_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simd_unregister_aeads:\09\09\09\09\09"
module asm "\09.asciz \09\22simd_unregister_aeads\22\09\09\09\09\09"
module asm "__kstrtabns_simd_unregister_aeads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.simd_skcipher_alg = type { ptr, [60 x i8], %struct.skcipher_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.simd_aead_alg = type { ptr, [60 x i8], %struct.aead_alg }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [28 x i8], %struct.crypto_alg }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_simd_skcipher_create_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_skcipher_create_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_skcipher_create_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_skcipher_create_compat to i32), ptr @__kstrtab_simd_skcipher_create_compat, ptr @__kstrtabns_simd_skcipher_create_compat }, section "___ksymtab_gpl+simd_skcipher_create_compat", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"simd-%s\00", align 1
@__kstrtab_simd_skcipher_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_skcipher_create = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_skcipher_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_skcipher_create to i32), ptr @__kstrtab_simd_skcipher_create, ptr @__kstrtabns_simd_skcipher_create }, section "___ksymtab_gpl+simd_skcipher_create", align 4
@__kstrtab_simd_skcipher_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_skcipher_free = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_skcipher_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_skcipher_free to i32), ptr @__kstrtab_simd_skcipher_free, ptr @__kstrtabns_simd_skcipher_free }, section "___ksymtab_gpl+simd_skcipher_free", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"crypto/simd.c\00", align 1
@__kstrtab_simd_register_skciphers_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_register_skciphers_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_register_skciphers_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_register_skciphers_compat to i32), ptr @__kstrtab_simd_register_skciphers_compat, ptr @__kstrtabns_simd_register_skciphers_compat }, section "___ksymtab_gpl+simd_register_skciphers_compat", align 4
@__kstrtab_simd_unregister_skciphers = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_unregister_skciphers = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_unregister_skciphers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_unregister_skciphers to i32), ptr @__kstrtab_simd_unregister_skciphers, ptr @__kstrtabns_simd_unregister_skciphers }, section "___ksymtab_gpl+simd_unregister_skciphers", align 4
@__kstrtab_simd_aead_create_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_aead_create_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_aead_create_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_aead_create_compat to i32), ptr @__kstrtab_simd_aead_create_compat, ptr @__kstrtabns_simd_aead_create_compat }, section "___ksymtab_gpl+simd_aead_create_compat", align 4
@__kstrtab_simd_aead_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_aead_create = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_aead_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_aead_create to i32), ptr @__kstrtab_simd_aead_create, ptr @__kstrtabns_simd_aead_create }, section "___ksymtab_gpl+simd_aead_create", align 4
@__kstrtab_simd_aead_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_aead_free = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_aead_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_aead_free to i32), ptr @__kstrtab_simd_aead_free, ptr @__kstrtabns_simd_aead_free }, section "___ksymtab_gpl+simd_aead_free", align 4
@__kstrtab_simd_register_aeads_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_register_aeads_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_register_aeads_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_register_aeads_compat to i32), ptr @__kstrtab_simd_register_aeads_compat, ptr @__kstrtabns_simd_register_aeads_compat }, section "___ksymtab_gpl+simd_register_aeads_compat", align 4
@__kstrtab_simd_unregister_aeads = external dso_local constant [0 x i8], align 1
@__kstrtabns_simd_unregister_aeads = external dso_local constant [0 x i8], align 1
@__ksymtab_simd_unregister_aeads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simd_unregister_aeads to i32), ptr @__kstrtab_simd_unregister_aeads, ptr @__kstrtabns_simd_unregister_aeads }, section "___ksymtab_gpl+simd_unregister_aeads", align 4
@__UNIQUE_ID_license162 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_license162, ptr @__ksymtab_simd_aead_create, ptr @__ksymtab_simd_aead_create_compat, ptr @__ksymtab_simd_aead_free, ptr @__ksymtab_simd_register_aeads_compat, ptr @__ksymtab_simd_register_skciphers_compat, ptr @__ksymtab_simd_skcipher_create, ptr @__ksymtab_simd_skcipher_create_compat, ptr @__ksymtab_simd_skcipher_free, ptr @__ksymtab_simd_unregister_aeads, ptr @__ksymtab_simd_unregister_skciphers], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simd_skcipher_create_compat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_skcipher(ptr noundef %2, i32 noundef 8192, i32 noundef 8320) #10
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 512) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %6
  store ptr %2, ptr %10, align 64
  %13 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2
  %14 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 8
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %0)
  %16 = icmp sgt i32 %15, 127
  br i1 %16, label %61, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 9
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %18, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1)
  %20 = icmp sgt i32 %19, 127
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %8, i32 16
  %23 = load i32, ptr %22, align 16
  %24 = and i32 %23, 65792
  %25 = or i32 %24, 128
  %26 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 2
  store i32 %25, ptr %26, align 16
  %27 = getelementptr i8, ptr %8, i32 32
  %28 = load i32, ptr %27, align 32
  %29 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 6
  store i32 %28, ptr %29, align 32
  %30 = getelementptr i8, ptr %8, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %8, i32 28
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %8, i32 332
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 15
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 11, i32 4
  store i32 4, ptr %39, align 8
  %40 = getelementptr i8, ptr %8, i32 -36
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 7
  store i32 %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %8, i32 -32
  %44 = load i32, ptr %43, align 32
  %45 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 8
  store i32 %44, ptr %45, align 32
  %46 = getelementptr i8, ptr %8, i32 -44
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 5
  store i32 %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %8, i32 -40
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 6
  store i32 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 3
  store ptr @simd_skcipher_init, ptr %52, align 4
  %53 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 4
  store ptr @simd_skcipher_exit, ptr %53, align 16
  store ptr @simd_skcipher_setkey, ptr %13, align 64
  %54 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 1
  store ptr @simd_skcipher_encrypt, ptr %54, align 4
  %55 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %10, i32 0, i32 2, i32 2
  store ptr @simd_skcipher_decrypt, ptr %55, align 8
  %56 = tail call i32 @crypto_register_skcipher(ptr noundef %13) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %61, %21, %6
  %59 = phi ptr [ %63, %61 ], [ %10, %21 ], [ inttoptr (i32 -12 to ptr), %6 ]
  %60 = getelementptr inbounds %struct.crypto_skcipher, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %60) #10
  br label %64

61:                                               ; preds = %21, %17, %12
  %62 = phi i32 [ -36, %12 ], [ -36, %17 ], [ %56, %21 ]
  tail call void @kfree(ptr noundef nonnull %10) #10
  %63 = inttoptr i32 %62 to ptr
  br label %58

64:                                               ; preds = %58, %3
  %65 = phi ptr [ %59, %58 ], [ %4, %3 ]
  ret ptr %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_skcipher_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -128
  %5 = load ptr, ptr %4, align 64
  %6 = tail call ptr @cryptd_alloc_skcipher(ptr noundef %5, i32 noundef 8192, i32 noundef 8192) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  store ptr %6, ptr %11, align 4
  %12 = tail call ptr @cryptd_skcipher_child(ptr noundef %6) #10
  %13 = load i32, ptr %12, align 64
  %14 = load i32, ptr %6, align 64
  %15 = tail call i32 @llvm.umax.i32(i32 %13, i32 %14)
  %16 = add i32 %15, 64
  store i32 %16, ptr %0, align 64
  br label %17

17:                                               ; preds = %10, %8
  %18 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simd_skcipher_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @cryptd_free_skcipher(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_skcipher_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, -1048321
  store i32 %8, ptr %6, align 64
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1048320
  %12 = or i32 %11, %8
  store i32 %12, ptr %6, align 64
  %13 = tail call i32 @crypto_skcipher_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #10
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_skcipher_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(64) %5, ptr noundef align 64 dereferenceable(64) %0, i32 64, i1 false)
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 15728640
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 983040
  %12 = or i32 %11, %9
  %13 = load volatile i32, ptr %7, align 4
  %14 = and i32 %13, 65280
  %15 = or i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load volatile i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 4
  %22 = tail call zeroext i1 @cryptd_skcipher_queued(ptr noundef %21) #10
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %1
  %24 = load ptr, ptr %4, align 4
  br label %28

25:                                               ; preds = %20, %17
  %26 = load ptr, ptr %4, align 4
  %27 = tail call ptr @cryptd_skcipher_child(ptr noundef %26) #10
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi ptr [ %24, %23 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 3
  store ptr %30, ptr %31, align 16
  %32 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %5) #10
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_skcipher_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(64) %5, ptr noundef align 64 dereferenceable(64) %0, i32 64, i1 false)
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 15728640
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 983040
  %12 = or i32 %11, %9
  %13 = load volatile i32, ptr %7, align 4
  %14 = and i32 %13, 65280
  %15 = or i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load volatile i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 4
  %22 = tail call zeroext i1 @cryptd_skcipher_queued(ptr noundef %21) #10
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %1
  %24 = load ptr, ptr %4, align 4
  br label %28

25:                                               ; preds = %20, %17
  %26 = load ptr, ptr %4, align 4
  %27 = tail call ptr @cryptd_skcipher_child(ptr noundef %26) #10
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi ptr [ %24, %23 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 3
  store ptr %30, ptr %31, align 16
  %32 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %5) #10
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simd_skcipher_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %1)
  %5 = icmp sgt i32 %4, 127
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call ptr @simd_skcipher_create_compat(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ inttoptr (i32 -36 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #10
  ret ptr %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simd_skcipher_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %0, i32 0, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %2) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simd_register_skciphers_compat(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call i32 @crypto_register_skciphers(ptr noundef %0, i32 noundef %1) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %3
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %24, %6
  %9 = phi i32 [ %26, %24 ], [ 0, %6 ]
  %10 = getelementptr %struct.skcipher_alg, ptr %0, i32 %9, i32 11, i32 8
  %11 = tail call i32 @strncmp(ptr noundef %10, ptr noundef nonnull dereferenceable(3) @.str.2, i32 noundef 2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 244, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr %struct.skcipher_alg, ptr %0, i32 %9, i32 11, i32 9
  %16 = tail call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(3) @.str.2, i32 noundef 2)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 245, i32 noundef 9, ptr noundef null) #10
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr i8, ptr %10, i32 2
  %21 = getelementptr i8, ptr %15, i32 2
  %22 = tail call ptr @simd_skcipher_create_compat(ptr noundef %20, ptr noundef %21, ptr noundef %15)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr ptr, ptr %2, i32 %9
  store ptr %22, ptr %25, align 4
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %40, label %8

28:                                               ; preds = %19
  %29 = ptrtoint ptr %22 to i32
  tail call void @crypto_unregister_skciphers(ptr noundef %0, i32 noundef %1) #10
  br label %30

30:                                               ; preds = %37, %28
  %31 = phi i32 [ %38, %37 ], [ 0, %28 ]
  %32 = getelementptr ptr, ptr %2, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %33, i32 0, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %36) #10
  tail call void @kfree(ptr noundef nonnull %33) #10
  store ptr null, ptr %32, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = add nuw nsw i32 %31, 1
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %30

40:                                               ; preds = %37, %24, %6, %3
  %41 = phi i32 [ %4, %3 ], [ 0, %6 ], [ %29, %37 ], [ 0, %24 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simd_unregister_skciphers(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  tail call void @crypto_unregister_skciphers(ptr noundef %0, i32 noundef %1) #10
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %12, %3
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %2, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.simd_skcipher_alg, ptr %8, i32 0, i32 2
  tail call void @crypto_unregister_skcipher(ptr noundef %11) #10
  tail call void @kfree(ptr noundef nonnull %8) #10
  store ptr null, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %5

15:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simd_aead_create_compat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_aead(ptr noundef %2, i32 noundef 8192, i32 noundef 8320) #10
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %62, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 512) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %6
  store ptr %2, ptr %10, align 64
  %13 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2
  %14 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 8
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %0)
  %16 = icmp sgt i32 %15, 127
  br i1 %16, label %59, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 9
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %18, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1)
  %20 = icmp sgt i32 %19, 127
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %8, i32 16
  %23 = load i32, ptr %22, align 16
  %24 = and i32 %23, 65792
  %25 = or i32 %24, 128
  %26 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 2
  store i32 %25, ptr %26, align 16
  %27 = getelementptr i8, ptr %8, i32 32
  %28 = load i32, ptr %27, align 32
  %29 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 6
  store i32 %28, ptr %29, align 32
  %30 = getelementptr i8, ptr %8, i32 20
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %8, i32 28
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %8, i32 332
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 15
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 10, i32 4
  store i32 4, ptr %39, align 8
  %40 = getelementptr i8, ptr %8, i32 -40
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 6
  store i32 %41, ptr %42, align 8
  %43 = getelementptr i8, ptr %8, i32 -36
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 7
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %8, i32 -32
  %47 = load i32, ptr %46, align 32
  %48 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 8
  store i32 %47, ptr %48, align 32
  %49 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 4
  store ptr @simd_aead_init, ptr %49, align 16
  %50 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 5
  store ptr @simd_aead_exit, ptr %50, align 4
  store ptr @simd_aead_setkey, ptr %13, align 64
  %51 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 1
  store ptr @simd_aead_setauthsize, ptr %51, align 4
  %52 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 2
  store ptr @simd_aead_encrypt, ptr %52, align 8
  %53 = getelementptr inbounds %struct.simd_aead_alg, ptr %10, i32 0, i32 2, i32 3
  store ptr @simd_aead_decrypt, ptr %53, align 4
  %54 = tail call i32 @crypto_register_aead(ptr noundef %13) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %59, %21, %6
  %57 = phi ptr [ %61, %59 ], [ %10, %21 ], [ inttoptr (i32 -12 to ptr), %6 ]
  %58 = getelementptr inbounds %struct.crypto_aead, ptr %4, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %58) #10
  br label %62

59:                                               ; preds = %21, %17, %12
  %60 = phi i32 [ -36, %12 ], [ -36, %17 ], [ %54, %21 ]
  tail call void @kfree(ptr noundef nonnull %10) #10
  %61 = inttoptr i32 %60 to ptr
  br label %56

62:                                               ; preds = %56, %3
  %63 = phi ptr [ %57, %56 ], [ %4, %3 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_aead_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -128
  %5 = load ptr, ptr %4, align 64
  %6 = tail call ptr @cryptd_alloc_aead(ptr noundef %5, i32 noundef 8192, i32 noundef 8192) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  store ptr %6, ptr %11, align 4
  %12 = tail call ptr @cryptd_aead_child(ptr noundef %6) #10
  %13 = getelementptr inbounds %struct.crypto_aead, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %6, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %14, i32 %16)
  %18 = add i32 %17, 64
  %19 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %10, %8
  %21 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simd_aead_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @cryptd_free_aead(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_aead_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, -1048321
  store i32 %8, ptr %6, align 64
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 1048320
  %12 = or i32 %11, %8
  store i32 %12, ptr %6, align 64
  %13 = tail call i32 @crypto_aead_setkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #10
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_aead_setauthsize(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @crypto_aead_setauthsize(ptr noundef %4, i32 noundef %1) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_aead_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(64) %5, ptr noundef align 64 dereferenceable(64) %0, i32 64, i1 false)
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 15728640
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 983040
  %12 = or i32 %11, %9
  %13 = load volatile i32, ptr %7, align 4
  %14 = and i32 %13, 65280
  %15 = or i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load volatile i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 4
  %22 = tail call zeroext i1 @cryptd_aead_queued(ptr noundef %21) #10
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %1
  %24 = load ptr, ptr %4, align 4
  br label %28

25:                                               ; preds = %20, %17
  %26 = load ptr, ptr %4, align 4
  %27 = tail call ptr @cryptd_aead_child(ptr noundef %26) #10
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi ptr [ %24, %23 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.crypto_aead, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %30, ptr %31, align 16
  %32 = tail call i32 @crypto_aead_encrypt(ptr noundef %5) #10
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simd_aead_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(64) %5, ptr noundef align 64 dereferenceable(64) %0, i32 64, i1 false)
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 15728640
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 983040
  %12 = or i32 %11, %9
  %13 = load volatile i32, ptr %7, align 4
  %14 = and i32 %13, 65280
  %15 = or i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load volatile i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 4
  %22 = tail call zeroext i1 @cryptd_aead_queued(ptr noundef %21) #10
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %1
  %24 = load ptr, ptr %4, align 4
  br label %28

25:                                               ; preds = %20, %17
  %26 = load ptr, ptr %4, align 4
  %27 = tail call ptr @cryptd_aead_child(ptr noundef %26) #10
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi ptr [ %24, %23 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.crypto_aead, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.aead_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %30, ptr %31, align 16
  %32 = tail call i32 @crypto_aead_decrypt(ptr noundef %5) #10
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simd_aead_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %1)
  %5 = icmp sgt i32 %4, 127
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call ptr @simd_aead_create_compat(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ inttoptr (i32 -36 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #10
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simd_aead_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.simd_aead_alg, ptr %0, i32 0, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %2) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simd_register_aeads_compat(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call i32 @crypto_register_aeads(ptr noundef %0, i32 noundef %1) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %3
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %24, %6
  %9 = phi i32 [ %26, %24 ], [ 0, %6 ]
  %10 = getelementptr %struct.aead_alg, ptr %0, i32 %9, i32 10, i32 8
  %11 = tail call i32 @strncmp(ptr noundef %10, ptr noundef nonnull dereferenceable(3) @.str.2, i32 noundef 2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 491, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr %struct.aead_alg, ptr %0, i32 %9, i32 10, i32 9
  %16 = tail call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(3) @.str.2, i32 noundef 2)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 492, i32 noundef 9, ptr noundef null) #10
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr i8, ptr %10, i32 2
  %21 = getelementptr i8, ptr %15, i32 2
  %22 = tail call ptr @simd_aead_create_compat(ptr noundef %20, ptr noundef %21, ptr noundef %15)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr ptr, ptr %2, i32 %9
  store ptr %22, ptr %25, align 4
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %40, label %8

28:                                               ; preds = %19
  %29 = ptrtoint ptr %22 to i32
  tail call void @crypto_unregister_aeads(ptr noundef %0, i32 noundef %1) #10
  br label %30

30:                                               ; preds = %37, %28
  %31 = phi i32 [ %38, %37 ], [ 0, %28 ]
  %32 = getelementptr ptr, ptr %2, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.simd_aead_alg, ptr %33, i32 0, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %36) #10
  tail call void @kfree(ptr noundef nonnull %33) #10
  store ptr null, ptr %32, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = add nuw nsw i32 %31, 1
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %30

40:                                               ; preds = %37, %24, %6, %3
  %41 = phi i32 [ %4, %3 ], [ 0, %6 ], [ %29, %37 ], [ 0, %24 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aeads(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simd_unregister_aeads(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  tail call void @crypto_unregister_aeads(ptr noundef %0, i32 noundef %1) #10
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %12, %3
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %2, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.simd_aead_alg, ptr %8, i32 0, i32 2
  tail call void @crypto_unregister_aead(ptr noundef %11) #10
  tail call void @kfree(ptr noundef nonnull %8) #10
  store ptr null, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %5

15:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aeads(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_skcipher_child(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryptd_free_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cryptd_skcipher_queued(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cryptd_aead_child(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cryptd_free_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cryptd_aead_queued(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
