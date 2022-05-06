; ModuleID = '/llk/IR/crypto/aead.c_pt.bc'
source_filename = "../crypto/aead.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_aead_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_aead_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_aead_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_aead_setauthsize:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_aead_setauthsize\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_aead_setauthsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_aead_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_aead_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_aead_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_aead_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_aead_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_aead_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_grab_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_grab_aead\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_grab_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_aead\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_aead\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_aead\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_aead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_aeads:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_aeads\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_aeads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_aeads:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_aeads\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_aeads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aead_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22aead_register_instance\22\09\09\09\09\09"
module asm "__kstrtabns_aead_register_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_spawn = type { %struct.list_head, ptr, %union.anon.90, ptr, i32, i8, i8 }
%union.anon.90 = type { ptr }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [28 x i8], %struct.crypto_alg }
%struct.aead_instance = type { ptr, [60 x i8], %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { [64 x i8], %struct.crypto_instance }
%struct.crypto_instance = type { %struct.crypto_alg, ptr, %union.anon.89, [52 x i8], [0 x ptr] }
%union.anon.89 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_report_aead = type { [64 x i8], [64 x i8], i32, i32, i32 }

@__kstrtab_crypto_aead_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_aead_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_aead_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_aead_setkey to i32), ptr @__kstrtab_crypto_aead_setkey, ptr @__kstrtabns_crypto_aead_setkey }, section "___ksymtab_gpl+crypto_aead_setkey", align 4
@__kstrtab_crypto_aead_setauthsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_aead_setauthsize = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_aead_setauthsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_aead_setauthsize to i32), ptr @__kstrtab_crypto_aead_setauthsize, ptr @__kstrtabns_crypto_aead_setauthsize }, section "___ksymtab_gpl+crypto_aead_setauthsize", align 4
@__kstrtab_crypto_aead_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_aead_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_aead_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_aead_encrypt to i32), ptr @__kstrtab_crypto_aead_encrypt, ptr @__kstrtabns_crypto_aead_encrypt }, section "___ksymtab_gpl+crypto_aead_encrypt", align 4
@__kstrtab_crypto_aead_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_aead_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_aead_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_aead_decrypt to i32), ptr @__kstrtab_crypto_aead_decrypt, ptr @__kstrtabns_crypto_aead_decrypt }, section "___ksymtab_gpl+crypto_aead_decrypt", align 4
@crypto_aead_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_aead_init_tfm, ptr @crypto_aead_show, ptr @crypto_aead_report, ptr @crypto_aead_free_instance, i32 3, i32 -16, i32 15, i32 64 }, align 4
@__kstrtab_crypto_grab_aead = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_grab_aead = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_grab_aead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_grab_aead to i32), ptr @__kstrtab_crypto_grab_aead, ptr @__kstrtabns_crypto_grab_aead }, section "___ksymtab_gpl+crypto_grab_aead", align 4
@__kstrtab_crypto_alloc_aead = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_aead = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_aead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_aead to i32), ptr @__kstrtab_crypto_alloc_aead, ptr @__kstrtabns_crypto_alloc_aead }, section "___ksymtab_gpl+crypto_alloc_aead", align 4
@__kstrtab_crypto_register_aead = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_aead = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_aead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_aead to i32), ptr @__kstrtab_crypto_register_aead, ptr @__kstrtabns_crypto_register_aead }, section "___ksymtab_gpl+crypto_register_aead", align 4
@__kstrtab_crypto_unregister_aead = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_aead = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_aead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_aead to i32), ptr @__kstrtab_crypto_unregister_aead, ptr @__kstrtabns_crypto_unregister_aead }, section "___ksymtab_gpl+crypto_unregister_aead", align 4
@__kstrtab_crypto_register_aeads = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_aeads = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_aeads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_aeads to i32), ptr @__kstrtab_crypto_register_aeads, ptr @__kstrtabns_crypto_register_aeads }, section "___ksymtab_gpl+crypto_register_aeads", align 4
@__kstrtab_crypto_unregister_aeads = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_aeads = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_aeads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_aeads to i32), ptr @__kstrtab_crypto_unregister_aeads, ptr @__kstrtabns_crypto_unregister_aeads }, section "___ksymtab_gpl+crypto_unregister_aeads", align 4
@.str = private unnamed_addr constant [14 x i8] c"crypto/aead.c\00", align 1
@__kstrtab_aead_register_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_aead_register_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_aead_register_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aead_register_instance to i32), ptr @__kstrtab_aead_register_instance, ptr @__kstrtabns_aead_register_instance }, section "___ksymtab_gpl+aead_register_instance", align 4
@__UNIQUE_ID_file267 = internal constant [22 x i8] c"aead.file=crypto/aead\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [17 x i8] c"aead.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [70 x i8] c"aead.description=Authenticated Encryption with Associated Data (AEAD)\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"type         : aead\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"async        : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ivsize       : %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"maxauthsize  : %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"geniv        : <none>\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"aead\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__ksymtab_aead_register_instance, ptr @__ksymtab_crypto_aead_decrypt, ptr @__ksymtab_crypto_aead_encrypt, ptr @__ksymtab_crypto_aead_setauthsize, ptr @__ksymtab_crypto_aead_setkey, ptr @__ksymtab_crypto_alloc_aead, ptr @__ksymtab_crypto_grab_aead, ptr @__ksymtab_crypto_register_aead, ptr @__ksymtab_crypto_register_aeads, ptr @__ksymtab_crypto_unregister_aead, ptr @__ksymtab_crypto_unregister_aeads], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_aead_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = ptrtoint ptr %1 to i32
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = add i32 %7, %2
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 2592) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = ptrtoint ptr %13 to i32
  %17 = add i32 %7, %16
  %18 = xor i32 %7, -1
  %19 = and i32 %17, %18
  %20 = inttoptr i32 %19 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %1, i32 %2, i1 false) #8
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 -64
  %23 = load ptr, ptr %22, align 64
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef %20, i32 noundef %2) #8
  tail call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %2, i1 false) #8
  tail call void @kfree(ptr noundef nonnull %13) #8
  br label %29

25:                                               ; preds = %3
  %26 = getelementptr i8, ptr %5, i32 -64
  %27 = load ptr, ptr %26, align 64
  %28 = tail call i32 %27(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  br label %29

29:                                               ; preds = %25, %15
  %30 = phi i32 [ %28, %25 ], [ %24, %15 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32, !prof !8

32:                                               ; preds = %29, %11
  %33 = phi i32 [ %30, %29 ], [ -12, %11 ]
  %34 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 64
  %36 = or i32 %35, 1
  store i32 %36, ptr %34, align 64
  br label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3
  %39 = load i32, ptr %38, align 64
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 64
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i32 [ %33, %32 ], [ 0, %37 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_aead_setauthsize(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -36
  %7 = load i32, ptr %6, align 4
  br i1 %3, label %8, label %10

8:                                                ; preds = %2
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %8, %2
  %11 = phi i32 [ 0, %8 ], [ %7, %2 ]
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %5, i32 -60
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef %1) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %13
  store i32 %1, ptr %0, align 64
  br label %21

21:                                               ; preds = %20, %17, %10, %8
  %22 = phi i32 [ 0, %20 ], [ -22, %10 ], [ -22, %8 ], [ %18, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_aead_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -56
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %0) #8
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %12, %7 ], [ -126, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_aead_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 -64
  %9 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %8, align 64
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %3, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -52
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0) #8
  br label %19

19:                                               ; preds = %13, %7, %1
  %20 = phi i32 [ %18, %13 ], [ -126, %1 ], [ -22, %7 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_grab_aead(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.crypto_spawn, ptr %0, i32 0, i32 3
  store ptr @crypto_aead_type, ptr %6, align 4
  %7 = tail call i32 @crypto_grab_spawn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_grab_spawn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_aead(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_aead_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #8
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_aead(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5) #8
  %7 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 32
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8) #8
  %10 = icmp ugt i32 %9, 512
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 10, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %7, align 32
  br label %16

16:                                               ; preds = %13, %11
  %17 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 10, i32 10
  store ptr @crypto_aead_type, ptr %17, align 8
  %18 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 10, i32 2
  %19 = load i32, ptr %18, align 16
  %20 = and i32 %19, -16
  %21 = or i32 %20, 3
  store i32 %21, ptr %18, align 16
  %22 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 10
  %23 = tail call i32 @crypto_register_alg(ptr noundef %22) #8
  br label %24

24:                                               ; preds = %16, %1
  %25 = phi i32 [ %23, %16 ], [ -22, %1 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_aead(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.aead_alg, ptr %0, i32 0, i32 10
  tail call void @crypto_unregister_alg(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_aeads(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %40

4:                                                ; preds = %32, %2
  %5 = phi i32 [ %33, %32 ], [ 0, %2 ]
  %6 = getelementptr %struct.aead_alg, ptr %0, i32 %5, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.aead_alg, ptr %0, i32 %5, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9) #8
  %11 = getelementptr %struct.aead_alg, ptr %0, i32 %5, i32 8
  %12 = load i32, ptr %11, align 32
  %13 = tail call i32 @llvm.umax.i32(i32 %10, i32 %12) #8
  %14 = icmp ugt i32 %13, 512
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr %struct.aead_alg, ptr %0, i32 %5, i32 10, i32 3
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %11, align 32
  br label %20

20:                                               ; preds = %17, %15
  %21 = getelementptr %struct.aead_alg, ptr %0, i32 %5, i32 10, i32 10
  store ptr @crypto_aead_type, ptr %21, align 8
  %22 = getelementptr %struct.aead_alg, ptr %0, i32 %5, i32 10, i32 2
  %23 = load i32, ptr %22, align 16
  %24 = and i32 %23, -16
  %25 = or i32 %24, 3
  store i32 %25, ptr %22, align 16
  %26 = getelementptr %struct.aead_alg, ptr %0, i32 %5, i32 10
  %27 = tail call i32 @crypto_register_alg(ptr noundef %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20, %4
  %30 = phi i32 [ %27, %20 ], [ -22, %4 ]
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %40, label %35

32:                                               ; preds = %20
  %33 = add nuw nsw i32 %5, 1
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %40, label %4

35:                                               ; preds = %35, %29
  %36 = phi i32 [ %37, %35 ], [ %5, %29 ]
  %37 = add nsw i32 %36, -1
  %38 = getelementptr %struct.aead_alg, ptr %0, i32 %37, i32 10
  tail call void @crypto_unregister_alg(ptr noundef %38) #8
  %39 = icmp sgt i32 %36, 1
  br i1 %39, label %35, label %40

40:                                               ; preds = %35, %32, %29, %2
  %41 = phi i32 [ %30, %29 ], [ 0, %2 ], [ %30, %35 ], [ 0, %32 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_aeads(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.aead_alg, ptr %0, i32 %6, i32 10
  tail call void @crypto_unregister_alg(ptr noundef %7) #8
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @aead_register_instance(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #8
  br label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.aead_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aead_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 24
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @llvm.umax.i32(i32 %8, i32 %10) #8
  %12 = getelementptr inbounds %struct.aead_instance, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 32
  %13 = load i32, ptr %12, align 32
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %13) #8
  %15 = icmp ugt i32 %14, 512
  br i1 %15, label %29, label %16

16:                                               ; preds = %6
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.aead_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %12, align 32
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.aead_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  store ptr @crypto_aead_type, ptr %22, align 8
  %23 = getelementptr inbounds %struct.aead_instance, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2
  %24 = load i32, ptr %23, align 16
  %25 = and i32 %24, -16
  %26 = or i32 %25, 3
  store i32 %26, ptr %23, align 16
  %27 = getelementptr inbounds %struct.aead_instance, ptr %1, i32 0, i32 2, i32 0, i32 1
  %28 = tail call i32 @crypto_register_instance(ptr noundef %0, ptr noundef %27) #8
  br label %29

29:                                               ; preds = %21, %6, %5
  %30 = phi i32 [ -22, %5 ], [ %28, %21 ], [ -22, %6 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_instance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_aead_init_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 64
  %6 = or i32 %5, 1
  store i32 %6, ptr %0, align 64
  %7 = getelementptr i8, ptr %4, i32 -36
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 64
  %9 = getelementptr i8, ptr %4, i32 -44
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 8
  store ptr @crypto_aead_exit_tfm, ptr %13, align 8
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr i8, ptr %4, i32 -48
  %16 = load ptr, ptr %15, align 16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %2) #8
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %19, %18 ], [ 0, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_aead_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %3 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 16
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.4, ptr @.str.3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #8
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #8
  %10 = getelementptr i8, ptr %1, i32 -40
  %11 = load i32, ptr %10, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %11) #8
  %12 = getelementptr i8, ptr %1, i32 -36
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %13) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_aead_report(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.crypto_report_aead, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %3, i8 0, i64 140, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i32 noundef 64) #8
  %5 = getelementptr inbounds %struct.crypto_report_aead, ptr %3, i32 0, i32 1
  %6 = call i32 @strscpy(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 64) #8
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_report_aead, ptr %3, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %1, i32 -36
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_report_aead, ptr %3, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %1, i32 -40
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.crypto_report_aead, ptr %3, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 140, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %3) #8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_aead_free_instance(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = load ptr, ptr %2, align 64
  tail call void %3(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_aead_exit_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -44
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
