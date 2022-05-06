; ModuleID = '/llk/IR/crypto/drbg.c_pt.bc'
source_filename = "../crypto/drbg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rng_alg = type { ptr, ptr, ptr, i32, [48 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.drbg_core = type { i32, i8, i8, [128 x i8], [128 x i8] }
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
%struct.lock_class_key = type {}
%struct.drbg_state_ops = type { ptr, ptr, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.drbg_string = type { ptr, i32, %struct.list_head }
%struct.drbg_state = type { %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.crypto_wait, %struct.scatterlist, %struct.scatterlist, i32, i32, i8, i8, ptr, ptr, ptr, ptr, %struct.drbg_string }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }

@__UNIQUE_ID_alias_userspace220 = internal constant [26 x i8] c"alias=drbg_pr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto221 = internal constant [33 x i8] c"alias=crypto-drbg_pr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace222 = internal constant [28 x i8] c"alias=drbg_nopr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto223 = internal constant [35 x i8] c"alias=crypto-drbg_nopr_hmac_sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace224 = internal constant [26 x i8] c"alias=drbg_pr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto225 = internal constant [33 x i8] c"alias=crypto-drbg_pr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace226 = internal constant [28 x i8] c"alias=drbg_nopr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto227 = internal constant [35 x i8] c"alias=crypto-drbg_nopr_hmac_sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace228 = internal constant [26 x i8] c"alias=drbg_pr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto229 = internal constant [33 x i8] c"alias=crypto-drbg_pr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [28 x i8] c"alias=drbg_nopr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [35 x i8] c"alias=crypto-drbg_nopr_hmac_sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [24 x i8] c"alias=drbg_pr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [31 x i8] c"alias=crypto-drbg_pr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace234 = internal constant [26 x i8] c"alias=drbg_nopr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto235 = internal constant [33 x i8] c"alias=crypto-drbg_nopr_hmac_sha1\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [98 x i8] c"description=NIST SP800-90A Deterministic Random Bit Generator (DRBG) using following cores: HMAC \00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace239 = internal constant [13 x i8] c"alias=stdrng\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto240 = internal constant [20 x i8] c"alias=crypto-stdrng\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns241 = internal constant [26 x i8] c"import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@drbg_algs = internal global [22 x %struct.rng_alg] zeroinitializer, align 64
@drbg_cores = internal constant [4 x %struct.drbg_core] [%struct.drbg_core { i32 10, i8 20, i8 20, [128 x i8] c"hmac_sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 48, i8 48, [128 x i8] c"hmac_sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha384)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 32, i8 32, [128 x i8] c"hmac_sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.drbg_core { i32 34, i8 64, i8 64, [128 x i8] c"hmac_sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hmac(sha512)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], align 4
@drbg_fill_array.priority = internal unnamed_addr global i32 200, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdrng\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"drbg_pr_\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"drbg_nopr_\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@drbg_kcapi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"&drbg->drbg_mutex\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@drbg_hmac_ops = internal constant %struct.drbg_state_ops { ptr @drbg_hmac_update, ptr @drbg_hmac_generate, ptr @drbg_init_hash_kernel, ptr @drbg_fini_hash_kernel }, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"\016DRBG: could not allocate digest TFM handle: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"jitterentropy_rng\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\016DRBG: Continuing without Jitter RNG\0A\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias_crypto221, ptr @__UNIQUE_ID_alias_crypto223, ptr @__UNIQUE_ID_alias_crypto225, ptr @__UNIQUE_ID_alias_crypto227, ptr @__UNIQUE_ID_alias_crypto229, ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_crypto235, ptr @__UNIQUE_ID_alias_crypto240, ptr @__UNIQUE_ID_alias_userspace220, ptr @__UNIQUE_ID_alias_userspace222, ptr @__UNIQUE_ID_alias_userspace224, ptr @__UNIQUE_ID_alias_userspace226, ptr @__UNIQUE_ID_alias_userspace228, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_alias_userspace234, ptr @__UNIQUE_ID_alias_userspace239, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_import_ns241, ptr @__UNIQUE_ID_license236], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr [22 x %struct.rng_alg], ptr @drbg_algs, i32 0, i32 %2
  %4 = getelementptr [4 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 %2
  tail call fastcc void @drbg_fill_array(ptr noundef %3, ptr noundef %4, i32 noundef 1) #12
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %1

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %12, %7 ], [ 0, %1 ]
  %9 = phi i32 [ %13, %7 ], [ 4, %1 ]
  %10 = getelementptr [22 x %struct.rng_alg], ptr @drbg_algs, i32 0, i32 %9
  %11 = getelementptr [4 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 %8
  tail call fastcc void @drbg_fill_array(ptr noundef %10, ptr noundef %11, i32 noundef 0) #12
  %12 = add nuw nsw i32 %8, 1
  %13 = add nuw nsw i32 %9, 1
  %14 = icmp eq i32 %12, 4
  br i1 %14, label %15, label %7

15:                                               ; preds = %7
  %16 = tail call i32 @crypto_register_rngs(ptr noundef nonnull @drbg_algs, i32 noundef 8) #13
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_rngs(ptr noundef nonnull @drbg_algs, i32 noundef 8) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal fastcc void @drbg_fill_array(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 section ".init.text" {
  %4 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) @.str, i32 6, i1 false)
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 9
  br i1 %5, label %8, label %7

7:                                                ; preds = %3
  store i64 6877683136006877796, ptr %6, align 8
  br label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(10) %6, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i32 10, i1 false)
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i32 [ 8, %7 ], [ 10, %8 ]
  %11 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 9
  %12 = getelementptr i8, ptr %11, i32 %10
  %13 = getelementptr inbounds %struct.drbg_core, ptr %1, i32 0, i32 3
  %14 = tail call i32 @strlen(ptr noundef %13)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 2 %13, i32 %14, i1 false)
  %15 = load i32, ptr @drbg_fill_array.priority, align 4
  %16 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 6
  store i32 %15, ptr %16, align 32
  %17 = add i32 %15, 1
  store i32 %17, ptr @drbg_fill_array.priority, align 4
  %18 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 4
  store i32 176, ptr %18, align 8
  %19 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 15
  store ptr @__this_module, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 12
  store ptr @drbg_kcapi_init, ptr %20, align 64
  %21 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 13
  store ptr @drbg_kcapi_cleanup, ptr %21, align 4
  store ptr @drbg_kcapi_random, ptr %0, align 64
  %22 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 1
  store ptr @drbg_kcapi_seed, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 2
  store ptr @drbg_kcapi_set_entropy, ptr %23, align 8
  %24 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 3
  store i32 0, ptr %24, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rngs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drbg_kcapi_init(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @drbg_kcapi_init.__key) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drbg_kcapi_cleanup(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  tail call fastcc void @drbg_uninstantiate(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drbg_kcapi_random(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #7 {
  %6 = alloca %struct.drbg_string, align 4
  %7 = alloca %struct.list_head, align 8
  %8 = alloca [32 x i8], align 1
  %9 = alloca %struct.list_head, align 8
  %10 = alloca %struct.drbg_string, align 4
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 16, i1 false), !annotation !8
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  store ptr %1, ptr %10, align 4
  %14 = getelementptr inbounds %struct.drbg_string, ptr %10, i32 0, i32 1
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drbg_string, ptr %10, i32 0, i32 2
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drbg_string, ptr %10, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi ptr [ %10, %13 ], [ null, %5 ]
  %19 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %20 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 12
  %21 = icmp eq ptr %18, null
  %22 = getelementptr inbounds %struct.drbg_string, ptr %18, i32 0, i32 1
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  %24 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 20
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 1
  %26 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 3
  %27 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 24
  %28 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 2
  %29 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.drbg_string, ptr %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.drbg_string, ptr %6, i32 0, i32 2
  %32 = getelementptr inbounds %struct.drbg_string, ptr %6, i32 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 8
  %34 = getelementptr inbounds %struct.drbg_string, ptr %18, i32 0, i32 2
  %35 = getelementptr inbounds %struct.drbg_string, ptr %18, i32 0, i32 2, i32 1
  br label %36

36:                                               ; preds = %118, %17
  %37 = phi i32 [ 0, %17 ], [ %119, %118 ]
  %38 = sub i32 %4, %37
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 65536) #13
  call void @mutex_lock(ptr noundef %11) #13
  %40 = getelementptr i8, ptr %3, i32 %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr %9, ptr %9, align 8
  store ptr %9, ptr %19, align 4
  %41 = load ptr, ptr %20, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %114, label %43

43:                                               ; preds = %36
  %44 = icmp ne i32 %39, 0
  %45 = icmp ne ptr %40, null
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %114

47:                                               ; preds = %43
  br i1 %21, label %56, label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %18, align 4
  %50 = icmp eq ptr %49, null
  %51 = load i32, ptr %22, align 4
  br i1 %50, label %52, label %54

52:                                               ; preds = %48
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %56, label %114

54:                                               ; preds = %48
  %55 = icmp eq i32 %51, -1
  br i1 %55, label %114, label %56

56:                                               ; preds = %54, %52, %47
  %57 = load i32, ptr %23, align 4
  %58 = load i32, ptr %24, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, ptr %25, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i8, ptr %26, align 4, !range !9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, ptr %25, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61
  %68 = call fastcc i32 @drbg_seed(ptr noundef %11, ptr noundef %18, i1 noundef zeroext true) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %106, label %115

70:                                               ; preds = %64
  %71 = call zeroext i1 @rng_is_initialized() #13
  br i1 %71, label %72, label %100

72:                                               ; preds = %70
  %73 = load i32, ptr %25, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load volatile ptr, ptr %27, align 4
  %77 = icmp eq ptr %76, %27
  br i1 %77, label %100, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %28, align 4
  %80 = add i32 %79, 30000
  %81 = load volatile i32, ptr @jiffies, align 64
  %82 = sub i32 %80, %81
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %78, %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr %7, ptr %7, align 8
  store ptr %7, ptr %29, align 4
  %85 = load ptr, ptr %20, align 4
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 56
  switch i32 %87, label %90 [
    i32 8, label %91
    i32 16, label %88
    i32 32, label %89
  ]

88:                                               ; preds = %84
  br label %91

89:                                               ; preds = %84
  br label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %89, %88, %84
  %92 = phi i32 [ 32, %90 ], [ 32, %89 ], [ 24, %88 ], [ 16, %84 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %8, i8 0, i32 32, i1 false) #13, !annotation !8
  store ptr %8, ptr %6, align 4
  store i32 %92, ptr %30, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %29, align 4
  store ptr %7, ptr %31, align 4
  store ptr %7, ptr %32, align 4
  store volatile ptr %31, ptr %7, align 8
  call void @get_random_bytes(ptr noundef nonnull %8, i32 noundef %92) #13
  %93 = load ptr, ptr %33, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 %94(ptr noundef %11, ptr noundef nonnull %7, i32 noundef 1) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  store i32 2, ptr %25, align 4
  %98 = load volatile i32, ptr @jiffies, align 64
  store i32 %98, ptr %28, align 4
  store i32 1, ptr %24, align 4
  store i32 1048576, ptr %23, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 %8, i8 0, i32 %92, i1 false) #13
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %8) #13, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %100

99:                                               ; preds = %91
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 %8, i8 0, i32 %92, i1 false) #13
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %8) #13, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %115

100:                                              ; preds = %97, %78, %75, %70
  br i1 %21, label %106, label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %22, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %19, align 4
  store ptr %34, ptr %19, align 4
  store ptr %9, ptr %34, align 4
  store ptr %105, ptr %35, align 4
  store volatile ptr %34, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %101, %100, %67
  %107 = load ptr, ptr %33, align 4
  %108 = getelementptr inbounds %struct.drbg_state_ops, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 %109(ptr noundef %11, ptr noundef nonnull %40, i32 noundef %39, ptr noundef nonnull %9) #13
  %111 = load i32, ptr %24, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %24, align 4
  %113 = call i32 @llvm.smin.i32(i32 %110, i32 0) #13
  br label %115

114:                                              ; preds = %54, %52, %43, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @mutex_unlock(ptr noundef %11) #13
  br label %123

115:                                              ; preds = %106, %99, %67
  %116 = phi i32 [ %68, %67 ], [ %113, %106 ], [ %95, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @mutex_unlock(ptr noundef %11) #13
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = add i32 %39, %37
  %120 = icmp ugt i32 %38, 65535
  %121 = icmp ult i32 %119, %4
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %36, label %123

123:                                              ; preds = %118, %115, %114
  %124 = phi i32 [ -22, %114 ], [ %116, %115 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drbg_kcapi_seed(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7 {
  %4 = alloca %struct.drbg_string, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 9
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(10) %8, ptr noundef nonnull dereferenceable(10) @.str.2, i32 10) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %8, ptr noundef nonnull dereferenceable(8) @.str.1, i32 8) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11, %3
  %15 = phi i8 [ 1, %11 ], [ 0, %3 ]
  %16 = phi i32 [ 8, %11 ], [ 10, %3 ]
  %17 = tail call i32 @strlen(ptr noundef %8) #13
  %18 = sub i32 %17, %16
  %19 = getelementptr i8, ptr %8, i32 %16
  %20 = tail call i32 @bcmp(ptr %19, ptr getelementptr inbounds ([4 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 0, i32 3), i32 %18) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %30, %27, %24, %14
  %23 = phi i32 [ 0, %14 ], [ 1, %24 ], [ 2, %27 ], [ 3, %30 ]
  br label %33

24:                                               ; preds = %14
  %25 = tail call i32 @bcmp(ptr %19, ptr getelementptr inbounds ([4 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 1, i32 3), i32 %18) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %22, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @bcmp(ptr %19, ptr getelementptr inbounds ([4 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 2, i32 3), i32 %18) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %22, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @bcmp(ptr %19, ptr getelementptr inbounds ([4 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 3, i32 3), i32 %18) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %22, label %33

33:                                               ; preds = %30, %22, %11
  %34 = phi i8 [ %15, %22 ], [ %15, %30 ], [ 1, %11 ]
  %35 = phi i32 [ %23, %22 ], [ 0, %30 ], [ 0, %11 ]
  %36 = icmp eq i32 %2, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  store ptr %1, ptr %4, align 4
  %38 = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 1
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 2
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 2, i32 1
  store ptr %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi ptr [ %4, %37 ], [ null, %33 ]
  call void @mutex_lock(ptr noundef %5) #13
  %43 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %179

46:                                               ; preds = %41
  %47 = icmp ne i8 %34, 0
  %48 = zext i1 %47 to i8
  %49 = getelementptr [4 x %struct.drbg_core], ptr @drbg_cores, i32 0, i32 %35
  store ptr %49, ptr %43, align 4
  %50 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 3
  store i8 %48, ptr %50, align 4
  %51 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 1
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 2
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  store i32 1048576, ptr %53, align 4
  %54 = load i32, ptr %49, align 4
  %55 = and i32 %54, 7
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %151

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 8
  store ptr @drbg_hmac_ops, ptr %58, align 4
  %59 = call i32 @drbg_init_hash_kernel(ptr noundef %5) #13
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %151, label %61

61:                                               ; preds = %57
  %62 = icmp eq ptr %5, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %43, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.drbg_core, ptr %64, i32 0, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %66, %63, %61
  %71 = phi i32 [ %69, %66 ], [ 0, %63 ], [ 0, %61 ]
  %72 = add nuw i32 %59, %71
  %73 = call noalias align 64 ptr @__kmalloc(i32 noundef %72, i32 noundef 3264) #14
  %74 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 8
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %73, null
  br i1 %75, label %146, label %76

76:                                               ; preds = %70
  %77 = ptrtoint ptr %73 to i32
  %78 = add i32 %59, %77
  %79 = xor i32 %59, -1
  %80 = and i32 %78, %79
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 4
  store ptr %81, ptr %82, align 4
  br i1 %62, label %90, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %43, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.drbg_core, ptr %84, i32 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i32
  br label %90

90:                                               ; preds = %86, %83, %76
  %91 = phi i32 [ %89, %86 ], [ 0, %83 ], [ 0, %76 ]
  %92 = add nuw i32 %59, %91
  %93 = call noalias align 64 ptr @__kmalloc(i32 noundef %92, i32 noundef 3264) #14
  %94 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 16
  store ptr %93, ptr %94, align 4
  %95 = icmp eq ptr %93, null
  br i1 %95, label %146, label %96

96:                                               ; preds = %90
  %97 = ptrtoint ptr %93 to i32
  %98 = add i32 %59, %97
  %99 = and i32 %98, %79
  %100 = inttoptr i32 %99 to ptr
  %101 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 12
  store ptr %100, ptr %101, align 4
  %102 = load ptr, ptr %43, align 4
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %165

106:                                              ; preds = %96
  %107 = and i32 %103, 1
  %108 = icmp eq i32 %107, 0
  %109 = icmp eq ptr %102, null
  %110 = or i1 %62, %109
  br i1 %108, label %123, label %111

111:                                              ; preds = %106
  br i1 %110, label %165, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.drbg_core, ptr %102, i32 0, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds %struct.drbg_core, ptr %102, i32 0, i32 2
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 1
  %120 = add nuw nsw i32 %119, %115
  %121 = shl nuw nsw i32 %120, 1
  %122 = add nuw nsw i32 %121, %115
  br label %132

123:                                              ; preds = %106
  br i1 %110, label %165, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.drbg_core, ptr %102, i32 0, i32 1
  %126 = load i8, ptr %125, align 4
  %127 = zext i8 %126 to i32
  %128 = getelementptr inbounds %struct.drbg_core, ptr %102, i32 0, i32 2
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %130, %127
  br label %132

132:                                              ; preds = %124, %112
  %133 = phi i32 [ %122, %112 ], [ %131, %124 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %165, label %135

135:                                              ; preds = %132
  %136 = add nuw i32 %133, %59
  %137 = call noalias align 64 ptr @__kmalloc(i32 noundef %136, i32 noundef 3520) #14
  %138 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 32
  store ptr %137, ptr %138, align 4
  %139 = icmp eq ptr %137, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = ptrtoint ptr %137 to i32
  %142 = add i32 %59, %141
  %143 = and i32 %142, %79
  %144 = inttoptr i32 %143 to ptr
  %145 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 28
  store ptr %144, ptr %145, align 4
  br label %165

146:                                              ; preds = %135, %90, %70
  %147 = load ptr, ptr %58, align 4
  %148 = getelementptr inbounds %struct.drbg_state_ops, ptr %147, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = call i32 %149(ptr noundef %5) #13
  br label %151

151:                                              ; preds = %146, %57, %46
  %152 = phi i32 [ %59, %57 ], [ -12, %146 ], [ -95, %46 ]
  %153 = icmp eq ptr %5, null
  br i1 %153, label %185, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 8
  %156 = load ptr, ptr %155, align 4
  call void @kfree_sensitive(ptr noundef %156) #13
  store ptr null, ptr %155, align 4
  %157 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 4
  store ptr null, ptr %157, align 4
  %158 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 16
  %159 = load ptr, ptr %158, align 4
  call void @kfree_sensitive(ptr noundef %159) #13
  store ptr null, ptr %158, align 4
  %160 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 12
  store ptr null, ptr %160, align 4
  %161 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 32
  %162 = load ptr, ptr %161, align 4
  call void @kfree_sensitive(ptr noundef %162) #13
  store ptr null, ptr %161, align 4
  %163 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 20
  store i32 0, ptr %163, align 4
  %164 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 8
  store ptr null, ptr %164, align 4
  store ptr null, ptr %43, align 4
  br label %185

165:                                              ; preds = %140, %132, %123, %111, %96
  %166 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 24
  %167 = load volatile ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, %166
  br i1 %168, label %179, label %169

169:                                              ; preds = %165
  %170 = call ptr @crypto_alloc_rng(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #13
  %171 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 4
  store ptr %170, ptr %171, align 4
  %172 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  store ptr null, ptr %171, align 4
  %174 = icmp eq ptr %170, inttoptr (i32 -2 to ptr)
  br i1 %174, label %175, label %177

175:                                              ; preds = %173
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %179

177:                                              ; preds = %173
  %178 = ptrtoint ptr %170 to i32
  br label %186

179:                                              ; preds = %175, %169, %165, %41
  %180 = xor i1 %45, true
  %181 = call fastcc i32 @drbg_seed(ptr noundef %5, ptr noundef %42, i1 noundef zeroext %180) #13
  %182 = icmp ne i32 %181, 0
  %183 = and i1 %45, %182
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  call void @mutex_unlock(ptr noundef %5) #13
  br label %188

185:                                              ; preds = %154, %151
  call void @mutex_unlock(ptr noundef %5) #13
  br label %188

186:                                              ; preds = %179, %177
  %187 = phi i32 [ %178, %177 ], [ %181, %179 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call fastcc void @drbg_uninstantiate(ptr noundef %5) #13
  br label %188

188:                                              ; preds = %186, %185, %184
  %189 = phi i32 [ %181, %184 ], [ %187, %186 ], [ %152, %185 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drbg_kcapi_set_entropy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 16
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 20
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 24
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 3, i32 4, i32 28
  store ptr %7, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drbg_uninstantiate(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %3, ptr noundef nonnull %3) #13
  br label %8

8:                                                ; preds = %7, %1
  store ptr null, ptr %2, align 4
  %9 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drbg_state_ops, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #13
  br label %16

16:                                               ; preds = %12, %8
  %17 = icmp eq ptr %0, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree_sensitive(ptr noundef %20) #13
  store ptr null, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 1
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree_sensitive(ptr noundef %23) #13
  store ptr null, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 3
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree_sensitive(ptr noundef %26) #13
  store ptr null, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 5
  store i32 0, ptr %27, align 4
  store ptr null, ptr %9, align 4
  %28 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  store ptr null, ptr %28, align 4
  br label %29

29:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drbg_seed(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #7 {
  %4 = alloca [96 x i8], align 1
  %5 = alloca %struct.drbg_string, align 4
  %6 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 56
  switch i32 %10, label %13 [
    i32 8, label %14
    i32 16, label %11
    i32 32, label %12
  ]

11:                                               ; preds = %3
  br label %14

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %12, %11, %3
  %15 = phi i32 [ 32, %13 ], [ 32, %12 ], [ 24, %11 ], [ 16, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr %6, ptr %6, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %16, align 4
  %17 = icmp eq ptr %1, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drbg_string, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %117, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 25, i32 2
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 25
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 25, i32 1
  %30 = load i32, ptr %29, align 4
  store ptr %28, ptr %5, align 4
  %31 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2
  store volatile ptr %32, ptr %32, align 4
  br label %55

33:                                               ; preds = %22
  %34 = lshr exact i32 %15, 1
  %35 = mul nuw nsw i32 %34, 3
  %36 = select i1 %2, i32 %15, i32 %35
  %37 = call zeroext i1 @rng_is_initialized() #13
  %38 = select i1 %37, i32 2, i32 1
  call void @get_random_bytes(ptr noundef nonnull %4, i32 noundef %36) #13
  %39 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 22
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  store ptr %4, ptr %5, align 4
  %43 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 1
  store i32 %36, ptr %43, align 4
  %44 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2
  store volatile ptr %44, ptr %44, align 4
  br label %55

45:                                               ; preds = %33
  %46 = shl nuw nsw i32 %36, 1
  %47 = getelementptr i8, ptr %4, i32 %36
  %48 = getelementptr inbounds %struct.crypto_tfm, ptr %40, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 -64
  %51 = load ptr, ptr %50, align 64
  %52 = call i32 %51(ptr noundef nonnull %40, ptr noundef null, i32 noundef 0, ptr noundef %47, i32 noundef %36) #13
  store ptr %4, ptr %5, align 4
  %53 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 1
  store i32 %46, ptr %53, align 4
  %54 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2
  store volatile ptr %54, ptr %54, align 4
  br label %55

55:                                               ; preds = %45, %42, %26
  %56 = phi i32 [ 2, %26 ], [ %38, %45 ], [ %38, %42 ]
  %57 = phi i32 [ %15, %26 ], [ %36, %45 ], [ %36, %42 ]
  %58 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2
  %59 = load ptr, ptr %16, align 4
  store ptr %58, ptr %16, align 4
  store ptr %6, ptr %58, align 4
  %60 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %58, ptr %59, align 4
  br i1 %17, label %72, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %1, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.drbg_string, ptr %1, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.drbg_string, ptr %1, i32 0, i32 2
  %70 = load ptr, ptr %16, align 4
  store ptr %69, ptr %16, align 4
  store ptr %6, ptr %69, align 4
  %71 = getelementptr inbounds %struct.drbg_string, ptr %1, i32 0, i32 2, i32 1
  store ptr %70, ptr %71, align 4
  store volatile ptr %69, ptr %70, align 4
  br label %72

72:                                               ; preds = %68, %64, %61, %55
  br i1 %2, label %99, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %0, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.drbg_core, ptr %78, i32 0, i32 1
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i32
  br label %86

84:                                               ; preds = %73
  %85 = load ptr, ptr inttoptr (i32 28 to ptr), align 4
  br label %96

86:                                               ; preds = %80, %77
  %87 = phi i32 [ 0, %77 ], [ %83, %80 ]
  call void @llvm.memset.p0.i32(ptr align 1 %75, i8 0, i32 %87, i1 false)
  %88 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %7, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.drbg_core, ptr %90, i32 0, i32 1
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  br label %96

96:                                               ; preds = %92, %86, %84
  %97 = phi ptr [ %89, %92 ], [ %89, %86 ], [ %85, %84 ]
  %98 = phi i32 [ %95, %92 ], [ 0, %86 ], [ 0, %84 ]
  call void @llvm.memset.p0.i32(ptr align 1 %97, i8 0, i32 %98, i1 false)
  br label %99

99:                                               ; preds = %96, %72
  %100 = zext i1 %2 to i32
  %101 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 23
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %100) #13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 17
  store i32 %56, ptr %107, align 4
  %108 = load volatile i32, ptr @jiffies, align 64
  %109 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 18
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 5
  store i32 1, ptr %110, align 4
  switch i32 %56, label %115 [
    i32 2, label %111
    i32 1, label %112
  ]

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %106
  %113 = phi i32 [ 1048576, %111 ], [ 50, %106 ]
  %114 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 6
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %112, %106, %99
  %116 = shl nuw nsw i32 %57, 1
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %4, i8 0, i32 %116, i1 false) #13
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #13, !srcloc !10
  br label %117

117:                                              ; preds = %115, %18
  %118 = phi i32 [ %104, %115 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #13
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rng_is_initialized() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drbg_hmac_update(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #7 {
  %4 = alloca %struct.drbg_string, align 4
  %5 = alloca %struct.drbg_string, align 4
  %6 = alloca %struct.drbg_string, align 4
  %7 = alloca %struct.list_head, align 8
  %8 = alloca %struct.list_head, align 8
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr %7, ptr %7, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store ptr %8, ptr %8, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %11, align 4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %0, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drbg_core, ptr %19, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  br label %29

25:                                               ; preds = %13
  %26 = load ptr, ptr inttoptr (i32 28 to ptr), align 4
  %27 = load ptr, ptr inttoptr (i32 52 to ptr), align 4
  %28 = load ptr, ptr %27, align 8
  br label %42

29:                                               ; preds = %21, %17
  %30 = phi i32 [ 0, %17 ], [ %24, %21 ]
  call void @llvm.memset.p0.i32(ptr align 1 %15, i8 1, i32 %30, i1 false)
  %31 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %18, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.drbg_core, ptr %36, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %38, %29, %25
  %43 = phi ptr [ %35, %38 ], [ %35, %29 ], [ %28, %25 ]
  %44 = phi ptr [ %32, %38 ], [ %32, %29 ], [ %26, %25 ]
  %45 = phi i32 [ %41, %38 ], [ 0, %29 ], [ 0, %25 ]
  %46 = call i32 @crypto_shash_setkey(ptr noundef %43, ptr noundef %44, i32 noundef %45) #13
  br label %47

47:                                               ; preds = %42, %3
  %48 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %0, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.drbg_core, ptr %53, i32 0, i32 1
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %55, %51, %47
  %60 = phi i32 [ %58, %55 ], [ 0, %51 ], [ 0, %47 ]
  store ptr %49, ptr %4, align 4
  %61 = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 2
  store volatile ptr %62, ptr %62, align 4
  %63 = getelementptr inbounds %struct.drbg_string, ptr %4, i32 0, i32 2, i32 1
  %64 = load ptr, ptr %10, align 4
  store ptr %62, ptr %10, align 4
  store ptr %7, ptr %62, align 4
  store ptr %64, ptr %63, align 4
  store volatile ptr %62, ptr %64, align 4
  %65 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 1
  store i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2
  store volatile ptr %66, ptr %66, align 4
  %67 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2, i32 1
  %68 = load ptr, ptr %10, align 4
  store ptr %66, ptr %10, align 4
  store ptr %7, ptr %66, align 4
  store ptr %68, ptr %67, align 4
  store volatile ptr %66, ptr %68, align 4
  %69 = icmp eq ptr %1, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %59
  %71 = load volatile ptr, ptr %1, align 4
  %72 = icmp eq ptr %71, %1
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %10, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %74, ptr %77, align 4
  store ptr %71, ptr %74, align 4
  store ptr %7, ptr %76, align 4
  store ptr %76, ptr %10, align 4
  br label %78

78:                                               ; preds = %73, %70, %59
  %79 = load ptr, ptr %48, align 4
  br i1 %50, label %88, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.drbg_core, ptr %82, i32 0, i32 1
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i32
  br label %88

88:                                               ; preds = %84, %80, %78
  %89 = phi i32 [ %87, %84 ], [ 0, %80 ], [ 0, %78 ]
  store ptr %79, ptr %6, align 4
  %90 = getelementptr inbounds %struct.drbg_string, ptr %6, i32 0, i32 1
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.drbg_string, ptr %6, i32 0, i32 2
  store volatile ptr %91, ptr %91, align 4
  %92 = getelementptr inbounds %struct.drbg_string, ptr %6, i32 0, i32 2, i32 1
  %93 = load ptr, ptr %11, align 4
  store ptr %91, ptr %11, align 4
  store ptr %8, ptr %91, align 4
  store ptr %93, ptr %92, align 4
  store volatile ptr %91, ptr %93, align 4
  %94 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 3
  %95 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9
  %96 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  br label %97

97:                                               ; preds = %173, %88
  %98 = phi i32 [ 2, %88 ], [ %174, %173 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  %99 = icmp eq i32 %98, 1
  %100 = zext i1 %99 to i8
  store i8 %100, ptr %9, align 1
  store ptr %9, ptr %5, align 4
  %101 = load ptr, ptr %94, align 4
  %102 = load ptr, ptr %95, align 4
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.crypto_shash, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 64
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.crypto_shash, ptr %103, i32 0, i32 2, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 -128
  %112 = load ptr, ptr %111, align 64
  %113 = call i32 %112(ptr noundef %102) #13
  br label %114

114:                                              ; preds = %108, %97
  %115 = load ptr, ptr %7, align 8
  %116 = icmp eq ptr %115, %7
  br i1 %116, label %126, label %117

117:                                              ; preds = %117, %114
  %118 = phi ptr [ %124, %117 ], [ %115, %114 ]
  %119 = getelementptr i8, ptr %118, i32 -8
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %118, i32 -4
  %122 = load i32, ptr %121, align 4
  %123 = call i32 @crypto_shash_update(ptr noundef %102, ptr noundef %120, i32 noundef %122) #13
  %124 = load ptr, ptr %118, align 4
  %125 = icmp eq ptr %124, %7
  br i1 %125, label %126, label %117

126:                                              ; preds = %117, %114
  %127 = call i32 @crypto_shash_final(ptr noundef %102, ptr noundef %101) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %171

129:                                              ; preds = %126
  %130 = load ptr, ptr %94, align 4
  %131 = load ptr, ptr %95, align 4
  %132 = load ptr, ptr %131, align 8
  br i1 %50, label %140, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %96, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.drbg_core, ptr %134, i32 0, i32 1
  %138 = load i8, ptr %137, align 4
  %139 = zext i8 %138 to i32
  br label %140

140:                                              ; preds = %136, %133, %129
  %141 = phi i32 [ %139, %136 ], [ 0, %133 ], [ 0, %129 ]
  %142 = call i32 @crypto_shash_setkey(ptr noundef %132, ptr noundef %130, i32 noundef %141) #13
  %143 = load ptr, ptr %48, align 4
  %144 = load ptr, ptr %95, align 4
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.crypto_shash, ptr %145, i32 0, i32 2
  %147 = load i32, ptr %146, align 64
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.crypto_shash, ptr %145, i32 0, i32 2, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 -128
  %154 = load ptr, ptr %153, align 64
  %155 = call i32 %154(ptr noundef %144) #13
  br label %156

156:                                              ; preds = %150, %140
  %157 = load ptr, ptr %8, align 8
  %158 = icmp eq ptr %157, %8
  br i1 %158, label %168, label %159

159:                                              ; preds = %159, %156
  %160 = phi ptr [ %166, %159 ], [ %157, %156 ]
  %161 = getelementptr i8, ptr %160, i32 -8
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i8, ptr %160, i32 -4
  %164 = load i32, ptr %163, align 4
  %165 = call i32 @crypto_shash_update(ptr noundef %144, ptr noundef %162, i32 noundef %164) #13
  %166 = load ptr, ptr %160, align 4
  %167 = icmp eq ptr %166, %8
  br i1 %167, label %168, label %159

168:                                              ; preds = %159, %156
  %169 = call i32 @crypto_shash_final(ptr noundef %144, ptr noundef %143) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168, %126
  %172 = phi i32 [ %169, %168 ], [ %127, %126 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  br label %177

173:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  %174 = add nsw i32 %98, -1
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %69, i1 true, i1 %175
  br i1 %176, label %177, label %97

177:                                              ; preds = %173, %171
  %178 = phi i32 [ %172, %171 ], [ 0, %173 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drbg_hmac_generate(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3) #7 {
  %5 = alloca %struct.drbg_string, align 4
  %6 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr %6, ptr %6, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load volatile ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i32 @drbg_hmac_update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %106

15:                                               ; preds = %12, %9, %4
  %16 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %0, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.drbg_core, ptr %21, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %23, %19, %15
  %28 = phi i32 [ %26, %23 ], [ 0, %19 ], [ 0, %15 ]
  store ptr %17, ptr %5, align 4
  %29 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drbg_string, ptr %5, i32 0, i32 2, i32 1
  %32 = load ptr, ptr %7, align 4
  store ptr %30, ptr %7, align 4
  store ptr %6, ptr %30, align 4
  store ptr %32, ptr %31, align 4
  store volatile ptr %30, ptr %32, align 4
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9
  %36 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  br label %37

37:                                               ; preds = %87, %34
  %38 = phi i32 [ 0, %34 ], [ %91, %87 ]
  %39 = load ptr, ptr %16, align 4
  %40 = load ptr, ptr %35, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 64
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.crypto_shash, ptr %41, i32 0, i32 2, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 -128
  %50 = load ptr, ptr %49, align 64
  %51 = call i32 %50(ptr noundef %40) #13
  br label %52

52:                                               ; preds = %46, %37
  %53 = load ptr, ptr %6, align 8
  %54 = icmp eq ptr %53, %6
  br i1 %54, label %64, label %55

55:                                               ; preds = %55, %52
  %56 = phi ptr [ %62, %55 ], [ %53, %52 ]
  %57 = getelementptr i8, ptr %56, i32 -8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %56, i32 -4
  %60 = load i32, ptr %59, align 4
  %61 = call i32 @crypto_shash_update(ptr noundef %40, ptr noundef %58, i32 noundef %60) #13
  %62 = load ptr, ptr %56, align 4
  %63 = icmp eq ptr %62, %6
  br i1 %63, label %64, label %55

64:                                               ; preds = %55, %52
  %65 = call i32 @crypto_shash_final(ptr noundef %40, ptr noundef %39) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %64
  br i1 %18, label %79, label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr %36, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = icmp eq i32 %38, %2
  br i1 %72, label %87, label %84

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.drbg_core, ptr %69, i32 0, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = sub i32 %2, %38
  %78 = icmp ugt i32 %77, %76
  br i1 %78, label %81, label %87

79:                                               ; preds = %67
  %80 = icmp eq i32 %38, %2
  br i1 %80, label %87, label %84

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.drbg_core, ptr %69, i32 0, i32 2
  %83 = load i8, ptr %82, align 1
  br label %84

84:                                               ; preds = %81, %79, %71
  %85 = phi i8 [ %83, %81 ], [ 0, %79 ], [ 0, %71 ]
  %86 = zext i8 %85 to i32
  br label %87

87:                                               ; preds = %84, %79, %73, %71
  %88 = phi i32 [ %86, %84 ], [ 0, %71 ], [ 0, %79 ], [ %77, %73 ]
  %89 = getelementptr i8, ptr %1, i32 %38
  %90 = load ptr, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %89, ptr align 1 %90, i32 %88, i1 false)
  %91 = add i32 %88, %38
  %92 = icmp ult i32 %91, %2
  br i1 %92, label %37, label %93

93:                                               ; preds = %87, %27
  %94 = phi i32 [ 0, %27 ], [ %91, %87 ]
  br i1 %8, label %100, label %95

95:                                               ; preds = %93
  %96 = load volatile ptr, ptr %3, align 4
  %97 = icmp eq ptr %96, %3
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 @drbg_hmac_update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1)
  br label %102

100:                                              ; preds = %95, %93
  %101 = call i32 @drbg_hmac_update(ptr noundef %0, ptr noundef null, i32 noundef 1)
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %101, %100 ], [ %99, %98 ]
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 %94, i32 %103
  br label %106

106:                                              ; preds = %102, %64, %12
  %107 = phi i32 [ %13, %12 ], [ %105, %102 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drbg_init_hash_kernel(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drbg_core, ptr %3, i32 0, i32 4
  %5 = tail call ptr @crypto_alloc_shash(ptr noundef %4, i32 noundef 0, i32 noundef 0) #13
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.drbg_core, ptr %8, i32 0, i32 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %9) #15
  %11 = ptrtoint ptr %5 to i32
  br label %41

12:                                               ; preds = %1
  %13 = icmp eq ptr %0, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.drbg_core, ptr %15, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %17, %14, %12
  %22 = phi i32 [ %20, %17 ], [ 0, %14 ], [ 0, %12 ]
  %23 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 -64
  %26 = load i32, ptr %25, align 64
  %27 = icmp eq i32 %26, %22
  br i1 %27, label %29, label %28, !prof !11

28:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/drbg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1690, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

29:                                               ; preds = %21
  %30 = load i32, ptr %5, align 64
  %31 = add i32 %30, 8
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %35) #13
  br label %41

36:                                               ; preds = %29
  store ptr %5, ptr %32, align 64
  %37 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9
  store ptr %32, ptr %37, align 4
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr inbounds %struct.crypto_alg, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %36, %34, %7
  %42 = phi i32 [ %11, %7 ], [ %40, %36 ], [ -12, %34 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drbg_fini_hash_kernel(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.drbg_state, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.crypto_shash, ptr %6, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %6, ptr noundef %7) #13
  tail call void @kfree_sensitive(ptr noundef nonnull %3) #13
  br label %8

8:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_rng(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rngs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold inlinehint mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { cold }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2148842614}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152614149, i64 2152614628, i64 2152614186, i64 2152614242, i64 2152614276, i64 2152614300, i64 2152614341, i64 2152614362, i64 2152614390, i64 2152614424}
