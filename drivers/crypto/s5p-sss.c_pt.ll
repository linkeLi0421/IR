; ModuleID = '/llk/IR/drivers/crypto/s5p-sss.c_pt.bc'
source_filename = "../drivers/crypto/s5p-sss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_aes_variant = type { i32, i32, [2 x ptr] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.65, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.65 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.s5p_aes_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.tasklet_struct, %struct.crypto_queue, i8, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, %struct.crypto_queue, %struct.tasklet_struct, [64 x i8], ptr, ptr, i32, i8 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.66, i32 }
%union.anon.66 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.s5p_aes_ctx = type { ptr, [32 x i8], [4 x i8], i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.scatter_walk = type { ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.s5p_hash_reqctx = type { ptr, i8, i64, [32 x i8], i32, i32, ptr, i32, [2 x %struct.scatterlist], i32, i32, i8, i8, i32, [0 x i8] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }

@s5p_sss_dt_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-secss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p_aes_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-secss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos_aes_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-slim-sss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_slim_aes_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description241 = internal constant [49 x i8] c"description=S5PV210 AES hw acceleration support.\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [49 x i8] c"author=Vladimir Zapolskiy <vzapolskiy@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [57 x i8] c"author=Kamil Konieczny <k.konieczny@partner.samsung.com>\00", section ".modinfo", align 1
@s5p_aes_data = internal constant %struct.samsung_aes_variant { i32 16384, i32 24576, [2 x ptr] [ptr @.str, ptr null] }, align 4
@exynos_aes_data = internal constant %struct.samsung_aes_variant { i32 512, i32 1024, [2 x ptr] [ptr @.str, ptr null] }, align 4
@exynos5433_slim_aes_data = internal constant %struct.samsung_aes_variant { i32 1024, i32 2048, [2 x ptr] [ptr @.str.1, ptr @.str.2] }, align 4
@.str = private unnamed_addr constant [6 x i8] c"secss\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@s5p_aes_crypto = internal global %struct.platform_driver { ptr @s5p_aes_probe, ptr @s5p_aes_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5p_sss_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [10 x i8] c"s5p-secss\00", align 1
@s5p_dev = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to find secss clock %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Enabling clock %s failed, err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to find clock %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"feed control interrupt is not available.\0A\00", align 1
@algs = internal global [3 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @s5p_aes_setkey, ptr @s5p_aes_ecb_encrypt, ptr @s5p_aes_ecb_decrypt, ptr @s5p_aes_init_tfm, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 16, i32 44, i32 15, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-s5p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @s5p_aes_setkey, ptr @s5p_aes_cbc_encrypt, ptr @s5p_aes_cbc_decrypt, ptr @s5p_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 16, i32 44, i32 15, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-s5p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @s5p_aes_setkey, ptr @s5p_aes_ctr_crypt, ptr @s5p_aes_ctr_crypt, ptr @s5p_aes_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 1, i32 44, i32 15, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-s5p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@algs_sha1_md5_sha256 = internal global [3 x %struct.ahash_alg] [%struct.ahash_alg { ptr @s5p_hash_init, ptr @s5p_hash_update, ptr @s5p_hash_final, ptr @s5p_hash_finup, ptr @s5p_hash_digest, ptr @s5p_hash_export, ptr @s5p_hash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 184, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 12, i32 7, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr @s5p_hash_cra_init, ptr @s5p_hash_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @s5p_hash_init, ptr @s5p_hash_update, ptr @s5p_hash_final, ptr @s5p_hash_finup, ptr @s5p_hash_digest, ptr @s5p_hash_export, ptr @s5p_hash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 184, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 12, i32 7, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr @s5p_hash_cra_init, ptr @s5p_hash_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @s5p_hash_init, ptr @s5p_hash_update, ptr @s5p_hash_final, ptr @s5p_hash_finup, ptr @s5p_hash_digest, ptr @s5p_hash_export, ptr @s5p_hash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 184, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4480, i32 64, i32 12, i32 7, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"exynos-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr @s5p_hash_cra_init, ptr @s5p_hash_cra_exit, ptr null, ptr @__this_module, [48 x i8] undef } } }], align 64
@.str.8 = private unnamed_addr constant [25 x i8] c"can't register '%s': %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"s5p-sss driver registered\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"alloc pages for unaligned case.\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dma_map_sg error\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\013fallback alloc fails for '%s'\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_license242], section "llvm.metadata"

@__mod_of__s5p_sss_dt_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @s5p_sss_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_aes_crypto, ptr noundef nonnull @__this_module) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_aes_crypto) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr @s5p_dev, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %170

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 240, i32 noundef 3520) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %170, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %2) #14
  br label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device_id, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = inttoptr i32 %18 to ptr
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %13, %12 ], [ %19, %14 ]
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %170, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 16
  store ptr %22, ptr %25, align 4
  %26 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %22) #14
  %27 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 26
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %26 to i32
  br label %170

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -768
  store i32 %38, ptr %36, align 4
  store i8 0, ptr %30, align 4
  %39 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %22) #14
  store ptr %39, ptr %27, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = ptrtoint ptr %39 to i32
  br label %170

43:                                               ; preds = %35, %24
  %44 = getelementptr inbounds %struct.samsung_aes_variant, ptr %21, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %45) #14
  %47 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = ptrtoint ptr %46 to i32
  %51 = load ptr, ptr %44, align 4
  %52 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %50, ptr noundef nonnull @.str.4, ptr noundef %51) #14
  br label %170

53:                                               ; preds = %43
  %54 = tail call i32 @clk_prepare(ptr noundef %46) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = tail call i32 @clk_enable(ptr noundef %46) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  tail call void @clk_unprepare(ptr noundef %46) #14
  br label %60

60:                                               ; preds = %59, %53
  %61 = phi i32 [ %54, %53 ], [ %57, %59 ]
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %64, i32 noundef %61) #15
  br label %170

65:                                               ; preds = %60, %56
  %66 = getelementptr %struct.samsung_aes_variant, ptr %21, i32 0, i32 2, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  %70 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull %67) #14
  %71 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 2
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = ptrtoint ptr %70 to i32
  %75 = load ptr, ptr %66, align 4
  %76 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %74, ptr noundef nonnull @.str.6, ptr noundef %75) #14
  br label %167

77:                                               ; preds = %69
  %78 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %70)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %81, i32 noundef %78) #15
  br label %167

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 2
  store ptr null, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 15
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 18
  store i32 0, ptr %86, align 4
  %87 = load ptr, ptr %27, align 4
  %88 = load i32, ptr %21, align 4
  %89 = getelementptr i8, ptr %87, i32 %88
  %90 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 4
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.samsung_aes_variant, ptr %21, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %87, i32 %92
  %94 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 17
  store ptr %93, ptr %94, align 4
  %95 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #14
  %96 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 5
  store i32 %95, ptr %96, align 4
  %97 = icmp slt i32 %95, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.7) #15
  br label %163

99:                                               ; preds = %84
  %100 = load ptr, ptr %0, align 8
  %101 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %95, ptr noundef null, ptr noundef nonnull @s5p_aes_interrupt, i32 noundef 8192, ptr noundef %100, ptr noundef %0) #14
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.7) #15
  br label %163

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 14
  store i8 0, ptr %105, align 4
  store ptr %2, ptr %6, align 4
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %106, align 8
  store ptr %6, ptr @s5p_dev, align 4
  %107 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 12
  %108 = ptrtoint ptr %6 to i32
  tail call void @tasklet_init(ptr noundef %107, ptr noundef nonnull @s5p_tasklet_cb, i32 noundef %108) #14
  %109 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 13
  tail call void @crypto_init_queue(ptr noundef %109, i32 noundef 1) #14
  %110 = tail call i32 @crypto_register_skcipher(ptr noundef nonnull @algs) #14
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %153

112:                                              ; preds = %104
  %113 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 1)) #14
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %112
  %116 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 2)) #14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 26
  %120 = load i8, ptr %119, align 4, !range !8
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 21
  tail call void @tasklet_init(ptr noundef %123, ptr noundef nonnull @s5p_hash_tasklet_cb, i32 noundef %108) #14
  %124 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 20
  tail call void @crypto_init_queue(ptr noundef %124, i32 noundef 10) #14
  %125 = tail call i32 @crypto_register_ahash(ptr noundef nonnull @algs_sha1_md5_sha256) #14
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %122
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 0, i32 11, i32 3, i32 9), i32 noundef %125) #15
  br label %144

128:                                              ; preds = %137, %134
  %129 = phi i32 [ 2, %137 ], [ 1, %134 ]
  %130 = phi i32 [ %138, %137 ], [ %135, %134 ]
  %131 = getelementptr [3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 %129, i32 11, i32 3, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %131, i32 noundef %130) #15
  %132 = add nsw i32 %129, -1
  %133 = getelementptr [3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 %132
  tail call void @crypto_unregister_ahash(ptr noundef %133) #14
  br i1 %136, label %141, label %144

134:                                              ; preds = %122
  %135 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 1)) #14
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %128

137:                                              ; preds = %134
  %138 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 2)) #14
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %128

140:                                              ; preds = %137, %118
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.9) #15
  br label %170

141:                                              ; preds = %128
  %142 = add nsw i32 %129, -2
  %143 = getelementptr [3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 %142
  tail call void @crypto_unregister_ahash(ptr noundef %143) #14
  br label %144

144:                                              ; preds = %141, %128, %127
  %145 = phi i32 [ %125, %127 ], [ %130, %141 ], [ %130, %128 ]
  tail call void @tasklet_kill(ptr noundef %123) #14
  %146 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, -768
  store i32 %148, ptr %146, align 4
  br label %154

149:                                              ; preds = %115, %112
  %150 = phi i32 [ 2, %115 ], [ 1, %112 ]
  %151 = phi i32 [ %116, %115 ], [ %113, %112 ]
  %152 = getelementptr [3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 %150, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %152, i32 noundef %151) #15
  br label %154

153:                                              ; preds = %104
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 0, i32 11, i32 8), i32 noundef %110) #15
  br label %161

154:                                              ; preds = %149, %144
  %155 = phi i32 [ %145, %144 ], [ %151, %149 ]
  %156 = phi i32 [ 3, %144 ], [ %150, %149 ]
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @algs) #14
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 1)) #14
  %159 = icmp eq i32 %156, 2
  br i1 %159, label %161, label %160

160:                                              ; preds = %158
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 2)) #14
  br label %161

161:                                              ; preds = %160, %158, %154, %153
  %162 = phi i32 [ %110, %153 ], [ %155, %160 ], [ %155, %158 ], [ %155, %154 ]
  tail call void @tasklet_kill(ptr noundef %107) #14
  br label %163

163:                                              ; preds = %161, %103, %98
  %164 = phi i32 [ %95, %98 ], [ %101, %103 ], [ %162, %161 ]
  %165 = getelementptr inbounds %struct.s5p_aes_dev, ptr %6, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  tail call void @clk_disable(ptr noundef %166) #14
  tail call void @clk_unprepare(ptr noundef %166) #14
  br label %167

167:                                              ; preds = %163, %80, %73
  %168 = phi i32 [ %76, %73 ], [ %78, %80 ], [ %164, %163 ]
  %169 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %169) #14
  tail call void @clk_unprepare(ptr noundef %169) #14
  store ptr null, ptr @s5p_dev, align 4
  br label %170

170:                                              ; preds = %167, %140, %63, %49, %41, %33, %20, %5, %1
  %171 = phi i32 [ %42, %41 ], [ %52, %49 ], [ %61, %63 ], [ %168, %167 ], [ 0, %140 ], [ %34, %33 ], [ -17, %1 ], [ -12, %5 ], [ -22, %20 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @algs) #14
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 1)) #14
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([3 x %struct.skcipher_alg], ptr @algs, i32 0, i32 2)) #14
  %6 = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 12
  tail call void @tasklet_kill(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 26
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 2)) #14
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds ([3 x %struct.ahash_alg], ptr @algs_sha1_md5_sha256, i32 0, i32 1)) #14
  tail call void @crypto_unregister_ahash(ptr noundef nonnull @algs_sha1_md5_sha256) #14
  %11 = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -768
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %16) #14
  store i8 0, ptr %7, align 4
  br label %17

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #14
  tail call void @clk_unprepare(ptr noundef %19) #14
  %20 = getelementptr inbounds %struct.s5p_aes_dev, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #14
  tail call void @clk_unprepare(ptr noundef %21) #14
  store ptr null, ptr @s5p_dev, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i32 [ 0, %17 ], [ -19, %1 ]
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #14
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 15
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !9
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %13, ptr noundef %15, i32 noundef 1, i32 noundef 1, i32 noundef 0) #14
  %16 = load ptr, ptr %14, align 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = tail call ptr @sg_next(ptr noundef %16) #14
  %22 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %4, align 4
  %27 = tail call i32 @dma_map_sg_attrs(ptr noundef %26, ptr noundef %21, i32 noundef 1, i32 noundef 1, i32 noundef 0) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store ptr %21, ptr %14, align 4
  br label %30

30:                                               ; preds = %29, %25, %20, %12, %2
  %31 = phi i1 [ false, %29 ], [ true, %25 ], [ true, %20 ], [ false, %12 ], [ false, %2 ]
  %32 = phi i1 [ true, %29 ], [ false, %25 ], [ false, %20 ], [ false, %12 ], [ false, %2 ]
  %33 = phi i32 [ 1, %29 ], [ -12, %25 ], [ -22, %20 ], [ 0, %12 ], [ 0, %2 ]
  %34 = and i32 %9, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  %42 = load ptr, ptr %4, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %42, ptr noundef %38, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %43 = load ptr, ptr %37, align 4
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = tail call ptr @sg_next(ptr noundef %43) #14
  %49 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %4, align 4
  %54 = tail call i32 @dma_map_sg_attrs(ptr noundef %53, ptr noundef %48, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store ptr %48, ptr %37, align 4
  br label %57

57:                                               ; preds = %56, %52, %47, %36, %30
  %58 = phi i1 [ false, %56 ], [ true, %52 ], [ true, %47 ], [ false, %36 ], [ false, %30 ]
  %59 = phi i1 [ true, %56 ], [ false, %52 ], [ false, %47 ], [ false, %36 ], [ false, %30 ]
  %60 = phi i32 [ 1, %56 ], [ -12, %52 ], [ -22, %47 ], [ 0, %36 ], [ 0, %30 ]
  %61 = phi i1 [ %41, %56 ], [ %41, %52 ], [ %41, %47 ], [ %41, %36 ], [ false, %30 ]
  %62 = and i32 %9, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 25
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 24
  %70 = load ptr, ptr %69, align 4
  %71 = tail call ptr @sg_next(ptr noundef %70) #14
  store ptr %71, ptr %69, align 4
  br label %77

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 4, ptr noundef %73) #14
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 2
  %76 = xor i32 %75, 2
  br label %77

77:                                               ; preds = %72, %68, %57
  %78 = phi i32 [ 0, %57 ], [ 1, %68 ], [ %76, %72 ]
  %79 = and i32 %9, 14
  %80 = load ptr, ptr %7, align 4
  %81 = getelementptr i8, ptr %80, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #14, !srcloc !10
  %82 = and i32 %9, 160
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %77
  %85 = and i32 %9, 128
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 %79, i32 16
  %88 = and i32 %9, 32
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 %87, i32 64
  %91 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 3, ptr noundef %91) #14
  %92 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 17
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %90) #14, !srcloc !10
  br label %95

95:                                               ; preds = %84, %77
  %96 = phi i32 [ 0, %84 ], [ %78, %77 ]
  %97 = or i1 %31, %58
  %98 = select i1 %31, i32 %33, i32 %60
  br i1 %97, label %168, label %99

99:                                               ; preds = %95
  br i1 %61, label %100, label %127

100:                                              ; preds = %99
  tail call fastcc void @s5p_sg_done(ptr noundef %4)
  %101 = icmp eq i32 %96, 1
  br i1 %101, label %102, label %116

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 24
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 25
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 4
  %108 = getelementptr inbounds %struct.scatterlist, ptr %104, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr i8, ptr %110, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #14, !srcloc !10
  %112 = getelementptr inbounds %struct.scatterlist, ptr %104, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %7, align 4
  %115 = getelementptr i8, ptr %114, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #14, !srcloc !10
  br label %116

116:                                              ; preds = %102, %100
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %117 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.skcipher_request, ptr %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.skcipher_request, ptr %118, i32 0, i32 4, i32 1
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef %119, i32 noundef 0) #14
  %122 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 12, i32 1
  %123 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %122) #14
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %191

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %126) #14
  br label %191

127:                                              ; preds = %99
  br i1 %59, label %128, label %139

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 9
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %7, align 4
  %134 = getelementptr i8, ptr %133, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #14, !srcloc !10
  %135 = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %7, align 4
  %138 = getelementptr i8, ptr %137, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #14, !srcloc !10
  br label %139

139:                                              ; preds = %128, %127
  br i1 %32, label %140, label %151

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 8
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.scatterlist, ptr %142, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %7, align 4
  %146 = getelementptr i8, ptr %145, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #14, !srcloc !10
  %147 = getelementptr inbounds %struct.scatterlist, ptr %142, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = load ptr, ptr %7, align 4
  %150 = getelementptr i8, ptr %149, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #14, !srcloc !10
  br label %151

151:                                              ; preds = %140, %139
  %152 = icmp eq i32 %96, 1
  br i1 %152, label %153, label %167

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 24
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 25
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, -1
  store i32 %158, ptr %156, align 4
  %159 = getelementptr inbounds %struct.scatterlist, ptr %155, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %7, align 4
  %162 = getelementptr i8, ptr %161, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #14, !srcloc !10
  %163 = getelementptr inbounds %struct.scatterlist, ptr %155, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = load ptr, ptr %7, align 4
  %166 = getelementptr i8, ptr %165, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #14, !srcloc !10
  br label %167

167:                                              ; preds = %153, %151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  br label %191

168:                                              ; preds = %95
  tail call fastcc void @s5p_sg_done(ptr noundef %4)
  %169 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 14
  store i8 0, ptr %169, align 4
  %170 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 6
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq i32 %96, 1
  br i1 %172, label %173, label %187

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 24
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 25
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, -1
  store i32 %178, ptr %176, align 4
  %179 = getelementptr inbounds %struct.scatterlist, ptr %175, i32 0, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = load ptr, ptr %7, align 4
  %182 = getelementptr i8, ptr %181, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #14, !srcloc !10
  %183 = getelementptr inbounds %struct.scatterlist, ptr %175, i32 0, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = load ptr, ptr %7, align 4
  %186 = getelementptr i8, ptr %185, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #14, !srcloc !10
  br label %187

187:                                              ; preds = %173, %168
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %188 = getelementptr inbounds %struct.skcipher_request, ptr %171, i32 0, i32 4
  %189 = getelementptr inbounds %struct.skcipher_request, ptr %171, i32 0, i32 4, i32 1
  %190 = load ptr, ptr %189, align 8
  tail call void %190(ptr noundef %188, i32 noundef %98) #14
  br label %191

191:                                              ; preds = %187, %167, %125, %116
  br i1 %83, label %198, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 21, i32 1
  %194 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %193) #14
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %197) #14
  br label %204

198:                                              ; preds = %191
  %199 = icmp eq i32 %96, 2
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 17
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr i8, ptr %202, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 1) #14, !srcloc !10
  br label %204

204:                                              ; preds = %200, %198, %196, %192
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_tasklet_cb(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 13
  %6 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 13, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  %9 = select i1 %8, ptr null, ptr %7
  %10 = tail call ptr @crypto_dequeue_request(ptr noundef %5) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 14
  store i8 0, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  br label %215

14:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  %15 = icmp eq ptr %9, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.crypto_async_request, ptr %9, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef nonnull %9, i32 noundef -115) #14
  br label %19

19:                                               ; preds = %16, %14
  %20 = getelementptr i8, ptr %10, i32 -16
  %21 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 6
  store ptr %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %10, i32 16
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr inbounds %struct.crypto_tfm, ptr %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 7
  store ptr %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %10, i32 48
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = or i32 %28, 64
  %30 = and i32 %27, 6
  switch i32 %30, label %39 [
    i32 2, label %31
    i32 4, label %35
  ]

31:                                               ; preds = %19
  %32 = or i32 %28, 66
  %33 = getelementptr i8, ptr %10, i32 -12
  %34 = load ptr, ptr %33, align 4
  br label %39

35:                                               ; preds = %19
  %36 = or i32 %28, 68
  %37 = getelementptr i8, ptr %10, i32 -12
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %35, %31, %19
  %40 = phi i32 [ %32, %31 ], [ %36, %35 ], [ %29, %19 ]
  %41 = phi ptr [ %34, %31 ], [ null, %35 ], [ null, %19 ]
  %42 = phi ptr [ null, %31 ], [ %38, %35 ], [ null, %19 ]
  %43 = getelementptr inbounds %struct.crypto_tfm, ptr %23, i32 1, i32 4, i32 24
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %49 [
    i32 24, label %45
    i32 32, label %47
  ]

45:                                               ; preds = %39
  %46 = or i32 %40, 16
  br label %49

47:                                               ; preds = %39
  %48 = or i32 %40, 32
  br label %49

49:                                               ; preds = %47, %45, %39
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ], [ %40, %39 ]
  %51 = or i32 %50, 3976
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %53 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 12) #14, !srcloc !10
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #14, !srcloc !10
  %58 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 10
  store ptr null, ptr %58, align 4
  %59 = getelementptr i8, ptr %10, i32 -8
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %68, %49
  %63 = phi ptr [ %69, %68 ], [ %60, %49 ]
  %64 = getelementptr inbounds %struct.scatterlist, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = tail call ptr @sg_next(ptr noundef nonnull %63) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %62

71:                                               ; preds = %62
  %72 = tail call fastcc i32 @s5p_make_sg_cpy(ptr noundef %2, ptr noundef nonnull %60, ptr noundef %58) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %210

74:                                               ; preds = %71
  %75 = load ptr, ptr %58, align 4
  br label %76

76:                                               ; preds = %74, %68, %49
  %77 = phi ptr [ %75, %74 ], [ null, %49 ], [ %60, %68 ]
  %78 = getelementptr inbounds %struct.scatterlist, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %2, align 4
  %83 = tail call i32 @dma_map_sg_attrs(ptr noundef %82, ptr noundef %77, i32 noundef 1, i32 noundef 1, i32 noundef 0) #14
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %81, %76
  %86 = phi i32 [ -12, %81 ], [ -22, %76 ]
  %87 = load ptr, ptr %58, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %210, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %21, align 4
  %91 = load i32, ptr %90, align 64
  %92 = load i32, ptr %87, align 4
  %93 = and i32 %92, -4
  %94 = inttoptr i32 %93 to ptr
  %95 = tail call ptr @page_address(ptr noundef %94) #14
  %96 = getelementptr inbounds %struct.scatterlist, ptr %87, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %95, i32 %97
  %99 = ptrtoint ptr %98 to i32
  %100 = add i32 %91, 15
  %101 = and i32 %100, -16
  %102 = add i32 %101, -1
  %103 = icmp ult i32 %102, 4096
  %104 = lshr i32 %102, 12
  %105 = tail call i32 @llvm.ctlz.i32(i32 %104, i1 false) #14, !range !11
  %106 = sub nuw nsw i32 32, %105
  %107 = select i1 %103, i32 0, i32 %106
  tail call void @free_pages(i32 noundef %99, i32 noundef %107) #14
  %108 = load ptr, ptr %58, align 4
  tail call void @kfree(ptr noundef %108) #14
  store ptr null, ptr %58, align 4
  br label %210

109:                                              ; preds = %81
  %110 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 8
  store ptr %77, ptr %110, align 4
  %111 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 11
  store ptr null, ptr %111, align 4
  %112 = getelementptr i8, ptr %10, i32 -4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %129, label %115

115:                                              ; preds = %121, %109
  %116 = phi ptr [ %122, %121 ], [ %113, %109 ]
  %117 = getelementptr inbounds %struct.scatterlist, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 15
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = tail call ptr @sg_next(ptr noundef nonnull %116) #14
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %115

124:                                              ; preds = %115
  %125 = tail call fastcc i32 @s5p_make_sg_cpy(ptr noundef %2, ptr noundef nonnull %113, ptr noundef %111) #14
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %206

127:                                              ; preds = %124
  %128 = load ptr, ptr %111, align 4
  br label %129

129:                                              ; preds = %127, %121, %109
  %130 = phi ptr [ %128, %127 ], [ null, %109 ], [ %113, %121 ]
  %131 = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %2, align 4
  %136 = tail call i32 @dma_map_sg_attrs(ptr noundef %135, ptr noundef %130, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %134, %129
  %139 = phi i32 [ -12, %134 ], [ -22, %129 ]
  %140 = load ptr, ptr %111, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %206, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %21, align 4
  %144 = load i32, ptr %143, align 64
  %145 = load i32, ptr %140, align 4
  %146 = and i32 %145, -4
  %147 = inttoptr i32 %146 to ptr
  %148 = tail call ptr @page_address(ptr noundef %147) #14
  %149 = getelementptr inbounds %struct.scatterlist, ptr %140, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i8, ptr %148, i32 %150
  %152 = ptrtoint ptr %151 to i32
  %153 = add i32 %144, 15
  %154 = and i32 %153, -16
  %155 = add i32 %154, -1
  %156 = icmp ult i32 %155, 4096
  %157 = lshr i32 %155, 12
  %158 = tail call i32 @llvm.ctlz.i32(i32 %157, i1 false) #14, !range !11
  %159 = sub nuw nsw i32 32, %158
  %160 = select i1 %156, i32 0, i32 %159
  tail call void @free_pages(i32 noundef %152, i32 noundef %160) #14
  %161 = load ptr, ptr %111, align 4
  tail call void @kfree(ptr noundef %161) #14
  store ptr null, ptr %111, align 4
  br label %206

162:                                              ; preds = %134
  %163 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 9
  store ptr %130, ptr %163, align 4
  %164 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %51) #14, !srcloc !10
  %166 = load ptr, ptr %25, align 4
  %167 = getelementptr inbounds %struct.s5p_aes_ctx, ptr %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.s5p_aes_ctx, ptr %166, i32 0, i32 3
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq ptr %41, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %162
  %172 = load ptr, ptr %164, align 4
  %173 = getelementptr i8, ptr %172, i32 48
  tail call void @mmiocpy(ptr noundef %173, ptr noundef nonnull %41, i32 noundef 16) #14
  br label %174

174:                                              ; preds = %171, %162
  %175 = icmp eq ptr %42, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %174
  %177 = load ptr, ptr %164, align 4
  %178 = getelementptr i8, ptr %177, i32 64
  tail call void @mmiocpy(ptr noundef %178, ptr noundef nonnull %42, i32 noundef 16) #14
  br label %179

179:                                              ; preds = %176, %174
  %180 = icmp eq i32 %169, 24
  %181 = select i1 %180, i32 136, i32 144
  %182 = icmp eq i32 %169, 32
  %183 = select i1 %182, i32 128, i32 %181
  %184 = load ptr, ptr %164, align 4
  %185 = getelementptr i8, ptr %184, i32 %183
  tail call void @mmiocpy(ptr noundef %185, ptr noundef %167, i32 noundef %169) #14
  %186 = load ptr, ptr %110, align 4
  %187 = getelementptr inbounds %struct.scatterlist, ptr %186, i32 0, i32 3
  %188 = load i32, ptr %187, align 4
  %189 = load ptr, ptr %53, align 4
  %190 = getelementptr i8, ptr %189, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #14, !srcloc !10
  %191 = getelementptr inbounds %struct.scatterlist, ptr %186, i32 0, i32 4
  %192 = load i32, ptr %191, align 4
  %193 = load ptr, ptr %53, align 4
  %194 = getelementptr i8, ptr %193, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %192) #14, !srcloc !10
  %195 = load ptr, ptr %163, align 4
  %196 = getelementptr inbounds %struct.scatterlist, ptr %195, i32 0, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = load ptr, ptr %53, align 4
  %199 = getelementptr i8, ptr %198, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %197) #14, !srcloc !10
  %200 = getelementptr inbounds %struct.scatterlist, ptr %195, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = load ptr, ptr %53, align 4
  %203 = getelementptr i8, ptr %202, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %201) #14, !srcloc !10
  %204 = load ptr, ptr %53, align 4
  %205 = getelementptr i8, ptr %204, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 12) #14, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %52) #14
  br label %215

206:                                              ; preds = %142, %138, %124
  %207 = phi i32 [ %139, %142 ], [ %139, %138 ], [ %125, %124 ]
  %208 = load ptr, ptr %2, align 4
  %209 = load ptr, ptr %110, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %208, ptr noundef %209, i32 noundef 1, i32 noundef 1, i32 noundef 0) #14
  br label %210

210:                                              ; preds = %206, %89, %85, %71
  %211 = phi i32 [ %207, %206 ], [ %86, %89 ], [ %86, %85 ], [ %72, %71 ]
  tail call fastcc void @s5p_sg_done(ptr noundef %2) #14
  %212 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 14
  store i8 0, ptr %212, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %52) #14
  %213 = getelementptr i8, ptr %10, i32 8
  %214 = load ptr, ptr %213, align 8
  tail call void %214(ptr noundef nonnull %10, i32 noundef %211) #14
  br label %215

215:                                              ; preds = %210, %179, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_hash_tasklet_cb(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 19
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %3) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 1, i32 5, i32 16
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ahash_request, ptr %16, i32 1, i32 5, i32 20
  %21 = load i32, ptr %20, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %3) #14
  br label %22

22:                                               ; preds = %14, %11
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %3) #14
  %26 = getelementptr inbounds %struct.s5p_aes_dev, ptr %2, i32 0, i32 23
  %27 = load ptr, ptr %26, align 4
  tail call fastcc void @s5p_hash_finish_req(ptr noundef %27, i32 noundef 0)
  %28 = load volatile i32, ptr %3, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %1
  %32 = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %2, ptr noundef null)
  br label %33

33:                                               ; preds = %31, %25, %22, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_sg_done(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.scatter_walk, align 8
  %3 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 4
  %11 = and i32 %10, -4
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call ptr @page_address(ptr noundef %12) #14
  %14 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %16, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %9
  %22 = getelementptr i8, ptr %13, i32 %15
  store ptr %18, ptr %2, align 8
  %23 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.scatter_walk, ptr %2, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  call void @scatterwalk_copychunks(ptr noundef %22, ptr noundef nonnull %2, i32 noundef %19, i32 noundef 1) #14
  %26 = load ptr, ptr %2, align 8
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -4
  %29 = inttoptr i32 %28 to ptr
  %30 = load i32, ptr %25, align 4
  %31 = add i32 %30, -1
  %32 = lshr i32 %31, 12
  %33 = getelementptr %struct.page, ptr %29, i32 %32
  call void @flush_dcache_page(ptr noundef %33) #14
  br label %34

34:                                               ; preds = %21, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %35

35:                                               ; preds = %34, %1
  %36 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 4
  %41 = load i32, ptr %40, align 64
  %42 = load i32, ptr %37, align 4
  %43 = and i32 %42, -4
  %44 = inttoptr i32 %43 to ptr
  %45 = call ptr @page_address(ptr noundef %44) #14
  %46 = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = ptrtoint ptr %48 to i32
  %50 = add i32 %41, 15
  %51 = and i32 %50, -16
  %52 = add i32 %51, -1
  %53 = icmp ult i32 %52, 4096
  %54 = lshr i32 %52, 12
  %55 = call i32 @llvm.ctlz.i32(i32 %54, i1 false) #14, !range !11
  %56 = sub nuw nsw i32 32, %55
  %57 = select i1 %53, i32 0, i32 %56
  call void @free_pages(i32 noundef %49, i32 noundef %57) #14
  %58 = load ptr, ptr %36, align 4
  call void @kfree(ptr noundef %58) #14
  store ptr null, ptr %36, align 4
  br label %59

59:                                               ; preds = %39, %35
  %60 = load ptr, ptr %6, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %82, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %3, align 4
  %64 = load i32, ptr %63, align 64
  %65 = load i32, ptr %60, align 4
  %66 = and i32 %65, -4
  %67 = inttoptr i32 %66 to ptr
  %68 = call ptr @page_address(ptr noundef %67) #14
  %69 = getelementptr inbounds %struct.scatterlist, ptr %60, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = ptrtoint ptr %71 to i32
  %73 = add i32 %64, 15
  %74 = and i32 %73, -16
  %75 = add i32 %74, -1
  %76 = icmp ult i32 %75, 4096
  %77 = lshr i32 %75, 12
  %78 = call i32 @llvm.ctlz.i32(i32 %77, i1 false) #14, !range !11
  %79 = sub nuw nsw i32 32, %78
  %80 = select i1 %76, i32 0, i32 %79
  call void @free_pages(i32 noundef %72, i32 noundef %80) #14
  %81 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %81) #14
  store ptr null, ptr %6, align 4
  br label %82

82:                                               ; preds = %62, %59
  %83 = load i32, ptr %5, align 4
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = and i32 %83, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86, %82
  %90 = phi i32 [ 48, %82 ], [ 64, %86 ]
  %91 = getelementptr inbounds %struct.skcipher_request, ptr %4, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 %90
  call void @mmiocpy(ptr noundef %92, ptr noundef %95, i32 noundef 16) #14
  br label %96

96:                                               ; preds = %89, %86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_copychunks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_make_sg_cpy(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.scatter_walk, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 20) #16
  store ptr %6, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 64
  %12 = add i32 %11, 15
  %13 = and i32 %12, -16
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 4096
  %16 = lshr i32 %14, 12
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 false) #14, !range !11
  %18 = sub nuw nsw i32 32, %17
  %19 = select i1 %15, i32 0, i32 %18
  %20 = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %19) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %23) #14
  store ptr null, ptr %2, align 4
  br label %51

24:                                               ; preds = %8
  %25 = load ptr, ptr %9, align 4
  %26 = load i32, ptr %25, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = inttoptr i32 %20 to ptr
  store ptr %1, ptr %4, align 8
  %30 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.scatter_walk, ptr %4, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  call void @scatterwalk_copychunks(ptr noundef nonnull %29, ptr noundef nonnull %4, i32 noundef %26, i32 noundef 0) #14
  br label %33

33:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %34 = load ptr, ptr %2, align 4
  call void @sg_init_table(ptr noundef %34, i32 noundef 1) #14
  %35 = load ptr, ptr @mem_map, align 4
  %36 = add i32 %20, 1073741824
  %37 = lshr i32 %36, 12
  %38 = getelementptr %struct.page, ptr %35, i32 %37
  %39 = ptrtoint ptr %38 to i32
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !12

42:                                               ; preds = %33
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

43:                                               ; preds = %33
  %44 = load ptr, ptr %2, align 4
  %45 = and i32 %20, 4095
  %46 = load i32, ptr %44, align 4
  %47 = and i32 %46, 3
  %48 = or i32 %47, %39
  store i32 %48, ptr %44, align 4
  %49 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 1
  store i32 %45, ptr %49, align 4
  %50 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 2
  store i32 %13, ptr %50, align 4
  br label %51

51:                                               ; preds = %43, %22, %3
  %52 = phi i32 [ 0, %43 ], [ -12, %22 ], [ -12, %3 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5p_aes_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #10 {
  switch i32 %2, label %7 [
    i32 32, label %4
    i32 24, label %4
    i32 16, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 1 %1, i32 %2, i1 false)
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 36
  store i32 %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_ecb_encrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_ecb_decrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5p_aes_init_tfm(ptr nocapture noundef writeonly %0) #11 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %3 = load ptr, ptr @s5p_dev, align 4
  store ptr %3, ptr %2, align 4
  store i32 4, ptr %0, align 64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_cbc_encrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %0, i32 noundef 2)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_cbc_decrypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %0, i32 noundef 3)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_aes_ctr_crypt(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @s5p_aes_crypt(ptr noundef %0, i32 noundef 4)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_aes_crypt(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %6 = getelementptr i8, ptr %4, i32 64
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 15
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %1, 6
  %14 = icmp eq i32 %13, 4
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  store i32 %1, ptr %5, align 4
  %17 = getelementptr inbounds %struct.s5p_aes_dev, ptr %7, i32 0, i32 15
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #14
  %19 = getelementptr inbounds %struct.s5p_aes_dev, ptr %7, i32 0, i32 13
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4
  %21 = tail call i32 @crypto_enqueue_request(ptr noundef %19, ptr noundef %20) #14
  %22 = getelementptr inbounds %struct.s5p_aes_dev, ptr %7, i32 0, i32 14
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #14
  br label %32

26:                                               ; preds = %16
  store i8 1, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #14
  %27 = getelementptr inbounds %struct.s5p_aes_dev, ptr %7, i32 0, i32 12, i32 1
  %28 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %27) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.s5p_aes_dev, ptr %7, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %31) #14
  br label %32

32:                                               ; preds = %30, %26, %25, %10, %2
  %33 = phi i32 [ 0, %2 ], [ -22, %10 ], [ %21, %25 ], [ %21, %26 ], [ %21, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_hash_handle_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 18
  %4 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 20
  %5 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 19
  %6 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 20, i32 1
  %7 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 23
  %8 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 17
  %10 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 15
  br label %11

11:                                               ; preds = %447, %2
  %12 = phi ptr [ %1, %2 ], [ null, %447 ]
  %13 = phi i32 [ 0, %2 ], [ %19, %447 ]
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %15 = icmp eq ptr %12, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @crypto_enqueue_request(ptr noundef %4, ptr noundef nonnull %12) #14
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %17, %16 ], [ %13, %11 ]
  %20 = load volatile i32, ptr %5, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %449

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, %4
  %26 = select i1 %25, ptr null, ptr %24
  %27 = tail call ptr @crypto_dequeue_request(ptr noundef %4) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %449, label %29

29:                                               ; preds = %23
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %14) #14
  %30 = icmp eq ptr %26, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.crypto_async_request, ptr %26, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef nonnull %26, i32 noundef -115) #14
  br label %34

34:                                               ; preds = %31, %29
  store ptr %27, ptr %7, align 4
  %35 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 0, i32 6
  %36 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 0, i32 0, i32 1
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 8
  %40 = load i8, ptr %39, align 8, !range !8
  %41 = icmp ne i8 %40, 0
  br i1 %38, label %50, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 0, i32 1
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 4
  store i32 %47, ptr %48, align 4
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %381, label %57

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 12
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 4
  store i32 %52, ptr %53, align 4
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %381, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5
  store i32 0, ptr %56, align 8
  br label %78

57:                                               ; preds = %42
  %58 = icmp eq i32 %44, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %57
  %60 = and i32 %46, 63
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %59
  %63 = sub nuw nsw i32 64, %60
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 %44) #14
  %65 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 16
  %66 = getelementptr i8, ptr %65, i32 %46
  %67 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %66, ptr noundef %68, i32 noundef 0, i32 noundef %64, i32 noundef 0) #14
  %69 = load i32, ptr %45, align 4
  %70 = add i32 %69, %64
  store i32 %70, ptr %45, align 4
  %71 = sub i32 %44, %64
  br label %72

72:                                               ; preds = %62, %59, %57
  %73 = phi i32 [ %64, %62 ], [ 0, %59 ], [ 0, %57 ]
  %74 = phi i32 [ %70, %62 ], [ %46, %59 ], [ %46, %57 ]
  %75 = phi i32 [ %71, %62 ], [ %44, %59 ], [ 0, %57 ]
  %76 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5
  store i32 %73, ptr %76, align 8
  %77 = icmp eq i32 %74, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %72, %55
  %79 = phi ptr [ %56, %55 ], [ %76, %72 ]
  %80 = phi i32 [ 0, %55 ], [ %75, %72 ]
  %81 = phi ptr [ %51, %55 ], [ %45, %72 ]
  %82 = phi ptr [ %53, %55 ], [ %48, %72 ]
  %83 = phi i32 [ %52, %55 ], [ %74, %72 ]
  %84 = load ptr, ptr %35, align 8
  %85 = getelementptr inbounds %struct.s5p_aes_dev, ptr %84, i32 0, i32 22
  %86 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %85, ptr align 8 %86, i32 %83, i1 false) #14
  br label %87

87:                                               ; preds = %78, %72
  %88 = phi ptr [ %79, %78 ], [ %76, %72 ]
  %89 = phi i32 [ %80, %78 ], [ %75, %72 ]
  %90 = phi ptr [ %81, %78 ], [ %45, %72 ]
  %91 = phi ptr [ %82, %78 ], [ %48, %72 ]
  %92 = load i32, ptr %91, align 4
  br i1 %41, label %106, label %93

93:                                               ; preds = %87
  %94 = and i32 %92, 63
  %95 = icmp eq i32 %94, 0
  %96 = add i32 %92, -64
  %97 = and i32 %92, -64
  %98 = select i1 %95, i32 %96, i32 %97
  %99 = sub i32 %92, %98
  %100 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 16
  %101 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 0, i32 1
  %104 = load i32, ptr %103, align 8
  %105 = sub i32 %104, %99
  tail call void @scatterwalk_map_and_copy(ptr noundef %100, ptr noundef %102, i32 noundef %105, i32 noundef %99, i32 noundef 0) #14
  br label %106

106:                                              ; preds = %93, %87
  %107 = phi i32 [ %98, %93 ], [ %92, %87 ]
  %108 = phi i32 [ %99, %93 ], [ 0, %87 ]
  %109 = icmp sgt i32 %107, 64
  br i1 %109, label %110, label %349

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = sub i32 %89, %108
  %114 = load i32, ptr %88, align 8
  %115 = icmp eq ptr %112, null
  br i1 %115, label %379, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = icmp ne i32 %113, 0
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %379

122:                                              ; preds = %116
  %123 = icmp eq i32 %114, 0
  %124 = and i1 %41, %123
  br label %125

125:                                              ; preds = %151, %122
  %126 = phi i32 [ %153, %151 ], [ %118, %122 ]
  %127 = phi ptr [ %147, %151 ], [ %112, %122 ]
  %128 = phi i32 [ %131, %151 ], [ 0, %122 ]
  %129 = phi i32 [ %146, %151 ], [ %113, %122 ]
  %130 = phi i32 [ %145, %151 ], [ %114, %122 ]
  %131 = add i32 %128, 1
  %132 = icmp ult i32 %130, %126
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = sub i32 %130, %126
  %135 = icmp eq i32 %126, 0
  br i1 %135, label %154, label %144

136:                                              ; preds = %125
  %137 = sub i32 %126, %130
  %138 = and i32 %137, 63
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = icmp ult i32 %129, %137
  br i1 %141, label %201, label %142

142:                                              ; preds = %140
  %143 = sub i32 %129, %137
  br label %144

144:                                              ; preds = %142, %133
  %145 = phi i32 [ %134, %133 ], [ 0, %142 ]
  %146 = phi i32 [ %129, %133 ], [ %143, %142 ]
  %147 = tail call ptr @sg_next(ptr noundef nonnull %127) #14
  %148 = icmp ne i32 %146, 0
  %149 = icmp ne ptr %147, null
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %200

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.scatterlist, ptr %147, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  br label %125

154:                                              ; preds = %136, %133
  %155 = load i32, ptr %90, align 4
  %156 = add i32 %155, %113
  %157 = add i32 %156, -1
  %158 = icmp ult i32 %157, 4096
  %159 = lshr i32 %157, 12
  %160 = tail call i32 @llvm.ctlz.i32(i32 %159, i1 false) #14, !range !11
  %161 = sub nuw nsw i32 32, %160
  %162 = select i1 %158, i32 0, i32 %161
  %163 = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %162) #14
  %164 = inttoptr i32 %163 to ptr
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %154
  %167 = load ptr, ptr %35, align 8
  %168 = load ptr, ptr %167, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.10) #15
  br label %445

169:                                              ; preds = %154
  %170 = load i32, ptr %90, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %35, align 8
  %174 = getelementptr inbounds %struct.s5p_aes_dev, ptr %173, i32 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %164, ptr align 4 %174, i32 %170, i1 false) #14
  %175 = load i32, ptr %90, align 4
  br label %176

176:                                              ; preds = %172, %169
  %177 = phi i32 [ %175, %172 ], [ 0, %169 ]
  %178 = getelementptr i8, ptr %164, i32 %177
  %179 = load i32, ptr %88, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %178, ptr noundef nonnull %112, i32 noundef %179, i32 noundef %113, i32 noundef 0) #14
  %180 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2
  tail call void @sg_init_table(ptr noundef %180, i32 noundef 1) #14
  %181 = load ptr, ptr @mem_map, align 4
  %182 = add i32 %163, 1073741824
  %183 = lshr i32 %182, 12
  %184 = getelementptr %struct.page, ptr %181, i32 %183
  %185 = ptrtoint ptr %184 to i32
  %186 = and i32 %185, 3
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188, !prof !12

188:                                              ; preds = %176
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

189:                                              ; preds = %176
  %190 = and i32 %163, 4095
  %191 = load i32, ptr %180, align 4
  %192 = and i32 %191, 3
  %193 = or i32 %192, %185
  store i32 %193, ptr %180, align 4
  %194 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 0, i32 0, i32 1
  store i32 %190, ptr %194, align 4
  %195 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 0, i32 1
  store i32 %156, ptr %195, align 4
  %196 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 16
  store ptr %180, ptr %196, align 8
  %197 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 20
  store i32 1, ptr %197, align 4
  store i32 0, ptr %90, align 4
  store i32 0, ptr %88, align 8
  %198 = load ptr, ptr %35, align 8
  %199 = getelementptr inbounds %struct.s5p_aes_dev, ptr %198, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 5, ptr noundef %199) #14
  br label %379

200:                                              ; preds = %144
  br i1 %124, label %312, label %201

201:                                              ; preds = %200, %140
  %202 = load i32, ptr %88, align 8
  %203 = tail call i32 @sg_nents(ptr noundef nonnull %112) #14
  %204 = load i32, ptr %90, align 4
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = add i32 %203, %206
  %208 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %207, i32 20) #14
  %209 = extractvalue { i32, i1 } %208, 1
  br i1 %209, label %210, label %212, !prof !14

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 16
  store ptr null, ptr %211, align 8
  br label %445

212:                                              ; preds = %201
  %213 = extractvalue { i32, i1 } %208, 0
  %214 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %213, i32 noundef 3264) #17
  %215 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 16
  store ptr %214, ptr %215, align 8
  %216 = icmp eq ptr %214, null
  br i1 %216, label %445, label %217

217:                                              ; preds = %212
  tail call void @sg_init_table(ptr noundef nonnull %214, i32 noundef %207) #14
  %218 = load ptr, ptr %215, align 8
  %219 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 20
  store i32 0, ptr %219, align 4
  %220 = load i32, ptr %90, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %244, label %222

222:                                              ; preds = %217
  %223 = load ptr, ptr %35, align 8
  %224 = getelementptr inbounds %struct.s5p_aes_dev, ptr %223, i32 0, i32 22
  %225 = load ptr, ptr @mem_map, align 4
  %226 = ptrtoint ptr %224 to i32
  %227 = add i32 %226, 1073741824
  %228 = lshr i32 %227, 12
  %229 = getelementptr %struct.page, ptr %225, i32 %228
  %230 = ptrtoint ptr %229 to i32
  %231 = and i32 %230, 3
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233, !prof !12

233:                                              ; preds = %222
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

234:                                              ; preds = %222
  %235 = and i32 %226, 4095
  %236 = load i32, ptr %218, align 4
  %237 = and i32 %236, 3
  %238 = or i32 %237, %230
  store i32 %238, ptr %218, align 4
  %239 = getelementptr inbounds %struct.scatterlist, ptr %218, i32 0, i32 1
  store i32 %235, ptr %239, align 4
  %240 = getelementptr inbounds %struct.scatterlist, ptr %218, i32 0, i32 2
  store i32 %220, ptr %240, align 4
  %241 = tail call ptr @sg_next(ptr noundef %218) #14
  %242 = load i32, ptr %219, align 4
  %243 = add i32 %242, 1
  store i32 %243, ptr %219, align 4
  br label %244

244:                                              ; preds = %234, %217
  %245 = phi ptr [ %241, %234 ], [ %218, %217 ]
  br label %246

246:                                              ; preds = %252, %244
  %247 = phi i32 [ %253, %252 ], [ %202, %244 ]
  %248 = phi ptr [ %254, %252 ], [ %112, %244 ]
  %249 = getelementptr inbounds %struct.scatterlist, ptr %248, i32 0, i32 2
  %250 = load i32, ptr %249, align 4
  %251 = icmp ult i32 %247, %250
  br i1 %251, label %256, label %252

252:                                              ; preds = %246
  %253 = sub i32 %247, %250
  %254 = tail call ptr @sg_next(ptr noundef nonnull %248) #14
  %255 = icmp eq ptr %254, null
  br i1 %255, label %309, label %246

256:                                              ; preds = %246
  %257 = sub i32 %250, %247
  %258 = tail call i32 @llvm.umin.i32(i32 %113, i32 %257) #14
  %259 = sub i32 %113, %258
  %260 = load i32, ptr %248, align 4
  %261 = and i32 %260, -4
  %262 = getelementptr inbounds %struct.scatterlist, ptr %248, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = add i32 %263, %247
  %265 = load i32, ptr %245, align 4
  %266 = and i32 %265, 3
  %267 = or i32 %266, %261
  store i32 %267, ptr %245, align 4
  %268 = getelementptr inbounds %struct.scatterlist, ptr %245, i32 0, i32 1
  store i32 %264, ptr %268, align 4
  %269 = getelementptr inbounds %struct.scatterlist, ptr %245, i32 0, i32 2
  store i32 %258, ptr %269, align 4
  %270 = icmp eq i32 %259, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %256
  %272 = or i32 %261, 2
  store i32 %272, ptr %245, align 4
  br label %273

273:                                              ; preds = %271, %256
  %274 = tail call ptr @sg_next(ptr noundef %245) #14
  %275 = load i32, ptr %219, align 4
  %276 = add i32 %275, 1
  store i32 %276, ptr %219, align 4
  %277 = tail call ptr @sg_next(ptr noundef nonnull %248) #14
  %278 = icmp ne ptr %277, null
  %279 = icmp ne i32 %259, 0
  %280 = select i1 %278, i1 %279, i1 false
  br i1 %280, label %281, label %309

281:                                              ; preds = %301, %273
  %282 = phi ptr [ %302, %301 ], [ %274, %273 ]
  %283 = phi i32 [ %288, %301 ], [ %259, %273 ]
  %284 = phi ptr [ %305, %301 ], [ %277, %273 ]
  %285 = getelementptr inbounds %struct.scatterlist, ptr %284, i32 0, i32 2
  %286 = load i32, ptr %285, align 4
  %287 = tail call i32 @llvm.umin.i32(i32 %283, i32 %286) #14
  %288 = sub i32 %283, %287
  %289 = load i32, ptr %284, align 4
  %290 = and i32 %289, -4
  %291 = getelementptr inbounds %struct.scatterlist, ptr %284, i32 0, i32 1
  %292 = load i32, ptr %291, align 4
  %293 = load i32, ptr %282, align 4
  %294 = and i32 %293, 3
  %295 = or i32 %294, %290
  store i32 %295, ptr %282, align 4
  %296 = getelementptr inbounds %struct.scatterlist, ptr %282, i32 0, i32 1
  store i32 %292, ptr %296, align 4
  %297 = getelementptr inbounds %struct.scatterlist, ptr %282, i32 0, i32 2
  store i32 %287, ptr %297, align 4
  %298 = icmp eq i32 %288, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %281
  %300 = or i32 %290, 2
  store i32 %300, ptr %282, align 4
  br label %301

301:                                              ; preds = %299, %281
  %302 = tail call ptr @sg_next(ptr noundef %282) #14
  %303 = load i32, ptr %219, align 4
  %304 = add i32 %303, 1
  store i32 %304, ptr %219, align 4
  %305 = tail call ptr @sg_next(ptr noundef nonnull %284) #14
  %306 = icmp ne ptr %305, null
  %307 = icmp ne i32 %288, 0
  %308 = select i1 %306, i1 %307, i1 false
  br i1 %308, label %281, label %309, !llvm.loop !15

309:                                              ; preds = %301, %273, %252
  %310 = load ptr, ptr %35, align 8
  %311 = getelementptr inbounds %struct.s5p_aes_dev, ptr %310, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 6, ptr noundef %311) #14
  br label %379

312:                                              ; preds = %200
  %313 = load i32, ptr %90, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %346, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 20
  store i32 %131, ptr %316, align 4
  %317 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2
  tail call void @sg_init_table(ptr noundef %317, i32 noundef 2) #14
  %318 = load ptr, ptr %35, align 8
  %319 = getelementptr inbounds %struct.s5p_aes_dev, ptr %318, i32 0, i32 22
  %320 = load ptr, ptr @mem_map, align 4
  %321 = ptrtoint ptr %319 to i32
  %322 = add i32 %321, 1073741824
  %323 = lshr i32 %322, 12
  %324 = getelementptr %struct.page, ptr %320, i32 %323
  %325 = ptrtoint ptr %324 to i32
  %326 = and i32 %325, 3
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %329, label %328, !prof !12

328:                                              ; preds = %315
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

329:                                              ; preds = %315
  %330 = load i32, ptr %90, align 4
  %331 = and i32 %321, 4095
  %332 = load i32, ptr %317, align 4
  %333 = and i32 %332, 3
  %334 = or i32 %333, %325
  store i32 %334, ptr %317, align 4
  %335 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 0, i32 0, i32 1
  store i32 %331, ptr %335, align 4
  %336 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 0, i32 1
  store i32 %330, ptr %336, align 4
  %337 = getelementptr %struct.ahash_request, ptr %27, i32 2, i32 0, i32 4
  %338 = getelementptr %struct.ahash_request, ptr %27, i32 2, i32 1
  store i32 0, ptr %338, align 4
  %339 = getelementptr %struct.ahash_request, ptr %27, i32 2, i32 2
  store i32 0, ptr %339, align 4
  %340 = ptrtoint ptr %112 to i32
  %341 = and i32 %340, -4
  %342 = or i32 %341, 1
  store i32 %342, ptr %337, align 4
  %343 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 16
  store ptr %317, ptr %343, align 8
  %344 = load i32, ptr %316, align 4
  %345 = add i32 %344, 1
  store i32 %345, ptr %316, align 4
  br label %379

346:                                              ; preds = %312
  %347 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 16
  store ptr %112, ptr %347, align 8
  %348 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 20
  store i32 %131, ptr %348, align 4
  br label %379

349:                                              ; preds = %106
  %350 = load i32, ptr %90, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %357, !prof !14

352:                                              ; preds = %349
  %353 = load ptr, ptr %35, align 8
  %354 = getelementptr inbounds %struct.s5p_aes_dev, ptr %353, i32 0, i32 22
  %355 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 0, i32 2
  %356 = load ptr, ptr %355, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %354, ptr noundef %356, i32 noundef 0, i32 noundef %107, i32 noundef 0) #14
  br label %357

357:                                              ; preds = %352, %349
  %358 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2
  tail call void @sg_init_table(ptr noundef %358, i32 noundef 1) #14
  %359 = load ptr, ptr %35, align 8
  %360 = getelementptr inbounds %struct.s5p_aes_dev, ptr %359, i32 0, i32 22
  %361 = load ptr, ptr @mem_map, align 4
  %362 = ptrtoint ptr %360 to i32
  %363 = add i32 %362, 1073741824
  %364 = lshr i32 %363, 12
  %365 = getelementptr %struct.page, ptr %361, i32 %364
  %366 = ptrtoint ptr %365 to i32
  %367 = and i32 %366, 3
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %370, label %369, !prof !12

369:                                              ; preds = %357
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

370:                                              ; preds = %357
  %371 = and i32 %362, 4095
  %372 = load i32, ptr %358, align 4
  %373 = and i32 %372, 3
  %374 = or i32 %373, %366
  store i32 %374, ptr %358, align 4
  %375 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 0, i32 0, i32 1
  store i32 %371, ptr %375, align 4
  %376 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 0, i32 1
  store i32 %107, ptr %376, align 4
  %377 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 16
  store ptr %358, ptr %377, align 8
  %378 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 20
  store i32 1, ptr %378, align 4
  br label %379

379:                                              ; preds = %370, %346, %329, %309, %189, %116, %110
  store i32 %108, ptr %90, align 4
  br i1 %41, label %381, label %380

380:                                              ; preds = %379
  store i32 %107, ptr %91, align 4
  br label %381

381:                                              ; preds = %380, %379, %50, %42
  %382 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 4
  %383 = load i32, ptr %382, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %447, label %385

385:                                              ; preds = %381
  %386 = load ptr, ptr %8, align 4
  %387 = getelementptr i8, ptr %386, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 162) #14, !srcloc !10
  %388 = load ptr, ptr %8, align 4
  %389 = getelementptr i8, ptr %388, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 1) #14, !srcloc !10
  %390 = load ptr, ptr %9, align 4
  %391 = getelementptr i8, ptr %390, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %391, i32 1) #14, !srcloc !10
  %392 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %393 = load ptr, ptr %8, align 4
  %394 = getelementptr i8, ptr %393, i32 20
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %394) #14, !srcloc !9
  %396 = and i32 %395, -4
  %397 = load ptr, ptr %8, align 4
  %398 = getelementptr i8, ptr %397, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %396) #14, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %392) #14
  %399 = load ptr, ptr %8, align 4
  %400 = getelementptr i8, ptr %399, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 162) #14, !srcloc !10
  %401 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 0, i32 1
  %402 = load i64, ptr %401, align 8
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %423, label %404

404:                                              ; preds = %385
  %405 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 0, i32 3
  %406 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 1, i32 5, i32 8
  %407 = load i32, ptr %406, align 8
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %423, label %409

409:                                              ; preds = %404
  %410 = load ptr, ptr %35, align 8
  %411 = getelementptr inbounds %struct.s5p_aes_dev, ptr %410, i32 0, i32 17
  br label %412

412:                                              ; preds = %412, %409
  %413 = phi i32 [ 0, %409 ], [ %420, %412 ]
  %414 = shl i32 %413, 2
  %415 = add i32 %414, 176
  %416 = getelementptr i32, ptr %405, i32 %413
  %417 = load i32, ptr %416, align 4
  %418 = load ptr, ptr %411, align 4
  %419 = getelementptr i8, ptr %418, i32 %415
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 %417) #14, !srcloc !10
  %420 = add nuw i32 %413, 1
  %421 = load i32, ptr %406, align 8
  %422 = icmp ult i32 %420, %421
  br i1 %422, label %412, label %423

423:                                              ; preds = %412, %404, %385
  %424 = load i8, ptr %36, align 4, !range !8
  %425 = icmp eq i8 %424, 0
  %426 = load i32, ptr %382, align 4
  br i1 %425, label %441, label %427

427:                                              ; preds = %423
  %428 = load i8, ptr %39, align 8, !range !8
  %429 = icmp ne i8 %428, 0
  %430 = tail call fastcc i32 @s5p_hash_xmit_dma(ptr noundef %0, i32 noundef %426, i1 noundef zeroext %429)
  %431 = icmp eq i32 %430, -115
  br i1 %431, label %450, label %432

432:                                              ; preds = %427
  %433 = load i8, ptr %39, align 8, !range !8
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %447, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 9
  %437 = load i8, ptr %436, align 1, !range !8
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %439, label %447

439:                                              ; preds = %435
  %440 = load i32, ptr %382, align 4
  br label %441

441:                                              ; preds = %439, %423
  %442 = phi i32 [ %440, %439 ], [ %426, %423 ]
  %443 = tail call fastcc i32 @s5p_hash_xmit_dma(ptr noundef %0, i32 noundef %442, i1 noundef zeroext true)
  %444 = icmp eq i32 %443, -115
  br i1 %444, label %450, label %447

445:                                              ; preds = %212, %210, %166
  %446 = getelementptr inbounds %struct.ahash_request, ptr %27, i32 2, i32 5, i32 9
  store i8 1, ptr %446, align 1
  br label %447

447:                                              ; preds = %445, %441, %435, %432, %381
  %448 = phi i32 [ %443, %441 ], [ 0, %381 ], [ %430, %432 ], [ %430, %435 ], [ -12, %445 ]
  tail call fastcc void @s5p_hash_finish_req(ptr noundef %27, i32 noundef %448)
  br label %11

449:                                              ; preds = %23, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %14) #14
  br label %450

450:                                              ; preds = %449, %441, %427
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_hash_finish_req(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 19
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -4
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call ptr @page_address(ptr noundef %14) #14
  %16 = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = ptrtoint ptr %18 to i32
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  %24 = icmp ult i32 %23, 4096
  %25 = lshr i32 %23, 12
  %26 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 false) #14, !range !11
  %27 = sub nuw nsw i32 32, %26
  %28 = select i1 %24, i32 0, i32 %27
  tail call void @free_pages(i32 noundef %19, i32 noundef %28) #14
  br label %29

29:                                               ; preds = %9, %2
  %30 = load volatile i32, ptr %5, align 4
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  %35 = load ptr, ptr %34, align 8
  tail call void @kfree(ptr noundef %35) #14
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  store ptr null, ptr %37, align 8
  %38 = load i32, ptr %5, align 4
  %39 = and i32 %38, -97
  store i32 %39, ptr %5, align 4
  %40 = icmp eq i32 %1, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 9
  %43 = load i8, ptr %42, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 3
  %47 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.s5p_aes_dev, ptr %51, i32 0, i32 17
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ 0, %50 ], [ %61, %53 ]
  %55 = shl i32 %54, 2
  %56 = add i32 %55, 256
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr i8, ptr %57, i32 %56
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #14, !srcloc !9
  %60 = getelementptr i32, ptr %46, i32 %54
  store i32 %59, ptr %60, align 4
  %61 = add nuw i32 %54, 1
  %62 = load i32, ptr %47, align 8
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %53, label %64

64:                                               ; preds = %53
  %65 = shl i32 %62, 2
  br label %66

66:                                               ; preds = %64, %45
  %67 = phi i32 [ %65, %64 ], [ 0, %45 ]
  %68 = load volatile i32, ptr %5, align 4
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 32
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %77, ptr align 8 %46, i32 %67, i1 false) #14
  br label %82

80:                                               ; preds = %41, %36
  %81 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 9
  store i8 1, ptr %81, align 1
  br label %82

82:                                               ; preds = %80, %79, %75, %71, %66
  %83 = getelementptr inbounds %struct.s5p_aes_dev, ptr %4, i32 0, i32 18
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #14
  %85 = load i32, ptr %5, align 4
  %86 = and i32 %85, -28
  store i32 %86, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %84) #14
  %87 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  tail call void %88(ptr noundef %0, i32 noundef %1) #14
  br label %91

91:                                               ; preds = %90, %82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_hash_xmit_dma(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 1, i32 5, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 1, i32 5, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @dma_map_sg_attrs(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 1, i32 noundef 0) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #15
  %15 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 2, i32 5, i32 9
  store i8 1, ptr %15, align 1
  br label %94

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 2, ptr noundef %17) #14
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 24
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 25
  store i32 %11, ptr %20, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.ahash_request, ptr %21, i32 1, i32 5, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 16
  %25 = getelementptr inbounds %struct.ahash_request, ptr %21, i32 1, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %48, label %28, !prof !14

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.ahash_request, ptr %21, i32 1, i32 0, i32 3
  %30 = getelementptr inbounds %struct.ahash_request, ptr %21, i32 1, i32 5, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 17
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ 0, %33 ], [ %43, %35 ]
  %37 = shl i32 %36, 2
  %38 = add i32 %37, 176
  %39 = getelementptr i32, ptr %29, i32 %36
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr i8, ptr %41, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #14, !srcloc !10
  %43 = add nuw i32 %36, 1
  %44 = load i32, ptr %30, align 8
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %35, label %46

46:                                               ; preds = %35, %28
  %47 = or i32 %23, 48
  br label %48

48:                                               ; preds = %46, %16
  %49 = phi i32 [ %47, %46 ], [ %24, %16 ]
  br i1 %2, label %50, label %56

50:                                               ; preds = %48
  %51 = load i64, ptr %25, align 8
  %52 = shl i64 %51, 3
  %53 = trunc i64 %52 to i32
  %54 = lshr i64 %52, 32
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %50, %48
  %57 = phi i32 [ %53, %50 ], [ 0, %48 ]
  %58 = phi i32 [ %55, %50 ], [ 0, %48 ]
  %59 = phi i32 [ %1, %50 ], [ 0, %48 ]
  %60 = phi i32 [ 0, %50 ], [ -2147483648, %48 ]
  %61 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 17
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #14, !srcloc !10
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr i8, ptr %64, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %60) #14, !srcloc !10
  %66 = load ptr, ptr %61, align 4
  %67 = getelementptr i8, ptr %66, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %57) #14, !srcloc !10
  %68 = load ptr, ptr %61, align 4
  %69 = getelementptr i8, ptr %68, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %58) #14, !srcloc !10
  %70 = load ptr, ptr %61, align 4
  %71 = getelementptr i8, ptr %70, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 15) #14, !srcloc !10
  %72 = load ptr, ptr %61, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %49) #14, !srcloc !10
  %73 = zext i32 %1 to i64
  %74 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 1, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %75, %73
  store i64 %76, ptr %74, align 8
  %77 = getelementptr inbounds %struct.ahash_request, ptr %5, i32 2, i32 5, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %78, %1
  store i32 %79, ptr %77, align 4
  br i1 %2, label %80, label %81

80:                                               ; preds = %56
  tail call void @_set_bit(i32 noundef 1, ptr noundef %17) #14
  br label %81

81:                                               ; preds = %80, %56
  %82 = load ptr, ptr %19, align 4
  %83 = load i32, ptr %20, align 4
  %84 = add i32 %83, -1
  store i32 %84, ptr %20, align 4
  %85 = getelementptr inbounds %struct.scatterlist, ptr %82, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.s5p_aes_dev, ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %86) #14, !srcloc !10
  %90 = getelementptr inbounds %struct.scatterlist, ptr %82, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = load ptr, ptr %87, align 4
  %93 = getelementptr i8, ptr %92, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #14, !srcloc !10
  br label %94

94:                                               ; preds = %81, %13
  %95 = phi i32 [ -115, %81 ], [ -22, %13 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5p_hash_init(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %2, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  %10 = getelementptr i8, ptr %4, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(10) %9, i8 0, i64 10, i1 false)
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -64
  %13 = load i32, ptr %12, align 64
  switch i32 %13, label %23 [
    i32 16, label %14
    i32 20, label %17
    i32 32, label %20
  ]

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  store i32 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  store i32 4, ptr %16, align 8
  br label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  store i32 5, ptr %19, align 8
  br label %25

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  store i32 4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  store i32 8, ptr %22, align 8
  br label %25

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 9
  store i8 1, ptr %24, align 1
  br label %25

25:                                               ; preds = %23, %20, %17, %14
  %26 = phi i32 [ -22, %23 ], [ 0, %20 ], [ 0, %17 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_hash_update(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %3
  %9 = icmp ult i32 %8, 65
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  %12 = getelementptr i8, ptr %11, i32 %7
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %12, ptr noundef %14, i32 noundef 0, i32 noundef %3, i32 noundef 0) #14
  %15 = load i32, ptr %2, align 8
  %16 = load i32, ptr %6, align 4
  %17 = add i32 %16, %15
  store i32 %17, ptr %6, align 4
  br label %25

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr inbounds %struct.crypto_tfm, ptr %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i8 1, ptr %22, align 4
  %23 = load ptr, ptr %21, align 4
  %24 = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %23, ptr noundef %0) #14
  br label %25

25:                                               ; preds = %18, %10, %1
  %26 = phi i32 [ 0, %10 ], [ %24, %18 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_hash_final(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 8
  store i8 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 9
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 64
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr inbounds %struct.crypto_tfm, ptr %16, i32 1, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  %20 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 32
  %22 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %18, ptr noundef %19, i32 noundef %12, ptr noundef %21) #14
  br label %30

23:                                               ; preds = %10, %6
  %24 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.crypto_tfm, ptr %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i8 0, ptr %27, align 4
  %28 = load ptr, ptr %26, align 4
  %29 = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %28, ptr noundef %0) #14
  br label %30

30:                                               ; preds = %23, %14, %1
  %31 = phi i32 [ %29, %23 ], [ %22, %14 ], [ -22, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_hash_finup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 8
  store i8 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %4
  %10 = icmp ult i32 %9, 65
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  %13 = getelementptr i8, ptr %12, i32 %8
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %13, ptr noundef %15, i32 noundef 0, i32 noundef %4, i32 noundef 0) #14
  %16 = load i32, ptr %3, align 8
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, %16
  store i32 %18, ptr %7, align 4
  br label %26

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr inbounds %struct.crypto_tfm, ptr %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i8 1, ptr %23, align 4
  %24 = load ptr, ptr %22, align 4
  %25 = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %24, ptr noundef %0) #14
  switch i32 %25, label %26 [
    i32 -16, label %59
    i32 -115, label %59
  ]

26:                                               ; preds = %19, %11, %1
  %27 = phi i32 [ %25, %19 ], [ 0, %11 ], [ 0, %1 ]
  store i8 1, ptr %2, align 8
  %28 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 9
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %37, 64
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 16
  %42 = getelementptr inbounds %struct.crypto_tfm, ptr %41, i32 1, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 16
  %45 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 32
  %47 = tail call i32 @crypto_shash_tfm_digest(ptr noundef %43, ptr noundef %44, i32 noundef %37, ptr noundef %46) #14
  br label %55

48:                                               ; preds = %35, %31
  %49 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 16
  %51 = getelementptr inbounds %struct.crypto_tfm, ptr %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i8 0, ptr %52, align 4
  %53 = load ptr, ptr %51, align 4
  %54 = tail call fastcc i32 @s5p_hash_handle_queue(ptr noundef %53, ptr noundef %0) #14
  br label %55

55:                                               ; preds = %48, %39, %26
  %56 = phi i32 [ %54, %48 ], [ %47, %39 ], [ -22, %26 ]
  %57 = icmp eq i32 %27, 0
  %58 = select i1 %57, i32 %56, i32 %27
  br label %59

59:                                               ; preds = %55, %19, %19
  %60 = phi i32 [ %58, %55 ], [ %25, %19 ], [ %25, %19 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_hash_digest(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %2, align 8
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  %10 = getelementptr i8, ptr %4, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(10) %9, i8 0, i64 10, i1 false) #14
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -64
  %13 = load i32, ptr %12, align 64
  switch i32 %13, label %16 [
    i32 16, label %18
    i32 20, label %14
    i32 32, label %15
  ]

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 9
  store i8 1, ptr %17, align 1
  br label %24

18:                                               ; preds = %15, %14, %1
  %19 = phi i32 [ 4, %15 ], [ 0, %14 ], [ 2, %1 ]
  %20 = phi i32 [ 8, %15 ], [ 5, %14 ], [ 4, %1 ]
  %21 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  store i32 %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  store i32 %20, ptr %22, align 8
  %23 = tail call i32 @s5p_hash_finup(ptr noundef %0)
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ -22, %16 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5p_hash_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 120
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 8 %3, i32 %6, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5p_hash_import(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(184) %3, ptr noundef align 1 dereferenceable(184) %1, i32 184, i1 false)
  %6 = getelementptr inbounds %struct.s5p_hash_reqctx, ptr %1, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 64
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 64
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i8 [ 0, %9 ], [ 1, %2 ]
  %14 = phi i32 [ 0, %9 ], [ -22, %2 ]
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5, i32 9
  store i8 %13, ptr %15, align 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_hash_cra_init(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr @s5p_dev, align 4
  store ptr %6, ptr %2, align 4
  %7 = tail call ptr @crypto_alloc_shash(ptr noundef %5, i32 noundef 0, i32 noundef 256) #14
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %5) #15
  %12 = load ptr, ptr %8, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -32
  store i32 184, ptr %15, align 32
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %13, %10 ], [ 0, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_hash_cra_exit(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #14
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 5123120}
!10 = !{i64 5122702}
!11 = !{i32 0, i32 33}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152679722, i64 2152680214, i64 2152679759, i64 2152679815, i64 2152679849, i64 2152679873, i64 2152679914, i64 2152679935, i64 2152679963, i64 2152679997}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.peeled.count", i32 1}
