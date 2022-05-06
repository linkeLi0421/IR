; ModuleID = '/llk/IR/drivers/crypto/marvell/cesa/cipher.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/cipher.c"
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
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.mv_cesa_req_ops = type { ptr, ptr, ptr, ptr }
%struct.des_ctx = type { [32 x i32] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.mv_cesa_op_ctx = type { %struct.mv_cesa_sec_accel_desc, %union.anon.68 }
%struct.mv_cesa_sec_accel_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.68 = type { %struct.mv_cesa_hash_op_ctx }
%struct.mv_cesa_hash_op_ctx = type { [16 x i32], [8 x i32] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.mv_cesa_aes_ctx = type { %struct.mv_cesa_ctx, %struct.crypto_aes_ctx }
%struct.mv_cesa_ctx = type { ptr }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.mv_cesa_skcipher_dma_iter = type { %struct.mv_cesa_dma_iter, %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter }
%struct.mv_cesa_dma_iter = type { i32, i32, i32 }
%struct.mv_cesa_sg_dma_iter = type { i32, ptr, i32, i32 }
%struct.mv_cesa_dev = type { ptr, ptr, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv_cesa_caps = type { i32, i8, ptr, i32, ptr, i32 }
%struct.mv_cesa_tdma_desc = type { i32, %union.anon.70, %union.anon.71, i32, i32, ptr, %union.anon.72, i32 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { ptr }
%struct.mv_cesa_engine = type { i32, ptr, %union.anon.69, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon.69 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }

@__this_module = external dso_local global %struct.module, align 64
@mv_cesa_ecb_des_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des_setkey, ptr @mv_cesa_ecb_des_encrypt, ptr @mv_cesa_ecb_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@mv_cesa_cbc_des_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des_setkey, ptr @mv_cesa_cbc_des_encrypt, ptr @mv_cesa_cbc_des_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 12, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@mv_cesa_ecb_des3_ede_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des3_ede_setkey, ptr @mv_cesa_ecb_des3_ede_encrypt, ptr @mv_cesa_ecb_des3_ede_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-ecb-des3-ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@mv_cesa_cbc_des3_ede_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_des3_ede_setkey, ptr @mv_cesa_cbc_des3_ede_encrypt, ptr @mv_cesa_cbc_des3_ede_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 28, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-cbc-des3-ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@mv_cesa_ecb_aes_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_aes_setkey, ptr @mv_cesa_ecb_aes_encrypt, ptr @mv_cesa_ecb_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 488, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@mv_cesa_cbc_aes_alg = dso_local local_unnamed_addr global %struct.skcipher_alg { ptr @mv_cesa_aes_setkey, ptr @mv_cesa_cbc_aes_encrypt, ptr @mv_cesa_cbc_aes_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 488, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_skcipher_cra_init, ptr @mv_cesa_skcipher_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@cesa_dev = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid number of src SG\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid number of dst SG\00", align 1
@mv_cesa_skcipher_req_ops = internal constant %struct.mv_cesa_req_ops { ptr @mv_cesa_skcipher_process, ptr @mv_cesa_skcipher_step, ptr @mv_cesa_skcipher_req_cleanup, ptr @mv_cesa_skcipher_complete }, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"drivers/crypto/marvell/cesa/cipher.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_des_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.des_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #9, !annotation !8
  %5 = call i32 @des_expand_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #9
  %6 = icmp eq i32 %5, -126
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -22
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %5, %3 ], [ %12, %7 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %18 = load i64, ptr %1, align 1
  store i64 %18, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des_encrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %4, i8 0, i64 124, i1 false)
  %5 = load ptr, ptr %3, align 16
  store i32 256, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 1, i32 1
  %8 = load i64, ptr %7, align 4
  store i64 %8, ptr %6, align 4
  %9 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des_decrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  store i32 4352, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 1, i32 1
  %8 = load i64, ptr %7, align 4
  store i64 %8, ptr %6, align 4
  %9 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_cesa_skcipher_cra_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store ptr @mv_cesa_skcipher_req_ops, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -64
  store i32 160, ptr %3, align 64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_cra_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %2, i8 0, i32 %6, i1 false) #9
  tail call void asm sideeffect "", "r,~{memory}"(ptr %2) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des_encrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %6, align 1
  store i64 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  store i32 65792, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 1, i32 1
  %12 = load i64, ptr %11, align 4
  store i64 %12, ptr %10, align 4
  %13 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des_decrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %6, align 1
  store i64 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  store i32 69888, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 1, i32 1
  %12 = load i64, ptr %11, align 4
  store i64 %12, ptr %10, align 4
  %13 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_des3_ede_setkey(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 64
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false) #9
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %9, %11
  %17 = icmp eq i32 %13, %15
  %18 = and i1 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %11, %21
  %25 = icmp ne i32 %15, %23
  %26 = or i1 %24, %25
  %27 = or i1 %8, %26
  br i1 %27, label %30, label %29

28:                                               ; preds = %3
  br i1 %8, label %30, label %29

29:                                               ; preds = %28, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %32

30:                                               ; preds = %28, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %31, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false)
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ -126, %29 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des3_ede_encrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  store i32 1049088, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %6, ptr noundef align 4 dereferenceable(24) %7, i32 24, i1 false) #9
  %8 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_des3_ede_decrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  store i32 1053184, ptr %2, align 4
  %6 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %6, ptr noundef align 4 dereferenceable(24) %7, i32 24, i1 false) #9
  %8 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des3_ede_encrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %6, align 1
  store i64 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  store i32 1114624, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %10, ptr noundef align 4 dereferenceable(24) %11, i32 24, i1 false) #9
  %12 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_des3_ede_decrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %6, align 1
  store i64 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  store i32 1118720, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %10, ptr noundef align 4 dereferenceable(24) %11, i32 24, i1 false) #9
  %12 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_aes_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  %6 = tail call i32 @aes_expandkey(ptr noundef %5, ptr noundef %1, i32 noundef %2) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 4, i32 2, i32 4, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -16
  %12 = lshr i32 %11, 2
  %13 = add i32 %10, 24
  %14 = sub i32 %13, %12
  %15 = icmp ult i32 %11, 4
  br i1 %15, label %27, label %16

16:                                               ; preds = %8
  %17 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %25, %18 ], [ 0, %16 ]
  %20 = add i32 %14, %19
  %21 = getelementptr [60 x i32], ptr %5, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nuw nsw i32 %19, 4
  %24 = getelementptr %struct.mv_cesa_aes_ctx, ptr %4, i32 0, i32 1, i32 1, i32 %23
  store i32 %22, ptr %24, align 4
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %27, label %18

27:                                               ; preds = %18, %8, %3
  %28 = phi i32 [ %6, %3 ], [ 0, %8 ], [ 0, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_aes_encrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 8, i32 4, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %16, %11 ]
  %13 = getelementptr i32, ptr %5, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [8 x i32], ptr %10, i32 0, i32 %12
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %12, 1
  %17 = load i32, ptr %6, align 4
  %18 = lshr i32 %17, 2
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %11, label %20

20:                                               ; preds = %11
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, -50332417
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i32 [ 0, %1 ], [ %22, %20 ]
  %25 = phi i32 [ %7, %1 ], [ %17, %20 ]
  %26 = icmp eq i32 %25, 32
  %27 = select i1 %26, i32 33555200, i32 768
  %28 = icmp eq i32 %25, 24
  %29 = select i1 %28, i32 16777984, i32 %27
  %30 = or i32 %29, %24
  store i32 %30, ptr %2, align 4
  %31 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ecb_aes_decrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  store i32 4096, ptr %2, align 4
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 4, i32 4, i32 36
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 8, i32 4, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %17, %12 ]
  %14 = getelementptr i32, ptr %6, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [8 x i32], ptr %11, i32 0, i32 %13
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %13, 1
  %18 = load i32, ptr %7, align 4
  %19 = lshr i32 %18, 2
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %12, label %21

21:                                               ; preds = %12
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, -50332417
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i32 [ 4096, %1 ], [ %23, %21 ]
  %26 = phi i32 [ %8, %1 ], [ %18, %21 ]
  %27 = icmp eq i32 %26, 32
  %28 = select i1 %27, i32 33555200, i32 768
  %29 = icmp eq i32 %26, 24
  %30 = select i1 %29, i32 16777984, i32 %28
  %31 = or i32 %30, %25
  store i32 %31, ptr %2, align 4
  %32 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_aes_encrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  store i32 65536, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %6, i32 16, i1 false) #9
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 1, i32 1
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 8, i32 4, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %20, %15 ]
  %17 = getelementptr i32, ptr %9, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [8 x i32], ptr %14, i32 0, i32 %16
  store i32 %18, ptr %19, align 4
  %20 = add nuw nsw i32 %16, 1
  %21 = load i32, ptr %10, align 4
  %22 = lshr i32 %21, 2
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %15, label %24

24:                                               ; preds = %15
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, -50332417
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ 65536, %1 ], [ %26, %24 ]
  %29 = phi i32 [ %11, %1 ], [ %21, %24 ]
  %30 = icmp eq i32 %29, 32
  %31 = select i1 %30, i32 33555200, i32 768
  %32 = icmp eq i32 %29, 24
  %33 = select i1 %32, i32 16777984, i32 %31
  %34 = or i32 %33, %28
  store i32 %34, ptr %2, align 4
  %35 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_cbc_aes_decrypt(ptr noundef %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 124, i1 false), !annotation !8
  store i32 69632, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %6, i32 16, i1 false) #9
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 4, i32 4, i32 36
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %8, i32 8, i32 4, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %2, i32 0, i32 1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %20, %15 ]
  %17 = getelementptr i32, ptr %9, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [8 x i32], ptr %14, i32 0, i32 %16
  store i32 %18, ptr %19, align 4
  %20 = add nuw nsw i32 %16, 1
  %21 = load i32, ptr %10, align 4
  %22 = lshr i32 %21, 2
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %15, label %24

24:                                               ; preds = %15
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, -50332417
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ 69632, %1 ], [ %26, %24 ]
  %29 = phi i32 [ %11, %1 ], [ %21, %24 ]
  %30 = icmp eq i32 %29, 32
  %31 = select i1 %30, i32 33555200, i32 768
  %32 = icmp eq i32 %29, 24
  %33 = select i1 %32, i32 16777984, i32 %31
  %34 = or i32 %33, %28
  store i32 %34, ptr %2, align 4
  %35 = call fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_skcipher_queue_req(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.mv_cesa_skcipher_dma_iter, align 4
  %4 = getelementptr %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %0, align 64
  %12 = add i32 %10, -1
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %222

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = zext i32 %11 to i64
  %19 = tail call i32 @sg_nents_for_len(ptr noundef %17, i64 noundef %18) #9
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 3, i32 4, i32 1
  store i32 %19, ptr %20, align 4
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load ptr, ptr @cesa_dev, align 4
  %24 = getelementptr inbounds %struct.mv_cesa_dev, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str) #10
  %26 = load i32, ptr %20, align 4
  br label %160

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %0, align 64
  %31 = zext i32 %30 to i64
  %32 = tail call i32 @sg_nents_for_len(ptr noundef %29, i64 noundef %31) #9
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 3, i32 4, i32 2
  store i32 %32, ptr %33, align 4
  %34 = icmp slt i32 %32, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load ptr, ptr @cesa_dev, align 4
  %37 = getelementptr inbounds %struct.mv_cesa_dev, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.1) #10
  %39 = load i32, ptr %33, align 4
  br label %160

40:                                               ; preds = %27
  %41 = load i32, ptr %1, align 4
  %42 = and i32 %41, -4
  %43 = or i32 %42, 1
  store i32 %43, ptr %1, align 4
  %44 = load ptr, ptr @cesa_dev, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mv_cesa_caps, ptr %45, i32 0, i32 1
  %47 = load i8, ptr %46, align 4, !range !10
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %155, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 512
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 2592, i32 3264
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #9, !annotation !8
  %55 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 2
  store ptr null, ptr %56, align 4
  %57 = load ptr, ptr %16, align 8
  %58 = load ptr, ptr %28, align 4
  %59 = icmp eq ptr %57, %58
  %60 = getelementptr inbounds %struct.mv_cesa_dev, ptr %44, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %20, align 4
  br i1 %59, label %74, label %63

63:                                               ; preds = %49
  %64 = tail call i32 @dma_map_sg_attrs(ptr noundef %61, ptr noundef %57, i32 noundef %62, i32 noundef 1, i32 noundef 0) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %153, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @cesa_dev, align 4
  %68 = getelementptr inbounds %struct.mv_cesa_dev, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %28, align 4
  %71 = load i32, ptr %33, align 4
  %72 = tail call i32 @dma_map_sg_attrs(ptr noundef %69, ptr noundef %70, i32 noundef %71, i32 noundef 2, i32 noundef 0) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %143, label %77

74:                                               ; preds = %49
  %75 = tail call i32 @dma_map_sg_attrs(ptr noundef %61, ptr noundef %57, i32 noundef %62, i32 noundef 0, i32 noundef 0) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %153, label %77

77:                                               ; preds = %74, %66
  store i64 0, ptr %55, align 4
  %78 = load i32, ptr %0, align 64
  store i32 %78, ptr %3, align 4
  %79 = load ptr, ptr @cesa_dev, align 4
  %80 = getelementptr inbounds %struct.mv_cesa_dev, ptr %79, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, -128
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 %78) #9
  %84 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %3, i32 0, i32 2
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %3, i32 0, i32 1
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 1
  %87 = load ptr, ptr %16, align 8
  %88 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 1, i32 3
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 1, i32 2
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 1, i32 1
  store ptr %87, ptr %90, align 4
  store i32 1, ptr %86, align 4
  %91 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 2
  %92 = load ptr, ptr %28, align 4
  %93 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 2, i32 2
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.mv_cesa_skcipher_dma_iter, ptr %3, i32 0, i32 2, i32 1
  store ptr %92, ptr %95, align 4
  store i32 2, ptr %91, align 4
  br label %96

96:                                               ; preds = %113, %77
  %97 = phi i1 [ false, %77 ], [ true, %113 ]
  %98 = call ptr @mv_cesa_dma_add_op(ptr noundef %55, ptr noundef %1, i1 noundef zeroext %97, i32 noundef %54) #9
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = ptrtoint ptr %98 to i32
  br label %133

102:                                              ; preds = %96
  %103 = load i32, ptr %84, align 4
  %104 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %98, i32 0, i32 2
  store i32 %103, ptr %104, align 4
  %105 = call i32 @mv_cesa_dma_add_op_transfers(ptr noundef %55, ptr noundef nonnull %3, ptr noundef %86, i32 noundef %54) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %102
  %108 = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %55, i32 noundef %54) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %107
  %111 = call i32 @mv_cesa_dma_add_op_transfers(ptr noundef %55, ptr noundef nonnull %3, ptr noundef %91, i32 noundef %54) #9
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  store i32 0, ptr %88, align 4
  store i32 0, ptr %93, align 4
  %114 = load i32, ptr %84, align 4
  %115 = load i32, ptr %85, align 4
  %116 = add i32 %115, %114
  store i32 %116, ptr %85, align 4
  %117 = load i32, ptr %3, align 4
  %118 = sub i32 %117, %116
  %119 = load ptr, ptr @cesa_dev, align 4
  %120 = getelementptr inbounds %struct.mv_cesa_dev, ptr %119, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, -128
  %123 = call i32 @llvm.umin.i32(i32 %118, i32 %122) #9
  store i32 %123, ptr %84, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %96

125:                                              ; preds = %113
  %126 = call i32 @mv_cesa_dma_add_result_op(ptr noundef %55, i32 noundef 0, i32 noundef 128, i32 noundef 1073741824, i32 noundef %54) #9
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load ptr, ptr %56, align 4
  %130 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %129, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = or i32 %131, 536870912
  store i32 %132, ptr %130, align 4
  br label %153

133:                                              ; preds = %125, %110, %107, %102, %100
  %134 = phi i32 [ %126, %125 ], [ %101, %100 ], [ %105, %102 ], [ %108, %107 ], [ %111, %110 ]
  call void @mv_cesa_dma_cleanup(ptr noundef %4) #9
  %135 = load ptr, ptr %28, align 4
  %136 = load ptr, ptr %16, align 8
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr @cesa_dev, align 4
  %140 = getelementptr inbounds %struct.mv_cesa_dev, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = load i32, ptr %33, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %141, ptr noundef %135, i32 noundef %142, i32 noundef 2, i32 noundef 0) #9
  br label %143

143:                                              ; preds = %138, %133, %66
  %144 = phi i32 [ %134, %138 ], [ %134, %133 ], [ -12, %66 ]
  %145 = load ptr, ptr @cesa_dev, align 4
  %146 = getelementptr inbounds %struct.mv_cesa_dev, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %16, align 8
  %149 = load i32, ptr %20, align 4
  %150 = load ptr, ptr %28, align 4
  %151 = icmp ne ptr %150, %148
  %152 = zext i1 %151 to i32
  call void @dma_unmap_sg_attrs(ptr noundef %147, ptr noundef %148, i32 noundef %149, i32 noundef %152, i32 noundef 0) #9
  br label %153

153:                                              ; preds = %143, %128, %74, %63
  %154 = phi i32 [ %144, %143 ], [ 0, %128 ], [ -12, %63 ], [ -12, %74 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  br label %160

155:                                              ; preds = %40
  %156 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %156, ptr noundef align 4 dereferenceable(128) %1, i32 128, i1 false) #9
  %157 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 3, i32 4, i32 0, i32 1
  store i8 0, ptr %157, align 4
  %158 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  store ptr null, ptr %158, align 4
  %159 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 2
  store ptr null, ptr %159, align 4
  br label %165

160:                                              ; preds = %153, %35, %22
  %161 = phi i32 [ %26, %22 ], [ %39, %35 ], [ %154, %153 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %222

163:                                              ; preds = %160
  %164 = load ptr, ptr @cesa_dev, align 4
  br label %165

165:                                              ; preds = %163, %155
  %166 = phi ptr [ %164, %163 ], [ %44, %155 ]
  %167 = load i32, ptr %0, align 64
  %168 = load ptr, ptr %166, align 4
  %169 = load i32, ptr %168, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.mv_cesa_dev, ptr %166, i32 0, i32 5
  %173 = load ptr, ptr %172, align 4
  br label %174

174:                                              ; preds = %174, %171
  %175 = phi ptr [ null, %171 ], [ %183, %174 ]
  %176 = phi i32 [ -1, %171 ], [ %182, %174 ]
  %177 = phi i32 [ 0, %171 ], [ %184, %174 ]
  %178 = getelementptr %struct.mv_cesa_engine, ptr %173, i32 %177, i32 12
  %179 = load volatile i32, ptr %178, align 4
  %180 = icmp ult i32 %179, %176
  %181 = getelementptr %struct.mv_cesa_engine, ptr %173, i32 %177
  %182 = call i32 @llvm.umin.i32(i32 %179, i32 %176) #9
  %183 = select i1 %180, ptr %181, ptr %175
  %184 = add nuw nsw i32 %177, 1
  %185 = icmp eq i32 %184, %169
  br i1 %185, label %186, label %174

186:                                              ; preds = %174, %165
  %187 = phi ptr [ null, %165 ], [ %183, %174 ]
  %188 = getelementptr inbounds %struct.mv_cesa_engine, ptr %187, i32 0, i32 12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %188) #9, !srcloc !11
  %189 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %188, ptr %188, i32 %167, ptr elementtype(i32) %188) #9, !srcloc !12
  %190 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  store ptr %187, ptr %4, align 4
  %191 = getelementptr %struct.skcipher_request, ptr %0, i32 1, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %186
  call void @mv_cesa_dma_prepare(ptr noundef %4, ptr noundef %187) #9
  br label %198

195:                                              ; preds = %186
  %196 = getelementptr %struct.skcipher_request, ptr %0, i32 3, i32 4
  store i32 0, ptr %196, align 4
  %197 = getelementptr %struct.skcipher_request, ptr %0, i32 3, i32 3
  store i32 0, ptr %197, align 4
  br label %198

198:                                              ; preds = %195, %194
  %199 = call i32 @mv_cesa_queue_req(ptr noundef %190, ptr noundef %4) #9
  switch i32 %199, label %200 [
    i32 -16, label %222
    i32 -115, label %222
  ]

200:                                              ; preds = %198
  %201 = load ptr, ptr %191, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %222, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %16, align 8
  %207 = icmp eq ptr %205, %206
  %208 = load ptr, ptr @cesa_dev, align 4
  %209 = getelementptr inbounds %struct.mv_cesa_dev, ptr %208, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  br i1 %207, label %219, label %211

211:                                              ; preds = %203
  %212 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 3, i32 4, i32 2
  %213 = load i32, ptr %212, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %210, ptr noundef %205, i32 noundef %213, i32 noundef 2, i32 noundef 0) #9
  %214 = load ptr, ptr @cesa_dev, align 4
  %215 = getelementptr inbounds %struct.mv_cesa_dev, ptr %214, i32 0, i32 2
  %216 = load ptr, ptr %215, align 4
  %217 = load ptr, ptr %16, align 8
  %218 = load i32, ptr %20, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %216, ptr noundef %217, i32 noundef %218, i32 noundef 1, i32 noundef 0) #9
  br label %221

219:                                              ; preds = %203
  %220 = load i32, ptr %20, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %210, ptr noundef %205, i32 noundef %220, i32 noundef 0, i32 noundef 0) #9
  br label %221

221:                                              ; preds = %219, %211
  call void @mv_cesa_dma_cleanup(ptr noundef %4) #9
  br label %222

222:                                              ; preds = %221, %200, %198, %198, %160, %2
  %223 = phi i32 [ %161, %160 ], [ %199, %198 ], [ %199, %200 ], [ %199, %221 ], [ -22, %2 ], [ %199, %198 ]
  ret i32 %223
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_queue_req(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_cesa_dma_add_op(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_op_transfers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_dummy_launch(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_result_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_prepare(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_skcipher_process(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 48
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 204
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 192
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 188
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @mv_cesa_sg_copy(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 128, i32 noundef %15, i32 noundef %17, i1 noundef zeroext false) #9
  %19 = load i32, ptr %16, align 4
  %20 = add i32 %19, %18
  store i32 %20, ptr %16, align 4
  %21 = load i32, ptr %8, align 64
  %22 = icmp ult i32 %20, %21
  %23 = select i1 %22, i32 -115, i32 0
  br label %31

24:                                               ; preds = %2
  %25 = and i32 %1, 128
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %1, 1024
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 -22
  %30 = select i1 %26, i32 -115, i32 %29
  br label %31

31:                                               ; preds = %24, %6
  %32 = phi i32 [ %23, %6 ], [ %30, %24 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_step(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 48
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @mv_cesa_dma_step(ptr noundef %2) #9
  br label %93

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = getelementptr i8, ptr %0, i32 60
  %10 = load ptr, ptr %2, align 4
  %11 = load i32, ptr %8, align 64
  %12 = getelementptr i8, ptr %0, i32 188
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = load ptr, ptr @cesa_dev, align 4
  %16 = getelementptr inbounds %struct.mv_cesa_dev, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -128
  %19 = tail call i32 @llvm.umin.i32(i32 %14, i32 %18) #9
  %20 = getelementptr inbounds %struct.mv_cesa_engine, ptr %10, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2047
  %23 = add nuw nsw i32 %22, 128
  %24 = mul nuw nsw i32 %23, 65537
  %25 = getelementptr i8, ptr %0, i32 64
  store i32 %24, ptr %25, align 4
  %26 = add nuw nsw i32 %22, 32
  %27 = getelementptr i8, ptr %0, i32 72
  store i32 %26, ptr %27, align 4
  %28 = add nuw nsw i32 %22, 64
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %29, %28
  %31 = getelementptr i8, ptr %0, i32 76
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %0, i32 80
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -65536
  %35 = or i32 %34, %23
  store i32 %35, ptr %32, align 4
  %36 = getelementptr i8, ptr %0, i32 84
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -65536
  %39 = add nuw nsw i32 %22, 96
  %40 = or i32 %38, %39
  store i32 %40, ptr %36, align 4
  %41 = or i32 %29, %26
  %42 = getelementptr i8, ptr %0, i32 88
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mv_cesa_engine, ptr %10, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.mv_cesa_engine, ptr %10, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  br i1 %45, label %49, label %48

48:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(128) %47, ptr noundef align 4 dereferenceable(128) %9, i32 128, i1 false) #9
  br label %50

49:                                               ; preds = %7
  tail call void @mmiocpy(ptr noundef %47, ptr noundef %9, i32 noundef 128) #9
  br label %50

50:                                               ; preds = %49, %48
  %51 = getelementptr i8, ptr %0, i32 -8
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr i8, ptr %0, i32 200
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %12, align 4
  %56 = tail call i32 @mv_cesa_sg_copy(ptr noundef %10, ptr noundef %52, i32 noundef %54, i32 noundef 128, i32 noundef %19, i32 noundef %55, i1 noundef zeroext true) #9
  %57 = getelementptr i8, ptr %0, i32 192
  store i32 %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %0, i32 68
  store i32 %56, ptr %58, align 4
  %59 = getelementptr i8, ptr %0, i32 196
  %60 = load i8, ptr %59, align 4, !range !10
  %61 = icmp eq i8 %60, 0
  %62 = load ptr, ptr %43, align 4
  %63 = icmp eq ptr %62, null
  %64 = load ptr, ptr %46, align 4
  br i1 %61, label %65, label %69

65:                                               ; preds = %50
  br i1 %63, label %67, label %66

66:                                               ; preds = %65
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(128) %64, ptr noundef align 4 dereferenceable(128) %9, i32 128, i1 false) #9
  br label %68

67:                                               ; preds = %65
  tail call void @mmiocpy(ptr noundef %64, ptr noundef %9, i32 noundef 128) #9
  br label %68

68:                                               ; preds = %67, %66
  store i8 1, ptr %59, align 4
  br label %72

69:                                               ; preds = %50
  br i1 %63, label %71, label %70

70:                                               ; preds = %69
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %64, ptr noundef align 4 dereferenceable(32) %9, i32 32, i1 false) #9
  br label %72

71:                                               ; preds = %69
  tail call void @mmiocpy(ptr noundef %64, ptr noundef %9, i32 noundef 32) #9
  br label %72

72:                                               ; preds = %71, %70, %68
  %73 = getelementptr inbounds %struct.mv_cesa_engine, ptr %10, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mv_cesa_engine, ptr %10, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 56868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 32) #9, !srcloc !13
  store i32 32, ptr %73, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = getelementptr inbounds %struct.mv_cesa_engine, ptr %10, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 8192) #9, !srcloc !13
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr i8, ptr %84, i32 56832
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89, !prof !16

89:                                               ; preds = %80
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef null) #9
  br label %90

90:                                               ; preds = %89, %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %91 = load ptr, ptr %81, align 4
  %92 = getelementptr i8, ptr %91, i32 56832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 1) #9, !srcloc !13
  br label %93

93:                                               ; preds = %90, %6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_req_cleanup(ptr noundef %0) #7 {
  %2 = getelementptr i8, ptr %0, i32 48
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %8, %10
  %12 = load ptr, ptr @cesa_dev, align 4
  %13 = getelementptr inbounds %struct.mv_cesa_dev, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br i1 %11, label %24, label %15

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %0, i32 204
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %8, i32 noundef %17, i32 noundef 2, i32 noundef 0) #9
  %18 = load ptr, ptr @cesa_dev, align 4
  %19 = getelementptr inbounds %struct.mv_cesa_dev, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr i8, ptr %0, i32 200
  %23 = load i32, ptr %22, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %20, ptr noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #9
  br label %27

24:                                               ; preds = %6
  %25 = getelementptr i8, ptr %0, i32 200
  %26 = load i32, ptr %25, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %8, i32 noundef %26, i32 noundef 0, i32 noundef 0) #9
  br label %27

27:                                               ; preds = %24, %15
  tail call void @mv_cesa_dma_cleanup(ptr noundef %2) #9
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_skcipher_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 64
  %6 = getelementptr inbounds %struct.mv_cesa_engine, ptr %4, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %5, ptr elementtype(i32) %6) #9, !srcloc !18
  %8 = getelementptr i8, ptr %0, i32 16
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr i8, ptr %9, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -36
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 52
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %0, i32 -12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 56
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mv_cesa_op_ctx, ptr %23, i32 0, i32 1, i32 0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 4 %24, i32 %13, i1 false)
  br label %36

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.mv_cesa_engine, ptr %4, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr i8, ptr %0, i32 -12
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mv_cesa_engine, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 64
  br i1 %28, label %35, label %34

34:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %33, i32 %13, i1 false)
  br label %36

35:                                               ; preds = %25
  tail call void @mmiocpy(ptr noundef %30, ptr noundef %33, i32 noundef %13) #9
  br label %36

36:                                               ; preds = %35, %34, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_sg_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_step(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2148932980}
!10 = !{i8 0, i8 2}
!11 = !{i64 296762, i64 2147798328, i64 2147798354, i64 2147798401, i64 2147798423, i64 2147798451, i64 2147798471}
!12 = !{i64 2147872029, i64 2147872055, i64 2147872084, i64 2147872118, i64 2147872149, i64 2147872172}
!13 = !{i64 5119367}
!14 = !{i64 5119785}
!15 = !{i64 2152846985}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2152847677}
!18 = !{i64 2147874386, i64 2147874412, i64 2147874441, i64 2147874475, i64 2147874506, i64 2147874529}
