; ModuleID = '/llk/IR/arch/arm/crypto/aes-ce-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/aes-ce-glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_feature = type { i16 }
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
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.skcipher_walk = type { %union.anon.69, %union.anon.69, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.aes_block = type { [16 x i8] }

@__UNIQUE_ID_description235 = internal constant [62 x i8] c"description=AES-ECB/CBC/CTR/XTS using ARMv8 Crypto Extensions\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [50 x i8] c"author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__mod_cpu__cpu_feature_match_AES_device_table = dso_local local_unnamed_addr constant [2 x %struct.cpu_feature] [%struct.cpu_feature { i16 32 }, %struct.cpu_feature zeroinitializer], align 2
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@aes_algs = internal global [6 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @ce_aes_setkey, ptr @ecb_encrypt, ptr @ecb_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ecb-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @cbc_encrypt, ptr @cbc_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__cbc-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @cts_cbc_encrypt, ptr @cts_cbc_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 32, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__cts(cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__cts-cbc-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @ctr_encrypt, ptr @ctr_encrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 1, i32 484, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__ctr-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @ce_aes_setkey, ptr @ctr_encrypt_sync, ptr @ctr_encrypt_sync, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 484, i32 0, i32 299, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-ce-sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @xts_set_key, ptr @xts_encrypt, ptr @xts_decrypt, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 32, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 8192, i32 16, i32 976, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"__xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"__xts-aes-ce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@aes_simd_algs = internal unnamed_addr global [6 x ptr] zeroinitializer, align 4
@__this_module = external dso_local global %struct.module, align 64
@ce_aes_expandkey.rcon = internal unnamed_addr constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1
@crypto_ctr_encrypt_walk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"include/crypto/ctr.h\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license237], section "llvm.metadata"

@cleanup_module = dso_local alias void (), ptr @aes_exit

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @elf_hwcap2, align 4
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call fastcc i32 @aes_init() #8
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi i32 [ %5, %4 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aes_exit() #1 {
  %1 = load ptr, ptr @aes_simd_algs, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  tail call void @simd_skcipher_free(ptr noundef nonnull %1) #9
  %4 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  tail call void @simd_skcipher_free(ptr noundef nonnull %4) #9
  %7 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 2), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  tail call void @simd_skcipher_free(ptr noundef nonnull %7) #9
  %10 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 3), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  tail call void @simd_skcipher_free(ptr noundef nonnull %10) #9
  %13 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 4), align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  tail call void @simd_skcipher_free(ptr noundef nonnull %13) #9
  %16 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @aes_simd_algs, i32 0, i32 5), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @simd_skcipher_free(ptr noundef nonnull %16) #9
  br label %19

19:                                               ; preds = %18, %15, %12, %9, %6, %3, %0
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 6) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @aes_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @aes_algs, i32 noundef 6) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %17, %0
  %4 = phi i32 [ %18, %17 ], [ 0, %0 ]
  %5 = getelementptr [6 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %4, i32 11, i32 2
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr [6 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %4, i32 11, i32 8, i32 2
  %11 = getelementptr [6 x %struct.skcipher_alg], ptr @aes_algs, i32 0, i32 %4, i32 11, i32 9
  %12 = getelementptr i8, ptr %11, i32 2
  %13 = tail call ptr @simd_skcipher_create_compat(ptr noundef %10, ptr noundef %12, ptr noundef %11) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr [6 x ptr], ptr @aes_simd_algs, i32 0, i32 %4
  store ptr %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = add nuw nsw i32 %4, 1
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %22, label %3

20:                                               ; preds = %9
  %21 = ptrtoint ptr %13 to i32
  tail call void @aes_exit()
  br label %22

22:                                               ; preds = %20, %17, %0
  %23 = phi i32 [ %21, %20 ], [ %1, %0 ], [ 0, %17 ]
  ret i32 %23
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
define internal i32 @ce_aes_setkey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %5 = tail call fastcc i32 @ce_aes_expandkey(ptr noundef %4, ptr noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecb_encrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  %6 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #9
  %7 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 16
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.anon.71, ptr %2, i32 0, i32 1
  %13 = getelementptr i8, ptr %4, i32 544
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %8, %10 ], [ %25, %14 ]
  %16 = lshr i32 %15, 4
  call void @kernel_neon_begin() #9
  %17 = load ptr, ptr %11, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = load i32, ptr %13, align 4
  %20 = lshr i32 %19, 2
  %21 = add nuw nsw i32 %20, 6
  call void @ce_aes_ecb_encrypt(ptr noundef %17, ptr noundef %18, ptr noundef %5, i32 noundef %21, i32 noundef %16) #9
  call void @kernel_neon_end() #9
  %22 = load i32, ptr %7, align 4
  %23 = and i32 %22, 15
  %24 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %23) #9
  %25 = load i32, ptr %7, align 4
  %26 = icmp ult i32 %25, 16
  br i1 %26, label %27, label %14

27:                                               ; preds = %14, %1
  %28 = phi i32 [ %6, %1 ], [ %24, %14 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #9
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecb_decrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  %5 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #9
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.71, ptr %2, i32 0, i32 1
  %12 = getelementptr i8, ptr %4, i32 304
  %13 = getelementptr i8, ptr %4, i32 544
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi i32 [ %7, %9 ], [ %25, %14 ]
  %16 = lshr i32 %15, 4
  call void @kernel_neon_begin() #9
  %17 = load ptr, ptr %10, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = load i32, ptr %13, align 4
  %20 = lshr i32 %19, 2
  %21 = add nuw nsw i32 %20, 6
  call void @ce_aes_ecb_decrypt(ptr noundef %17, ptr noundef %18, ptr noundef %12, i32 noundef %21, i32 noundef %16) #9
  call void @kernel_neon_end() #9
  %22 = load i32, ptr %6, align 4
  %23 = and i32 %22, 15
  %24 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %23) #9
  %25 = load i32, ptr %6, align 4
  %26 = icmp ult i32 %25, 16
  br i1 %26, label %27, label %14

27:                                               ; preds = %14, %1
  %28 = phi i32 [ %5, %1 ], [ %24, %14 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #9
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cbc_encrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  %3 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 16
  br i1 %11, label %31, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.anon.71, ptr %2, i32 0, i32 1
  %15 = getelementptr i8, ptr %7, i32 544
  %16 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 10
  br label %17

17:                                               ; preds = %17, %12
  %18 = phi i32 [ %10, %12 ], [ %29, %17 ]
  %19 = lshr i32 %18, 4
  call void @kernel_neon_begin() #9
  %20 = load ptr, ptr %13, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = load i32, ptr %15, align 4
  %23 = lshr i32 %22, 2
  %24 = add nuw nsw i32 %23, 6
  %25 = load ptr, ptr %16, align 4
  call void @ce_aes_cbc_encrypt(ptr noundef %20, ptr noundef %21, ptr noundef %8, i32 noundef %24, i32 noundef %19, ptr noundef %25) #9
  call void @kernel_neon_end() #9
  %26 = load i32, ptr %9, align 4
  %27 = and i32 %26, 15
  %28 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %27) #9
  %29 = load i32, ptr %9, align 4
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %17

31:                                               ; preds = %17, %5, %1
  %32 = phi i32 [ %3, %1 ], [ 0, %5 ], [ %28, %17 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cbc_decrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  %3 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.anon.71, ptr %2, i32 0, i32 1
  %14 = getelementptr i8, ptr %11, i32 304
  %15 = getelementptr i8, ptr %11, i32 544
  %16 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 10
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi i32 [ %7, %9 ], [ %29, %17 ]
  %19 = lshr i32 %18, 4
  call void @kernel_neon_begin() #9
  %20 = load ptr, ptr %12, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = load i32, ptr %15, align 4
  %23 = lshr i32 %22, 2
  %24 = add nuw nsw i32 %23, 6
  %25 = load ptr, ptr %16, align 4
  call void @ce_aes_cbc_decrypt(ptr noundef %20, ptr noundef %21, ptr noundef %14, i32 noundef %24, i32 noundef %19, ptr noundef %25) #9
  call void @kernel_neon_end() #9
  %26 = load i32, ptr %6, align 4
  %27 = and i32 %26, 15
  %28 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %27) #9
  %29 = load i32, ptr %6, align 4
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %17

31:                                               ; preds = %17, %5, %1
  %32 = phi i32 [ %3, %1 ], [ 0, %5 ], [ %28, %17 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cts_cbc_encrypt(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca [2 x %struct.scatterlist], align 4
  %3 = alloca [2 x %struct.scatterlist], align 4
  %4 = alloca %struct.skcipher_request, align 64
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = load i32, ptr %0, align 64
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 3
  store ptr %7, ptr %14, align 32
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 2
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 4
  store i32 %16, ptr %19, align 4
  %20 = icmp ult i32 %9, 17
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = icmp eq i32 %9, 16
  br i1 %22, label %28, label %106

23:                                               ; preds = %1
  %24 = add i32 %9, 15
  %25 = lshr i32 %24, 4
  %26 = add nsw i32 %25, -2
  %27 = icmp ugt i32 %24, 47
  br i1 %27, label %28, label %78

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %26, %23 ], [ 1, %21 ]
  %30 = shl nuw i32 %29, 4
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 2
  store ptr %11, ptr %33, align 8
  %34 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 3
  store ptr %13, ptr %34, align 4
  store i32 %30, ptr %4, align 64
  %35 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  store ptr %32, ptr %35, align 4
  %36 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %106

38:                                               ; preds = %28
  %39 = load ptr, ptr %14, align 32
  %40 = getelementptr i8, ptr %39, i32 64
  %41 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %65, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %46 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %47 = getelementptr i8, ptr %39, i32 544
  %48 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  br label %49

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %42, %44 ], [ %61, %49 ]
  %51 = lshr i32 %50, 4
  call void @kernel_neon_begin() #9
  %52 = load ptr, ptr %45, align 4
  %53 = load ptr, ptr %46, align 4
  %54 = load i32, ptr %47, align 4
  %55 = lshr i32 %54, 2
  %56 = add nuw nsw i32 %55, 6
  %57 = load ptr, ptr %48, align 4
  call void @ce_aes_cbc_encrypt(ptr noundef %52, ptr noundef %53, ptr noundef %40, i32 noundef %56, i32 noundef %51, ptr noundef %57) #9
  call void @kernel_neon_end() #9
  %58 = load i32, ptr %41, align 4
  %59 = and i32 %58, 15
  %60 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef %59) #9
  %61 = load i32, ptr %41, align 4
  %62 = icmp ult i32 %61, 16
  br i1 %62, label %63, label %49

63:                                               ; preds = %49
  %64 = icmp eq i32 %60, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %63, %38
  %66 = load i32, ptr %0, align 64
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %106, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %10, align 8
  %70 = load i32, ptr %4, align 64
  %71 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %2, ptr noundef %69, i32 noundef %70) #9
  %72 = load ptr, ptr %12, align 4
  %73 = load ptr, ptr %10, align 8
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, ptr %4, align 64
  %77 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %3, ptr noundef %72, i32 noundef %76) #9
  br label %78

78:                                               ; preds = %75, %68, %23
  %79 = phi i32 [ %29, %75 ], [ %29, %68 ], [ %26, %23 ]
  %80 = phi ptr [ %71, %75 ], [ %71, %68 ], [ %11, %23 ]
  %81 = phi ptr [ %77, %75 ], [ %71, %68 ], [ %13, %23 ]
  %82 = load i32, ptr %0, align 64
  %83 = mul i32 %79, -16
  %84 = add i32 %82, %83
  %85 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 2
  store ptr %80, ptr %87, align 8
  %88 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 3
  store ptr %81, ptr %88, align 4
  store i32 %84, ptr %4, align 64
  %89 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  store ptr %86, ptr %89, align 4
  %90 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %78
  call void @kernel_neon_begin() #9
  %93 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %7, i32 544
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 2
  %100 = add nuw nsw i32 %99, 6
  %101 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  %104 = load ptr, ptr %103, align 4
  call void @ce_aes_cbc_cts_encrypt(ptr noundef %94, ptr noundef %96, ptr noundef %8, i32 noundef %100, i32 noundef %102, ptr noundef %104) #9
  call void @kernel_neon_end() #9
  %105 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %106

106:                                              ; preds = %92, %78, %65, %63, %28, %21
  %107 = phi i32 [ %105, %92 ], [ -22, %21 ], [ %60, %63 ], [ 0, %65 ], [ %90, %78 ], [ %36, %28 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cts_cbc_decrypt(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca [2 x %struct.scatterlist], align 4
  %3 = alloca [2 x %struct.scatterlist], align 4
  %4 = alloca %struct.skcipher_request, align 64
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = load i32, ptr %0, align 64
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 3
  store ptr %7, ptr %13, align 32
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 2
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 4
  store i32 %15, ptr %18, align 4
  %19 = icmp ult i32 %8, 17
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = icmp eq i32 %8, 16
  br i1 %21, label %27, label %106

22:                                               ; preds = %1
  %23 = add i32 %8, 15
  %24 = lshr i32 %23, 4
  %25 = add nsw i32 %24, -2
  %26 = icmp ugt i32 %23, 47
  br i1 %26, label %27, label %77

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %25, %22 ], [ 1, %20 ]
  %29 = shl nuw i32 %28, 4
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 2
  store ptr %10, ptr %32, align 8
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 3
  store ptr %12, ptr %33, align 4
  store i32 %29, ptr %4, align 64
  %34 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  %35 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %106

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, 16
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %13, align 32
  %43 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %44 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %45 = getelementptr i8, ptr %42, i32 304
  %46 = getelementptr i8, ptr %42, i32 544
  %47 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  br label %48

48:                                               ; preds = %48, %41
  %49 = phi i32 [ %39, %41 ], [ %60, %48 ]
  %50 = lshr i32 %49, 4
  call void @kernel_neon_begin() #9
  %51 = load ptr, ptr %43, align 4
  %52 = load ptr, ptr %44, align 4
  %53 = load i32, ptr %46, align 4
  %54 = lshr i32 %53, 2
  %55 = add nuw nsw i32 %54, 6
  %56 = load ptr, ptr %47, align 4
  call void @ce_aes_cbc_decrypt(ptr noundef %51, ptr noundef %52, ptr noundef %45, i32 noundef %55, i32 noundef %50, ptr noundef %56) #9
  call void @kernel_neon_end() #9
  %57 = load i32, ptr %38, align 4
  %58 = and i32 %57, 15
  %59 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef %58) #9
  %60 = load i32, ptr %38, align 4
  %61 = icmp ult i32 %60, 16
  br i1 %61, label %62, label %48

62:                                               ; preds = %48
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %62, %37
  %65 = load i32, ptr %0, align 64
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %106, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %9, align 8
  %69 = load i32, ptr %4, align 64
  %70 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %2, ptr noundef %68, i32 noundef %69) #9
  %71 = load ptr, ptr %11, align 4
  %72 = load ptr, ptr %9, align 8
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, ptr %4, align 64
  %76 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %3, ptr noundef %71, i32 noundef %75) #9
  br label %77

77:                                               ; preds = %74, %67, %22
  %78 = phi i32 [ %28, %74 ], [ %28, %67 ], [ %25, %22 ]
  %79 = phi ptr [ %70, %74 ], [ %70, %67 ], [ %10, %22 ]
  %80 = phi ptr [ %76, %74 ], [ %70, %67 ], [ %12, %22 ]
  %81 = load i32, ptr %0, align 64
  %82 = mul i32 %78, -16
  %83 = add i32 %81, %82
  %84 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 2
  store ptr %79, ptr %86, align 8
  %87 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 3
  store ptr %80, ptr %87, align 4
  store i32 %83, ptr %4, align 64
  %88 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  store ptr %85, ptr %88, align 4
  %89 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %77
  call void @kernel_neon_begin() #9
  %92 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %7, i32 304
  %97 = getelementptr i8, ptr %7, i32 544
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 2
  %100 = add nuw nsw i32 %99, 6
  %101 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  %104 = load ptr, ptr %103, align 4
  call void @ce_aes_cbc_cts_decrypt(ptr noundef %93, ptr noundef %95, ptr noundef %96, i32 noundef %100, i32 noundef %102, ptr noundef %104) #9
  call void @kernel_neon_end() #9
  %105 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %106

106:                                              ; preds = %91, %77, %64, %62, %27, %20
  %107 = phi i32 [ %105, %91 ], [ -22, %20 ], [ %59, %62 ], [ 0, %64 ], [ %89, %77 ], [ %35, %27 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctr_encrypt(ptr noundef %0) #1 {
  %2 = alloca %struct.skcipher_walk, align 4
  %3 = alloca [16 x i8], align 8
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 64
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %2, i8 0, i32 84, i1 false), !annotation !8
  %7 = call i32 @skcipher_walk_virt(ptr noundef nonnull %2, ptr noundef %0, i1 noundef zeroext false) #9
  %8 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.anon.71, ptr %2, i32 0, i32 1
  %14 = getelementptr i8, ptr %5, i32 544
  %15 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 10
  br label %16

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %9, %11 ], [ %28, %16 ]
  %18 = lshr i32 %17, 4
  call void @kernel_neon_begin() #9
  %19 = load ptr, ptr %12, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = load i32, ptr %14, align 4
  %22 = lshr i32 %21, 2
  %23 = add nuw nsw i32 %22, 6
  %24 = load ptr, ptr %15, align 4
  call void @ce_aes_ctr_encrypt(ptr noundef %19, ptr noundef %20, ptr noundef %6, i32 noundef %23, i32 noundef %18, ptr noundef %24) #9
  call void @kernel_neon_end() #9
  %25 = load i32, ptr %8, align 4
  %26 = and i32 %25, 15
  %27 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef %26) #9
  %28 = load i32, ptr %8, align 4
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %16

30:                                               ; preds = %16, %1
  %31 = phi i32 [ %7, %1 ], [ %27, %16 ]
  %32 = phi i32 [ %9, %1 ], [ %28, %16 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %35 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.anon.71, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  call void @kernel_neon_begin() #9
  %39 = getelementptr i8, ptr %5, i32 544
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 2
  %42 = add nuw nsw i32 %41, 6
  %43 = getelementptr inbounds %struct.skcipher_walk, ptr %2, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  call void @ce_aes_ctr_encrypt(ptr noundef nonnull %3, ptr noundef null, ptr noundef %6, i32 noundef %42, i32 noundef -1, ptr noundef %44) #9
  call void @kernel_neon_end() #9
  call void @__crypto_xor(ptr noundef %36, ptr noundef %38, ptr noundef nonnull %3, i32 noundef %32) #9
  %45 = call i32 @skcipher_walk_done(ptr noundef nonnull %2, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %46

46:                                               ; preds = %34, %30
  %47 = phi i32 [ %45, %34 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %2) #9
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctr_encrypt_sync(ptr noundef %0) #1 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca %struct.skcipher_walk, align 4
  %4 = tail call ptr @llvm.thread.pointer() #9
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %3, i8 0, i32 84, i1 false) #9, !annotation !8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @llvm.ctpop.i32(i32 %21) #9, !range !9
  %25 = icmp ult i32 %24, 2
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i1 [ false, %15 ], [ %25, %23 ]
  %28 = load i1, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %26
  store i1 true, ptr @crypto_ctr_encrypt_walk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef null) #9
  br label %31

31:                                               ; preds = %30, %26
  br i1 %27, label %32, label %69

32:                                               ; preds = %31
  %33 = call i32 @skcipher_walk_virt(ptr noundef nonnull %3, ptr noundef %0, i1 noundef zeroext false) #9
  %34 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 1, i32 0, i32 1
  %39 = getelementptr inbounds %struct.anon.71, ptr %3, i32 0, i32 1
  %40 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 5
  %41 = add i32 %21, -1
  %42 = getelementptr inbounds %struct.skcipher_walk, ptr %3, i32 0, i32 10
  %43 = getelementptr i8, ptr %17, i32 64
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
  %57 = call i32 @llvm.smin.i32(i32 %56, i32 %21) #9
  %58 = load ptr, ptr %42, align 4
  %59 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !11
  call void @aes_encrypt(ptr noundef %43, ptr noundef nonnull %2, ptr noundef %58) #9
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #9, !srcloc !12
  call void @__crypto_xor(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %2, i32 noundef %57) #9
  %60 = load ptr, ptr %42, align 4
  call void @crypto_inc(ptr noundef %60, i32 noundef %21) #9
  %61 = getelementptr i8, ptr %54, i32 %57
  %62 = getelementptr i8, ptr %55, i32 %57
  %63 = sub i32 %56, %57
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %53, label %65

65:                                               ; preds = %53
  %66 = call i32 @skcipher_walk_done(ptr noundef nonnull %3, i32 noundef %51) #9
  %67 = load i32, ptr %34, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %44

69:                                               ; preds = %65, %32, %31
  %70 = phi i32 [ -22, %31 ], [ %33, %32 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  br label %73

71:                                               ; preds = %1
  %72 = tail call i32 @ctr_encrypt(ptr noundef %0)
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %72, %71 ], [ %70, %69 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_set_key(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = lshr i32 %2, 1
  br i1 %11, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %1, i32 %12
  %15 = tail call i32 @__crypto_memneq(ptr noundef %1, ptr noundef %14, i32 noundef %12) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %7
  %18 = tail call fastcc i32 @ce_aes_expandkey(ptr noundef %4, ptr noundef %1, i32 noundef %12)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 4, i32 2, i32 4, i32 24
  %22 = getelementptr i8, ptr %1, i32 %12
  %23 = tail call fastcc i32 @ce_aes_expandkey(ptr noundef %21, ptr noundef %22, i32 noundef %12)
  br label %24

24:                                               ; preds = %20, %17, %13, %3
  %25 = phi i32 [ %18, %17 ], [ %23, %20 ], [ -22, %3 ], [ -22, %13 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_encrypt(ptr noundef %0) #1 {
  %2 = alloca [2 x %struct.scatterlist], align 4
  %3 = alloca [2 x %struct.scatterlist], align 4
  %4 = alloca %struct.skcipher_request, align 64
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = getelementptr i8, ptr %7, i32 544
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 2
  %12 = add nuw nsw i32 %11, 6
  %13 = load i32, ptr %0, align 64
  %14 = and i32 %13, 15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !8
  %15 = icmp ult i32 %13, 16
  br i1 %15, label %117, label %16

16:                                               ; preds = %1
  %17 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef %0, i1 noundef zeroext false) #9
  %18 = icmp ne i32 %14, 0
  %19 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %20, %22
  %24 = select i1 %18, i1 %23, i1 false
  br i1 %24, label %25, label %47, !prof !13

25:                                               ; preds = %16
  %26 = load i32, ptr %0, align 64
  %27 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef -125) #9
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 3
  store ptr %7, ptr %28, align 32
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 2
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 4
  store i32 %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = add i32 %26, -17
  %39 = and i32 %38, -16
  %40 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 2
  store ptr %35, ptr %42, align 8
  %43 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 3
  store ptr %37, ptr %43, align 4
  store i32 %39, ptr %4, align 64
  %44 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  store ptr %41, ptr %44, align 4
  %45 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false) #9
  %46 = load i32, ptr %19, align 4
  br label %47

47:                                               ; preds = %25, %16
  %48 = phi i32 [ %46, %25 ], [ %20, %16 ]
  %49 = phi ptr [ %4, %25 ], [ %0, %16 ]
  %50 = phi i32 [ %45, %25 ], [ %17, %16 ]
  %51 = phi i32 [ %14, %25 ], [ 0, %16 ]
  %52 = icmp ugt i32 %48, 15
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %55 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %56 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  %57 = getelementptr i8, ptr %7, i32 552
  %58 = load i32, ptr %21, align 4
  %59 = icmp ult i32 %48, %58
  %60 = and i32 %48, -16
  %61 = select i1 %59, i32 %60, i32 %48
  call void @kernel_neon_begin() #9
  %62 = load ptr, ptr %54, align 4
  %63 = load ptr, ptr %55, align 4
  %64 = load ptr, ptr %56, align 4
  call void @ce_aes_xts_encrypt(ptr noundef %62, ptr noundef %63, ptr noundef %8, i32 noundef %12, i32 noundef %61, ptr noundef %64, ptr noundef %57, i32 noundef 1) #9
  call void @kernel_neon_end() #9
  %65 = load i32, ptr %19, align 4
  %66 = sub i32 %65, %61
  %67 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef %66) #9
  %68 = load i32, ptr %19, align 4
  %69 = icmp ugt i32 %68, 15
  br i1 %69, label %70, label %84

70:                                               ; preds = %70, %53
  %71 = phi i32 [ %82, %70 ], [ %68, %53 ]
  %72 = load i32, ptr %21, align 4
  %73 = icmp ult i32 %71, %72
  %74 = and i32 %71, -16
  %75 = select i1 %73, i32 %74, i32 %71
  call void @kernel_neon_begin() #9
  %76 = load ptr, ptr %54, align 4
  %77 = load ptr, ptr %55, align 4
  %78 = load ptr, ptr %56, align 4
  call void @ce_aes_xts_encrypt(ptr noundef %76, ptr noundef %77, ptr noundef %8, i32 noundef %12, i32 noundef %75, ptr noundef %78, ptr noundef %57, i32 noundef 0) #9
  call void @kernel_neon_end() #9
  %79 = load i32, ptr %19, align 4
  %80 = sub i32 %79, %75
  %81 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef %80) #9
  %82 = load i32, ptr %19, align 4
  %83 = icmp ugt i32 %82, 15
  br i1 %83, label %70, label %84, !llvm.loop !14

84:                                               ; preds = %70, %53, %47
  %85 = phi i32 [ %50, %47 ], [ %67, %53 ], [ %81, %70 ]
  %86 = phi i32 [ 1, %47 ], [ 0, %53 ], [ 0, %70 ]
  %87 = icmp ne i32 %85, 0
  %88 = icmp eq i32 %51, 0
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %117, label %90, !prof !16

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.skcipher_request, ptr %49, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = load i32, ptr %49, align 64
  %94 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %2, ptr noundef %92, i32 noundef %93) #9
  %95 = getelementptr inbounds %struct.skcipher_request, ptr %49, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %91, align 8
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load i32, ptr %49, align 64
  %101 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %3, ptr noundef %96, i32 noundef %100) #9
  br label %102

102:                                              ; preds = %99, %90
  %103 = phi ptr [ %101, %99 ], [ %94, %90 ]
  %104 = or i32 %51, 16
  store ptr %94, ptr %91, align 8
  store ptr %103, ptr %95, align 4
  store i32 %104, ptr %49, align 64
  %105 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef %49, i1 noundef zeroext false) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  call void @kernel_neon_begin() #9
  %108 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %19, align 4
  %113 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %7, i32 552
  call void @ce_aes_xts_encrypt(ptr noundef %109, ptr noundef %111, ptr noundef %8, i32 noundef %12, i32 noundef %112, ptr noundef %114, ptr noundef %115, i32 noundef %86) #9
  call void @kernel_neon_end() #9
  %116 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %117

117:                                              ; preds = %107, %102, %84, %1
  %118 = phi i32 [ %116, %107 ], [ -22, %1 ], [ %85, %84 ], [ %105, %102 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xts_decrypt(ptr noundef %0) #1 {
  %2 = alloca [2 x %struct.scatterlist], align 4
  %3 = alloca [2 x %struct.scatterlist], align 4
  %4 = alloca %struct.skcipher_request, align 64
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 544
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 2
  %11 = add nuw nsw i32 %10, 6
  %12 = load i32, ptr %0, align 64
  %13 = and i32 %12, 15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %5, i8 0, i32 84, i1 false), !annotation !8
  %14 = icmp ult i32 %12, 16
  br i1 %14, label %118, label %15

15:                                               ; preds = %1
  %16 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef %0, i1 noundef zeroext false) #9
  %17 = icmp ne i32 %13, 0
  %18 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  %23 = select i1 %17, i1 %22, i1 false
  br i1 %23, label %24, label %46, !prof !13

24:                                               ; preds = %15
  %25 = load i32, ptr %0, align 64
  %26 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef -125) #9
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 3
  store ptr %7, ptr %27, align 32
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 1
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 2
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 4, i32 4
  store i32 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = add i32 %25, -17
  %38 = and i32 %37, -16
  %39 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 2
  store ptr %34, ptr %41, align 8
  %42 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 3
  store ptr %36, ptr %42, align 4
  store i32 %38, ptr %4, align 64
  %43 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  %44 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false) #9
  %45 = load i32, ptr %18, align 4
  br label %46

46:                                               ; preds = %24, %15
  %47 = phi i32 [ %45, %24 ], [ %19, %15 ]
  %48 = phi ptr [ %4, %24 ], [ %0, %15 ]
  %49 = phi i32 [ %44, %24 ], [ %16, %15 ]
  %50 = phi i32 [ %13, %24 ], [ 0, %15 ]
  %51 = icmp ugt i32 %47, 15
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %54 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %55 = getelementptr i8, ptr %7, i32 304
  %56 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  %57 = getelementptr i8, ptr %7, i32 552
  %58 = load i32, ptr %20, align 4
  %59 = icmp ult i32 %47, %58
  %60 = and i32 %47, -16
  %61 = select i1 %59, i32 %60, i32 %47
  call void @kernel_neon_begin() #9
  %62 = load ptr, ptr %53, align 4
  %63 = load ptr, ptr %54, align 4
  %64 = load ptr, ptr %56, align 4
  call void @ce_aes_xts_decrypt(ptr noundef %62, ptr noundef %63, ptr noundef %55, i32 noundef %11, i32 noundef %61, ptr noundef %64, ptr noundef %57, i32 noundef 1) #9
  call void @kernel_neon_end() #9
  %65 = load i32, ptr %18, align 4
  %66 = sub i32 %65, %61
  %67 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef %66) #9
  %68 = load i32, ptr %18, align 4
  %69 = icmp ugt i32 %68, 15
  br i1 %69, label %70, label %84

70:                                               ; preds = %70, %52
  %71 = phi i32 [ %82, %70 ], [ %68, %52 ]
  %72 = load i32, ptr %20, align 4
  %73 = icmp ult i32 %71, %72
  %74 = and i32 %71, -16
  %75 = select i1 %73, i32 %74, i32 %71
  call void @kernel_neon_begin() #9
  %76 = load ptr, ptr %53, align 4
  %77 = load ptr, ptr %54, align 4
  %78 = load ptr, ptr %56, align 4
  call void @ce_aes_xts_decrypt(ptr noundef %76, ptr noundef %77, ptr noundef %55, i32 noundef %11, i32 noundef %75, ptr noundef %78, ptr noundef %57, i32 noundef 0) #9
  call void @kernel_neon_end() #9
  %79 = load i32, ptr %18, align 4
  %80 = sub i32 %79, %75
  %81 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef %80) #9
  %82 = load i32, ptr %18, align 4
  %83 = icmp ugt i32 %82, 15
  br i1 %83, label %70, label %84, !llvm.loop !17

84:                                               ; preds = %70, %52, %46
  %85 = phi i32 [ %49, %46 ], [ %67, %52 ], [ %81, %70 ]
  %86 = phi i32 [ 1, %46 ], [ 0, %52 ], [ 0, %70 ]
  %87 = icmp ne i32 %85, 0
  %88 = icmp eq i32 %50, 0
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %118, label %90, !prof !16

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.skcipher_request, ptr %48, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = load i32, ptr %48, align 64
  %94 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %2, ptr noundef %92, i32 noundef %93) #9
  %95 = getelementptr inbounds %struct.skcipher_request, ptr %48, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %91, align 8
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load i32, ptr %48, align 64
  %101 = call ptr @scatterwalk_ffwd(ptr noundef nonnull %3, ptr noundef %96, i32 noundef %100) #9
  br label %102

102:                                              ; preds = %99, %90
  %103 = phi ptr [ %101, %99 ], [ %94, %90 ]
  %104 = or i32 %50, 16
  store ptr %94, ptr %91, align 8
  store ptr %103, ptr %95, align 4
  store i32 %104, ptr %48, align 64
  %105 = call i32 @skcipher_walk_virt(ptr noundef nonnull %5, ptr noundef %48, i1 noundef zeroext false) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  call void @kernel_neon_begin() #9
  %108 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 1, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.anon.71, ptr %5, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %7, i32 304
  %113 = load i32, ptr %18, align 4
  %114 = getelementptr inbounds %struct.skcipher_walk, ptr %5, i32 0, i32 10
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %7, i32 552
  call void @ce_aes_xts_decrypt(ptr noundef %109, ptr noundef %111, ptr noundef %112, i32 noundef %11, i32 noundef %113, ptr noundef %115, ptr noundef %116, i32 noundef %86) #9
  call void @kernel_neon_end() #9
  %117 = call i32 @skcipher_walk_done(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %118

118:                                              ; preds = %107, %102, %84, %1
  %119 = phi i32 [ %117, %107 ], [ -22, %1 ], [ %85, %84 ], [ %105, %102 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ce_aes_expandkey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = lshr i32 %2, 2
  switch i32 %2, label %90 [
    i32 32, label %5
    i32 24, label %5
    i32 16, label %5
  ]

5:                                                ; preds = %3, %3, %3
  %6 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %0, i32 0, i32 2
  store i32 %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %13, %7 ], [ 0, %5 ]
  %9 = shl i32 %8, 2
  %10 = getelementptr i8, ptr %1, i32 %9
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr [60 x i32], ptr %0, i32 0, i32 %8
  store i32 %11, ptr %12, align 4
  %13 = add nuw nsw i32 %8, 1
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %7

15:                                               ; preds = %7
  tail call void @kernel_neon_begin() #9
  %16 = add nsw i32 %4, -1
  br label %17

17:                                               ; preds = %70, %15
  %18 = phi i32 [ 0, %15 ], [ %71, %70 ]
  %19 = mul i32 %18, %4
  %20 = getelementptr i32, ptr %0, i32 %19
  %21 = getelementptr i32, ptr %20, i32 %4
  %22 = getelementptr i32, ptr %20, i32 %16
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @ce_aes_sub(i32 noundef %23) #9
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 24) #9
  store i32 %25, ptr %21, align 4
  %26 = load i32, ptr %20, align 4
  %27 = xor i32 %26, %25
  %28 = getelementptr [10 x i8], ptr @ce_aes_expandkey.rcon, i32 0, i32 %18
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %27, %30
  store i32 %31, ptr %21, align 4
  %32 = getelementptr i32, ptr %20, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %31, %33
  %35 = getelementptr i32, ptr %21, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i32, ptr %20, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %37, %34
  %39 = getelementptr i32, ptr %21, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr i32, ptr %20, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %38
  %43 = getelementptr i32, ptr %21, i32 3
  store i32 %42, ptr %43, align 4
  switch i32 %2, label %70 [
    i32 24, label %44
    i32 32, label %46
  ]

44:                                               ; preds = %17
  %45 = icmp ugt i32 %18, 6
  br i1 %45, label %73, label %58

46:                                               ; preds = %17
  %47 = icmp ugt i32 %18, 5
  br i1 %47, label %73, label %48

48:                                               ; preds = %46
  %49 = tail call i32 @ce_aes_sub(i32 noundef %42) #9
  %50 = getelementptr i32, ptr %20, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, %49
  %53 = getelementptr i32, ptr %21, i32 4
  store i32 %52, ptr %53, align 4
  %54 = getelementptr i32, ptr %20, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %55, %52
  %57 = getelementptr i32, ptr %21, i32 5
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %48, %44
  %59 = phi i32 [ 6, %48 ], [ 4, %44 ]
  %60 = phi i32 [ %56, %48 ], [ %42, %44 ]
  %61 = phi i32 [ 7, %48 ], [ 5, %44 ]
  %62 = getelementptr i32, ptr %20, i32 %59
  %63 = load i32, ptr %62, align 4
  %64 = xor i32 %63, %60
  %65 = getelementptr i32, ptr %21, i32 %59
  store i32 %64, ptr %65, align 4
  %66 = getelementptr i32, ptr %20, i32 %61
  %67 = load i32, ptr %66, align 4
  %68 = xor i32 %67, %64
  %69 = getelementptr i32, ptr %21, i32 %61
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %58, %17
  %71 = add nuw nsw i32 %18, 1
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %17

73:                                               ; preds = %70, %46, %44
  %74 = getelementptr inbounds %struct.crypto_aes_ctx, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %6, align 4
  %76 = lshr i32 %75, 2
  %77 = add nuw nsw i32 %76, 6
  %78 = getelementptr %struct.aes_block, ptr %0, i32 %77
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %74, ptr noundef align 1 dereferenceable(16) %78, i32 16, i1 false)
  %79 = add nuw nsw i32 %76, 5
  br label %80

80:                                               ; preds = %80, %73
  %81 = phi i32 [ %86, %80 ], [ %79, %73 ]
  %82 = phi i32 [ %85, %80 ], [ 1, %73 ]
  %83 = getelementptr %struct.aes_block, ptr %74, i32 %82
  %84 = getelementptr %struct.aes_block, ptr %0, i32 %81
  tail call void @ce_aes_invert(ptr noundef %83, ptr noundef %84) #9
  %85 = add nuw nsw i32 %82, 1
  %86 = add nsw i32 %81, -1
  %87 = icmp eq i32 %85, %77
  br i1 %87, label %88, label %80

88:                                               ; preds = %80
  %89 = getelementptr %struct.aes_block, ptr %74, i32 %77
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %89, ptr noundef align 1 dereferenceable(16) %0, i32 16, i1 false)
  tail call void @kernel_neon_end() #9
  br label %90

90:                                               ; preds = %88, %3
  %91 = phi i32 [ 0, %88 ], [ -22, %3 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ce_aes_sub(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_virt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_ecb_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_ecb_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_cts_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_cbc_cts_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_ctr_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crypto_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_xts_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ce_aes_xts_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simd_skcipher_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold }
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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 577701, i64 577762}
!12 = !{i64 580718}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{!"branch_weights", i32 4001, i32 1}
!17 = distinct !{!17, !15}
