; ModuleID = '/llk/IR/drivers/crypto/marvell/cesa/cesa.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/cesa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.mv_cesa_caps = type { i32, i8, ptr, i32, ptr, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mv_cesa_engine = type { i32, ptr, %union.anon.68, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon.68 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }
%struct.mv_cesa_req = type { ptr, %struct.mv_cesa_tdma_chain }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.mv_cesa_req_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mv_cesa_dev = type { ptr, ptr, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.mv_cesa_dev_dma = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mv_cesa_of_match_table = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kirkwood_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kirkwood_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-38x-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_caps }, %struct.of_device_id zeroinitializer], align 4
@mv_cesa_plat_id_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mv_crypto\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author233 = internal constant [60 x i8] c"author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [42 x i8] c"author=Arnaud Ebalard <arno@natisbad.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [55 x i8] c"description=Support for Marvell's cryptographic engine\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@cesa_dev = dso_local local_unnamed_addr global ptr null, align 4
@orion_caps = internal constant %struct.mv_cesa_caps { i32 1, i8 0, ptr @orion_cipher_algs, i32 6, ptr @orion_ahash_algs, i32 4 }, align 4
@kirkwood_caps = internal constant %struct.mv_cesa_caps { i32 1, i8 1, ptr @orion_cipher_algs, i32 6, ptr @orion_ahash_algs, i32 4 }, align 4
@armada_370_caps = internal constant %struct.mv_cesa_caps { i32 1, i8 1, ptr @armada_370_cipher_algs, i32 6, ptr @armada_370_ahash_algs, i32 6 }, align 4
@armada_xp_caps = internal constant %struct.mv_cesa_caps { i32 2, i8 1, ptr @armada_370_cipher_algs, i32 6, ptr @armada_370_ahash_algs, i32 6 }, align 4
@orion_cipher_algs = internal global [6 x ptr] [ptr @mv_cesa_ecb_des_alg, ptr @mv_cesa_cbc_des_alg, ptr @mv_cesa_ecb_des3_ede_alg, ptr @mv_cesa_cbc_des3_ede_alg, ptr @mv_cesa_ecb_aes_alg, ptr @mv_cesa_cbc_aes_alg], align 4
@orion_ahash_algs = internal global [4 x ptr] [ptr @mv_md5_alg, ptr @mv_sha1_alg, ptr @mv_ahmac_md5_alg, ptr @mv_ahmac_sha1_alg], align 4
@mv_cesa_ecb_des_alg = external dso_local global %struct.skcipher_alg, align 64
@mv_cesa_cbc_des_alg = external dso_local global %struct.skcipher_alg, align 64
@mv_cesa_ecb_des3_ede_alg = external dso_local global %struct.skcipher_alg, align 64
@mv_cesa_cbc_des3_ede_alg = external dso_local global %struct.skcipher_alg, align 64
@mv_cesa_ecb_aes_alg = external dso_local global %struct.skcipher_alg, align 64
@mv_cesa_cbc_aes_alg = external dso_local global %struct.skcipher_alg, align 64
@mv_md5_alg = external dso_local global %struct.ahash_alg, align 64
@mv_sha1_alg = external dso_local global %struct.ahash_alg, align 64
@mv_ahmac_md5_alg = external dso_local global %struct.ahash_alg, align 64
@mv_ahmac_sha1_alg = external dso_local global %struct.ahash_alg, align 64
@armada_370_cipher_algs = internal global [6 x ptr] [ptr @mv_cesa_ecb_des_alg, ptr @mv_cesa_cbc_des_alg, ptr @mv_cesa_ecb_des3_ede_alg, ptr @mv_cesa_cbc_des3_ede_alg, ptr @mv_cesa_ecb_aes_alg, ptr @mv_cesa_cbc_aes_alg], align 4
@armada_370_ahash_algs = internal global [6 x ptr] [ptr @mv_md5_alg, ptr @mv_sha1_alg, ptr @mv_sha256_alg, ptr @mv_ahmac_md5_alg, ptr @mv_ahmac_sha1_alg, ptr @mv_ahmac_sha256_alg], align 4
@mv_sha256_alg = external dso_local global %struct.ahash_alg, align 64
@mv_ahmac_sha256_alg = external dso_local global %struct.ahash_alg, align 64
@marvell_cesa = internal global %struct.platform_driver { ptr @mv_cesa_probe, ptr @mv_cesa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_cesa_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mv_cesa_plat_id_table, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"marvell-cesa\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Only one CESA device authorized\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"marvell,crypto-sram-size\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cesa%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"cesaz%d\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"CESA device successfully registered\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"tdma_desc\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cesa_op\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cesa_cache\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"cesa_padding\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"marvell,crypto-srams\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sram0\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"sram1\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license236], section "llvm.metadata"

@__mod_of__mv_cesa_of_match_table_device_table = dso_local alias [8 x %struct.of_device_id], ptr @mv_cesa_of_match_table
@__mod_platform__mv_cesa_plat_id_table_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @mv_cesa_plat_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mv_cesa_dequeue_req_locked(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 11, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %3
  %7 = select i1 %6, ptr null, ptr %5
  store ptr %7, ptr %1, align 4
  %8 = tail call ptr @crypto_dequeue_request(ptr noundef %3) #10
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_queue_req(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 11
  %6 = tail call i32 @crypto_enqueue_request(ptr noundef %5, ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.mv_cesa_req, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  switch i32 %6, label %11 [
    i32 -16, label %12
    i32 -115, label %12
  ]

11:                                               ; preds = %10
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  br label %39

12:                                               ; preds = %10, %10
  tail call void @mv_cesa_tdma_chain(ptr noundef %3, ptr noundef %1) #10
  br label %13

13:                                               ; preds = %12, %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  %14 = icmp eq i32 %6, -115
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #10
  %16 = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  br label %39

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mv_cesa_engine, ptr %3, i32 0, i32 11, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %5
  %24 = select i1 %23, ptr null, ptr %22
  %25 = tail call ptr @crypto_dequeue_request(ptr noundef %5) #10
  store ptr %25, ptr %16, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %20
  %28 = icmp eq ptr %24, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.crypto_async_request, ptr %24, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef nonnull %24, i32 noundef -115) #10
  br label %32

32:                                               ; preds = %29, %27
  %33 = getelementptr inbounds %struct.crypto_async_request, ptr %25, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.crypto_tfm, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef nonnull %25) #10
  br label %39

39:                                               ; preds = %32, %20, %19, %13, %11
  %40 = phi i32 [ %6, %13 ], [ %6, %11 ], [ -115, %19 ], [ -115, %20 ], [ -115, %32 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mv_cesa_tdma_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @marvell_cesa, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @marvell_cesa) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [7 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %5 = load ptr, ptr @cesa_dev, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #11
  br label %268

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @of_match_node(ptr noundef nonnull @mv_cesa_of_match_table, ptr noundef nonnull %10) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %268, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %268, label %19

19:                                               ; preds = %15, %8
  %20 = phi ptr [ @orion_caps, %8 ], [ %17, %15 ]
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 28, i32 noundef 3520) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %268, label %23

23:                                               ; preds = %19
  store ptr %20, ptr %21, align 4
  %24 = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 2
  store ptr %4, ptr %24, align 4
  store i32 2048, ptr %2, align 4
  %25 = load ptr, ptr %9, align 8
  %26 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %27 = load i32, ptr %2, align 4
  %28 = icmp ult i32 %27, 1024
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1024, ptr %2, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ 1024, %29 ], [ %27, %23 ]
  %32 = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %20, align 4
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 88) #10
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %36, label %38, !prof !8

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 5
  store ptr null, ptr %37, align 4
  br label %268

38:                                               ; preds = %30
  %39 = extractvalue { i32, i1 } %34, 0
  %40 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %39, i32 noundef 3520) #10
  %41 = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 5
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %268, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 4
  store i32 0, ptr %44, align 4
  %45 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  %46 = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = ptrtoint ptr %45 to i32
  br label %268

50:                                               ; preds = %43
  %51 = load ptr, ptr %24, align 4
  %52 = load ptr, ptr %21, align 4
  %53 = getelementptr inbounds %struct.mv_cesa_caps, ptr %52, i32 0, i32 1
  %54 = load i8, ptr %53, align 4, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %50
  %57 = call noalias ptr @devm_kmalloc(ptr noundef %51, i32 noundef 16, i32 noundef 3520) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %268, label %59

59:                                               ; preds = %56
  %60 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.7, ptr noundef %51, i32 noundef 32, i32 noundef 16, i32 noundef 0) #10
  store ptr %60, ptr %57, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %268, label %62

62:                                               ; preds = %59
  %63 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.8, ptr noundef %51, i32 noundef 128, i32 noundef 16, i32 noundef 0) #10
  %64 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %57, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  %65 = icmp eq ptr %63, null
  br i1 %65, label %268, label %66

66:                                               ; preds = %62
  %67 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.9, ptr noundef %51, i32 noundef 64, i32 noundef 1, i32 noundef 0) #10
  %68 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %57, i32 0, i32 2
  store ptr %67, ptr %68, align 4
  %69 = icmp eq ptr %67, null
  br i1 %69, label %268, label %70

70:                                               ; preds = %66
  %71 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.10, ptr noundef %51, i32 noundef 72, i32 noundef 1, i32 noundef 0) #10
  %72 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %57, i32 0, i32 3
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %268, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.mv_cesa_dev, ptr %21, i32 0, i32 6
  store ptr %57, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %50
  %77 = call ptr @mv_mbus_dram_info_nooverlap() #10
  %78 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %21, ptr %78, align 8
  %79 = load i32, ptr %20, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %221

81:                                               ; preds = %76
  %82 = icmp eq ptr %77, null
  %83 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %84

84:                                               ; preds = %204, %81
  %85 = phi i32 [ 0, %81 ], [ %218, %204 ]
  %86 = load ptr, ptr %41, align 4
  %87 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false), !annotation !10
  store i32 %85, ptr %87, align 4
  %88 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 4
  store i32 0, ptr %88, align 4
  %89 = load ptr, ptr %78, align 8
  %90 = getelementptr inbounds %struct.mv_cesa_dev, ptr %89, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.mv_cesa_dev, ptr %89, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 25
  %95 = load ptr, ptr %94, align 8
  %96 = call ptr @of_gen_pool_get(ptr noundef %95, ptr noundef nonnull @.str.12, i32 noundef %85) #10
  %97 = getelementptr %struct.mv_cesa_engine, ptr %91, i32 %85, i32 10
  store ptr %96, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %84
  %100 = getelementptr inbounds %struct.mv_cesa_dev, ptr %89, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr %struct.mv_cesa_engine, ptr %91, i32 %85, i32 3
  %103 = call ptr @gen_pool_dma_alloc(ptr noundef nonnull %96, i32 noundef %101, ptr noundef %102) #10
  %104 = getelementptr %struct.mv_cesa_engine, ptr %91, i32 %85, i32 2
  store ptr %103, ptr %104, align 4
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %139

106:                                              ; preds = %99
  store ptr null, ptr %97, align 4
  br label %202

107:                                              ; preds = %84
  %108 = load ptr, ptr %89, align 4
  %109 = load i32, ptr %108, align 4
  %110 = icmp sgt i32 %109, 1
  %111 = icmp eq i32 %85, 0
  %112 = select i1 %111, ptr @.str.13, ptr @.str.14
  %113 = select i1 %110, ptr %112, ptr @.str.11
  %114 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull %113) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %202, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.resource, ptr %114, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %114, align 4
  %120 = add i32 %118, 1
  %121 = sub i32 %120, %119
  %122 = getelementptr inbounds %struct.mv_cesa_dev, ptr %89, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = icmp ult i32 %121, %123
  br i1 %124, label %202, label %125

125:                                              ; preds = %116
  %126 = load ptr, ptr %92, align 4
  %127 = call ptr @devm_ioremap_resource(ptr noundef %126, ptr noundef nonnull %114) #10
  %128 = getelementptr %struct.mv_cesa_engine, ptr %91, i32 %85, i32 2
  store ptr %127, ptr %128, align 4
  %129 = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %92, align 4
  %132 = load i32, ptr %114, align 4
  %133 = load i32, ptr %122, align 4
  %134 = call i32 @dma_map_resource(ptr noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef 0, i32 noundef 0) #10
  %135 = getelementptr %struct.mv_cesa_engine, ptr %91, i32 %85, i32 3
  store i32 %134, ptr %135, align 4
  %136 = icmp eq i32 %134, -1
  br i1 %136, label %202, label %139

137:                                              ; preds = %125
  %138 = ptrtoint ptr %127 to i32
  br label %202

139:                                              ; preds = %130, %99
  %140 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef %85) #10
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %202, label %142

142:                                              ; preds = %139
  %143 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 15
  store i32 %140, ptr %143, align 4
  %144 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull @.str.4, i32 noundef %85)
  %145 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #10
  %146 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 6
  store ptr %145, ptr %146, align 4
  %147 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #10
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  %151 = select i1 %150, ptr null, ptr %149
  store ptr %151, ptr %146, align 4
  br label %152

152:                                              ; preds = %148, %142
  %153 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 7, ptr noundef nonnull @.str.5, i32 noundef %85)
  %154 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #10
  %155 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 7
  %156 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  %157 = select i1 %156, ptr null, ptr %154
  store ptr %157, ptr %155, align 4
  %158 = load ptr, ptr %146, align 4
  %159 = call i32 @clk_prepare(ptr noundef %158) #10
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %202

161:                                              ; preds = %152
  %162 = call i32 @clk_enable(ptr noundef %158) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @clk_unprepare(ptr noundef %158) #10
  br label %202

165:                                              ; preds = %161
  %166 = load ptr, ptr %155, align 4
  %167 = call i32 @clk_prepare(ptr noundef %166) #10
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %202

169:                                              ; preds = %165
  %170 = call i32 @clk_enable(ptr noundef %166) #10
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  call void @clk_unprepare(ptr noundef %166) #10
  br label %202

173:                                              ; preds = %169
  %174 = load ptr, ptr %46, align 4
  %175 = shl i32 %85, 13
  %176 = getelementptr i8, ptr %174, i32 %175
  %177 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 1
  store ptr %176, ptr %177, align 4
  br i1 %82, label %184, label %178

178:                                              ; preds = %173
  %179 = load ptr, ptr %21, align 4
  %180 = getelementptr inbounds %struct.mv_cesa_caps, ptr %179, i32 0, i32 1
  %181 = load i8, ptr %180, align 4, !range !9
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  call fastcc void @mv_cesa_conf_mbus_windows(ptr noundef %87, ptr noundef nonnull %77)
  br label %184

184:                                              ; preds = %183, %178, %173
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  call void @arm_heavy_mb() #10
  %185 = load ptr, ptr %177, align 4
  %186 = getelementptr i8, ptr %185, i32 56864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 0) #10, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  call void @arm_heavy_mb() #10
  %187 = load ptr, ptr %177, align 4
  %188 = getelementptr i8, ptr %187, i32 56840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 3) #10, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !14
  call void @arm_heavy_mb() #10
  %189 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 2047
  %192 = load ptr, ptr %177, align 4
  %193 = getelementptr i8, ptr %192, i32 56836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #10, !srcloc !12
  %194 = load ptr, ptr %83, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %184
  %197 = load ptr, ptr %4, align 4
  br label %198

198:                                              ; preds = %196, %184
  %199 = phi ptr [ %197, %196 ], [ %194, %184 ]
  %200 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %140, ptr noundef null, ptr noundef nonnull @mv_cesa_int, i32 noundef 8192, ptr noundef %199, ptr noundef %87) #10
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %198, %172, %165, %164, %152, %139, %137, %130, %116, %107, %106
  %203 = phi i32 [ %138, %137 ], [ -12, %106 ], [ %162, %164 ], [ %170, %172 ], [ %167, %165 ], [ %159, %152 ], [ -12, %130 ], [ -22, %116 ], [ -22, %107 ], [ %140, %139 ], [ %200, %198 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #10
  br label %226

204:                                              ; preds = %198
  %205 = load i32, ptr %87, align 4
  %206 = call i32 @cpumask_local_spread(i32 noundef %205, i32 noundef -1) #10
  %207 = and i32 %206, 31
  %208 = add nuw nsw i32 %207, 1
  %209 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %208
  %210 = lshr i32 %206, 5
  %211 = sub nsw i32 0, %210
  %212 = getelementptr i32, ptr %209, i32 %211
  %213 = call i32 @__irq_apply_affinity_hint(i32 noundef %140, ptr noundef %212, i1 noundef zeroext true) #10
  %214 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 11
  call void @crypto_init_queue(ptr noundef %214, i32 noundef 128) #10
  %215 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 12
  store volatile i32 0, ptr %215, align 4
  %216 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 14
  store volatile ptr %216, ptr %216, align 4
  %217 = getelementptr %struct.mv_cesa_engine, ptr %86, i32 %85, i32 14, i32 1
  store ptr %216, ptr %217, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #10
  %218 = add nuw nsw i32 %85, 1
  %219 = load i32, ptr %20, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %84, label %221

221:                                              ; preds = %204, %76
  store ptr %21, ptr @cesa_dev, align 4
  %222 = call fastcc i32 @mv_cesa_add_algs(ptr noundef nonnull %21)
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  store ptr null, ptr @cesa_dev, align 4
  br label %226

225:                                              ; preds = %221
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6) #11
  br label %268

226:                                              ; preds = %224, %202
  %227 = phi i32 [ %222, %224 ], [ %203, %202 ]
  %228 = load i32, ptr %20, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %268

230:                                              ; preds = %264, %226
  %231 = phi i32 [ %265, %264 ], [ 0, %226 ]
  %232 = load ptr, ptr %41, align 4
  %233 = getelementptr %struct.mv_cesa_engine, ptr %232, i32 %231, i32 7
  %234 = load ptr, ptr %233, align 4
  call void @clk_disable(ptr noundef %234) #10
  call void @clk_unprepare(ptr noundef %234) #10
  %235 = load ptr, ptr %41, align 4
  %236 = getelementptr %struct.mv_cesa_engine, ptr %235, i32 %231, i32 6
  %237 = load ptr, ptr %236, align 4
  call void @clk_disable(ptr noundef %237) #10
  call void @clk_unprepare(ptr noundef %237) #10
  %238 = load ptr, ptr %78, align 8
  %239 = getelementptr inbounds %struct.mv_cesa_dev, ptr %238, i32 0, i32 5
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr %struct.mv_cesa_engine, ptr %240, i32 %231, i32 10
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %250, label %244

244:                                              ; preds = %230
  %245 = getelementptr %struct.mv_cesa_engine, ptr %240, i32 %231, i32 2
  %246 = load ptr, ptr %245, align 4
  %247 = ptrtoint ptr %246 to i32
  %248 = getelementptr inbounds %struct.mv_cesa_dev, ptr %238, i32 0, i32 3
  %249 = load i32, ptr %248, align 4
  call void @gen_pool_free_owner(ptr noundef nonnull %242, i32 noundef %247, i32 noundef %249, ptr noundef null) #10
  br label %257

250:                                              ; preds = %230
  %251 = getelementptr inbounds %struct.mv_cesa_dev, ptr %238, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr %struct.mv_cesa_engine, ptr %240, i32 %231, i32 3
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.mv_cesa_dev, ptr %238, i32 0, i32 3
  %256 = load i32, ptr %255, align 4
  call void @dma_unmap_resource(ptr noundef %252, i32 noundef %254, i32 noundef %256, i32 noundef 0, i32 noundef 0) #10
  br label %257

257:                                              ; preds = %250, %244
  %258 = load ptr, ptr %41, align 4
  %259 = getelementptr %struct.mv_cesa_engine, ptr %258, i32 %231, i32 15
  %260 = load i32, ptr %259, align 4
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = call i32 @__irq_apply_affinity_hint(i32 noundef %260, ptr noundef null, i1 noundef zeroext true) #10
  br label %264

264:                                              ; preds = %262, %257
  %265 = add nuw nsw i32 %231, 1
  %266 = load i32, ptr %20, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %230, label %268

268:                                              ; preds = %264, %226, %225, %70, %66, %62, %59, %56, %48, %38, %36, %19, %15, %12, %7
  %269 = phi i32 [ -17, %7 ], [ %49, %48 ], [ 0, %225 ], [ -524, %15 ], [ -524, %12 ], [ -12, %19 ], [ -12, %38 ], [ -12, %36 ], [ -12, %56 ], [ -12, %59 ], [ -12, %62 ], [ -12, %66 ], [ -12, %70 ], [ %227, %226 ], [ %227, %264 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %269
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mv_cesa_caps, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %13, %1
  %9 = phi ptr [ %4, %1 ], [ %21, %13 ]
  %10 = getelementptr inbounds %struct.mv_cesa_caps, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %25, label %37

13:                                               ; preds = %13, %1
  %14 = phi ptr [ %21, %13 ], [ %4, %1 ]
  %15 = phi i32 [ %20, %13 ], [ 0, %1 ]
  %16 = getelementptr inbounds %struct.mv_cesa_caps, ptr %14, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %15
  %19 = load ptr, ptr %18, align 4
  tail call void @crypto_unregister_ahash(ptr noundef %19) #10
  %20 = add nuw nsw i32 %15, 1
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.mv_cesa_caps, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %13, label %8

25:                                               ; preds = %25, %8
  %26 = phi ptr [ %33, %25 ], [ %9, %8 ]
  %27 = phi i32 [ %32, %25 ], [ 0, %8 ]
  %28 = getelementptr inbounds %struct.mv_cesa_caps, ptr %26, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 %27
  %31 = load ptr, ptr %30, align 4
  tail call void @crypto_unregister_skcipher(ptr noundef %31) #10
  %32 = add nuw nsw i32 %27, 1
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.mv_cesa_caps, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %25, label %37

37:                                               ; preds = %25, %8
  %38 = phi ptr [ %9, %8 ], [ %33, %25 ]
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mv_cesa_dev, ptr %3, i32 0, i32 5
  br label %43

43:                                               ; preds = %70, %41
  %44 = phi i32 [ 0, %41 ], [ %75, %70 ]
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr %struct.mv_cesa_engine, ptr %45, i32 %44, i32 7
  %47 = load ptr, ptr %46, align 4
  tail call void @clk_disable(ptr noundef %47) #10
  tail call void @clk_unprepare(ptr noundef %47) #10
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr %struct.mv_cesa_engine, ptr %48, i32 %44, i32 6
  %50 = load ptr, ptr %49, align 4
  tail call void @clk_disable(ptr noundef %50) #10
  tail call void @clk_unprepare(ptr noundef %50) #10
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.mv_cesa_dev, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.mv_cesa_engine, ptr %53, i32 %44, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %43
  %58 = getelementptr %struct.mv_cesa_engine, ptr %53, i32 %44, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = getelementptr inbounds %struct.mv_cesa_dev, ptr %51, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  tail call void @gen_pool_free_owner(ptr noundef nonnull %55, i32 noundef %60, i32 noundef %62, ptr noundef null) #10
  br label %70

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.mv_cesa_dev, ptr %51, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr %struct.mv_cesa_engine, ptr %53, i32 %44, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.mv_cesa_dev, ptr %51, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  tail call void @dma_unmap_resource(ptr noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef 0, i32 noundef 0) #10
  br label %70

70:                                               ; preds = %63, %57
  %71 = load ptr, ptr %42, align 4
  %72 = getelementptr %struct.mv_cesa_engine, ptr %71, i32 %44, i32 15
  %73 = load i32, ptr %72, align 4
  %74 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %73, ptr noundef null, i1 noundef zeroext true) #10
  %75 = add nuw nsw i32 %44, 1
  %76 = load ptr, ptr %3, align 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %43, label %79

79:                                               ; preds = %70, %37
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info_nooverlap() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mv_cesa_conf_mbus_windows(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr i8, ptr %4, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %6 = getelementptr i8, ptr %4, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %7 = getelementptr i8, ptr %4, i32 2572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %8 = getelementptr i8, ptr %4, i32 2568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %9 = getelementptr i8, ptr %4, i32 2580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %10 = getelementptr i8, ptr %4, i32 2576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %11 = getelementptr i8, ptr %4, i32 2588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %12 = getelementptr i8, ptr %4, i32 2584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #10, !srcloc !12
  %13 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %1, i32 0, i32 2
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %43, %18 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %20 = getelementptr %struct.mbus_dram_window, ptr %17, i32 %19, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr %struct.mbus_dram_window, ptr %17, i32 %19, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = load i8, ptr %1, align 8
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 4
  %29 = trunc i64 %21 to i32
  %30 = add i32 %29, -1
  %31 = and i32 %30, -65536
  %32 = or i32 %31, %25
  %33 = or i32 %28, %32
  %34 = or i32 %33, 1
  %35 = shl i32 %19, 3
  %36 = add i32 %35, 2564
  %37 = getelementptr i8, ptr %4, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %34) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  tail call void @arm_heavy_mb() #10
  %38 = getelementptr %struct.mbus_dram_window, ptr %17, i32 %19, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = add i32 %35, 2560
  %42 = getelementptr i8, ptr %4, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #10, !srcloc !12
  %43 = add nuw nsw i32 %19, 1
  %44 = load i32, ptr %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %18, label %46

46:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_cesa_int(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 9
  %4 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 56864
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %129, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 13
  %13 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 13, i32 1
  %14 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 5
  %15 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 14
  %16 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 14, i32 1
  %17 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 4
  %18 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 11
  %19 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 11, i32 1
  br label %27

20:                                               ; preds = %107, %102
  %21 = load i32, ptr %3, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 56864
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %129, label %27

27:                                               ; preds = %20, %11
  %28 = phi i32 [ %9, %11 ], [ %25, %20 ]
  %29 = phi i32 [ %8, %11 ], [ %24, %20 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %30 = xor i32 %29, -1
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 56680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 56864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #10, !srcloc !12
  %35 = load ptr, ptr %12, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load ptr, ptr %13, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37, %27
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr inbounds %struct.crypto_async_request, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.crypto_tfm, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %41, i32 noundef %28) #10
  switch i32 %47, label %58 [
    i32 0, label %48
    i32 -115, label %54
  ]

48:                                               ; preds = %40
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %41) #10
  %52 = load ptr, ptr %16, align 4
  store ptr %41, ptr %16, align 4
  store ptr %15, ptr %41, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %41, ptr %52, align 4
  br label %58

54:                                               ; preds = %40
  %55 = load ptr, ptr %44, align 4
  %56 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %41) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #10
  br label %62

58:                                               ; preds = %48, %40
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #10
  br label %63

59:                                               ; preds = %37
  %60 = tail call i32 @mv_cesa_tdma_process(ptr noundef %1, i32 noundef %28) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #10
  %61 = icmp eq i32 %60, -115
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %54
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #10
  br label %80

63:                                               ; preds = %59, %58
  %64 = phi i32 [ %47, %58 ], [ %60, %59 ]
  %65 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #10
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.crypto_async_request, ptr %65, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.crypto_tfm, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %65) #10
  %74 = tail call ptr @llvm.thread.pointer() #10
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %76 = load volatile i32, ptr %75, align 4
  %77 = add i32 %76, 512
  store volatile i32 %77, ptr %75, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %78 = getelementptr inbounds %struct.crypto_async_request, ptr %65, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %65, i32 noundef %64) #10
  tail call fastcc void @local_bh_enable() #10
  br label %80

80:                                               ; preds = %67, %63, %62
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #10
  %81 = load ptr, ptr %14, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #10
  br label %102

84:                                               ; preds = %80
  %85 = load ptr, ptr %19, align 4
  %86 = icmp eq ptr %85, %18
  %87 = select i1 %86, ptr null, ptr %85
  %88 = tail call ptr @crypto_dequeue_request(ptr noundef %18) #10
  store ptr %88, ptr %14, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = icmp eq ptr %87, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.crypto_async_request, ptr %87, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef nonnull %87, i32 noundef -115) #10
  br label %95

95:                                               ; preds = %92, %90
  %96 = getelementptr inbounds %struct.crypto_async_request, ptr %88, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.crypto_tfm, ptr %97, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  tail call void %101(ptr noundef nonnull %88) #10
  br label %102

102:                                              ; preds = %95, %84, %83
  %103 = load volatile ptr, ptr %15, align 4
  %104 = icmp eq ptr %103, %15
  %105 = icmp eq ptr %103, null
  %106 = or i1 %104, %105
  br i1 %106, label %20, label %107

107:                                              ; preds = %107, %102
  %108 = phi ptr [ %125, %107 ], [ %103, %102 ]
  %109 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %108, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %110, ptr %112, align 4
  store volatile ptr %111, ptr %110, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %108, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %109, align 4
  %113 = getelementptr inbounds %struct.crypto_async_request, ptr %108, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.crypto_tfm, ptr %114, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef nonnull %108) #10
  %119 = tail call ptr @llvm.thread.pointer() #10
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %121 = load volatile i32, ptr %120, align 4
  %122 = add i32 %121, 512
  store volatile i32 %122, ptr %120, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %123 = getelementptr inbounds %struct.crypto_async_request, ptr %108, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  tail call void %124(ptr noundef nonnull %108, i32 noundef 0) #10
  tail call fastcc void @local_bh_enable() #10
  %125 = load volatile ptr, ptr %15, align 4
  %126 = icmp eq ptr %125, %15
  %127 = icmp eq ptr %125, null
  %128 = or i1 %126, %127
  br i1 %128, label %20, label %107

129:                                              ; preds = %20, %2
  %130 = phi i32 [ 0, %2 ], [ 1, %20 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mv_cesa_add_algs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mv_cesa_caps, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %20, %1
  %7 = phi ptr [ %2, %1 ], [ %22, %20 ]
  %8 = getelementptr inbounds %struct.mv_cesa_caps, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %26, label %69

11:                                               ; preds = %20, %1
  %12 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %13 = phi i32 [ %21, %20 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.mv_cesa_caps, ptr %12, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr ptr, ptr %15, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @crypto_register_skcipher(ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %11
  %21 = add nuw nsw i32 %13, 1
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.mv_cesa_caps, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %11, label %6

26:                                               ; preds = %37, %6
  %27 = phi ptr [ %39, %37 ], [ %7, %6 ]
  %28 = phi i32 [ %38, %37 ], [ 0, %6 ]
  %29 = getelementptr inbounds %struct.mv_cesa_caps, ptr %27, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr ptr, ptr %30, i32 %28
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @crypto_register_ahash(ptr noundef %32) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = icmp eq i32 %28, 0
  br i1 %36, label %52, label %43

37:                                               ; preds = %26
  %38 = add nuw nsw i32 %28, 1
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.mv_cesa_caps, ptr %39, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %26, label %69

43:                                               ; preds = %43, %35
  %44 = phi i32 [ %50, %43 ], [ 0, %35 ]
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.mv_cesa_caps, ptr %45, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr ptr, ptr %47, i32 %44
  %49 = load ptr, ptr %48, align 4
  tail call void @crypto_unregister_ahash(ptr noundef %49) #10
  %50 = add nuw nsw i32 %44, 1
  %51 = icmp eq i32 %50, %28
  br i1 %51, label %52, label %43

52:                                               ; preds = %43, %35
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.mv_cesa_caps, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %11
  %57 = phi i32 [ %33, %52 ], [ %18, %11 ]
  %58 = phi i32 [ %55, %52 ], [ %13, %11 ]
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %60, %56
  %61 = phi i32 [ %67, %60 ], [ 0, %56 ]
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.mv_cesa_caps, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr ptr, ptr %64, i32 %61
  %66 = load ptr, ptr %65, align 4
  tail call void @crypto_unregister_skcipher(ptr noundef %66) #10
  %67 = add nuw nsw i32 %61, 1
  %68 = icmp eq i32 %67, %58
  br i1 %68, label %69, label %60

69:                                               ; preds = %60, %56, %37, %6
  %70 = phi i32 [ %57, %56 ], [ 0, %6 ], [ %57, %60 ], [ 0, %37 ]
  ret i32 %70
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv_cesa_tdma_process(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{i64 2153288680}
!12 = !{i64 4973454}
!13 = !{i64 2153289960}
!14 = !{i64 2153290888}
!15 = !{i64 2153284821}
!16 = !{i64 2153285183}
!17 = !{i64 2153285653}
!18 = !{i64 2153286238}
!19 = !{i64 4973872}
!20 = !{i64 2153279988}
!21 = !{i64 2153280188}
!22 = !{i64 2153280529}
!23 = !{i64 2148763645}
