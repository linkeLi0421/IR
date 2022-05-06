; ModuleID = '/llk/IR/drivers/crypto/marvell/cesa/hash.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/hash.c"
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
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.mv_cesa_req_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.md5_state = type { [4 x i32], [16 x i32], i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.sha1_state = type { [5 x i32], i64, [64 x i8] }
%struct.sha256_state = type { [8 x i32], i64, [64 x i8] }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.mv_cesa_ahash_dma_iter = type { %struct.mv_cesa_dma_iter, %struct.mv_cesa_sg_dma_iter }
%struct.mv_cesa_dma_iter = type { i32, i32, i32 }
%struct.mv_cesa_sg_dma_iter = type { i32, ptr, i32, i32 }
%struct.mv_cesa_dev = type { ptr, ptr, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv_cesa_caps = type { i32, i8, ptr, i32, ptr, i32 }
%struct.mv_cesa_dev_dma = type { ptr, ptr, ptr, ptr }
%struct.mv_cesa_sec_accel_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mv_cesa_tdma_desc = type { i32, %union.anon.69, %union.anon.70, i32, i32, ptr, %union.anon.71, i32 }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { ptr }
%struct.mv_cesa_engine = type { i32, ptr, %union.anon.68, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon.68 = type { ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }
%struct.mv_cesa_ahash_req = type { %struct.mv_cesa_req, %union.anon.73, %struct.mv_cesa_op_ctx, [64 x i8], i32, i64, i32, i8, i8, [8 x i32] }
%struct.mv_cesa_req = type { ptr, %struct.mv_cesa_tdma_chain }
%union.anon.73 = type { %struct.mv_cesa_ahash_dma_req }
%struct.mv_cesa_ahash_dma_req = type { ptr, i32, ptr, i32 }
%struct.mv_cesa_op_ctx = type { %struct.mv_cesa_sec_accel_desc, %union.anon.72 }
%union.anon.72 = type { %struct.mv_cesa_hash_op_ctx }
%struct.mv_cesa_hash_op_ctx = type { [16 x i32], [8 x i32] }
%struct.mv_cesa_ahash_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__this_module = external dso_local global %struct.module, align 64
@mv_md5_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_md5_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_md5_digest, ptr @mv_cesa_md5_export, ptr @mv_cesa_md5_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahash_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, align 64
@mv_sha1_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_sha1_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_sha1_digest, ptr @mv_cesa_sha1_export, ptr @mv_cesa_sha1_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahash_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, align 64
@mv_sha256_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_sha256_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_sha256_digest, ptr @mv_cesa_sha256_export, ptr @mv_cesa_sha256_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 4, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahash_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, align 64
@mv_ahmac_md5_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_ahmac_md5_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_ahmac_md5_digest, ptr @mv_cesa_md5_export, ptr @mv_cesa_md5_import, ptr @mv_cesa_ahmac_md5_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 88, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 68, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-hmac-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahmac_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, align 64
@mv_ahmac_sha1_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_ahmac_sha1_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_ahmac_sha1_digest, ptr @mv_cesa_sha1_export, ptr @mv_cesa_sha1_import, ptr @mv_cesa_ahmac_sha1_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 96, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 68, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-hmac-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahmac_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, align 64
@mv_ahmac_sha256_alg = dso_local local_unnamed_addr global %struct.ahash_alg { ptr @mv_cesa_ahmac_sha256_init, ptr @mv_cesa_ahash_update, ptr @mv_cesa_ahash_final, ptr @mv_cesa_ahash_finup, ptr @mv_cesa_ahmac_sha256_digest, ptr @mv_cesa_sha256_export, ptr @mv_cesa_sha256_import, ptr @mv_cesa_ahmac_sha256_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 104, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 64, i32 68, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"mv-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @mv_cesa_ahmac_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, align 64
@cesa_dev = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid number of src SG\00", align 1
@mv_cesa_ahash_req_ops = internal constant %struct.mv_cesa_req_ops { ptr @mv_cesa_ahash_process, ptr @mv_cesa_ahash_step, ptr @mv_cesa_ahash_req_cleanup, ptr @mv_cesa_ahash_complete }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"drivers/crypto/marvell/cesa/hash.c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mv-md5\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mv-sha1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"mv-sha256\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_md5_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %2, i8 0, i32 272, i1 false) #13
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741888, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %4, i8 0, i64 124, i1 false)
  store i8 1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  store i32 1732584193, ptr %6, align 8
  %7 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 12
  store i32 -271733879, ptr %7, align 4
  %8 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 16
  store i32 -1732584194, ptr %8, align 8
  %9 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 20
  store i32 271733878, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahash_update(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %4
  store i64 %7, ptr %5, align 8
  %8 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahash_final(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 65535
  %8 = shl i32 %4, 16
  %9 = or i32 %7, %8
  store i32 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  store i32 0, ptr %11, align 8
  %12 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahash_finup(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %4
  store i64 %7, ptr %5, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65535
  %12 = shl i32 %8, 16
  %13 = or i32 %11, %12
  store i32 %13, ptr %9, align 4
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %14, align 4
  %15 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0)
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_md5_digest(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %2, i8 0, i32 272, i1 false) #13
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741888, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %4, i8 0, i64 124, i1 false) #13
  store i8 1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  store i32 1732584193, ptr %6, align 8
  %7 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 12
  store i32 -271733879, ptr %7, align 4
  %8 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 16
  store i32 -1732584194, ptr %8, align 8
  %9 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 20
  store i32 271733878, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %15 = shl i32 %11, 16
  store i32 %15, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %16, align 4
  %17 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0) #13
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_md5_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 2
  %4 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %3, align 8
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 8 %15, i32 %10, i1 false) #13
  tail call void @llvm.memset.p0.i32(ptr align 1 %4, i8 0, i32 %12, i1 false) #13
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 4 %16, i32 %18, i1 false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_md5_import(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.md5_state, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load i32, ptr %10, align 64
  %12 = load i32, ptr %7, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %7, i32 -64
  %17 = load ptr, ptr %16, align 64
  %18 = tail call i32 %17(ptr noundef %0) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %4, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, -1073741824
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %4, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %32, ptr align 1 %1, i32 %11, i1 false) #13
  %33 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 0, ptr %33, align 4
  %34 = icmp ult i64 %4, 4294967296
  br i1 %34, label %35, label %38, !prof !8

35:                                               ; preds = %30
  %36 = trunc i64 %4 to i32
  %37 = urem i32 %36, %23
  br label %43

38:                                               ; preds = %30
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %4) #14, !srcloc !9
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %37, %35 ], [ %42, %38 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %47, ptr align 1 %5, i32 %44, i1 false) #13
  store i32 %44, ptr %33, align 4
  br label %48

48:                                               ; preds = %46, %43, %15, %2
  %49 = phi i32 [ 0, %46 ], [ %18, %15 ], [ 0, %43 ], [ -126, %2 ]
  ret i32 %49
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_cesa_ahash_cra_init(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store ptr @mv_cesa_ahash_req_ops, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -32
  store i32 272, ptr %3, align 32
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha1_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %2, i8 0, i32 272, i1 false) #13
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741904, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %4, i8 0, i64 124, i1 false)
  store i32 1732584193, ptr %6, align 8
  %7 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 12
  store i32 -271733879, ptr %7, align 4
  %8 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 16
  store i32 -1732584194, ptr %8, align 8
  %9 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 20
  store i32 271733878, ptr %9, align 4
  %10 = getelementptr %struct.ahash_request, ptr %0, i32 5
  store i32 -1009589776, ptr %10, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha1_digest(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %2, i8 0, i32 272, i1 false) #13
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741904, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %4, i8 0, i64 124, i1 false) #13
  store i32 1732584193, ptr %5, align 8
  %6 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 12
  store i32 -271733879, ptr %6, align 4
  %7 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 16
  store i32 -1732584194, ptr %7, align 8
  %8 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 20
  store i32 271733878, ptr %8, align 4
  %9 = getelementptr %struct.ahash_request, ptr %0, i32 5
  store i32 -1009589776, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %15 = shl i32 %11, 16
  store i32 %15, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %16, align 4
  %17 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0) #13
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha1_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %3, align 8
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 8 %15, i32 %10, i1 false) #13
  tail call void @llvm.memset.p0.i32(ptr align 1 %4, i8 0, i32 %12, i1 false) #13
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 4 %16, i32 %18, i1 false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha1_import(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sha1_state, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load i32, ptr %10, align 64
  %12 = load i32, ptr %7, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %7, i32 -64
  %17 = load ptr, ptr %16, align 64
  %18 = tail call i32 %17(ptr noundef %0) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %4, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, -1073741824
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %4, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %32, ptr align 1 %1, i32 %11, i1 false) #13
  %33 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 0, ptr %33, align 4
  %34 = icmp ult i64 %4, 4294967296
  br i1 %34, label %35, label %38, !prof !8

35:                                               ; preds = %30
  %36 = trunc i64 %4 to i32
  %37 = urem i32 %36, %23
  br label %43

38:                                               ; preds = %30
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %4) #14, !srcloc !9
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %37, %35 ], [ %42, %38 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %47, ptr align 1 %5, i32 %44, i1 false) #13
  store i32 %44, ptr %33, align 4
  br label %48

48:                                               ; preds = %46, %43, %15, %2
  %49 = phi i32 [ 0, %46 ], [ %18, %15 ], [ 0, %43 ], [ -126, %2 ]
  ret i32 %49
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha256_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %2, i8 0, i32 240, i1 false) #13
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741840, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %4, i8 0, i64 124, i1 false)
  store i32 1779033703, ptr %6, align 8
  %7 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 12
  store i32 -1150833019, ptr %7, align 4
  %8 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 16
  store i32 1013904242, ptr %8, align 8
  %9 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 20
  store i32 -1521486534, ptr %9, align 4
  %10 = getelementptr %struct.ahash_request, ptr %0, i32 5
  store i32 1359893119, ptr %10, align 8
  %11 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 0, i32 1
  store i32 -1694144372, ptr %11, align 4
  %12 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 1
  store i32 528734635, ptr %12, align 8
  %13 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 2
  store i32 1541459225, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha256_digest(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %2, i8 0, i32 240, i1 false) #13
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741840, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %5 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(124) %4, i8 0, i64 124, i1 false) #13
  store i32 1779033703, ptr %5, align 8
  %6 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 12
  store i32 -1150833019, ptr %6, align 4
  %7 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 16
  store i32 1013904242, ptr %7, align 8
  %8 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 20
  store i32 -1521486534, ptr %8, align 4
  %9 = getelementptr %struct.ahash_request, ptr %0, i32 5
  store i32 1359893119, ptr %9, align 8
  %10 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 0, i32 1
  store i32 -1694144372, ptr %10, align 4
  %11 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 1
  store i32 528734635, ptr %11, align 8
  %12 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 2
  store i32 1541459225, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %18 = shl i32 %14, 16
  store i32 %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %19, align 4
  %20 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0) #13
  ret i32 %20
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_sha256_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.sha256_state, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sha256_state, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -64
  %10 = load i32, ptr %9, align 64
  %11 = getelementptr inbounds %struct.crypto_alg, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %3, align 8
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 8 %15, i32 %10, i1 false) #13
  tail call void @llvm.memset.p0.i32(ptr align 1 %4, i8 0, i32 %12, i1 false) #13
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 4 %16, i32 %18, i1 false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_sha256_import(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.sha256_state, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sha256_state, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load i32, ptr %10, align 64
  %12 = load i32, ptr %7, align 64
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %7, i32 -64
  %17 = load ptr, ptr %16, align 64
  %18 = tail call i32 %17(ptr noundef %0) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %4, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, -1073741824
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %4, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %32, ptr align 1 %1, i32 %11, i1 false) #13
  %33 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  store i32 0, ptr %33, align 4
  %34 = icmp ult i64 %4, 4294967296
  br i1 %34, label %35, label %38, !prof !8

35:                                               ; preds = %30
  %36 = trunc i64 %4 to i32
  %37 = urem i32 %36, %23
  br label %43

38:                                               ; preds = %30
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %4) #14, !srcloc !9
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %37, %35 ], [ %42, %38 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %47, ptr align 1 %5, i32 %44, i1 false) #13
  store i32 %44, ptr %33, align 4
  br label %48

48:                                               ; preds = %46, %43, %15, %2
  %49 = phi i32 [ 0, %46 ], [ %18, %15 ], [ 0, %43 ], [ -126, %2 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahmac_md5_init(ptr nocapture noundef %0) #2 {
  %2 = alloca [68 x i8], align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2)
  store i32 0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %6, ptr noundef align 4 dereferenceable(64) %5, i32 64, i1 false)
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %7, i8 0, i32 272, i1 false) #13
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741920, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %10, ptr noundef nonnull align 4 dereferenceable(68) %2, i32 68, i1 false)
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false)
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  store i8 1, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_md5_digest(ptr noundef %0) #1 {
  %2 = alloca [64 x i8], align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2)
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef align 4 dereferenceable(64) %5, i32 64, i1 false)
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %6, i8 0, i32 272, i1 false) #13
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741920, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 64, i1 false)
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %10, i8 0, i32 32, i1 false) #13
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  store i8 1, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2)
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %17 = shl i32 %13, 16
  store i32 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %18, align 4
  %19 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0) #13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_md5_setkey(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.md5_state, align 8
  %5 = alloca %struct.md5_state, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false), !annotation !10
  %6 = call fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 3
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 4
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %5, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 4
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 8
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 12
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mv_cesa_ahmac_cra_init(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  store ptr @mv_cesa_ahash_req_ops, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -32
  store i32 272, ptr %3, align 32
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha1_init(ptr nocapture noundef %0) #2 {
  %2 = alloca [68 x i8], align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2)
  store i32 0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %6, ptr noundef align 4 dereferenceable(64) %5, i32 64, i1 false)
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %7, i8 0, i32 272, i1 false) #13
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741936, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %10, ptr noundef nonnull align 4 dereferenceable(68) %2, i32 68, i1 false)
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false)
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha1_digest(ptr noundef %0) #1 {
  %2 = alloca [64 x i8], align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2)
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef align 4 dereferenceable(64) %5, i32 64, i1 false)
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %6, i8 0, i32 272, i1 false) #13
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741936, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 64, i1 false)
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %10, i8 0, i32 32, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2)
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %16 = shl i32 %12, 16
  store i32 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %17, align 4
  %18 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha1_setkey(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.sha1_state, align 8
  %5 = alloca %struct.sha1_state, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i32 96, i1 false), !annotation !10
  %6 = call fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 3
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 4
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds [5 x i32], ptr %4, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 5
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %5, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 8
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 12
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds [5 x i32], ptr %5, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 16
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #13
  ret i32 %6
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha256_init(ptr nocapture noundef %0) #2 {
  %2 = alloca [68 x i8], align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2)
  store i32 0, ptr %2, align 4
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %6, ptr noundef align 4 dereferenceable(64) %5, i32 64, i1 false)
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %7, i8 0, i32 272, i1 false) #13
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741872, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %10, ptr noundef nonnull align 4 dereferenceable(68) %2, i32 68, i1 false)
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false)
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha256_digest(ptr noundef %0) #1 {
  %2 = alloca [64 x i8], align 4
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2)
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef align 4 dereferenceable(64) %5, i32 64, i1 false)
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(272) %6, i8 0, i32 272, i1 false) #13
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  store i32 1073741872, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %2, i32 64, i1 false)
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %10, i8 0, i32 32, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2)
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  store i64 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %16 = shl i32 %12, 16
  store i32 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  store i8 1, ptr %17, align 4
  %18 = tail call fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_ahmac_sha256_setkey(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.sha256_state, align 8
  %5 = alloca %struct.sha256_state, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i32 104, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i32 104, i1 false), !annotation !10
  %6 = call fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %71

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %19 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 3
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 4
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 5
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 6
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 7
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds [8 x i32], ptr %4, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %39 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 8
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %5, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 4
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 8
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %54 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 12
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %58 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 16
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %62 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 20
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 6
  %64 = load i32, ptr %63, align 8
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  %66 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 9, i32 24
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds [8 x i32], ptr %5, i32 0, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %70 = getelementptr %struct.crypto_ahash, ptr %0, i32 1, i32 10
  store i32 %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #13
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_ahash_queue_req(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.mv_cesa_ahash_dma_iter, align 4
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = zext i32 %7 to i64
  %9 = tail call i32 @sg_nents_for_len(ptr noundef %5, i64 noundef %8) #13
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5
  store i32 %9, ptr %10, align 8
  %11 = icmp slt i32 %9, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load ptr, ptr @cesa_dev, align 4
  %14 = getelementptr inbounds %struct.mv_cesa_dev, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #15
  %16 = load i32, ptr %10, align 8
  br label %384

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %6, align 8
  %21 = add i32 %20, %19
  %22 = icmp ult i32 %21, 64
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  %25 = load i8, ptr %24, align 4, !range !11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %445, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  %32 = getelementptr i8, ptr %31, i32 %19
  %33 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %30, i32 noundef %9, ptr noundef %32, i32 noundef %20, i32 noundef 0) #13
  %34 = load i32, ptr %6, align 8
  %35 = load i32, ptr %18, align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr %18, align 4
  br label %445

37:                                               ; preds = %23, %17
  %38 = load ptr, ptr @cesa_dev, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mv_cesa_caps, ptr %39, i32 0, i32 1
  %41 = load i8, ptr %40, align 4, !range !11
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %391, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 512
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 2592, i32 3264
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #13, !annotation !10
  %49 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store ptr null, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -1073741824
  %54 = icmp eq i32 %53, 1073741824
  %55 = icmp eq i32 %9, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.mv_cesa_dev, ptr %38, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = tail call i32 @dma_map_sg_attrs(ptr noundef %58, ptr noundef %59, i32 noundef %9, i32 noundef 1, i32 noundef 0) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %366, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr @cesa_dev, align 4
  %64 = load i32, ptr %6, align 8
  %65 = load i32, ptr %18, align 4
  %66 = add i32 %65, %64
  br label %67

67:                                               ; preds = %62, %43
  %68 = phi i32 [ %66, %62 ], [ %21, %43 ]
  %69 = phi i32 [ %65, %62 ], [ %19, %43 ]
  %70 = phi ptr [ %63, %62 ], [ %38, %43 ]
  store i64 0, ptr %49, align 4
  %71 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  %72 = load i8, ptr %71, align 4, !range !11
  %73 = icmp eq i8 %72, 0
  %74 = and i32 %68, -64
  %75 = select i1 %73, i32 %74, i32 %68
  store i32 %75, ptr %2, align 4
  %76 = getelementptr inbounds %struct.mv_cesa_dev, ptr %70, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, -128
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 %75) #13
  %80 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %2, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %2, i32 0, i32 1
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %2, i32 0, i32 1
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %2, i32 0, i32 1, i32 3
  %85 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %2, i32 0, i32 1, i32 2
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, ptr %2, i32 0, i32 1, i32 1
  store ptr %83, ptr %86, align 4
  store i32 1, ptr %82, align 4
  store i32 %69, ptr %84, align 4
  %87 = icmp eq i32 %69, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %67
  %89 = getelementptr inbounds %struct.mv_cesa_dev, ptr %70, i32 0, i32 6
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  %94 = tail call ptr @dma_pool_alloc(ptr noundef %92, i32 noundef %48, ptr noundef %93) #13
  %95 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %359, label %97

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  %99 = load i32, ptr %18, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %94, ptr align 4 %98, i32 %99, i1 false) #13
  %100 = load i32, ptr %93, align 4
  %101 = load i32, ptr %18, align 4
  %102 = tail call i32 @mv_cesa_dma_add_data_transfer(ptr noundef %49, i32 noundef 128, i32 noundef %100, i32 noundef %101, i32 noundef -2147483648, i32 noundef %48) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %359

104:                                              ; preds = %97, %67
  %105 = icmp eq ptr %83, null
  br i1 %105, label %146, label %106

106:                                              ; preds = %141, %104
  %107 = phi ptr [ %142, %141 ], [ null, %104 ]
  %108 = call i32 @mv_cesa_dma_add_op_transfers(ptr noundef %49, ptr noundef nonnull %2, ptr noundef %82, i32 noundef %48) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %359

110:                                              ; preds = %106
  %111 = load i32, ptr %80, align 4
  store i32 0, ptr %84, align 4
  %112 = load i32, ptr %81, align 4
  %113 = add i32 %112, %111
  store i32 %113, ptr %81, align 4
  %114 = load i32, ptr %2, align 4
  %115 = sub i32 %114, %113
  %116 = load ptr, ptr @cesa_dev, align 4
  %117 = getelementptr inbounds %struct.mv_cesa_dev, ptr %116, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, -128
  %120 = call i32 @llvm.umin.i32(i32 %115, i32 %119) #13
  store i32 %120, ptr %80, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %146, label %122

122:                                              ; preds = %110
  %123 = call ptr @mv_cesa_dma_add_op(ptr noundef %49, ptr noundef %51, i1 noundef zeroext false, i32 noundef %48) #13
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %123, i32 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 65535
  %129 = shl i32 %111, 16
  %130 = or i32 %128, %129
  store i32 %130, ptr %126, align 4
  %131 = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %49, i32 noundef %48) #13
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = inttoptr i32 %131 to ptr
  br label %141

135:                                              ; preds = %125
  %136 = load i32, ptr %51, align 4
  %137 = and i32 %136, -1073741824
  %138 = icmp eq i32 %137, 1073741824
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = or i32 %136, -1073741824
  store i32 %140, ptr %51, align 4
  br label %141

141:                                              ; preds = %139, %135, %133, %122
  %142 = phi ptr [ %134, %133 ], [ %123, %122 ], [ %123, %139 ], [ %123, %135 ]
  %143 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %106

144:                                              ; preds = %141
  %145 = ptrtoint ptr %142 to i32
  br label %359

146:                                              ; preds = %110, %104
  %147 = phi ptr [ null, %104 ], [ %107, %110 ]
  %148 = phi i32 [ %79, %104 ], [ %111, %110 ]
  %149 = load i8, ptr %71, align 4, !range !11
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %295, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %153 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %154 = load i64, ptr %153, align 8
  %155 = icmp ult i64 %154, 65536
  %156 = icmp ne i32 %148, 0
  %157 = and i1 %156, %155
  br i1 %157, label %158, label %196

158:                                              ; preds = %151
  %159 = call ptr @mv_cesa_dma_add_op(ptr noundef %49, ptr noundef %51, i1 noundef zeroext false, i32 noundef %48) #13
  %160 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  br i1 %160, label %177, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %159, i32 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 65535
  %165 = shl i32 %148, 16
  %166 = or i32 %164, %165
  store i32 %166, ptr %162, align 4
  %167 = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %49, i32 noundef %48) #13
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %161
  %170 = inttoptr i32 %167 to ptr
  br label %177

171:                                              ; preds = %161
  %172 = load i32, ptr %51, align 4
  %173 = and i32 %172, -1073741824
  %174 = icmp eq i32 %173, 1073741824
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = or i32 %172, -1073741824
  store i32 %176, ptr %51, align 4
  br label %177

177:                                              ; preds = %175, %171, %169, %158
  %178 = phi ptr [ %170, %169 ], [ %159, %158 ], [ %159, %175 ], [ %159, %171 ]
  %179 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %316, label %180

180:                                              ; preds = %177
  %181 = load i64, ptr %153, align 8
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %178, i32 0, i32 5
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 65535
  %186 = shl i32 %182, 16
  %187 = or i32 %185, %186
  store i32 %187, ptr %183, align 4
  %188 = load i32, ptr %178, align 4
  %189 = and i32 %188, -1073741824
  %190 = icmp eq i32 %189, 1073741824
  %191 = select i1 %190, i32 0, i32 -2147483648
  %192 = and i32 %188, 1073741823
  %193 = or i32 %191, %192
  store i32 %193, ptr %178, align 4
  %194 = call i32 @mv_cesa_dma_add_result_op(ptr noundef %49, i32 noundef 0, i32 noundef 128, i32 noundef 1073741824, i32 noundef %48) #13
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %316, label %319

196:                                              ; preds = %151
  %197 = load ptr, ptr %152, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load ptr, ptr @cesa_dev, align 4
  %201 = getelementptr inbounds %struct.mv_cesa_dev, ptr %200, i32 0, i32 6
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %202, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %206 = call ptr @dma_pool_alloc(ptr noundef %204, i32 noundef %48, ptr noundef %205) #13
  store ptr %206, ptr %152, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %319, label %208

208:                                              ; preds = %199, %196
  %209 = phi ptr [ %197, %196 ], [ %206, %199 ]
  store i8 -128, ptr %209, align 1
  %210 = load i64, ptr %153, align 8
  %211 = trunc i64 %210 to i32
  %212 = and i32 %211, 63
  %213 = icmp ult i32 %212, 56
  %214 = select i1 %213, i32 56, i32 120
  %215 = sub nsw i32 %214, %212
  %216 = getelementptr i8, ptr %209, i32 1
  %217 = add nsw i32 %215, -1
  call void @llvm.memset.p0.i32(ptr align 1 %216, i8 0, i32 %217, i1 false) #13
  %218 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  %219 = load i8, ptr %218, align 1, !range !11
  %220 = icmp eq i8 %219, 0
  %221 = load i64, ptr %153, align 8
  %222 = shl i64 %221, 3
  %223 = call i64 @llvm.bswap.i64(i64 %222) #13
  %224 = select i1 %220, i64 %223, i64 %222
  %225 = getelementptr i8, ptr %209, i32 %215
  store i64 %224, ptr %225, align 1
  %226 = add nsw i32 %215, 8
  %227 = load ptr, ptr @cesa_dev, align 4
  %228 = getelementptr inbounds %struct.mv_cesa_dev, ptr %227, i32 0, i32 3
  %229 = load i32, ptr %228, align 4
  %230 = sub i32 -128, %148
  %231 = add i32 %229, %230
  %232 = call i32 @llvm.umin.i32(i32 %231, i32 %226) #13
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %267, label %234

234:                                              ; preds = %208
  %235 = add i32 %148, 128
  %236 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %237 = load i32, ptr %236, align 4
  %238 = call i32 @mv_cesa_dma_add_data_transfer(ptr noundef %49, i32 noundef %235, i32 noundef %237, i32 noundef %232, i32 noundef -2147483648, i32 noundef %48) #13
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %234
  %241 = inttoptr i32 %238 to ptr
  br label %316

242:                                              ; preds = %234
  %243 = call ptr @mv_cesa_dma_add_op(ptr noundef %49, ptr noundef %51, i1 noundef zeroext false, i32 noundef %48) #13
  %244 = icmp ugt ptr %243, inttoptr (i32 -4096 to ptr)
  br i1 %244, label %262, label %245

245:                                              ; preds = %242
  %246 = add i32 %232, %148
  %247 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %243, i32 0, i32 6
  %248 = load i32, ptr %247, align 4
  %249 = and i32 %248, 65535
  %250 = shl i32 %246, 16
  %251 = or i32 %249, %250
  store i32 %251, ptr %247, align 4
  %252 = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %49, i32 noundef %48) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %245
  %255 = inttoptr i32 %252 to ptr
  br label %262

256:                                              ; preds = %245
  %257 = load i32, ptr %51, align 4
  %258 = and i32 %257, -1073741824
  %259 = icmp eq i32 %258, 1073741824
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = or i32 %257, -1073741824
  store i32 %261, ptr %51, align 4
  br label %262

262:                                              ; preds = %260, %256, %254, %242
  %263 = phi ptr [ %255, %254 ], [ %243, %242 ], [ %243, %260 ], [ %243, %256 ]
  %264 = icmp ule ptr %263, inttoptr (i32 -4096 to ptr)
  %265 = icmp ugt i32 %226, %231
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %267, label %316

267:                                              ; preds = %262, %208
  %268 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %269, %232
  %271 = sub nsw i32 %226, %232
  %272 = call i32 @mv_cesa_dma_add_data_transfer(ptr noundef %49, i32 noundef 128, i32 noundef %270, i32 noundef %271, i32 noundef -2147483648, i32 noundef %48) #13
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %267
  %275 = inttoptr i32 %272 to ptr
  br label %316

276:                                              ; preds = %267
  %277 = call ptr @mv_cesa_dma_add_op(ptr noundef %49, ptr noundef %51, i1 noundef zeroext false, i32 noundef %48) #13
  %278 = icmp ugt ptr %277, inttoptr (i32 -4096 to ptr)
  br i1 %278, label %316, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %277, i32 0, i32 6
  %281 = load i32, ptr %280, align 4
  %282 = and i32 %281, 65535
  %283 = shl nsw i32 %271, 16
  %284 = or i32 %282, %283
  store i32 %284, ptr %280, align 4
  %285 = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %49, i32 noundef %48) #13
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %279
  %288 = inttoptr i32 %285 to ptr
  br label %316

289:                                              ; preds = %279
  %290 = load i32, ptr %51, align 4
  %291 = and i32 %290, -1073741824
  %292 = icmp eq i32 %291, 1073741824
  br i1 %292, label %293, label %316

293:                                              ; preds = %289
  %294 = or i32 %290, -1073741824
  store i32 %294, ptr %51, align 4
  br label %316

295:                                              ; preds = %146
  %296 = icmp eq i32 %148, 0
  br i1 %296, label %316, label %297

297:                                              ; preds = %295
  %298 = call ptr @mv_cesa_dma_add_op(ptr noundef %49, ptr noundef %51, i1 noundef zeroext false, i32 noundef %48) #13
  %299 = icmp ugt ptr %298, inttoptr (i32 -4096 to ptr)
  br i1 %299, label %316, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %298, i32 0, i32 6
  %302 = load i32, ptr %301, align 4
  %303 = and i32 %302, 65535
  %304 = shl i32 %148, 16
  %305 = or i32 %303, %304
  store i32 %305, ptr %301, align 4
  %306 = call i32 @mv_cesa_dma_add_dummy_launch(ptr noundef %49, i32 noundef %48) #13
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %300
  %309 = inttoptr i32 %306 to ptr
  br label %316

310:                                              ; preds = %300
  %311 = load i32, ptr %51, align 4
  %312 = and i32 %311, -1073741824
  %313 = icmp eq i32 %312, 1073741824
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  %315 = or i32 %311, -1073741824
  store i32 %315, ptr %51, align 4
  br label %316

316:                                              ; preds = %314, %310, %308, %297, %295, %293, %289, %287, %276, %274, %262, %240, %180, %177
  %317 = phi ptr [ %147, %295 ], [ %241, %240 ], [ %275, %274 ], [ %178, %177 ], [ %263, %262 ], [ %288, %287 ], [ %277, %276 ], [ %277, %293 ], [ %277, %289 ], [ %309, %308 ], [ %298, %297 ], [ %298, %314 ], [ %298, %310 ], [ %178, %180 ]
  %318 = icmp ugt ptr %317, inttoptr (i32 -4096 to ptr)
  br i1 %318, label %319, label %322

319:                                              ; preds = %316, %199, %180
  %320 = phi ptr [ %317, %316 ], [ inttoptr (i32 -12 to ptr), %180 ], [ inttoptr (i32 -12 to ptr), %199 ]
  %321 = ptrtoint ptr %320 to i32
  br label %359

322:                                              ; preds = %316
  %323 = load ptr, ptr %50, align 4
  %324 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %323, i32 0, i32 7
  %325 = load i32, ptr %324, align 4
  %326 = and i32 %325, 134217727
  %327 = icmp ne ptr %317, null
  %328 = icmp ne i32 %326, 3
  %329 = select i1 %327, i1 %328, i1 false
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = call i32 @mv_cesa_dma_add_dummy_end(ptr noundef %49, i32 noundef %48) #13
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %359

333:                                              ; preds = %330, %322
  %334 = load i8, ptr %71, align 4, !range !11
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %333
  %337 = load i32, ptr %6, align 8
  %338 = load i32, ptr %18, align 4
  %339 = add i32 %338, %337
  %340 = load i32, ptr %2, align 4
  %341 = sub i32 %339, %340
  br label %342

342:                                              ; preds = %336, %333
  %343 = phi i32 [ %341, %336 ], [ 0, %333 ]
  store i32 %343, ptr %18, align 4
  %344 = load ptr, ptr %50, align 4
  %345 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %344, i32 0, i32 7
  %346 = load i32, ptr %345, align 4
  %347 = or i32 %346, 536870912
  store i32 %347, ptr %345, align 4
  br i1 %328, label %348, label %353

348:                                              ; preds = %342
  %349 = load ptr, ptr %50, align 4
  %350 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %349, i32 0, i32 7
  %351 = load i32, ptr %350, align 4
  %352 = or i32 %351, 268435456
  store i32 %352, ptr %350, align 4
  br label %353

353:                                              ; preds = %348, %342
  br i1 %54, label %382, label %354

354:                                              ; preds = %353
  %355 = load ptr, ptr %49, align 4
  %356 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %355, i32 0, i32 7
  %357 = load i32, ptr %356, align 4
  %358 = or i32 %357, 134217728
  store i32 %358, ptr %356, align 4
  br label %382

359:                                              ; preds = %330, %319, %144, %106, %97, %88
  %360 = phi i32 [ %102, %97 ], [ %145, %144 ], [ %321, %319 ], [ %331, %330 ], [ -12, %88 ], [ %108, %106 ]
  call void @mv_cesa_dma_cleanup(ptr noundef %3) #13
  %361 = load ptr, ptr @cesa_dev, align 4
  %362 = getelementptr inbounds %struct.mv_cesa_dev, ptr %361, i32 0, i32 2
  %363 = load ptr, ptr %362, align 4
  %364 = load ptr, ptr %4, align 4
  %365 = load i32, ptr %10, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %363, ptr noundef %364, i32 noundef %365, i32 noundef 1, i32 noundef 0) #13
  br label %366

366:                                              ; preds = %359, %56
  %367 = phi i32 [ %360, %359 ], [ -12, %56 ]
  %368 = load ptr, ptr %49, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %382, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %382, label %374

374:                                              ; preds = %370
  %375 = load ptr, ptr @cesa_dev, align 4
  %376 = getelementptr inbounds %struct.mv_cesa_dev, ptr %375, i32 0, i32 6
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %377, i32 0, i32 3
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %381 = load i32, ptr %380, align 4
  call void @dma_pool_free(ptr noundef %379, ptr noundef nonnull %372, i32 noundef %381) #13
  store ptr null, ptr %371, align 4
  br label %382

382:                                              ; preds = %374, %370, %366, %354, %353
  %383 = phi i32 [ 0, %354 ], [ 0, %353 ], [ %367, %366 ], [ %367, %370 ], [ %367, %374 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #13
  br label %384

384:                                              ; preds = %382, %12
  %385 = phi i32 [ %16, %12 ], [ %383, %382 ]
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %445

387:                                              ; preds = %384
  %388 = load i32, ptr %6, align 8
  %389 = load ptr, ptr @cesa_dev, align 4
  %390 = load ptr, ptr %389, align 4
  br label %391

391:                                              ; preds = %387, %37
  %392 = phi ptr [ %390, %387 ], [ %39, %37 ]
  %393 = phi ptr [ %389, %387 ], [ %38, %37 ]
  %394 = phi i32 [ %388, %387 ], [ %20, %37 ]
  %395 = load i32, ptr %392, align 4
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %412

397:                                              ; preds = %391
  %398 = getelementptr inbounds %struct.mv_cesa_dev, ptr %393, i32 0, i32 5
  %399 = load ptr, ptr %398, align 4
  br label %400

400:                                              ; preds = %400, %397
  %401 = phi ptr [ null, %397 ], [ %409, %400 ]
  %402 = phi i32 [ -1, %397 ], [ %408, %400 ]
  %403 = phi i32 [ 0, %397 ], [ %410, %400 ]
  %404 = getelementptr %struct.mv_cesa_engine, ptr %399, i32 %403, i32 12
  %405 = load volatile i32, ptr %404, align 4
  %406 = icmp ult i32 %405, %402
  %407 = getelementptr %struct.mv_cesa_engine, ptr %399, i32 %403
  %408 = call i32 @llvm.umin.i32(i32 %405, i32 %402) #13
  %409 = select i1 %406, ptr %407, ptr %401
  %410 = add nuw nsw i32 %403, 1
  %411 = icmp eq i32 %410, %395
  br i1 %411, label %412, label %400

412:                                              ; preds = %400, %391
  %413 = phi ptr [ null, %391 ], [ %409, %400 ]
  %414 = getelementptr inbounds %struct.mv_cesa_engine, ptr %413, i32 0, i32 12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %414) #13, !srcloc !12
  %415 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %414, ptr %414, i32 %394, ptr elementtype(i32) %414) #13, !srcloc !13
  store ptr %413, ptr %3, align 8
  %416 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %420, label %419

419:                                              ; preds = %412
  call void @mv_cesa_dma_prepare(ptr noundef %3, ptr noundef %413) #13
  br label %422

420:                                              ; preds = %412
  %421 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  store i32 0, ptr %421, align 4
  br label %422

422:                                              ; preds = %420, %419
  %423 = call i32 @mv_cesa_queue_req(ptr noundef %0, ptr noundef %3) #13
  switch i32 %423, label %424 [
    i32 -16, label %445
    i32 -115, label %445
  ]

424:                                              ; preds = %422
  %425 = load ptr, ptr %416, align 4
  %426 = icmp eq ptr %425, null
  br i1 %426, label %445, label %427

427:                                              ; preds = %424
  %428 = load ptr, ptr @cesa_dev, align 4
  %429 = getelementptr inbounds %struct.mv_cesa_dev, ptr %428, i32 0, i32 2
  %430 = load ptr, ptr %429, align 4
  %431 = load ptr, ptr %4, align 4
  %432 = load i32, ptr %10, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %430, ptr noundef %431, i32 noundef %432, i32 noundef 1, i32 noundef 0) #13
  %433 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  %434 = load ptr, ptr %433, align 4
  %435 = icmp eq ptr %434, null
  br i1 %435, label %444, label %436

436:                                              ; preds = %427
  %437 = load ptr, ptr @cesa_dev, align 4
  %438 = getelementptr inbounds %struct.mv_cesa_dev, ptr %437, i32 0, i32 6
  %439 = load ptr, ptr %438, align 4
  %440 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %439, i32 0, i32 2
  %441 = load ptr, ptr %440, align 4
  %442 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  %443 = load i32, ptr %442, align 4
  call void @dma_pool_free(ptr noundef %441, ptr noundef nonnull %434, i32 noundef %443) #13
  br label %444

444:                                              ; preds = %436, %427
  call void @mv_cesa_dma_cleanup(ptr noundef %3) #13
  br label %445

445:                                              ; preds = %444, %424, %422, %422, %384, %29, %27
  %446 = phi i32 [ %385, %384 ], [ %423, %422 ], [ %423, %424 ], [ %423, %444 ], [ 0, %27 ], [ 0, %29 ], [ %423, %422 ]
  ret i32 %446
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_queue_req(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_op_transfers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_dummy_end(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_cleanup(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_data_transfer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_cesa_dma_add_op(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_dummy_launch(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_dma_add_result_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_prepare(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mv_cesa_ahash_process(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 128
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %1, 1024
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 -22
  %12 = select i1 %8, i32 -115, i32 %11
  br label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = icmp ult i32 %15, %20
  %22 = select i1 %21, i32 -115, i32 0
  br label %23

23:                                               ; preds = %13, %6
  %24 = phi i32 [ %12, %6 ], [ %22, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_ahash_step(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 134217728
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.mv_cesa_engine, ptr %12, i32 0, i32 1
  %14 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 56576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #13, !srcloc !14
  %18 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 56580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #13, !srcloc !14
  %22 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr i8, ptr %24, i32 56584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #13, !srcloc !14
  %26 = getelementptr %struct.ahash_request, ptr %0, i32 4, i32 5, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 56588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #13, !srcloc !14
  %30 = getelementptr %struct.ahash_request, ptr %0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %13, align 4
  %33 = getelementptr i8, ptr %32, i32 56592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #13, !srcloc !14
  %34 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr i8, ptr %36, i32 56616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #13, !srcloc !14
  %38 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr i8, ptr %40, i32 56620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #13, !srcloc !14
  %42 = getelementptr %struct.ahash_request, ptr %0, i32 5, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr i8, ptr %44, i32 56624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #13, !srcloc !14
  br label %46

46:                                               ; preds = %11, %6
  tail call void @mv_cesa_dma_step(ptr noundef %2) #13
  br label %275

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 2
  %51 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2047
  %54 = add nuw nsw i32 %53, 128
  %55 = mul nuw nsw i32 %54, 65537
  %56 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 3
  store i32 %55, ptr %56, align 4
  %57 = add nuw nsw i32 %53, 32
  %58 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5
  store i32 %57, ptr %58, align 4
  %59 = add nuw nsw i32 %53, 64
  %60 = shl nuw nsw i32 %59, 16
  %61 = or i32 %60, %59
  %62 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 4
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -65536
  %66 = or i32 %65, %54
  store i32 %66, ptr %63, align 4
  %67 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -65536
  %70 = add nuw nsw i32 %53, 96
  %71 = or i32 %69, %70
  store i32 %71, ptr %67, align 4
  %72 = or i32 %60, %57
  %73 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 10
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  br i1 %76, label %80, label %79

79:                                               ; preds = %47
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(128) %78, ptr noundef align 4 dereferenceable(128) %50, i32 128, i1 false) #13
  br label %81

80:                                               ; preds = %47
  tail call void @mmiocpy(ptr noundef %78, ptr noundef %50, i32 noundef 128) #13
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, ptr %48, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %86 = load ptr, ptr %85, align 16
  %87 = getelementptr i8, ptr %86, i32 12
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 -64
  %90 = load i32, ptr %89, align 64
  %91 = icmp ult i32 %90, 4
  br i1 %91, label %108, label %92

92:                                               ; preds = %84
  %93 = lshr i32 %90, 2
  %94 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 1
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi i32 [ 0, %92 ], [ %106, %95 ]
  %97 = getelementptr %struct.mv_cesa_ahash_req, ptr %2, i32 0, i32 9, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %94, align 4
  %100 = shl i32 %96, 2
  %101 = add i32 %100, 56576
  %102 = icmp ult i32 %96, 5
  %103 = select i1 %102, i32 0, i32 20
  %104 = add i32 %101, %103
  %105 = getelementptr i8, ptr %99, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %98) #13, !srcloc !14
  %106 = add nuw nsw i32 %96, 1
  %107 = icmp eq i32 %106, %93
  br i1 %107, label %108, label %95

108:                                              ; preds = %95, %84, %81
  %109 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %74, align 4
  %114 = icmp eq ptr %113, null
  %115 = load ptr, ptr %77, align 4
  %116 = getelementptr i8, ptr %115, i32 128
  %117 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  br i1 %114, label %119, label %118

118:                                              ; preds = %112
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %116, ptr align 4 %117, i32 %110, i1 false) #13
  br label %120

119:                                              ; preds = %112
  tail call void @mmiocpy(ptr noundef %116, ptr noundef %117, i32 noundef %110) #13
  br label %120

120:                                              ; preds = %119, %118, %108
  %121 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %122 = load i32, ptr %121, align 8
  %123 = load i32, ptr %109, align 4
  %124 = add i32 %123, %122
  %125 = load i32, ptr %48, align 4
  %126 = sub i32 %124, %125
  %127 = load ptr, ptr @cesa_dev, align 4
  %128 = getelementptr inbounds %struct.mv_cesa_dev, ptr %127, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, -128
  %131 = tail call i32 @llvm.umin.i32(i32 %126, i32 %130) #13
  %132 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  %133 = load i8, ptr %132, align 4, !range !11
  %134 = icmp eq i8 %133, 0
  %135 = and i32 %131, 63
  %136 = and i32 %131, -64
  %137 = select i1 %134, i32 %136, i32 %131
  %138 = select i1 %134, i32 %135, i32 0
  %139 = icmp eq i32 %137, %123
  br i1 %139, label %151, label %140

140:                                              ; preds = %120
  %141 = sub i32 %137, %123
  %142 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5
  %145 = load i32, ptr %144, align 8
  %146 = add i32 %123, 128
  %147 = tail call i32 @mv_cesa_sg_copy(ptr noundef %49, ptr noundef %143, i32 noundef %145, i32 noundef %146, i32 noundef %141, i32 noundef %125, i1 noundef zeroext true) #13
  %148 = load i32, ptr %48, align 4
  %149 = add i32 %148, %147
  store i32 %149, ptr %48, align 4
  %150 = load i8, ptr %132, align 4, !range !11
  br label %151

151:                                              ; preds = %140, %120
  %152 = phi i32 [ %149, %140 ], [ %125, %120 ]
  %153 = phi i8 [ %150, %140 ], [ %133, %120 ]
  %154 = load i32, ptr %50, align 4
  %155 = and i32 %154, -1073741824
  %156 = icmp eq i8 %153, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %151
  %158 = load i32, ptr %121, align 8
  %159 = icmp eq i32 %152, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %162 = load i64, ptr %161, align 8
  %163 = icmp ult i64 %162, 65536
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = icmp eq i32 %155, 1073741824
  br i1 %165, label %169, label %166

166:                                              ; preds = %164
  %167 = icmp ugt i32 %154, -1073741825
  br i1 %167, label %169, label %168

168:                                              ; preds = %166, %160, %157, %151
  switch i32 %155, label %233 [
    i32 -2147483648, label %169
    i32 0, label %169
  ]

169:                                              ; preds = %168, %168, %166, %164
  %170 = phi i32 [ %155, %168 ], [ %155, %168 ], [ 0, %164 ], [ -2147483648, %166 ]
  %171 = icmp eq i32 %170, -2147483648
  %172 = icmp eq i32 %137, 0
  %173 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 3
  %174 = load i64, ptr %173, align 8
  br i1 %172, label %175, label %177

175:                                              ; preds = %169
  %176 = trunc i64 %174 to i32
  br label %185

177:                                              ; preds = %169
  %178 = icmp ult i64 %174, 65536
  %179 = trunc i64 %174 to i32
  br i1 %178, label %180, label %185

180:                                              ; preds = %177
  %181 = load i32, ptr %63, align 4
  %182 = and i32 %181, 65535
  %183 = shl nuw i32 %179, 16
  %184 = or i32 %182, %183
  store i32 %184, ptr %63, align 4
  br label %233

185:                                              ; preds = %177, %175
  %186 = phi i32 [ %176, %175 ], [ %179, %177 ]
  %187 = and i32 %186, 63
  %188 = icmp ult i32 %187, 56
  %189 = select i1 %188, i32 56, i32 120
  %190 = sub nsw i32 %189, %187
  %191 = add nsw i32 %190, 8
  %192 = add i32 %191, %137
  %193 = load ptr, ptr @cesa_dev, align 4
  %194 = getelementptr inbounds %struct.mv_cesa_dev, ptr %193, i32 0, i32 3
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, -128
  %197 = icmp ugt i32 %192, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %185
  %199 = and i32 %137, 63
  %200 = sub nsw i32 56, %190
  %201 = load ptr, ptr %74, align 4
  %202 = icmp eq ptr %201, null
  %203 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  %204 = load ptr, ptr %77, align 4
  %205 = getelementptr i8, ptr %204, i32 128
  %206 = getelementptr i8, ptr %205, i32 %199
  br i1 %202, label %208, label %207

207:                                              ; preds = %198
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %203, ptr align 1 %206, i32 %200, i1 false) #13
  br label %228

208:                                              ; preds = %198
  tail call void @mmiocpy(ptr noundef %203, ptr noundef %206, i32 noundef %200) #13
  br label %228

209:                                              ; preds = %185
  %210 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  store i8 -128, ptr %210, align 1
  %211 = getelementptr i8, ptr %210, i32 1
  %212 = add nsw i32 %190, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %211, i8 0, i32 %212, i1 false) #13
  %213 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  %214 = load i8, ptr %213, align 1, !range !11
  %215 = icmp eq i8 %214, 0
  %216 = load i64, ptr %173, align 8
  %217 = shl i64 %216, 3
  %218 = tail call i64 @llvm.bswap.i64(i64 %217) #13
  %219 = select i1 %215, i64 %218, i64 %217
  %220 = getelementptr i8, ptr %210, i32 %190
  store i64 %219, ptr %220, align 1
  %221 = load ptr, ptr %74, align 4
  %222 = icmp eq ptr %221, null
  %223 = load ptr, ptr %77, align 4
  %224 = getelementptr i8, ptr %223, i32 %192
  %225 = getelementptr i8, ptr %224, i32 128
  br i1 %222, label %227, label %226

226:                                              ; preds = %209
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %225, ptr align 4 %210, i32 %191, i1 false) #13
  br label %228

227:                                              ; preds = %209
  tail call void @mmiocpy(ptr noundef %225, ptr noundef %210, i32 noundef %191) #13
  br label %228

228:                                              ; preds = %227, %226, %208, %207
  %229 = phi i32 [ %199, %207 ], [ %199, %208 ], [ %192, %226 ], [ %192, %227 ]
  %230 = phi i32 [ %200, %207 ], [ %200, %208 ], [ %138, %226 ], [ %138, %227 ]
  %231 = select i1 %171, i32 -1073741824, i32 1073741824
  %232 = load i32, ptr %50, align 4
  br label %233

233:                                              ; preds = %228, %180, %168
  %234 = phi i32 [ %154, %180 ], [ %232, %228 ], [ %154, %168 ]
  %235 = phi i32 [ %137, %180 ], [ %229, %228 ], [ %137, %168 ]
  %236 = phi i32 [ %170, %180 ], [ %231, %228 ], [ %155, %168 ]
  %237 = phi i32 [ %138, %180 ], [ %230, %228 ], [ %138, %168 ]
  %238 = load i32, ptr %67, align 4
  %239 = and i32 %238, 65535
  %240 = shl i32 %235, 16
  %241 = or i32 %239, %240
  store i32 %241, ptr %67, align 4
  %242 = and i32 %234, 1073741823
  %243 = or i32 %236, %242
  store i32 %243, ptr %50, align 4
  %244 = load ptr, ptr %74, align 4
  %245 = icmp eq ptr %244, null
  %246 = load ptr, ptr %77, align 4
  br i1 %245, label %248, label %247

247:                                              ; preds = %233
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(128) %246, ptr noundef align 4 dereferenceable(128) %50, i32 128, i1 false) #13
  br label %249

248:                                              ; preds = %233
  tail call void @mmiocpy(ptr noundef %246, ptr noundef %50, i32 noundef 128) #13
  br label %249

249:                                              ; preds = %248, %247
  %250 = icmp eq i32 %236, 1073741824
  br i1 %250, label %251, label %254

251:                                              ; preds = %249
  %252 = load i32, ptr %50, align 4
  %253 = or i32 %252, -1073741824
  store i32 %253, ptr %50, align 4
  br label %254

254:                                              ; preds = %251, %249
  store i32 %237, ptr %109, align 4
  %255 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 9
  %256 = load i32, ptr %255, align 4
  %257 = icmp eq i32 %256, 32
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr i8, ptr %260, i32 56868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 32) #13, !srcloc !14
  store i32 32, ptr %255, align 4
  br label %262

262:                                              ; preds = %258, %254
  %263 = getelementptr inbounds %struct.mv_cesa_engine, ptr %49, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr i8, ptr %264, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 8192) #13, !srcloc !14
  %266 = load ptr, ptr %263, align 4
  %267 = getelementptr i8, ptr %266, i32 56832
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #13, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !16
  %269 = and i32 %268, 1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271, !prof !8

271:                                              ; preds = %262
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 280, i32 noundef 9, ptr noundef null) #13
  br label %272

272:                                              ; preds = %271, %262
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !17
  tail call void @arm_heavy_mb() #13
  %273 = load ptr, ptr %263, align 4
  %274 = getelementptr i8, ptr %273, i32 56832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 1) #13, !srcloc !14
  br label %275

275:                                              ; preds = %272, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_ahash_req_cleanup(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  %4 = load i8, ptr %3, align 4, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @cesa_dev, align 4
  %16 = getelementptr inbounds %struct.mv_cesa_dev, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef nonnull %12, i32 noundef %21) #13
  store ptr null, ptr %11, align 4
  br label %22

22:                                               ; preds = %14, %10, %6, %1
  %23 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @cesa_dev, align 4
  %28 = getelementptr inbounds %struct.mv_cesa_dev, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5
  %33 = load i32, ptr %32, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 0) #13
  %34 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr @cesa_dev, align 4
  %39 = getelementptr inbounds %struct.mv_cesa_dev, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void @dma_pool_free(ptr noundef %42, ptr noundef nonnull %35, i32 noundef %44) #13
  br label %45

45:                                               ; preds = %37, %26
  tail call void @mv_cesa_dma_cleanup(ptr noundef %2) #13
  br label %46

46:                                               ; preds = %45, %22
  %47 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 3, i32 2
  %56 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 8
  %58 = sub i32 %57, %48
  %59 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %52, i32 noundef %54, ptr noundef %55, i32 noundef %48, i32 noundef %58) #13
  br label %60

60:                                               ; preds = %50, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_ahash_complete(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -64
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %15, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 134217727
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %15, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.mv_cesa_op_ctx, ptr %22, i32 0, i32 1, i32 0, i32 1
  %24 = icmp ult i32 %9, 4
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = lshr i32 %9, 2
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %32, %27 ], [ 0, %25 ]
  %29 = getelementptr i32, ptr %23, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.mv_cesa_ahash_req, ptr %2, i32 0, i32 9, i32 %28
  store i32 %30, ptr %31, align 4
  %32 = add nuw nsw i32 %28, 1
  %33 = icmp eq i32 %32, %26
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %20
  %35 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 4 %23, i32 %9, i1 false)
  br label %87

37:                                               ; preds = %13, %1
  %38 = lshr i32 %9, 2
  %39 = icmp ult i32 %9, 4
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 1
  %42 = call i32 @llvm.umax.i32(i32 %38, i32 1)
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i32 [ 0, %40 ], [ %54, %43 ]
  %45 = load ptr, ptr %41, align 4
  %46 = shl i32 %44, 2
  %47 = add i32 %46, 56576
  %48 = icmp ult i32 %44, 5
  %49 = select i1 %48, i32 0, i32 20
  %50 = add i32 %47, %49
  %51 = getelementptr i8, ptr %45, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #13, !srcloc !15
  %53 = getelementptr %struct.mv_cesa_ahash_req, ptr %2, i32 0, i32 9, i32 %44
  store i32 %52, ptr %53, align 4
  %54 = add nuw nsw i32 %44, 1
  %55 = icmp eq i32 %54, %42
  br i1 %55, label %56, label %43

56:                                               ; preds = %43, %37
  %57 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 4
  %58 = load i8, ptr %57, align 4, !range !11
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %87, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 4, i32 5, i32 5
  %62 = load i8, ptr %61, align 1, !range !11
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 32
  br i1 %63, label %76, label %66

66:                                               ; preds = %60
  br i1 %39, label %87, label %67

67:                                               ; preds = %66
  %68 = call i32 @llvm.umax.i32(i32 %38, i32 1)
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi i32 [ %74, %69 ], [ 0, %67 ]
  %71 = getelementptr %struct.mv_cesa_ahash_req, ptr %2, i32 0, i32 9, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i32, ptr %65, i32 %70
  store i32 %72, ptr %73, align 4
  %74 = add nuw nsw i32 %70, 1
  %75 = icmp eq i32 %74, %68
  br i1 %75, label %87, label %69

76:                                               ; preds = %60
  br i1 %39, label %87, label %77

77:                                               ; preds = %76
  %78 = call i32 @llvm.umax.i32(i32 %38, i32 1)
  br label %79

79:                                               ; preds = %79, %77
  %80 = phi i32 [ %85, %79 ], [ 0, %77 ]
  %81 = getelementptr %struct.mv_cesa_ahash_req, ptr %2, i32 0, i32 9, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = getelementptr i32, ptr %65, i32 %80
  store i32 %83, ptr %84, align 4
  %85 = add nuw nsw i32 %80, 1
  %86 = icmp eq i32 %85, %78
  br i1 %86, label %87, label %79

87:                                               ; preds = %79, %76, %69, %66, %56, %34
  %88 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %89 = load i32, ptr %88, align 8
  %90 = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #13, !srcloc !12
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 %89, ptr elementtype(i32) %90) #13, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_dma_step(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_sg_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_ahmac_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.mv_cesa_ahash_result, align 4
  %7 = alloca %struct.scatterlist, align 4
  %8 = tail call ptr @crypto_alloc_ahash(ptr noundef %0, i32 noundef 0, i32 noundef 0) #13
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  br label %90

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 8
  %14 = load i32, ptr %13, align 32
  %15 = add i32 %14, 64
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %87, label %18, !prof !19

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 10
  %20 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 3
  store ptr %19, ptr %20, align 16
  store i32 0, ptr %19, align 64
  %21 = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 10, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 2) #13
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %85, label %27, !prof !19

27:                                               ; preds = %18
  %28 = extractvalue { i32, i1 } %25, 0
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %85, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %29, i32 %24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #13, !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #13, !annotation !10
  %33 = icmp ult i32 %24, %2
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %29, ptr align 1 %1, i32 %2, i1 false) #13
  br label %61

35:                                               ; preds = %31
  %36 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %76, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 1
  store ptr @mv_cesa_hmac_ahash_complete, ptr %39, align 8
  %40 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 2
  store ptr %6, ptr %40, align 4
  %41 = getelementptr inbounds %struct.crypto_async_request, ptr %16, i32 0, i32 4
  store i32 1024, ptr %41, align 4
  call void @sg_init_one(ptr noundef nonnull %7, ptr noundef nonnull %36, i32 noundef %2) #13
  %42 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 0, i32 2
  store ptr %7, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 0, i32 1
  store i32 %2, ptr %43, align 8
  %44 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 0, i32 3
  store ptr %29, ptr %44, align 32
  store i32 0, ptr %6, align 4
  %45 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #13
  %46 = call i32 @crypto_ahash_digest(ptr noundef nonnull %16) #13
  %47 = icmp eq i32 %46, -115
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %6) #13
  %50 = getelementptr inbounds %struct.mv_cesa_ahash_result, ptr %6, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = phi i32 [ %51, %48 ], [ %46, %38 ]
  call void @kfree_sensitive(ptr noundef nonnull %36) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load ptr, ptr %20, align 16
  %57 = getelementptr i8, ptr %56, i32 12
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 -64
  %60 = load i32, ptr %59, align 64
  br label %61

61:                                               ; preds = %55, %34
  %62 = phi i32 [ %2, %34 ], [ %60, %55 ]
  %63 = getelementptr i8, ptr %29, i32 %62
  %64 = sub i32 %24, %62
  call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %64, i1 false) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr nonnull align 64 %29, i32 %24, i1 false) #13
  %65 = icmp eq i32 %24, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %66, %61
  %67 = phi i32 [ %74, %66 ], [ 0, %61 ]
  %68 = getelementptr i8, ptr %29, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = xor i8 %69, 54
  store i8 %70, ptr %68, align 1
  %71 = getelementptr i8, ptr %32, i32 %67
  %72 = load i8, ptr %71, align 1
  %73 = xor i8 %72, 92
  store i8 %73, ptr %71, align 1
  %74 = add nuw i32 %67, 1
  %75 = icmp eq i32 %74, %24
  br i1 %75, label %78, label %66

76:                                               ; preds = %52, %35
  %77 = phi i32 [ %53, %52 ], [ -12, %35 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  br label %83

78:                                               ; preds = %66, %61
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  %79 = call fastcc i32 @mv_cesa_ahmac_iv_state_init(ptr noundef nonnull %16, ptr noundef nonnull %29, ptr noundef %3, i32 noundef %24)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call fastcc i32 @mv_cesa_ahmac_iv_state_init(ptr noundef nonnull %16, ptr noundef %32, ptr noundef %4, i32 noundef %24)
  br label %83

83:                                               ; preds = %81, %78, %76
  %84 = phi i32 [ %77, %76 ], [ %79, %78 ], [ %82, %81 ]
  call void @kfree(ptr noundef nonnull %29) #13
  br label %85

85:                                               ; preds = %83, %27, %18
  %86 = phi i32 [ %84, %83 ], [ -12, %27 ], [ -12, %18 ]
  call void @kfree_sensitive(ptr noundef nonnull %16) #13
  br label %87

87:                                               ; preds = %85, %12
  %88 = phi i32 [ %86, %85 ], [ -12, %12 ]
  %89 = getelementptr inbounds %struct.crypto_ahash, ptr %8, i32 0, i32 10
  call void @crypto_destroy_tfm(ptr noundef %8, ptr noundef %89) #13
  br label %90

90:                                               ; preds = %87, %10
  %91 = phi i32 [ %11, %10 ], [ %88, %87 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_ahmac_iv_state_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.mv_cesa_ahash_result, align 4
  %6 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  store ptr @mv_cesa_hmac_ahash_complete, ptr %7, align 8
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 4
  store i32 1024, ptr %9, align 4
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %3) #13
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  store ptr %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  store i32 %3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  store ptr %1, ptr %12, align 32
  store i32 0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.completion, ptr %5, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #13
  %14 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 16
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = getelementptr i8, ptr %15, i32 -64
  %21 = load ptr, ptr %20, align 64
  %22 = call i32 %21(ptr noundef %0) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 16
  %26 = getelementptr i8, ptr %25, i32 -60
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %0) #13
  switch i32 %28, label %39 [
    i32 -115, label %29
    i32 0, label %29
  ]

29:                                               ; preds = %24, %24
  %30 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %5) #13
  %31 = getelementptr inbounds %struct.mv_cesa_ahash_result, ptr %5, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load ptr, ptr %14, align 16
  %36 = getelementptr i8, ptr %35, i32 -44
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0, ptr noundef %2) #13
  br label %39

39:                                               ; preds = %34, %29, %24, %19, %4
  %40 = phi i32 [ %22, %19 ], [ %28, %24 ], [ %32, %29 ], [ %38, %34 ], [ -126, %4 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mv_cesa_hmac_ahash_complete(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, -115
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mv_cesa_ahash_result, ptr %6, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  tail call void @complete(ptr noundef %6) #13
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{i64 2148659087, i64 2148659367, i64 2148659701, i64 2148660035}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i64 614420, i64 2148115986, i64 2148116012, i64 2148116059, i64 2148116081, i64 2148116109, i64 2148116129}
!13 = !{i64 2148179248, i64 2148179274, i64 2148179303, i64 2148179337, i64 2148179368, i64 2148179391}
!14 = !{i64 4994006}
!15 = !{i64 4994424}
!16 = !{i64 2152832902}
!17 = !{i64 2152833592}
!18 = !{i64 2148181605, i64 2148181631, i64 2148181660, i64 2148181694, i64 2148181725, i64 2148181748}
!19 = !{!"branch_weights", i32 1, i32 2000}
