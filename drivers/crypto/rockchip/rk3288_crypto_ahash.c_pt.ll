; ModuleID = '/llk/IR/drivers/crypto/rockchip/rk3288_crypto_ahash.c_pt.bc'
source_filename = "../drivers/crypto/rockchip/rk3288_crypto_ahash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rk_crypto_tmp = type { ptr, [60 x i8], %union.anon.69, i32, [60 x i8] }
%union.anon.69 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.62, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.62 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.rk_crypto_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, %struct.spinlock, ptr, ptr, %struct.scatterlist, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.61, i32 }
%union.anon.61 = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__this_module = external dso_local global %struct.module, align 64
@rk_ahash_sha1 = dso_local local_unnamed_addr global %struct.rk_crypto_tmp { ptr null, [60 x i8] undef, %union.anon.69 { %struct.ahash_alg { ptr @rk_ahash_init, ptr @rk_ahash_update, ptr @rk_ahash_final, ptr @rk_ahash_finup, ptr @rk_ahash_digest, ptr @rk_ahash_export, ptr @rk_ahash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 8, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rk-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr @rk_cra_hash_init, ptr @rk_cra_hash_exit, ptr null, ptr @__this_module, [48 x i8] undef } } } }, i32 0, [60 x i8] undef }, align 64
@rk_ahash_sha256 = dso_local local_unnamed_addr global %struct.rk_crypto_tmp { ptr null, [60 x i8] undef, %union.anon.69 { %struct.ahash_alg { ptr @rk_ahash_init, ptr @rk_ahash_update, ptr @rk_ahash_final, ptr @rk_ahash_finup, ptr @rk_ahash_digest, ptr @rk_ahash_export, ptr @rk_ahash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 8, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rk-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr @rk_cra_hash_init, ptr @rk_cra_hash_exit, ptr null, ptr @__this_module, [48 x i8] undef } } } }, i32 0, [60 x i8] undef }, align 64
@rk_ahash_md5 = dso_local local_unnamed_addr global %struct.rk_crypto_tmp { ptr null, [60 x i8] undef, %union.anon.69 { %struct.ahash_alg { ptr @rk_ahash_init, ptr @rk_ahash_update, ptr @rk_ahash_final, ptr @rk_ahash_finup, ptr @rk_ahash_digest, ptr @rk_ahash_export, ptr @rk_ahash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 384, i32 64, i32 8, i32 3, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rk-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr @rk_cra_hash_init, ptr @rk_cra_hash_exit, ptr null, ptr @__this_module, [48 x i8] undef } } } }, i32 0, [60 x i8] undef }, align 64
@sha1_zero_message_hash = external dso_local local_unnamed_addr constant [20 x i8], align 1
@sha256_zero_message_hash = external dso_local local_unnamed_addr constant [32 x i8], align 1
@md5_zero_message_hash = external dso_local local_unnamed_addr constant [16 x i8], align 1
@.str = private unnamed_addr constant [32 x i8] c"failed to kmalloc for addr_vir\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not load fallback driver.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"[%s:%d], Lack of data\0A\00", align 1
@__func__.rk_ahash_crypto_rx = private unnamed_addr constant [19 x i8] c"rk_ahash_crypto_rx\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 68
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %6, ptr %7, align 16
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr %6, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %5, align 64
  %18 = tail call i32 %17(ptr noundef %16) #4
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i32 [ %18, %15 ], [ -126, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_update(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 68
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %7, ptr %8, align 16
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store ptr %17, ptr %18, align 4
  %19 = getelementptr %struct.crypto_ahash, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %2) #4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_final(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 68
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %7, ptr %8, align 16
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 32
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  store ptr %14, ptr %15, align 32
  %16 = tail call i32 @crypto_ahash_final(ptr noundef %2) #4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_finup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 68
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %7, ptr %8, align 16
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 32
  %21 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  store ptr %20, ptr %21, align 32
  %22 = tail call i32 @crypto_ahash_finup(ptr noundef %2) #4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_digest(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load i32, ptr %10, align 64
  switch i32 %11, label %27 [
    i32 20, label %12
    i32 32, label %15
    i32 16, label %18
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %14, ptr noundef nonnull align 1 dereferenceable(20) @sha1_zero_message_hash, i32 20, i1 false) #4
  br label %27

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(32) @sha256_zero_message_hash, i32 32, i1 false) #4
  br label %27

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(16) @md5_zero_message_hash, i32 16, i1 false) #4
  br label %27

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rk_crypto_info, ptr %23, i32 0, i32 36
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %23, ptr noundef %0) #4
  br label %27

27:                                               ; preds = %21, %18, %15, %12, %7
  %28 = phi i32 [ %26, %21 ], [ -22, %7 ], [ 0, %18 ], [ 0, %15 ], [ 0, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_export(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 68
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %8, ptr %9, align 16
  %10 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 512
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr %struct.crypto_ahash, ptr %7, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %3, ptr noundef %1) #4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_import(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 68
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  store ptr %7, ptr %8, align 16
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %7, align 64
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %18 = getelementptr %struct.crypto_ahash, ptr %6, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 %19(ptr noundef %17, ptr noundef %1) #4
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i32 [ %20, %16 ], [ -126, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_cra_hash_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -192
  %6 = load ptr, ptr %5, align 64
  store ptr %6, ptr %2, align 4
  %7 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #4
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.rk_crypto_info, ptr %9, i32 0, i32 19
  store ptr %8, ptr %10, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.rk_crypto_info, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #5
  br label %41

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 8
  %19 = getelementptr inbounds %struct.rk_crypto_info, ptr %11, i32 0, i32 29
  store ptr @rk_ahash_start, ptr %19, align 4
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.rk_crypto_info, ptr %20, i32 0, i32 30
  store ptr @rk_ahash_crypto_rx, ptr %21, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.rk_crypto_info, ptr %22, i32 0, i32 31
  store ptr @rk_ahash_crypto_complete, ptr %23, align 4
  %24 = tail call ptr @crypto_alloc_ahash(ptr noundef %18, i32 noundef 0, i32 noundef 256) #4
  %25 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load ptr, ptr %2, align 4
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1) #5
  %30 = load ptr, ptr %25, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %41

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.crypto_ahash, ptr %24, i32 0, i32 8
  %34 = load i32, ptr %33, align 32
  %35 = add i32 %34, 128
  %36 = getelementptr i8, ptr %0, i32 -32
  store i32 %35, ptr %36, align 32
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.rk_crypto_info, ptr %37, i32 0, i32 32
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %37) #4
  br label %41

41:                                               ; preds = %32, %27, %15
  %42 = phi i32 [ %31, %27 ], [ %40, %32 ], [ -12, %15 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_cra_hash_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %7, i32 0, i32 33
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 24
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %4, align 8
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 18
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 20
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 21
  store i32 4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 15
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 14
  store ptr %13, ptr %14, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 17
  store ptr %15, ptr %16, align 4
  %17 = load ptr, ptr %12, align 4
  %18 = tail call i32 @sg_nents(ptr noundef %17) #4
  %19 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 22
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2
  store i32 0, ptr %20, align 64
  %21 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr i8, ptr %22, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 -64
  %26 = load i32, ptr %25, align 64
  switch i32 %26, label %79 [
    i32 20, label %30
    i32 32, label %28
    i32 16, label %27
  ]

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %1
  %29 = phi i32 [ 1, %27 ], [ 2, %1 ]
  store i32 %29, ptr %20, align 64
  br label %30

30:                                               ; preds = %28, %1
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #4, !srcloc !8
  %36 = or i32 %35, -65472
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #4, !srcloc !9
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  %42 = and i32 %41, 65471
  %43 = or i32 %42, -65536
  %44 = load ptr, ptr %32, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !9
  %46 = load ptr, ptr %32, align 4
  %47 = getelementptr i8, ptr %46, i32 396
  tail call void @mmioset(ptr noundef %47, i32 noundef 0, i32 noundef 32) #4
  %48 = load ptr, ptr %32, align 4
  %49 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 12) #4, !srcloc !9
  %50 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 12) #4, !srcloc !9
  %51 = getelementptr inbounds %struct.ahash_request, ptr %31, i32 2
  %52 = load i32, ptr %51, align 64
  %53 = or i32 %52, 8
  %54 = load ptr, ptr %32, align 4
  %55 = getelementptr i8, ptr %54, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #4, !srcloc !9
  %56 = load ptr, ptr %32, align 4
  %57 = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 56) #4, !srcloc !9
  %58 = load i32, ptr %6, align 4
  %59 = load ptr, ptr %32, align 4
  %60 = getelementptr i8, ptr %59, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #4, !srcloc !9
  %61 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 34
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %14, align 4
  %64 = tail call i32 %62(ptr noundef %0, ptr noundef %63, ptr noundef null) #4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %30
  %67 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 26
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %32, align 4
  %70 = getelementptr i8, ptr %69, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #4, !srcloc !9
  %71 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 25
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 3
  %74 = lshr i32 %73, 2
  %75 = load ptr, ptr %32, align 4
  %76 = getelementptr i8, ptr %75, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #4, !srcloc !9
  %77 = load ptr, ptr %32, align 4
  %78 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 524296) #4, !srcloc !9
  br label %79

79:                                               ; preds = %66, %30, %1
  %80 = phi i32 [ -22, %1 ], [ %64, %30 ], [ 0, %66 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ahash_crypto_rx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 388
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %49, label %55

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %29, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rk_ahash_crypto_rx, i32 noundef 241) #5
  br label %74

27:                                               ; preds = %21
  %28 = tail call ptr @sg_next(ptr noundef %20) #4
  store ptr %28, ptr %19, align 4
  br label %29

29:                                               ; preds = %27, %15
  %30 = phi ptr [ %28, %27 ], [ %20, %15 ]
  %31 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 34
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %0, ptr noundef %30, ptr noundef null) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 26
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #4, !srcloc !9
  %41 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 25
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 3
  %44 = lshr i32 %43, 2
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr i8, ptr %45, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #4, !srcloc !9
  %47 = load ptr, ptr %38, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 524296) #4, !srcloc !9
  br label %74

49:                                               ; preds = %49, %9
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #4
  %51 = load ptr, ptr %10, align 4
  %52 = getelementptr i8, ptr %51, i32 388
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #4, !srcloc !8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %49, label %55

55:                                               ; preds = %49, %9
  %56 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %57 = load ptr, ptr %56, align 16
  %58 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 0, i32 3
  %59 = load ptr, ptr %58, align 32
  %60 = load ptr, ptr %10, align 4
  %61 = getelementptr i8, ptr %60, i32 396
  %62 = getelementptr i8, ptr %57, i32 12
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 -64
  %65 = load i32, ptr %64, align 64
  tail call void @mmiocpy(ptr noundef %59, ptr noundef %61, i32 noundef %65) #4
  %66 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 31
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %2, align 4
  tail call void %67(ptr noundef %68, i32 noundef 0) #4
  %69 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 9, i32 1
  %70 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %69) #4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %73) #4
  br label %74

74:                                               ; preds = %72, %55, %35, %29, %25
  %75 = phi i32 [ -12, %25 ], [ %33, %29 ], [ 0, %35 ], [ 0, %55 ], [ 0, %72 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_ahash_crypto_complete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, i32 noundef %1) #4
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3940488}
!9 = !{i64 3940070}
