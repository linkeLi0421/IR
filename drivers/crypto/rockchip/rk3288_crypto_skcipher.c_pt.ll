; ModuleID = '/llk/IR/drivers/crypto/rockchip/rk3288_crypto_skcipher.c_pt.bc'
source_filename = "../drivers/crypto/rockchip/rk3288_crypto_skcipher.c"
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
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.62, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.62 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.rk_crypto_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, %struct.spinlock, ptr, ptr, %struct.scatterlist, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.61, i32 }
%union.anon.61 = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.des_ctx = type { [32 x i32] }

@__this_module = external dso_local global %struct.module, align 64
@rk_ecb_aes_alg = dso_local local_unnamed_addr global { ptr, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, i32, [60 x i8] } { ptr null, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @rk_aes_setkey, ptr @rk_aes_ecb_encrypt, ptr @rk_aes_ecb_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 28, i32 15, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, i32 1, [60 x i8] undef }, align 64
@rk_cbc_aes_alg = dso_local local_unnamed_addr global { ptr, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, i32, [60 x i8] } { ptr null, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @rk_aes_setkey, ptr @rk_aes_cbc_encrypt, ptr @rk_aes_cbc_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 28, i32 15, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, i32 1, [60 x i8] undef }, align 64
@rk_ecb_des_alg = dso_local local_unnamed_addr global { ptr, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, i32, [60 x i8] } { ptr null, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @rk_des_setkey, ptr @rk_des_ecb_encrypt, ptr @rk_des_ecb_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 8, i32 8, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, i32 1, [60 x i8] undef }, align 64
@rk_cbc_des_alg = dso_local local_unnamed_addr global { ptr, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, i32, [60 x i8] } { ptr null, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @rk_des_setkey, ptr @rk_des_cbc_encrypt, ptr @rk_des_cbc_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, i32 1, [60 x i8] undef }, align 64
@rk_ecb_des3_ede_alg = dso_local local_unnamed_addr global { ptr, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, i32, [60 x i8] } { ptr null, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @rk_tdes_setkey, ptr @rk_des3_ede_ecb_encrypt, ptr @rk_des3_ede_ecb_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-ede-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, i32 1, [60 x i8] undef }, align 64
@rk_cbc_des3_ede_alg = dso_local local_unnamed_addr global { ptr, [60 x i8], { %struct.skcipher_alg, [64 x i8] }, i32, [60 x i8] } { ptr null, [60 x i8] undef, { %struct.skcipher_alg, [64 x i8] } { %struct.skcipher_alg { ptr @rk_tdes_setkey, ptr @rk_des3_ede_cbc_encrypt, ptr @rk_des3_ede_cbc_decrypt, ptr @rk_ablk_init_tfm, ptr @rk_ablk_exit_tfm, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 28, i32 7, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des3-ede-rk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.62 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, [64 x i8] undef }, i32 1, [60 x i8] undef }, align 64
@.str = private unnamed_addr constant [22 x i8] c"[%s:%d] Lack of data\0A\00", align 1
@__func__.rk_ablk_rx = private unnamed_addr constant [11 x i8] c"rk_ablk_rx\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_aes_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %11 [
    i32 32, label %4
    i32 24, label %4
    i32 16, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 184
  tail call void @mmiocpy(ptr noundef %10, ptr noundef %1, i32 noundef %2) #6
  br label %11

11:                                               ; preds = %4, %3
  %12 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_aes_ecb_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_aes_ecb_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 1, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ablk_init_tfm(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = load ptr, ptr %5, align 64
  store ptr %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.rk_crypto_info, ptr %6, i32 0, i32 21
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.rk_crypto_info, ptr %11, i32 0, i32 29
  store ptr @rk_ablk_start, ptr %12, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %13, i32 0, i32 30
  store ptr @rk_ablk_rx, ptr %14, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.rk_crypto_info, ptr %15, i32 0, i32 31
  store ptr @rk_crypto_complete, ptr %16, align 4
  %17 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #6
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.rk_crypto_info, ptr %19, i32 0, i32 19
  store ptr %18, ptr %20, align 4
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.rk_crypto_info, ptr %21, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.rk_crypto_info, ptr %21, i32 0, i32 32
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %21) #6
  br label %29

29:                                               ; preds = %25, %1
  %30 = phi i32 [ %28, %25 ], [ -12, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_ablk_exit_tfm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %7, i32 0, i32 33
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_aes_cbc_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 16, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_aes_cbc_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 17, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.des_ctx, align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #6, !annotation !8
  %6 = call i32 @des_expand_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #6
  %7 = icmp eq i32 %6, -126
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 -22
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %6, %3 ], [ %13, %8 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #6
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store i32 %2, ptr %18, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.rk_crypto_info, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 288
  call void @mmiocpy(ptr noundef %22, ptr noundef %1, i32 noundef %2) #6
  br label %23

23:                                               ; preds = %17, %14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des_ecb_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des_ecb_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 1, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des_cbc_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 16, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des_cbc_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 17, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_tdes_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false) #6
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %10, %12
  %18 = icmp eq i32 %14, %16
  %19 = and i1 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %12, %22
  %26 = icmp ne i32 %16, %24
  %27 = or i1 %25, %26
  %28 = or i1 %9, %27
  br i1 %28, label %31, label %30

29:                                               ; preds = %3
  br i1 %9, label %31, label %30

30:                                               ; preds = %29, %20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #6
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %37

31:                                               ; preds = %29, %20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #6
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  %32 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store i32 %2, ptr %32, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.rk_crypto_info, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 288
  call void @mmiocpy(ptr noundef %36, ptr noundef %1, i32 noundef %2) #6
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i32 [ -126, %30 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_ecb_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 4, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_ecb_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 5, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_cbc_encrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 20, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_des3_ede_cbc_decrypt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 72
  store i32 21, ptr %6, align 4
  %7 = load i32, ptr %0, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %5, i32 0, i32 36
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %17 = tail call i32 %15(ptr noundef %5, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i32 [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ablk_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = load i32, ptr %4, align 64
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 18
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %4, align 64
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 24
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %3, i32 -8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 14
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 17
  store ptr %12, ptr %13, align 4
  %14 = load ptr, ptr %9, align 8
  %15 = tail call i32 @sg_nents(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 22
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %3, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 15
  store ptr %18, ptr %19, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 @sg_nents(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 23
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 20
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 13
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #6
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr i8, ptr %26, i32 16
  %28 = load ptr, ptr %27, align 16
  %29 = getelementptr %struct.crypto_tfm, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.crypto_alg, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %30, i32 -36
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, 8
  %36 = getelementptr i8, ptr %28, i32 72
  %37 = load i32, ptr %36, align 4
  br i1 %35, label %38, label %43

38:                                               ; preds = %1
  %39 = or i32 %37, 386
  store i32 %39, ptr %36, align 4
  %40 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %39) #6, !srcloc !10
  br label %56

43:                                               ; preds = %1
  %44 = or i32 %37, 1602
  store i32 %44, ptr %36, align 4
  %45 = getelementptr i8, ptr %28, i32 68
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %51 [
    i32 24, label %48
    i32 32, label %47
  ]

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ 1610, %47 ], [ 1606, %43 ]
  %50 = or i32 %37, %49
  store i32 %50, ptr %36, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %44, %43 ], [ %50, %48 ]
  %53 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #6, !srcloc !10
  br label %56

56:                                               ; preds = %51, %38
  %57 = phi ptr [ %53, %51 ], [ %40, %38 ]
  %58 = phi i32 [ 168, %51 ], [ 280, %38 ]
  %59 = phi i32 [ 24, %51 ], [ 28, %38 ]
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = getelementptr i8, ptr %26, i32 -12
  %63 = load ptr, ptr %62, align 4
  tail call void @mmiocpy(ptr noundef %61, ptr noundef %63, i32 noundef %34) #6
  %64 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %59) #6, !srcloc !10
  %67 = load ptr, ptr %64, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 3) #6, !srcloc !10
  %69 = tail call fastcc i32 @rk_set_data_start(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #6
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_ablk_rx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 23
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %17, %21
  %23 = sub i32 %19, %22
  %24 = tail call i32 @sg_pcopy_from_buffer(ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %23) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %125, label %26

26:                                               ; preds = %9, %1
  %27 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 18
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr i8, ptr %32, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 -36
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %32, i32 72
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %29, label %86, label %41

41:                                               ; preds = %26
  br i1 %40, label %44, label %42

42:                                               ; preds = %41
  %43 = getelementptr i8, ptr %32, i32 76
  br label %60

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, -4
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call ptr @page_address(ptr noundef %49) #6
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %50, i32 %53
  %55 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %54, i32 %56
  %58 = sub i32 0, %36
  %59 = getelementptr i8, ptr %57, i32 %58
  br label %60

60:                                               ; preds = %44, %42
  %61 = phi ptr [ %43, %42 ], [ %59, %44 ]
  switch i32 %36, label %68 [
    i32 8, label %63
    i32 16, label %62
  ]

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ 168, %62 ], [ 280, %60 ]
  %65 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 %64
  tail call void @mmiocpy(ptr noundef %67, ptr noundef %61, i32 noundef %36) #6
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, ptr %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 14
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rk_ablk_rx, i32 noundef 359) #7
  br label %125

79:                                               ; preds = %71
  %80 = tail call ptr @sg_next(ptr noundef %73) #6
  store ptr %80, ptr %72, align 4
  %81 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 15
  %82 = load ptr, ptr %81, align 4
  %83 = tail call ptr @sg_next(ptr noundef %82) #6
  store ptr %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %79, %68
  %85 = tail call fastcc i32 @rk_set_data_start(ptr noundef %0)
  br label %125

86:                                               ; preds = %26
  br i1 %40, label %87, label %116

87:                                               ; preds = %86
  %88 = load i32, ptr %6, align 4
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr i8, ptr %30, i32 -12
  %91 = load ptr, ptr %90, align 4
  br i1 %89, label %104, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 15
  %94 = load ptr, ptr %93, align 4
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, -4
  %97 = inttoptr i32 %96 to ptr
  %98 = tail call ptr @page_address(ptr noundef %97) #6
  %99 = getelementptr inbounds %struct.scatterlist, ptr %94, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = load ptr, ptr %93, align 4
  %103 = getelementptr inbounds %struct.scatterlist, ptr %102, i32 0, i32 2
  br label %108

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 19
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 25
  br label %108

108:                                              ; preds = %104, %92
  %109 = phi ptr [ %103, %92 ], [ %107, %104 ]
  %110 = phi ptr [ %101, %92 ], [ %106, %104 ]
  %111 = load i32, ptr %109, align 4
  %112 = getelementptr i8, ptr %110, i32 %111
  %113 = sub i32 0, %36
  %114 = getelementptr i8, ptr %112, i32 %113
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %91, ptr align 1 %114, i32 %36, i1 false) #6
  %115 = load ptr, ptr %2, align 4
  br label %116

116:                                              ; preds = %108, %86
  %117 = phi ptr [ %30, %86 ], [ %115, %108 ]
  %118 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 31
  %119 = load ptr, ptr %118, align 4
  tail call void %119(ptr noundef %117, i32 noundef 0) #6
  %120 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 9, i32 1
  %121 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %120) #6
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %124) #6
  br label %125

125:                                              ; preds = %123, %116, %84, %77, %9
  %126 = phi i32 [ -12, %77 ], [ %85, %84 ], [ -22, %9 ], [ 0, %116 ], [ 0, %123 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_crypto_complete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, i32 noundef %1) #6
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rk_set_data_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -36
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -4
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call ptr @page_address(ptr noundef %14) #6
  %16 = getelementptr i8, ptr %5, i32 72
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %15, i32 %23
  %25 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = sub i32 0, %9
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = getelementptr i8, ptr %5, i32 76
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %30, ptr align 1 %29, i32 %9, i1 false)
  %31 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %3, i32 -12
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 24
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %38, %9
  %40 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %9, i32 noundef %39) #6
  br label %41

41:                                               ; preds = %20, %1
  %42 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 34
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %43(ptr noundef %0, ptr noundef %44, ptr noundef %46) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 26
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #6, !srcloc !10
  %55 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 25
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 2
  %58 = load ptr, ptr %52, align 4
  %59 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #6, !srcloc !10
  %60 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 27
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr i8, ptr %62, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #6, !srcloc !10
  %64 = load ptr, ptr %52, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 262148) #6, !srcloc !10
  br label %66

66:                                               ; preds = %49, %41
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2148951258}
!10 = !{i64 3944322}
