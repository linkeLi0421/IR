; ModuleID = '/llk/IR/arch/arm/crypto/aes-neonbs-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/aes-neonbs-glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
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
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.skcipher_walk = type { %union.anon.68, %union.anon.68, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.anon.70 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author235 = internal constant [50 x i8] c"author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace237 = internal constant [15 x i8] c"alias=ecb(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto238 = internal constant [22 x i8] c"alias=crypto-ecb(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace239 = internal constant [19 x i8] c"alias=cbc(aes)-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto240 = internal constant [26 x i8] c"alias=crypto-cbc(aes)-all\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace241 = internal constant [15 x i8] c"alias=ctr(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto242 = internal constant [22 x i8] c"alias=crypto-ctr(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace243 = internal constant [15 x i8] c"alias=xts(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto244 = internal constant [22 x i8] c"alias=crypto-xts(aes)\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns245 = internal constant [26 x i8] c"import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@aes_algs = internal global [5 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @aesbs_setkey, ptr @ecb_encrypt, ptr @ecb_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 128, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 1712, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ecb-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_cbc_setkey, ptr @cbc_encrypt, ptr @cbc_decrypt, ptr @cbc_init, ptr @cbc_exit, i32 16, i32 32, i32 16, i32 0, i32 128, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8448, i32 16, i32 1728, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__cbc-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_setkey, ptr @ctr_encrypt, ptr @ctr_encrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 128, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 1, i32 1712, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ctr-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_ctr_setkey_sync, ptr @ctr_encrypt_sync, ptr @ctr_encrypt_sync, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 128, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 2208, i32 0, i32 249, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-neonbs-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @aesbs_xts_setkey, ptr @xts_encrypt, ptr @xts_decrypt, ptr @xts_init, ptr @xts_exit, i32 32, i32 64, i32 16, i32 0, i32 128, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 1728, i32 0, i32 250, %struct.refcount_struct zeroinitializer, [128 x i8] c"__xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__xts-aes-neonbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@aes_simd_algs = internal unnamed_addr global [5 x ptr] zeroinitializer, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"cbc(aes)\00", align 1
@crypto_ctr_encrypt_walk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"include/crypto/ctr.h\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto238, ptr @__UNIQUE_ID_alias_crypto240, ptr @__UNIQUE_ID_alias_crypto242, ptr @__UNIQUE_ID_alias_crypto244, ptr @__UNIQUE_ID_alias_userspace237, ptr @__UNIQUE_ID_alias_userspace239, ptr @__UNIQUE_ID_alias_userspace241, ptr @__UNIQUE_ID_alias_userspace243, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_import_ns245, ptr @__UNIQUE_ID_license236], section "llvm.metadata"

@cleanup_module = dso_local alias void (), ptr @aes_exit

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @elf_hwcap, align 4
  %2 = and i32 %1, 4096
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 5) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %21, %4
  %8 = phi i32 [ %22, %21 ], [ 0, %4 ]
  %9 = getelementptr [5 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %8, i32 11, i32 2
  %10 = load i32, ptr %9, align 16
  %11 = and i32 %10, 8192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = getelementptr [5 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %8, i32 11, i32 8, i32 2
  %15 = getelementptr [5 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %8, i32 11, i32 9
  %16 = getelementptr i8, ptr %15, i32 2
  %17 = tail call ptr @simd_skcipher_create_compat(ptr noundef %14, ptr noundef %16, ptr noundef %15) #8
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = getelementptr [5 x ptr], ptr @aes_simd_algs, i32 0, i32 %8
  store ptr %17, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = add nuw nsw i32 %8, 1
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %26, label %7

24:                                               ; preds = %13
  %25 = ptrtoint ptr %17 to i32
  tail call void @aes_exit()
  br label %26

26:                                               ; preds = %24, %21, %4, %0
  %27 = phi i32 [ %25, %24 ], [ -19, %0 ], [ %5, %4 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aes_exit() #1 {
  %1 = load ptr, ptr @aes_simd_algs, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @simd_skcipher_free(ptr noundef nonnull %1) #8
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @simd_skcipher_free(ptr noundef nonnull %5) #8
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 2), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @simd_skcipher_free(ptr noundef nonnull %9) #8
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 3), align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @simd_skcipher_free(ptr noundef nonnull %13) #8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @aes_simd_algs, i32 0, i32 4), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @simd_skcipher_free(ptr noundef nonnull %17) #8
  br label %20

20:                                               ; preds = %19, %16
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 5) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simd_skcipher_create_compat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aesbs_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.crypto_aes_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(484) %4, i8 0, i32 484, i1 false), !annotation !8
  %5 = call i32 @aes_expandkey(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %9 = lshr i32 %2, 2
  %10 = add nuw nsw i32 %9, 6
  store i32 %10, ptr %8, align 16
  call void @kernel_neon_begin() #8
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  %12 = load i32, ptr %8, align 16
  call void @aesbs_convert_key(ptr noundef %11, ptr noundef nonnull %4, i32 noundef %12) #8
  call void @kernel_neon_end() #8
  br label %13

13:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecb_encrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false) #8, !annotation !8
  %6 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #8
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 15
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 5
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 14
  %13 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.anon.70, ptr %2, i32 0, i32 1
  %15 = getelementptr i8, ptr %4, i32 80
  br label %16

16:                                               ; preds = %16, %10
  %17 = phi i32 [ %8, %10 ], [ %33, %16 ]
  %18 = lshr i32 %17, 4
  %19 = load i32, ptr %11, align 4
  %20 = icmp ult i32 %17, %19
  %21 = load i32, ptr %12, align 4
  %22 = lshr i32 %21, 4
  %23 = sub nsw i32 0, %22
  %24 = select i1 %20, i32 %23, i32 268435455
  %25 = and i32 %24, %18
  call void @kernel_neon_begin() #8
  %26 = load ptr, ptr %13, align 4
  %27 = load ptr, ptr %14, align 4
  %28 = load i32, ptr %5, align 16
  call void @aesbs_ecb_encrypt(ptr noundef %26, ptr noundef %27, ptr noundef %15, i32 noundef %28, i32 noundef %25) #8, !callees !9
  call void @kernel_neon_end() #8
  %29 = load i32, ptr %7, align 4
  %30 = mul i32 %25, -16
  %31 = add i32 %29, %30
  %32 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %31) #8
  %33 = load i32, ptr %7, align 4
  %34 = icmp ugt i32 %33, 15
  br i1 %34, label %16, label %35

35:                                               ; preds = %16, %1
  %36 = phi i32 [ %6, %1 ], [ %32, %16 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #8
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecb_decrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false) #8, !annotation !8
  %6 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #8
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 15
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 5
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 14
  %13 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.anon.70, ptr %2, i32 0, i32 1
  %15 = getelementptr i8, ptr %4, i32 80
  br label %16

16:                                               ; preds = %16, %10
  %17 = phi i32 [ %8, %10 ], [ %33, %16 ]
  %18 = lshr i32 %17, 4
  %19 = load i32, ptr %11, align 4
  %20 = icmp ult i32 %17, %19
  %21 = load i32, ptr %12, align 4
  %22 = lshr i32 %21, 4
  %23 = sub nsw i32 0, %22
  %24 = select i1 %20, i32 %23, i32 268435455
  %25 = and i32 %24, %18
  call void @kernel_neon_begin() #8
  %26 = load ptr, ptr %13, align 4
  %27 = load ptr, ptr %14, align 4
  %28 = load i32, ptr %5, align 16
  call void @aesbs_ecb_decrypt(ptr noundef %26, ptr noundef %27, ptr noundef %15, i32 noundef %28, i32 noundef %25) #8, !callees !9
  call void @kernel_neon_end() #8
  %29 = load i32, ptr %7, align 4
  %30 = mul i32 %25, -16
  %31 = add i32 %29, %30
  %32 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %31) #8
  %33 = load i32, ptr %7, align 4
  %34 = icmp ugt i32 %33, 15
  br i1 %34, label %16, label %35

35:                                               ; preds = %16, %1
  %36 = phi i32 [ %6, %1 ], [ %32, %16 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #8
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aesbs_cbc_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.crypto_aes_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(484) %4, i8 0, i32 484, i1 false), !annotation !8
  %5 = call i32 @aes_expandkey(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %9 = lshr i32 %2, 2
  %10 = add nuw nsw i32 %9, 6
  store i32 %10, ptr %8, align 16
  call void @kernel_neon_begin() #8
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  %12 = load i32, ptr %8, align 16
  call void @aesbs_convert_key(ptr noundef %11, ptr noundef nonnull %4, i32 noundef %12) #8
  call void @kernel_neon_end() #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(484) %4, i8 0, i32 484, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #8, !srcloc !10
  %13 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 44
  %14 = load ptr, ptr %13, align 16
  %15 = call i32 @crypto_skcipher_setkey(ptr noundef %14, ptr noundef %1, i32 noundef %2) #8
  br label %16

16:                                               ; preds = %7, %3
  %17 = phi i32 [ %15, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %4) #8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cbc_encrypt(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 1776
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.crypto_skcipher, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 3
  store ptr %7, ptr %8, align 16
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 1
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 4, i32 4
  store i32 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %0, align 64
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 2
  store ptr %15, ptr %21, align 8
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 3
  store ptr %17, ptr %22, align 4
  store i32 %18, ptr %2, align 64
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  store ptr %20, ptr %23, align 4
  %24 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %2) #8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cbc_decrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  %6 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #8
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 15
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 5
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 14
  %13 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.anon.70, ptr %2, i32 0, i32 1
  %15 = getelementptr i8, ptr %4, i32 80
  %16 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 10
  br label %17

17:                                               ; preds = %17, %10
  %18 = phi i32 [ %8, %10 ], [ %35, %17 ]
  %19 = lshr i32 %18, 4
  %20 = load i32, ptr %11, align 4
  %21 = icmp ult i32 %18, %20
  %22 = load i32, ptr %12, align 4
  %23 = lshr i32 %22, 4
  %24 = sub nsw i32 0, %23
  %25 = select i1 %21, i32 %24, i32 268435455
  %26 = and i32 %25, %19
  call void @kernel_neon_begin() #8
  %27 = load ptr, ptr %13, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = load i32, ptr %5, align 16
  %30 = load ptr, ptr %16, align 4
  call void @aesbs_cbc_decrypt(ptr noundef %27, ptr noundef %28, ptr noundef %15, i32 noundef %29, i32 noundef %26, ptr noundef %30) #8
  call void @kernel_neon_end() #8
  %31 = load i32, ptr %7, align 4
  %32 = mul i32 %26, -16
  %33 = add i32 %31, %32
  %34 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %33) #8
  %35 = load i32, ptr %7, align 4
  %36 = icmp ugt i32 %35, 15
  br i1 %36, label %17, label %37

37:                                               ; preds = %17, %1
  %38 = phi i32 [ %6, %1 ], [ %34, %17 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #8
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cbc_init(ptr nocapture noundef %0) #1 {
  %2 = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 384) #8
  %3 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 44
  store ptr %2, ptr %3, align 16
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %2 to i32
  br label %10

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 64
  %9 = add i32 %8, 64
  store i32 %9, ptr %0, align 64
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ 0, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cbc_exit(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 44
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctr_encrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %7 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #8
  %8 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 5
  %13 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 14
  %14 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.anon.70, ptr %2, i32 0, i32 1
  %16 = getelementptr i8, ptr %5, i32 80
  %17 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 10
  br label %18

18:                                               ; preds = %46, %11
  %19 = phi i32 [ %9, %11 ], [ %51, %46 ]
  %20 = lshr i32 %19, 4
  %21 = load i32, ptr %12, align 4
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 0
  %24 = icmp ult i32 %19, %21
  %25 = load i32, ptr %13, align 4
  %26 = lshr i32 %25, 4
  %27 = sub nsw i32 0, %26
  %28 = select i1 %24, i32 %27, i32 268435455
  %29 = and i32 %28, %20
  %30 = or i1 %24, %23
  %31 = select i1 %30, ptr null, ptr %3
  call void @kernel_neon_begin() #8
  %32 = load ptr, ptr %14, align 4
  %33 = load ptr, ptr %15, align 4
  %34 = load i32, ptr %6, align 16
  %35 = load ptr, ptr %17, align 4
  call void @aesbs_ctr_encrypt(ptr noundef %32, ptr noundef %33, ptr noundef %16, i32 noundef %34, i32 noundef %29, ptr noundef %35, ptr noundef %31) #8
  call void @kernel_neon_end() #8
  %36 = or i1 %24, %23
  br i1 %36, label %46, label %37

37:                                               ; preds = %18
  %38 = load i32, ptr %12, align 4
  %39 = and i32 %38, 15
  %40 = load ptr, ptr %15, align 4
  %41 = shl nuw i32 %29, 4
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  call void @__crypto_xor(ptr noundef %44, ptr noundef %42, ptr noundef nonnull %31, i32 noundef %39) #8
  %45 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef 0) #8
  br label %53

46:                                               ; preds = %18
  %47 = load i32, ptr %8, align 4
  %48 = mul i32 %29, -16
  %49 = add i32 %47, %48
  %50 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %49) #8
  %51 = load i32, ptr %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %18

53:                                               ; preds = %46, %37, %1
  %54 = phi i32 [ %45, %37 ], [ %7, %1 ], [ %50, %46 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #8
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aesbs_ctr_setkey_sync(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 44
  %5 = tail call i32 @aes_expandkey(ptr noundef %4, ptr noundef %1, i32 noundef %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %9 = lshr i32 %2, 2
  %10 = add nuw nsw i32 %9, 6
  store i32 %10, ptr %8, align 16
  tail call void @kernel_neon_begin() #8
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  %12 = load i32, ptr %8, align 16
  tail call void @aesbs_convert_key(ptr noundef %11, ptr noundef %4, i32 noundef %12) #8
  tail call void @kernel_neon_end() #8
  br label %13

13:                                               ; preds = %7, %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctr_encrypt_sync(ptr noundef %0) #1 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca %struct.skcipher_walk, align 4
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 15728640
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 983040
  %10 = or i32 %9, %7
  %11 = load volatile i32, ptr %5, align 4
  %12 = and i32 %11, 65280
  %13 = or i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %71, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -32
  %21 = load i32, ptr %20, align 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %3, i8 0, i32 84, i1 false) #8, !annotation !8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @llvm.ctpop.i32(i32 %21) #8, !range !11
  %25 = icmp ult i32 %24, 2
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i1 [ false, %15 ], [ %25, %23 ]
  %28 = load i1, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %31, label %30, !prof !12

30:                                               ; preds = %26
  store i1 true, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 31, i32 noundef 9, ptr noundef null) #8
  br label %31

31:                                               ; preds = %30, %26
  br i1 %27, label %32, label %69

32:                                               ; preds = %31
  %33 = call i32 @skcipher_walk_virt(ptr noundef nonnull %3, ptr noundef %0, i1 noundef zeroext false) #8
  %34 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 1, i32 0, i32 1
  %39 = getelementptr inbounds %struct.anon.70, ptr %3, i32 0, i32 1
  %40 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 5
  %41 = add i32 %21, -1
  %42 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 10
  %43 = getelementptr i8, ptr %17, i32 1776
  br label %44

44:                                               ; preds = %65, %37
  %45 = phi i32 [ %35, %37 ], [ %67, %65 ]
  %46 = load ptr, ptr %38, align 4
  %47 = load ptr, ptr %39, align 4
  %48 = load i32, ptr %40, align 4
  %49 = icmp ult i32 %45, %48
  %50 = and i32 %45, %41
  %51 = select i1 %49, i32 %50, i32 0
  %52 = sub i32 %45, %51
  br label %53

53:                                               ; preds = %53, %44
  %54 = phi ptr [ %46, %44 ], [ %61, %53 ]
  %55 = phi ptr [ %47, %44 ], [ %62, %53 ]
  %56 = phi i32 [ %52, %44 ], [ %63, %53 ]
  %57 = call i32 @llvm.smin.i32(i32 %56, i32 %21) #8
  %58 = load ptr, ptr %42, align 4
  %59 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !13
  call void @aes_encrypt(ptr noundef %43, ptr noundef nonnull %2, ptr noundef %58) #8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #8, !srcloc !14
  call void @__crypto_xor(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %2, i32 noundef %57) #8
  %60 = load ptr, ptr %42, align 4
  call void @crypto_inc(ptr noundef %60, i32 noundef %21) #8
  %61 = getelementptr i8, ptr %54, i32 %57
  %62 = getelementptr i8, ptr %55, i32 %57
  %63 = sub i32 %56, %57
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %53, label %65

65:                                               ; preds = %53
  %66 = call i32 @skcipher_walk_done(ptr noundef nonnull %3, i32 noundef %51) #8
  %67 = load i32, ptr %34, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %44

69:                                               ; preds = %65, %32, %31
  %70 = phi i32 [ -22, %31 ], [ %33, %32 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br label %73

71:                                               ; preds = %1
  %72 = tail call i32 @ctr_encrypt(ptr noundef %0)
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %72, %71 ], [ %70, %69 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aesbs_xts_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.crypto_aes_ctx, align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = lshr i32 %2, 1
  br i1 %12, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %1, i32 %13
  %16 = tail call i32 @__crypto_memneq(ptr noundef %1, ptr noundef %15, i32 noundef %13) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 44
  %20 = load ptr, ptr %19, align 16
  %21 = tail call i32 @crypto_cipher_setkey(ptr noundef %20, ptr noundef %1, i32 noundef %13) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 48
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %1, i32 %13
  %27 = tail call i32 @crypto_cipher_setkey(ptr noundef %25, ptr noundef %26, i32 noundef %13) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(484) %4, i8 0, i32 484, i1 false) #8, !annotation !8
  %30 = call i32 @aes_expandkey(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %13) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = lshr i32 %2, 3
  %34 = add nuw nsw i32 %33, 6
  store i32 %34, ptr %5, align 16
  call void @kernel_neon_begin() #8
  %35 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  %36 = load i32, ptr %5, align 16
  call void @aesbs_convert_key(ptr noundef %35, ptr noundef nonnull %4, i32 noundef %36) #8
  call void @kernel_neon_end() #8
  br label %37

37:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %4) #8
  br label %38

38:                                               ; preds = %37, %23, %18, %14, %3
  %39 = phi i32 [ %30, %37 ], [ %21, %18 ], [ %27, %23 ], [ -22, %3 ], [ -22, %14 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_encrypt(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @__xts_crypt(ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @aesbs_xts_encrypt)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_decrypt(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @__xts_crypt(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull @aesbs_xts_decrypt)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_init(ptr nocapture noundef %0) #1 {
  %2 = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 15) #8
  %3 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 44
  store ptr %2, ptr %3, align 16
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %2 to i32
  br label %19

7:                                                ; preds = %1
  %8 = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 15) #8
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 48
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 16
  tail call void @crypto_destroy_tfm(ptr noundef %12, ptr noundef %12) #8
  %13 = load ptr, ptr %9, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %8, %7 ]
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %15 to i32
  %18 = select i1 %16, i32 %17, i32 0
  br label %19

19:                                               ; preds = %14, %5
  %20 = phi i32 [ %6, %5 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xts_exit(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 48
  %3 = load ptr, ptr %2, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 14, i32 1, i32 44
  %5 = load ptr, ptr %4, align 16
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %5) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_convert_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_ecb_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_ecb_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_cbc_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_ctr_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__xts_crypt(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca %struct.skcipher_request, align 64
  %5 = alloca [32 x i8], align 4
  %6 = alloca %struct.skcipher_walk, align 4
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr i8, ptr %8, i32 64
  %10 = load i32, ptr %0, align 64
  %11 = and i32 %10, 15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %6, i8 0, i32 84, i1 false), !annotation !8
  %12 = icmp ult i32 %10, 16
  br i1 %12, label %133, label %13

13:                                               ; preds = %3
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %32, label %15, !prof !12

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 3
  store ptr %8, ptr %16, align 32
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 2
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 4
  store i32 %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = and i32 %10, -16
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 2
  store ptr %23, ptr %29, align 8
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 3
  store ptr %25, ptr %30, align 4
  store i32 %26, ptr %4, align 64
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  store ptr %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %15, %13
  %33 = phi ptr [ %4, %15 ], [ %0, %13 ]
  %34 = call i32 @skcipher_walk_virt(ptr noundef nonnull %6, ptr noundef %33, i1 noundef zeroext true) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %133

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %8, i32 1780
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.skcipher_walk, ptr %6, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %38, ptr noundef %40, ptr noundef %40) #8
  %41 = getelementptr inbounds %struct.skcipher_walk, ptr %6, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ugt i32 %42, 15
  br i1 %43, label %44, label %75

44:                                               ; preds = %36
  %45 = icmp ne i32 %11, 0
  %46 = getelementptr inbounds %struct.skcipher_walk, ptr %6, i32 0, i32 5
  %47 = getelementptr inbounds %struct.skcipher_walk, ptr %6, i32 0, i32 14
  %48 = getelementptr inbounds %struct.skcipher_walk, ptr %6, i32 0, i32 1, i32 0, i32 1
  %49 = getelementptr inbounds %struct.anon.70, ptr %6, i32 0, i32 1
  %50 = getelementptr i8, ptr %8, i32 80
  br label %51

51:                                               ; preds = %51, %44
  %52 = phi i32 [ %42, %44 ], [ %73, %51 ]
  %53 = lshr i32 %52, 4
  %54 = load i32, ptr %46, align 4
  %55 = icmp ult i32 %52, %54
  %56 = load i32, ptr %47, align 4
  %57 = lshr i32 %56, 4
  %58 = sub nsw i32 0, %57
  %59 = select i1 %55, i32 %58, i32 268435455
  %60 = and i32 %59, %53
  %61 = or i1 %55, %1
  %62 = xor i1 %61, true
  %63 = select i1 %62, i1 %45, i1 false
  %64 = zext i1 %63 to i32
  call void @kernel_neon_begin() #8
  %65 = load ptr, ptr %48, align 4
  %66 = load ptr, ptr %49, align 4
  %67 = load i32, ptr %9, align 16
  %68 = load ptr, ptr %39, align 4
  call void %2(ptr noundef %65, ptr noundef %66, ptr noundef %50, i32 noundef %67, i32 noundef %60, ptr noundef %68, i32 noundef %64) #8, !callees !15
  call void @kernel_neon_end() #8
  %69 = load i32, ptr %41, align 4
  %70 = mul i32 %60, -16
  %71 = add i32 %69, %70
  %72 = call i32 @skcipher_walk_done(ptr noundef nonnull %6, i32 noundef %71) #8
  %73 = load i32, ptr %41, align 4
  %74 = icmp ugt i32 %73, 15
  br i1 %74, label %51, label %75

75:                                               ; preds = %51, %36
  %76 = phi i32 [ 0, %36 ], [ %72, %51 ]
  %77 = icmp ne i32 %76, 0
  %78 = select i1 %77, i1 true, i1 %14
  br i1 %78, label %133, label %79, !prof !16

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.skcipher_request, ptr %33, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %33, align 64
  %83 = add i32 %82, -16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %5, ptr noundef %81, i32 noundef %83, i32 noundef 16, i32 noundef 0) #8
  %84 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %84, ptr nonnull align 4 %5, i32 %11, i1 false)
  %85 = getelementptr inbounds %struct.skcipher_request, ptr %33, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = load i32, ptr %33, align 64
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %5, ptr noundef %86, i32 noundef %87, i32 noundef %11, i32 noundef 0) #8
  %88 = getelementptr inbounds %struct.skcipher_request, ptr %33, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i32, ptr %89, i32 1
  %91 = load i32, ptr %89, align 4
  %92 = getelementptr inbounds i32, ptr %5, i32 1
  %93 = load i32, ptr %5, align 4
  %94 = xor i32 %93, %91
  store i32 %94, ptr %5, align 4
  %95 = getelementptr i32, ptr %89, i32 2
  %96 = load i32, ptr %90, align 4
  %97 = getelementptr inbounds i32, ptr %5, i32 2
  %98 = load i32, ptr %92, align 4
  %99 = xor i32 %98, %96
  store i32 %99, ptr %92, align 4
  %100 = getelementptr i32, ptr %89, i32 3
  %101 = load i32, ptr %95, align 4
  %102 = getelementptr inbounds i32, ptr %5, i32 3
  %103 = load i32, ptr %97, align 4
  %104 = xor i32 %103, %101
  store i32 %104, ptr %97, align 4
  %105 = load i32, ptr %100, align 4
  %106 = load i32, ptr %102, align 4
  %107 = xor i32 %106, %105
  store i32 %107, ptr %102, align 4
  %108 = getelementptr i8, ptr %8, i32 1776
  %109 = load ptr, ptr %108, align 16
  br i1 %1, label %110, label %111

110:                                              ; preds = %79
  call void @crypto_cipher_encrypt_one(ptr noundef %109, ptr noundef nonnull %5, ptr noundef nonnull %5) #8
  br label %112

111:                                              ; preds = %79
  call void @crypto_cipher_decrypt_one(ptr noundef %109, ptr noundef nonnull %5, ptr noundef nonnull %5) #8
  br label %112

112:                                              ; preds = %111, %110
  %113 = load ptr, ptr %88, align 4
  %114 = getelementptr i32, ptr %113, i32 1
  %115 = load i32, ptr %113, align 4
  %116 = load i32, ptr %5, align 4
  %117 = xor i32 %116, %115
  store i32 %117, ptr %5, align 4
  %118 = getelementptr i32, ptr %113, i32 2
  %119 = load i32, ptr %114, align 4
  %120 = load i32, ptr %92, align 4
  %121 = xor i32 %120, %119
  store i32 %121, ptr %92, align 4
  %122 = getelementptr i32, ptr %113, i32 3
  %123 = load i32, ptr %118, align 4
  %124 = load i32, ptr %97, align 4
  %125 = xor i32 %124, %123
  store i32 %125, ptr %97, align 4
  %126 = load i32, ptr %122, align 4
  %127 = load i32, ptr %102, align 4
  %128 = xor i32 %127, %126
  store i32 %128, ptr %102, align 4
  %129 = load ptr, ptr %80, align 4
  %130 = load i32, ptr %33, align 64
  %131 = add i32 %130, -16
  %132 = or i32 %11, 16
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %5, ptr noundef %129, i32 noundef %131, i32 noundef %132, i32 noundef 1) #8
  br label %133

133:                                              ; preds = %112, %75, %32, %3
  %134 = phi i32 [ 0, %112 ], [ -22, %3 ], [ %34, %32 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_xts_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_decrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aesbs_xts_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simd_skcipher_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{ptr @aesbs_ecb_decrypt, ptr @aesbs_ecb_encrypt}
!10 = !{i64 2148749432}
!11 = !{i32 0, i32 33}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 572382, i64 572443}
!14 = !{i64 575399}
!15 = !{ptr @aesbs_xts_decrypt, ptr @aesbs_xts_encrypt}
!16 = !{!"branch_weights", i32 4001, i32 1}
