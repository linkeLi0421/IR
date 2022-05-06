; ModuleID = '/llk/IR/drivers/crypto/stm32/stm32-hash.c_pt.bc'
source_filename = "../drivers/crypto/stm32/stm32-hash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_hash_pdata = type { ptr, i32 }
%struct.stm32_hash_algs_info = type { ptr, i32 }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
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
%struct.stm32_hash_drv = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.stm32_hash_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, ptr, %struct.completion, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.stm32_hash_request_ctx = type { ptr, i32, i32, [32 x i8], i32, i32, i32, ptr, i32, i32, %struct.scatterlist, i32, i32, i32, i8, [3 x i8], [256 x i8], ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@stm32_hash_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f456-hash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_hash_pdata_stm32f4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f756-hash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_hash_pdata_stm32f7 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description246 = internal constant [66 x i8] c"description=STM32 SHA1/224/256 & MD5 (HMAC) hw accelerator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [46 x i8] c"author=Lionel Debieve <lionel.debieve@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_hash_pdata_stm32f4 = internal constant %struct.stm32_hash_pdata { ptr @stm32_hash_algs_info_stm32f4, i32 1 }, align 4
@stm32_hash_pdata_stm32f7 = internal constant %struct.stm32_hash_pdata { ptr @stm32_hash_algs_info_stm32f7, i32 2 }, align 4
@stm32_hash_algs_info_stm32f4 = internal global [1 x %struct.stm32_hash_algs_info] [%struct.stm32_hash_algs_info { ptr @algs_md5_sha1, i32 4 }], align 4
@algs_md5_sha1 = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 16, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(md5)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_md5_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 20, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-sha1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_sha1_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }], align 64
@__this_module = external dso_local global %struct.module, align 64
@stm32_hash = internal global %struct.stm32_hash_drv { %struct.list_head { ptr @stm32_hash, ptr @stm32_hash }, %struct.spinlock zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [18 x i8] c"dma_map_sg error\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dmaengine_prep_slave error\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DMA Error %i\0A\00", align 1
@stm32_hash_algs_info_stm32f7 = internal global [2 x %struct.stm32_hash_algs_info] [%struct.stm32_hash_algs_info { ptr @algs_md5_sha1, i32 4 }, %struct.stm32_hash_algs_info { ptr @algs_sha224_sha256, i32 4 }], align 4
@algs_sha224_sha256 = internal global [4 x %struct.ahash_alg] [%struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 28, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha224)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-sha224\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_sha224_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr null, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }, %struct.ahash_alg { ptr @stm32_hash_init, ptr @stm32_hash_update, ptr @stm32_hash_final, ptr @stm32_hash_finup, ptr @stm32_hash_digest, ptr @stm32_hash_export, ptr @stm32_hash_import, ptr @stm32_hash_setkey, ptr null, ptr null, [24 x i8] undef, %struct.hash_alg_common { i32 32, i32 364, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4224, i32 64, i32 536, i32 3, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"hmac(sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-hmac-sha256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @stm32_hash_cra_sha256_init, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } } }], align 64
@stm32_hash_driver = internal global %struct.platform_driver { ptr @stm32_hash_probe, ptr @stm32_hash_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_hash_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_hash_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"stm32-hash\00", align 1
@stm32_hash_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_hash_runtime_suspend, ptr @stm32_hash_runtime_resume, ptr null }, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"Cannot grab IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to get clock for hash\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to enable hash clock (%d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"Init HASH done HW ver %x DMA mode %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"no compatible OF match\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"dma-maxburst\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"dma-maxburst not specified, using 0\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Couldn't configure DMA slave.\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Algo %d : %d failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Failed to prepare_enable clock\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_license248], section "llvm.metadata"
@switch.table.stm32_hash_digest = private unnamed_addr constant [5 x i32] [i32 262148, i32 524292, i32 262148, i32 1048580, i32 2097156], align 4
@switch.table.stm32_hash_digest.21 = private unnamed_addr constant [5 x i32] [i32 8650756, i32 8912900, i32 8650756, i32 9437188, i32 10485764], align 4
@switch.table.stm32_hash_finish_req = private unnamed_addr constant [8 x i32] [i32 4, i32 5, i32 4, i32 7, i32 4, i32 4, i32 4, i32 8], align 4
@switch.table.stm32_hash_xmit_cpu = private unnamed_addr constant [7 x i32] [i32 4, i32 132, i32 262148, i32 132, i32 132, i32 132, i32 262276], align 4

@__mod_of__stm32_hash_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @stm32_hash_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_hash_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_hash_driver) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_init(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %5 = getelementptr i8, ptr %3, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr @stm32_hash, align 4
  %10 = icmp eq ptr %9, @stm32_hash
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  store ptr %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 4, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = load i32, ptr %17, align 64
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 4
  store i32 %18, ptr %19, align 4
  %20 = add i32 %18, -16
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 30)
  %22 = icmp ult i32 %21, 5
  br i1 %22, label %23, label %44

23:                                               ; preds = %12
  %24 = trunc i32 %21 to i8
  %25 = lshr i8 27, %24
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_hash_digest, i32 0, i32 %21
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_hash_digest.21, i32 0, i32 %21
  %32 = load i32, ptr %31, align 4
  store i32 %30, ptr %14, align 4
  %33 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  store i32 256, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  store i8 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %38, i8 0, i32 256, i1 false)
  %39 = getelementptr i8, ptr %3, i32 80
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %28
  store i32 %32, ptr %14, align 4
  br label %44

44:                                               ; preds = %43, %28, %23, %12
  %45 = phi i32 [ -22, %12 ], [ 0, %43 ], [ 0, %28 ], [ -22, %23 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_update(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  store i32 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %4
  %20 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %2)
  br label %33

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr inbounds %struct.crypto_tfm, ptr %26, i32 1, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.stm32_hash_dev, ptr %28, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %31, ptr noundef %0) #12
  br label %33

33:                                               ; preds = %24, %23, %6, %1
  %34 = phi i32 [ 0, %23 ], [ %32, %24 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_final(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 65536
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stm32_hash_dev, ptr %8, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %11, ptr noundef %0) #12
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_finup(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr @stm32_hash, align 4
  %10 = icmp eq ptr %9, @stm32_hash
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 65536
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.stm32_hash_dev, ptr %13, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %3, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %22 = getelementptr i8, ptr %21, i32 76
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load ptr, ptr @stm32_hash, align 4
  %27 = icmp eq ptr %26, @stm32_hash
  %28 = select i1 %27, ptr null, ptr %26
  store ptr %28, ptr %22, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi ptr [ %28, %25 ], [ %23, %20 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %31 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = icmp ult i32 %32, 51
  br i1 %33, label %73, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @sg_nents(ptr noundef %36) #12
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.stm32_hash_dev, ptr %30, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %73, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %35, align 4
  %45 = tail call i32 @sg_nents(ptr noundef %44) #12
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %58, %43
  %48 = phi i32 [ %59, %58 ], [ 0, %43 ]
  %49 = phi ptr [ %60, %58 ], [ %44, %43 ]
  %50 = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i32, ptr %49, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %54, %47
  %59 = add nuw nsw i32 %48, 1
  %60 = tail call ptr @sg_next(ptr noundef %49) #12
  %61 = load ptr, ptr %35, align 4
  %62 = tail call i32 @sg_nents(ptr noundef %61) #12
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %47, label %64

64:                                               ; preds = %58, %43, %34
  %65 = load ptr, ptr %35, align 4
  %66 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, ptr %14, align 4
  %72 = and i32 %71, -5
  store i32 %72, ptr %14, align 4
  br label %73

73:                                               ; preds = %70, %64, %54, %39, %29, %12
  %74 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %14, align 4
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  store i32 %75, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 16
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %75
  %90 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  %91 = load i32, ptr %90, align 4
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %2) #12
  br label %102

94:                                               ; preds = %81
  %95 = load ptr, ptr %3, align 16
  %96 = getelementptr inbounds %struct.crypto_tfm, ptr %95, i32 1, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.stm32_hash_dev, ptr %97, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %100, ptr noundef %0) #12
  switch i32 %101, label %102 [
    i32 -16, label %115
    i32 -115, label %115
  ]

102:                                              ; preds = %94, %93, %77, %73
  %103 = phi i32 [ %101, %94 ], [ 0, %93 ], [ 0, %77 ], [ 0, %73 ]
  %104 = load i32, ptr %14, align 4
  %105 = or i32 %104, 65536
  store i32 %105, ptr %14, align 4
  %106 = load ptr, ptr %3, align 16
  %107 = getelementptr inbounds %struct.crypto_tfm, ptr %106, i32 1, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 1
  store i32 2, ptr %109, align 4
  %110 = getelementptr inbounds %struct.stm32_hash_dev, ptr %108, i32 0, i32 9
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %111, ptr noundef %0) #12
  %113 = icmp eq i32 %103, 0
  %114 = select i1 %113, i32 %112, i32 %103
  br label %115

115:                                              ; preds = %102, %94, %94
  %116 = phi i32 [ %101, %94 ], [ %101, %94 ], [ %114, %102 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_digest(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %5 = getelementptr i8, ptr %3, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr @stm32_hash, align 4
  %10 = icmp eq ptr %9, @stm32_hash
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  store ptr %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  store i32 4, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = load i32, ptr %17, align 64
  %19 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 4
  store i32 %18, ptr %19, align 4
  %20 = add i32 %18, -16
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 30) #12
  %22 = icmp ult i32 %21, 5
  br i1 %22, label %23, label %46

23:                                               ; preds = %12
  %24 = trunc i32 %21 to i8
  %25 = lshr i8 27, %24
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_hash_digest, i32 0, i32 %21
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_hash_digest.21, i32 0, i32 %21
  %32 = load i32, ptr %31, align 4
  store i32 %30, ptr %14, align 4
  %33 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 8
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 12
  store i32 256, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 20
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 4
  store i8 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 2, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %38, i8 0, i32 256, i1 false) #12
  %39 = getelementptr i8, ptr %3, i32 80
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %28
  store i32 %32, ptr %14, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = tail call i32 @stm32_hash_finup(ptr noundef %0)
  br label %46

46:                                               ; preds = %44, %23, %12
  %47 = phi i32 [ %45, %44 ], [ -22, %12 ], [ -22, %23 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_export(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load ptr, ptr @stm32_hash, align 4
  %10 = icmp eq ptr %9, @stm32_hash
  %11 = select i1 %10, ptr null, ptr %9
  store ptr %11, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %11, %8 ], [ %6, %2 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %14 = getelementptr inbounds %struct.stm32_hash_dev, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #12
  %17 = getelementptr inbounds %struct.stm32_hash_dev, ptr %13, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !8
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %23, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !10
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !8
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %23

29:                                               ; preds = %23, %12
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 224) #13
  %32 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 6, i32 5
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #12, !srcloc !8
  %36 = getelementptr i32, ptr %31, i32 1
  store i32 %35, ptr %31, align 8
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #12, !srcloc !8
  %40 = getelementptr i32, ptr %31, i32 2
  store i32 %39, ptr %36, align 4
  %41 = load ptr, ptr %17, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !8
  %43 = getelementptr i32, ptr %31, i32 3
  store i32 %42, ptr %40, align 8
  br label %44

44:                                               ; preds = %44, %29
  %45 = phi i32 [ 0, %29 ], [ %53, %44 ]
  %46 = phi ptr [ %43, %29 ], [ %52, %44 ]
  %47 = shl nuw nsw i32 %45, 2
  %48 = add nuw nsw i32 %47, 248
  %49 = load ptr, ptr %17, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !8
  %52 = getelementptr i32, ptr %46, i32 1
  store i32 %51, ptr %46, align 4
  %53 = add nuw nsw i32 %45, 1
  %54 = icmp eq i32 %53, 53
  br i1 %54, label %55, label %44

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %57 = load ptr, ptr %14, align 4
  %58 = tail call i64 @ktime_get_mono_fast_ns() #12
  %59 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 11, i32 22
  store volatile i64 %58, ptr %59, align 8
  %60 = load ptr, ptr %14, align 4
  %61 = tail call i32 @__pm_runtime_suspend(ptr noundef %60, i32 noundef 13) #12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(364) %1, ptr noundef align 4 dereferenceable(364) %56, i32 364, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_import(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %6 = getelementptr i8, ptr %5, i32 76
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr @stm32_hash, align 4
  %11 = icmp eq ptr %10, @stm32_hash
  %12 = select i1 %11, ptr null, ptr %10
  store ptr %12, ptr %6, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %12, %9 ], [ %7, %2 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(364) %3, ptr noundef align 1 dereferenceable(364) %1, i32 364, i1 false)
  %15 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 6, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_hash_dev, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #12
  %20 = getelementptr i32, ptr %16, i32 1
  %21 = load i32, ptr %16, align 4
  %22 = getelementptr inbounds %struct.stm32_hash_dev, ptr %14, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #12, !srcloc !11
  %25 = getelementptr i32, ptr %16, i32 2
  %26 = load i32, ptr %20, align 4
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #12, !srcloc !11
  %29 = load i32, ptr %25, align 4
  %30 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #12, !srcloc !11
  %31 = getelementptr i32, ptr %16, i32 3
  %32 = load i32, ptr %25, align 4
  %33 = or i32 %32, 4
  %34 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #12, !srcloc !11
  br label %35

35:                                               ; preds = %35, %13
  %36 = phi i32 [ 0, %13 ], [ %44, %35 ]
  %37 = phi ptr [ %31, %13 ], [ %40, %35 ]
  %38 = shl nuw nsw i32 %36, 2
  %39 = add nuw nsw i32 %38, 248
  %40 = getelementptr i32, ptr %37, i32 1
  %41 = load i32, ptr %37, align 4
  %42 = load ptr, ptr %22, align 4
  %43 = getelementptr i8, ptr %42, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #12, !srcloc !11
  %44 = add nuw nsw i32 %36, 1
  %45 = icmp eq i32 %44, 53
  br i1 %45, label %46, label %35

46:                                               ; preds = %35
  %47 = load ptr, ptr %17, align 4
  %48 = tail call i64 @ktime_get_mono_fast_ns() #12
  %49 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 11, i32 22
  store volatile i64 %48, ptr %49, align 8
  %50 = load ptr, ptr %17, align 4
  %51 = tail call i32 @__pm_runtime_suspend(ptr noundef %50, i32 noundef 13) #12
  %52 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %52) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_hash_cra_init(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  store i32 364, ptr %2, align 32
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 4, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @stm32_hash_one_request, ptr %5, align 4
  store ptr @stm32_hash_prepare_req, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr null, ptr %6, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = icmp ult i32 %2, 513
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 1, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %6, ptr align 1 %1, i32 %2, i1 false)
  %7 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 5, i32 5
  store i32 %2, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %5 ], [ -12, %3 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_md5_init(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -32
  store i32 364, ptr %2, align 32
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 4, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 8388608
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @stm32_hash_one_request, ptr %8, align 4
  store ptr @stm32_hash_prepare_req, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr null, ptr %9, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_sha1_init(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -32
  store i32 364, ptr %2, align 32
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 4, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 8388608
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @stm32_hash_one_request, ptr %8, align 4
  store ptr @stm32_hash_prepare_req, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr null, ptr %9, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_hash_append_sg(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp ugt i32 %6, %5
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.stm32_hash_request_ctx, ptr %0, i32 0, i32 16
  br label %12

12:                                               ; preds = %35, %8
  %13 = phi i32 [ %6, %8 ], [ %37, %35 ]
  %14 = phi i32 [ %5, %8 ], [ %36, %35 ]
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %10, align 4
  %22 = sub i32 %20, %21
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %15)
  %24 = sub i32 %13, %14
  %25 = tail call i32 @llvm.umin.i32(i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %27
  %30 = load i32, ptr %18, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = tail call ptr @sg_next(ptr noundef %18) #12
  store ptr %34, ptr %9, align 4
  br label %35

35:                                               ; preds = %55, %54, %39, %33
  %36 = load i32, ptr %3, align 4
  %37 = load i32, ptr %4, align 4
  %38 = icmp ugt i32 %37, %36
  br i1 %38, label %12, label %56

39:                                               ; preds = %17
  %40 = getelementptr i8, ptr %11, i32 %14
  tail call void @scatterwalk_map_and_copy(ptr noundef %40, ptr noundef %18, i32 noundef %21, i32 noundef %25, i32 noundef 0) #12
  %41 = load i32, ptr %3, align 4
  %42 = add i32 %41, %25
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %10, align 4
  %44 = add i32 %43, %25
  store i32 %44, ptr %10, align 4
  %45 = load i32, ptr %2, align 4
  %46 = sub i32 %45, %25
  store i32 %46, ptr %2, align 4
  %47 = load ptr, ptr %9, align 4
  %48 = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %35

51:                                               ; preds = %39
  %52 = tail call ptr @sg_next(ptr noundef %47) #12
  store ptr %52, ptr %9, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, ptr %10, align 4
  br label %35

55:                                               ; preds = %51
  store i32 0, ptr %2, align 4
  br label %35

56:                                               ; preds = %35, %29, %27, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_one_request(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = alloca [1 x %struct.scatterlist], align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %6 = getelementptr i8, ptr %5, i32 76
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  br label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr @stm32_hash, align 4
  %12 = icmp eq ptr %11, @stm32_hash
  %13 = select i1 %12, ptr null, ptr %11
  store ptr %13, ptr %6, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %284, label %15

15:                                               ; preds = %10, %9
  %16 = phi ptr [ %7, %9 ], [ %11, %10 ]
  %17 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 8
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 0, i32 6
  %19 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %282 [
    i32 1, label %21
    i32 2, label %48
  ]

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 8
  %25 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2
  %26 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 12
  %27 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 5
  br label %28

28:                                               ; preds = %37, %21
  %29 = phi i32 [ 0, %21 ], [ %39, %37 ]
  %30 = load i32, ptr %25, align 4
  %31 = load i32, ptr %26, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, ptr %24, align 4
  %35 = add i32 %34, %30
  %36 = icmp ult i32 %35, %31
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %28
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %18) #12
  %38 = load i32, ptr %24, align 4
  store i32 0, ptr %24, align 4
  %39 = tail call fastcc i32 @stm32_hash_xmit_cpu(ptr noundef %16, ptr noundef %27, i32 noundef %38, i32 noundef 0) #12
  br label %28

40:                                               ; preds = %33
  %41 = and i32 %23, 65536
  tail call fastcc void @stm32_hash_append_sg(ptr noundef %18) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %279, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %24, align 4
  store i32 0, ptr %24, align 4
  %45 = load i32, ptr %22, align 4
  %46 = and i32 %45, 65536
  %47 = tail call fastcc i32 @stm32_hash_xmit_cpu(ptr noundef %16, ptr noundef %27, i32 noundef %44, i32 noundef %46) #12
  br label %279

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 5, i32 8
  %50 = load i32, ptr %49, align 4
  store i32 0, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 1, i32 0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %276

55:                                               ; preds = %48
  %56 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #12, !annotation !12
  %57 = getelementptr inbounds %struct.ahash_request, ptr %56, i32 2, i32 5
  %58 = getelementptr inbounds %struct.ahash_request, ptr %56, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ahash_request, ptr %56, i32 1, i32 5, i32 16
  store ptr %59, ptr %60, align 4
  %61 = load ptr, ptr %17, align 4
  %62 = getelementptr inbounds %struct.ahash_request, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.ahash_request, ptr %56, i32 2
  store i32 %63, ptr %64, align 4
  %65 = tail call i32 @sg_nents(ptr noundef %59) #12
  %66 = getelementptr inbounds %struct.ahash_request, ptr %56, i32 2, i32 3
  store i32 %65, ptr %66, align 4
  %67 = icmp slt i32 %65, 0
  br i1 %67, label %274, label %68

68:                                               ; preds = %55
  %69 = load ptr, ptr %17, align 4
  %70 = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 11
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.ahash_request, ptr %69, i32 1, i32 0, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 3932160
  %80 = add nsw i32 %79, -262144
  %81 = lshr exact i32 %80, 18
  %82 = add nsw i32 %81, -1
  %83 = icmp ult i32 %82, 7
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = getelementptr inbounds [7 x i32], ptr @switch.table.stm32_hash_xmit_cpu, i32 0, i32 %82
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = phi i32 [ 132, %76 ], [ %86, %84 ]
  %89 = getelementptr inbounds %struct.ahash_request, ptr %69, i32 2, i32 4
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 4
  %93 = or i32 %92, %88
  %94 = and i32 %78, 8388608
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %87
  %97 = or i32 %73, 8388608
  store i32 %97, ptr %72, align 4
  %98 = getelementptr i8, ptr %71, i32 596
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %99, 64
  %101 = select i1 %100, i32 65600, i32 64
  %102 = or i32 %101, %93
  br label %103

103:                                              ; preds = %96, %87
  %104 = phi i32 [ %93, %87 ], [ %102, %96 ]
  %105 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 4
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 2) #12, !srcloc !11
  %108 = load ptr, ptr %105, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %104) #12, !srcloc !11
  %109 = load i32, ptr %72, align 4
  %110 = or i32 %109, 1
  store i32 %110, ptr %72, align 4
  br label %111

111:                                              ; preds = %103, %68
  %112 = phi i32 [ %73, %68 ], [ %110, %103 ]
  %113 = and i32 %112, 8388608
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = tail call fastcc i32 @stm32_hash_hmac_dma_send(ptr noundef %16) #12
  %117 = icmp eq i32 %116, -115
  br i1 %117, label %118, label %274

118:                                              ; preds = %115, %111
  %119 = phi i32 [ -115, %115 ], [ 0, %111 ]
  %120 = load i32, ptr %66, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %183, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %60, align 4
  %124 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 2
  %125 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 6
  %126 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 1
  %127 = getelementptr inbounds %struct.ahash_request, ptr %56, i32 2, i32 2
  br label %128

128:                                              ; preds = %181, %122
  %129 = phi i32 [ 0, %122 ], [ %182, %181 ]
  %130 = phi i32 [ %120, %122 ], [ %179, %181 ]
  %131 = phi i32 [ 0, %122 ], [ %177, %181 ]
  %132 = phi i32 [ 0, %122 ], [ %162, %181 ]
  %133 = phi ptr [ %123, %122 ], [ %178, %181 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %133, i32 20, i1 false) #12
  %134 = load i32, ptr %3, align 4
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %128
  %138 = load i32, ptr %125, align 4
  %139 = icmp eq i32 %138, 1
  %140 = load i32, ptr %124, align 4
  br i1 %139, label %141, label %150

141:                                              ; preds = %137
  %142 = add i32 %140, -1
  %143 = and i32 %142, -16
  %144 = load ptr, ptr %60, align 4
  %145 = sub i32 %140, %143
  %146 = load i32, ptr %64, align 4
  %147 = sub i32 %143, %140
  %148 = add i32 %147, %146
  %149 = call i32 @sg_pcopy_to_buffer(ptr noundef %144, i32 noundef %130, ptr noundef %57, i32 noundef %145, i32 noundef %148) #12
  br label %156

150:                                              ; preds = %137
  %151 = and i32 %140, 3
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = add i32 %140, 3
  %155 = and i32 %154, -4
  br label %156

156:                                              ; preds = %153, %141
  %157 = phi i32 [ %143, %141 ], [ %155, %153 ]
  %158 = phi i32 [ %143, %141 ], [ %140, %153 ]
  %159 = phi i32 [ %149, %141 ], [ %132, %153 ]
  store i32 %157, ptr %124, align 4
  br label %160

160:                                              ; preds = %156, %150, %128
  %161 = phi i32 [ %129, %150 ], [ %129, %128 ], [ %158, %156 ]
  %162 = phi i32 [ %132, %150 ], [ %132, %128 ], [ %159, %156 ]
  %163 = load ptr, ptr %126, align 4
  %164 = call i32 @dma_map_sg_attrs(ptr noundef %163, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  store i32 %164, ptr %127, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load ptr, ptr %126, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str) #14
  br label %274

168:                                              ; preds = %160
  %169 = load i32, ptr %3, align 4
  %170 = lshr i32 %169, 1
  %171 = and i32 %170, 1
  %172 = xor i32 %171, 1
  %173 = call fastcc i32 @stm32_hash_xmit_dma(ptr noundef %16, ptr noundef nonnull %3, i32 noundef %161, i32 noundef %172) #12
  %174 = load ptr, ptr %126, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %174, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %175 = icmp eq i32 %173, -12
  br i1 %175, label %274, label %176

176:                                              ; preds = %168
  %177 = add nuw i32 %131, 1
  %178 = call ptr @sg_next(ptr noundef %133) #12
  %179 = load i32, ptr %66, align 4
  %180 = icmp ult i32 %177, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, ptr %124, align 4
  br label %128

183:                                              ; preds = %176, %118
  %184 = phi i32 [ %119, %118 ], [ %173, %176 ]
  %185 = phi i32 [ 0, %118 ], [ %162, %176 ]
  %186 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %243

189:                                              ; preds = %183
  %190 = call i64 @ktime_get() #12
  %191 = add i64 %190, 10000000
  %192 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr i8, ptr %193, i32 36
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #12, !srcloc !8
  %196 = and i32 %195, 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %213, label %198

198:                                              ; preds = %201, %189
  %199 = call i64 @ktime_get() #12
  %200 = icmp sgt i64 %199, %191
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #12
  %202 = load ptr, ptr %192, align 4
  %203 = getelementptr i8, ptr %202, i32 36
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #12, !srcloc !8
  %205 = and i32 %204, 8
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %213, label %198

207:                                              ; preds = %198
  %208 = load ptr, ptr %192, align 4
  %209 = getelementptr i8, ptr %208, i32 36
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #12, !srcloc !8
  %211 = and i32 %210, 8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %274

213:                                              ; preds = %207, %201, %189
  %214 = load ptr, ptr %192, align 4
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #12, !srcloc !8
  %216 = and i32 %215, -16393
  %217 = or i32 %216, 16384
  %218 = load ptr, ptr %192, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %217) #12, !srcloc !11
  %219 = icmp eq i32 %185, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %213
  %221 = getelementptr i32, ptr %57, i32 %185
  %222 = add i32 %185, 3
  %223 = lshr i32 %222, 2
  %224 = sub i32 %223, %185
  call void @llvm.memset.p0.i32(ptr align 4 %221, i8 0, i32 %224, i1 false) #12
  %225 = load ptr, ptr %192, align 4
  %226 = getelementptr i8, ptr %225, i32 4
  call void @__raw_writesl(ptr noundef %226, ptr noundef %57, i32 noundef %223) #12
  br label %227

227:                                              ; preds = %220, %213
  %228 = load ptr, ptr %192, align 4
  %229 = getelementptr i8, ptr %228, i32 8
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #12, !srcloc !8
  %231 = and i32 %230, -32
  %232 = shl i32 %185, 3
  %233 = and i32 %232, 24
  %234 = or i32 %231, %233
  %235 = load ptr, ptr %192, align 4
  %236 = getelementptr i8, ptr %235, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %234) #12, !srcloc !11
  %237 = load ptr, ptr %192, align 4
  %238 = getelementptr i8, ptr %237, i32 8
  %239 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #12, !srcloc !8
  %240 = or i32 %239, 256
  %241 = load ptr, ptr %192, align 4
  %242 = getelementptr i8, ptr %241, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #12, !srcloc !11
  br label %243

243:                                              ; preds = %227, %183
  %244 = phi i32 [ -115, %227 ], [ %184, %183 ]
  %245 = load i32, ptr %72, align 4
  %246 = and i32 %245, 8388608
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %274, label %248

248:                                              ; preds = %243
  %249 = call i64 @ktime_get() #12
  %250 = add i64 %249, 10000000
  %251 = getelementptr inbounds %struct.stm32_hash_dev, ptr %16, i32 0, i32 4
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr i8, ptr %252, i32 36
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #12, !srcloc !8
  %255 = and i32 %254, 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %260, %248
  %258 = call i64 @ktime_get() #12
  %259 = icmp sgt i64 %258, %250
  br i1 %259, label %266, label %260

260:                                              ; preds = %257
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #12
  %261 = load ptr, ptr %251, align 4
  %262 = getelementptr i8, ptr %261, i32 36
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #12, !srcloc !8
  %264 = and i32 %263, 8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %257

266:                                              ; preds = %257
  %267 = load ptr, ptr %251, align 4
  %268 = getelementptr i8, ptr %267, i32 36
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #12, !srcloc !8
  %270 = and i32 %269, 8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %266, %260, %248
  %273 = call fastcc i32 @stm32_hash_hmac_dma_send(ptr noundef %16) #12
  br label %274

274:                                              ; preds = %272, %266, %243, %207, %168, %166, %115, %55
  %275 = phi i32 [ -12, %166 ], [ -22, %55 ], [ %116, %115 ], [ %273, %272 ], [ %244, %243 ], [ -110, %207 ], [ -110, %266 ], [ -12, %168 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %279

276:                                              ; preds = %48
  %277 = getelementptr inbounds %struct.ahash_request, ptr %1, i32 2, i32 5
  %278 = tail call fastcc i32 @stm32_hash_xmit_cpu(ptr noundef %16, ptr noundef %277, i32 noundef %50, i32 noundef 1) #12
  br label %279

279:                                              ; preds = %276, %274, %43, %40
  %280 = phi i32 [ %47, %43 ], [ %29, %40 ], [ %278, %276 ], [ %275, %274 ]
  %281 = icmp eq i32 %280, -115
  br i1 %281, label %284, label %282

282:                                              ; preds = %279, %15
  %283 = phi i32 [ %280, %279 ], [ 0, %15 ]
  call fastcc void @stm32_hash_finish_req(ptr noundef %1, i32 noundef %283)
  br label %284

284:                                              ; preds = %282, %279, %10
  %285 = phi i32 [ -19, %10 ], [ 0, %282 ], [ 0, %279 ]
  ret i32 %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_prepare_req(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  br label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr @stm32_hash, align 4
  %11 = icmp eq ptr %10, @stm32_hash
  %12 = select i1 %11, ptr null, ptr %10
  store ptr %12, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %9, %8
  %15 = phi ptr [ %6, %8 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.stm32_hash_dev, ptr %15, i32 0, i32 8
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.stm32_hash_dev, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #12
  %20 = getelementptr inbounds %struct.stm32_hash_dev, ptr %15, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.stm32_hash_dev, ptr %15, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 4) #12, !srcloc !11
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #12, !srcloc !11
  %29 = load ptr, ptr %25, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #12, !srcloc !11
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #12, !srcloc !11
  %33 = getelementptr inbounds %struct.stm32_hash_dev, ptr %15, i32 0, i32 10
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %24, %14, %9
  %35 = phi i32 [ -19, %9 ], [ 0, %14 ], [ 0, %24 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_hash_finish_req(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 3932160
  %16 = add nsw i32 %15, -262144
  %17 = lshr exact i32 %16, 18
  %18 = icmp ult i32 %16, 2097152
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  %20 = trunc i32 %17 to i8
  %21 = lshr i8 -117, %20
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [8 x i32], ptr @switch.table.stm32_hash_finish_req, i32 0, i32 %17
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 784
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  store i32 %31, ptr %12, align 4
  br label %32

32:                                               ; preds = %32, %24
  %33 = phi i32 [ 1, %24 ], [ %43, %32 ]
  %34 = load ptr, ptr %3, align 4
  %35 = shl i32 %33, 2
  %36 = add nuw nsw i32 %35, 784
  %37 = getelementptr inbounds %struct.stm32_hash_dev, ptr %34, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #12, !srcloc !8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  %42 = getelementptr i32, ptr %12, i32 %33
  store i32 %41, ptr %42, align 4
  %43 = add nuw nsw i32 %33, 1
  %44 = icmp eq i32 %43, %26
  br i1 %44, label %45, label %32

45:                                               ; preds = %32, %19, %11
  %46 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 32
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 5, i32 4
  %51 = load i32, ptr %50, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %47, ptr align 4 %12, i32 %51, i1 false) #12
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ 0, %49 ], [ -22, %45 ]
  %54 = load i32, ptr %7, align 4
  %55 = and i32 %54, -8421616
  store i32 %55, ptr %7, align 4
  br label %60

56:                                               ; preds = %6, %2
  %57 = getelementptr inbounds %struct.ahash_request, ptr %0, i32 1, i32 0, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 4194304
  store i32 %59, ptr %57, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i32 [ %1, %56 ], [ %53, %52 ]
  %62 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i64 @ktime_get_mono_fast_ns() #12
  %65 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 11, i32 22
  store volatile i64 %64, ptr %65, align 8
  %66 = load ptr, ptr %62, align 4
  %67 = tail call i32 @__pm_runtime_suspend(ptr noundef %66, i32 noundef 13) #12
  %68 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  tail call void @crypto_finalize_hash_request(ptr noundef %69, ptr noundef %0, i32 noundef %61) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_xmit_cpu(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = icmp eq i32 %3, 0
  %6 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 32768
  %9 = select i1 %5, i32 %7, i32 %8
  %10 = add i32 %2, 3
  %11 = lshr i32 %10, 2
  %12 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 11
  %13 = or i32 %9, 4
  store i32 %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 16
  %18 = and i32 %9, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ahash_request, ptr %15, i32 1, i32 0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 3932160
  %24 = add nsw i32 %23, -262144
  %25 = lshr exact i32 %24, 18
  %26 = add nsw i32 %25, -1
  %27 = icmp ult i32 %26, 7
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds [7 x i32], ptr @switch.table.stm32_hash_xmit_cpu, i32 0, i32 %26
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi i32 [ 132, %20 ], [ %30, %28 ]
  %33 = getelementptr inbounds %struct.ahash_request, ptr %15, i32 2, i32 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 4
  %37 = or i32 %36, %32
  %38 = and i32 %22, 8388608
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = or i32 %9, 8388612
  store i32 %41, ptr %12, align 4
  %42 = getelementptr i8, ptr %17, i32 596
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %43, 64
  %45 = select i1 %44, i32 65600, i32 64
  %46 = or i32 %45, %37
  br label %47

47:                                               ; preds = %40, %31
  %48 = phi i32 [ %37, %31 ], [ %46, %40 ]
  %49 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 2) #12, !srcloc !11
  %52 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #12, !srcloc !11
  %53 = load i32, ptr %12, align 4
  %54 = or i32 %53, 1
  store i32 %54, ptr %12, align 4
  br label %55

55:                                               ; preds = %47, %4
  %56 = tail call i64 @ktime_get() #12
  %57 = add i64 %56, 10000000
  %58 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 36
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #12, !srcloc !8
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %67, %55
  %65 = tail call i64 @ktime_get() #12
  %66 = icmp sgt i64 %65, %57
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #12
  %68 = load ptr, ptr %58, align 4
  %69 = getelementptr i8, ptr %68, i32 36
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #12, !srcloc !8
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %64

73:                                               ; preds = %64
  %74 = load ptr, ptr %58, align 4
  %75 = getelementptr i8, ptr %74, i32 36
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #12, !srcloc !8
  %77 = and i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %234

79:                                               ; preds = %73, %67, %55
  %80 = load i32, ptr %12, align 4
  %81 = and i32 %80, 8388736
  %82 = icmp eq i32 %81, 8388608
  br i1 %82, label %83, label %143

83:                                               ; preds = %79
  %84 = or i32 %80, 128
  store i32 %84, ptr %12, align 4
  %85 = load ptr, ptr %14, align 4
  %86 = getelementptr inbounds %struct.crypto_async_request, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 16
  %88 = getelementptr i8, ptr %87, i32 596
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %120, label %91

91:                                               ; preds = %83
  %92 = load ptr, ptr %58, align 4
  %93 = getelementptr i8, ptr %92, i32 8
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #12, !srcloc !8
  %95 = and i32 %94, -32
  %96 = shl i32 %89, 3
  %97 = and i32 %96, 24
  %98 = or i32 %95, %97
  %99 = load ptr, ptr %58, align 4
  %100 = getelementptr i8, ptr %99, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #12, !srcloc !11
  %101 = icmp sgt i32 %89, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %91
  %103 = getelementptr i8, ptr %87, i32 84
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi ptr [ %111, %104 ], [ %103, %102 ]
  %106 = phi i32 [ %110, %104 ], [ %89, %102 ]
  %107 = load i32, ptr %105, align 4
  %108 = load ptr, ptr %58, align 4
  %109 = getelementptr i8, ptr %108, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #12, !srcloc !11
  %110 = add nsw i32 %106, -4
  %111 = getelementptr i8, ptr %105, i32 4
  %112 = icmp ugt i32 %106, 4
  br i1 %112, label %104, label %113

113:                                              ; preds = %104, %91
  %114 = load ptr, ptr %58, align 4
  %115 = getelementptr i8, ptr %114, i32 8
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #12, !srcloc !8
  %117 = or i32 %116, 256
  %118 = load ptr, ptr %58, align 4
  %119 = getelementptr i8, ptr %118, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #12, !srcloc !11
  br label %120

120:                                              ; preds = %113, %83
  %121 = tail call i64 @ktime_get() #12
  %122 = add i64 %121, 10000000
  %123 = load ptr, ptr %58, align 4
  %124 = getelementptr i8, ptr %123, i32 36
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #12, !srcloc !8
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %131, %120
  %129 = tail call i64 @ktime_get() #12
  %130 = icmp sgt i64 %129, %122
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #12
  %132 = load ptr, ptr %58, align 4
  %133 = getelementptr i8, ptr %132, i32 36
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #12, !srcloc !8
  %135 = and i32 %134, 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %128

137:                                              ; preds = %128
  %138 = load ptr, ptr %58, align 4
  %139 = getelementptr i8, ptr %138, i32 36
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #12, !srcloc !8
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %234

143:                                              ; preds = %137, %131, %120, %79
  %144 = icmp ult i32 %10, 4
  br i1 %144, label %155, label %145

145:                                              ; preds = %143
  %146 = call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i32 [ %153, %147 ], [ 0, %145 ]
  %149 = getelementptr i32, ptr %1, i32 %148
  %150 = load i32, ptr %149, align 4
  %151 = load ptr, ptr %58, align 4
  %152 = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #12, !srcloc !11
  %153 = add nuw nsw i32 %148, 1
  %154 = icmp eq i32 %153, %146
  br i1 %154, label %155, label %147

155:                                              ; preds = %147, %143
  br i1 %5, label %234, label %156

156:                                              ; preds = %155
  %157 = load ptr, ptr %58, align 4
  %158 = getelementptr i8, ptr %157, i32 8
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #12, !srcloc !8
  %160 = and i32 %159, -32
  %161 = shl i32 %2, 3
  %162 = and i32 %161, 24
  %163 = or i32 %160, %162
  %164 = load ptr, ptr %58, align 4
  %165 = getelementptr i8, ptr %164, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #12, !srcloc !11
  %166 = load ptr, ptr %58, align 4
  %167 = getelementptr i8, ptr %166, i32 8
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #12, !srcloc !8
  %169 = or i32 %168, 256
  %170 = load ptr, ptr %58, align 4
  %171 = getelementptr i8, ptr %170, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #12, !srcloc !11
  %172 = load i32, ptr %12, align 4
  %173 = and i32 %172, 8388608
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %234, label %175

175:                                              ; preds = %156
  %176 = tail call i64 @ktime_get() #12
  %177 = add i64 %176, 10000000
  %178 = load ptr, ptr %58, align 4
  %179 = getelementptr i8, ptr %178, i32 36
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #12, !srcloc !8
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %198, label %183

183:                                              ; preds = %186, %175
  %184 = tail call i64 @ktime_get() #12
  %185 = icmp sgt i64 %184, %177
  br i1 %185, label %192, label %186

186:                                              ; preds = %183
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #12
  %187 = load ptr, ptr %58, align 4
  %188 = getelementptr i8, ptr %187, i32 36
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #12, !srcloc !8
  %190 = and i32 %189, 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %198, label %183

192:                                              ; preds = %183
  %193 = load ptr, ptr %58, align 4
  %194 = getelementptr i8, ptr %193, i32 36
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #12, !srcloc !8
  %196 = and i32 %195, 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %234

198:                                              ; preds = %192, %186, %175
  %199 = load ptr, ptr %14, align 4
  %200 = getelementptr inbounds %struct.crypto_async_request, ptr %199, i32 0, i32 3
  %201 = load ptr, ptr %200, align 16
  %202 = getelementptr i8, ptr %201, i32 596
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %234, label %205

205:                                              ; preds = %198
  %206 = load ptr, ptr %58, align 4
  %207 = getelementptr i8, ptr %206, i32 8
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #12, !srcloc !8
  %209 = and i32 %208, -32
  %210 = shl i32 %203, 3
  %211 = and i32 %210, 24
  %212 = or i32 %209, %211
  %213 = load ptr, ptr %58, align 4
  %214 = getelementptr i8, ptr %213, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #12, !srcloc !11
  %215 = icmp sgt i32 %203, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %205
  %217 = getelementptr i8, ptr %201, i32 84
  br label %218

218:                                              ; preds = %218, %216
  %219 = phi ptr [ %225, %218 ], [ %217, %216 ]
  %220 = phi i32 [ %224, %218 ], [ %203, %216 ]
  %221 = load i32, ptr %219, align 4
  %222 = load ptr, ptr %58, align 4
  %223 = getelementptr i8, ptr %222, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %221) #12, !srcloc !11
  %224 = add nsw i32 %220, -4
  %225 = getelementptr i8, ptr %219, i32 4
  %226 = icmp ugt i32 %220, 4
  br i1 %226, label %218, label %227

227:                                              ; preds = %218, %205
  %228 = load ptr, ptr %58, align 4
  %229 = getelementptr i8, ptr %228, i32 8
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #12, !srcloc !8
  %231 = or i32 %230, 256
  %232 = load ptr, ptr %58, align 4
  %233 = getelementptr i8, ptr %232, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #12, !srcloc !11
  br label %234

234:                                              ; preds = %227, %198, %192, %156, %155, %137, %73
  %235 = phi i32 [ -115, %156 ], [ 0, %155 ], [ -110, %73 ], [ -110, %137 ], [ -110, %192 ], [ -115, %198 ], [ -115, %227 ]
  ret i32 %235
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_hmac_dma_send(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_async_request, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %5, i32 596
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 50
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %15, label %71

13:                                               ; preds = %1
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !8
  %20 = and i32 %19, -32
  %21 = shl i32 %7, 3
  %22 = and i32 %21, 24
  %23 = or i32 %20, %22
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #12, !srcloc !11
  %26 = icmp sgt i32 %7, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = getelementptr i8, ptr %5, i32 84
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %36, %29 ], [ %28, %27 ]
  %31 = phi i32 [ %35, %29 ], [ %7, %27 ]
  %32 = load i32, ptr %30, align 4
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #12, !srcloc !11
  %35 = add nsw i32 %31, -4
  %36 = getelementptr i8, ptr %30, i32 4
  %37 = icmp ugt i32 %31, 4
  br i1 %37, label %29, label %38

38:                                               ; preds = %29, %15
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #12, !srcloc !8
  %42 = or i32 %41, 256
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #12, !srcloc !11
  br label %45

45:                                               ; preds = %38, %13
  %46 = phi i32 [ -115, %38 ], [ 0, %13 ]
  %47 = tail call i64 @ktime_get() #12
  %48 = add i64 %47, 10000000
  %49 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 36
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #12, !srcloc !8
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %58, %45
  %56 = tail call i64 @ktime_get() #12
  %57 = icmp sgt i64 %56, %48
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #12
  %59 = load ptr, ptr %49, align 4
  %60 = getelementptr i8, ptr %59, i32 36
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #12, !srcloc !8
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %55

64:                                               ; preds = %55
  %65 = load ptr, ptr %49, align 4
  %66 = getelementptr i8, ptr %65, i32 36
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !8
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %64, %58, %45
  br label %94

71:                                               ; preds = %9
  %72 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 11
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 0, i32 0, i32 1
  %78 = getelementptr i8, ptr %5, i32 84
  %79 = add nuw i32 %7, 3
  %80 = and i32 %79, -4
  tail call void @sg_init_one(ptr noundef %77, ptr noundef %78, i32 noundef %80) #12
  br label %81

81:                                               ; preds = %76, %71
  %82 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 0, i32 0, i32 1
  %85 = tail call i32 @dma_map_sg_attrs(ptr noundef %83, ptr noundef %84, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %86 = getelementptr inbounds %struct.ahash_request, ptr %3, i32 2, i32 2
  store i32 %85, ptr %86, align 4
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load ptr, ptr %82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str) #14
  br label %94

90:                                               ; preds = %81
  %91 = load i32, ptr %6, align 4
  %92 = tail call fastcc i32 @stm32_hash_xmit_dma(ptr noundef %0, ptr noundef %84, i32 noundef %91, i32 noundef 0)
  %93 = load ptr, ptr %82, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %93, ptr noundef %84, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  br label %94

94:                                               ; preds = %90, %88, %70, %64
  %95 = phi i32 [ -12, %88 ], [ -110, %64 ], [ %92, %90 ], [ %46, %70 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_xmit_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.dma_tx_state, align 4
  %6 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 39
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call ptr %14(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %12, %9, %4
  %20 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.1) #14
  br label %76

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 13
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 6
  store ptr @stm32_hash_dma_callback, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 8
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 32784
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #12, !srcloc !8
  %32 = icmp eq i32 %3, 0
  %33 = and i32 %31, -8201
  %34 = select i1 %32, i32 8, i32 8200
  %35 = or i32 %34, %33
  %36 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #12, !srcloc !11
  %37 = load ptr, ptr %29, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #12, !srcloc !8
  %40 = and i32 %39, -32
  %41 = shl i32 %2, 3
  %42 = and i32 %41, 24
  %43 = or i32 %40, %42
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #12, !srcloc !11
  %46 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef nonnull %17) #12
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %76

50:                                               ; preds = %22
  %51 = load ptr, ptr %6, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dma_device, ptr %52, i32 0, i32 50
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %51) #12
  %55 = tail call i32 @wait_for_completion_timeout(ptr noundef %23, i32 noundef 10) #12
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 -110, i32 0
  %58 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #12, !annotation !12
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 49
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %58, i32 noundef %48, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 %57, i32 -110
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.2, i32 noundef %64) #14
  %69 = load ptr, ptr %6, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 47
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = call i32 %72(ptr noundef %69) #12
  br label %76

76:                                               ; preds = %74, %66, %50, %22, %19
  %77 = phi i32 [ -12, %19 ], [ -12, %22 ], [ -115, %50 ], [ %64, %66 ], [ %64, %74 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_hash_dma_callback(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 13
  tail call void @complete(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 8
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_hash_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_sha224_init(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -32
  store i32 364, ptr %2, align 32
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 4, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 8388608
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @stm32_hash_one_request, ptr %8, align 4
  store ptr @stm32_hash_prepare_req, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr null, ptr %9, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_hash_cra_sha256_init(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -32
  store i32 364, ptr %2, align 32
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 9, i32 4, i32 4
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 8388608
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @stm32_hash_one_request, ptr %8, align 4
  store ptr @stm32_hash_prepare_req, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr null, ptr %9, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_probe(ptr noundef %0) #1 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 76, i32 noundef 3520) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %155, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %8 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %7) #12
  %9 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 4
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i32
  br label %155

13:                                               ; preds = %6
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  %16 = tail call ptr @of_device_get_match_data(ptr noundef %3) #12
  %17 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 14
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 7
  %23 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.13, ptr noundef %22, i32 noundef 1, i32 noundef 0) #12
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.14) #14
  store i32 0, ptr %22, align 4
  br label %27

26:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #14
  br label %155

27:                                               ; preds = %25, %19
  %28 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %155, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %35, %34 ], [ %32, %30 ]
  %38 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %28, ptr noundef nonnull @stm32_hash_irq_handler, ptr noundef nonnull @stm32_hash_irq_thread, i32 noundef 8192, ptr noundef %37, ptr noundef nonnull %4) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #14
  br label %155

41:                                               ; preds = %36
  %42 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #12
  %43 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 2
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i32
  %47 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %46, ptr noundef nonnull @.str.9) #12
  br label %155

48:                                               ; preds = %41
  %49 = tail call i32 @clk_prepare(ptr noundef %42) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = tail call i32 @clk_enable(ptr noundef %42) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %42) #12
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi i32 [ %52, %54 ], [ %49, %48 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %56) #14
  br label %155

57:                                               ; preds = %51
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 50) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #12
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #12, !srcloc !13
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #12, !srcloc !14
  %60 = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %3) #12
  %61 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %62 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 3
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = icmp eq ptr %61, inttoptr (i32 -517 to ptr)
  br i1 %65, label %147, label %71

66:                                               ; preds = %57
  %67 = tail call i32 @reset_control_assert(ptr noundef %61) #12
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 429496) #12
  %69 = load ptr, ptr %62, align 4
  %70 = tail call i32 @reset_control_deassert(ptr noundef %69) #12
  br label %71

71:                                               ; preds = %66, %64
  %72 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 1
  store ptr %3, ptr %72, align 4
  %73 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %73, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  %74 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %74, i8 0, i64 44, i1 false) #12
  store i32 1, ptr %2, align 4
  %75 = load i32, ptr %15, align 4
  %76 = add i32 %75, 4
  %77 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 2
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 4, ptr %78, align 4
  %79 = load i32, ptr %22, align 4
  %80 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 %79, ptr %81, align 4
  %82 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.15) #12
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = ptrtoint ptr %82 to i32
  br label %104

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 12
  store ptr %82, ptr %87, align 4
  %88 = load ptr, ptr %82, align 4
  %89 = getelementptr inbounds %struct.dma_device, ptr %88, i32 0, i32 44
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = call i32 %90(ptr noundef %82, ptr noundef nonnull %2) #12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %87, align 4
  br label %97

97:                                               ; preds = %95, %86
  %98 = phi ptr [ %96, %95 ], [ %82, %86 ]
  %99 = phi i32 [ %93, %95 ], [ -38, %86 ]
  call void @dma_release_channel(ptr noundef %98) #12
  store ptr null, ptr %87, align 4
  %100 = load ptr, ptr %72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.16) #14
  br label %104

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 13
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 13, i32 1
  call void @__init_swait_queue_head(ptr noundef %103, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %106

104:                                              ; preds = %97, %84
  %105 = phi i32 [ %85, %84 ], [ %99, %97 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  switch i32 %105, label %141 [
    i32 0, label %106
    i32 -2, label %106
  ]

106:                                              ; preds = %104, %104, %101
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %107 = load ptr, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 0, i32 1), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 0, i32 1), align 4
  store ptr @stm32_hash, ptr %4, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  store volatile ptr %4, ptr %107, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %109 = load i16, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1), align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %111 = call ptr @crypto_engine_alloc_init(ptr noundef %3, i1 noundef zeroext true) #12
  %112 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 9
  store ptr %111, ptr %112, align 4
  %113 = icmp eq ptr %111, null
  br i1 %113, label %134, label %114

114:                                              ; preds = %106
  %115 = call i32 @crypto_engine_start(ptr noundef nonnull %111) #12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load ptr, ptr %9, align 4
  %119 = getelementptr i8, ptr %118, i32 1008
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #12, !srcloc !8
  %121 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 6
  store i32 %120, ptr %121, align 4
  %122 = call fastcc i32 @stm32_hash_register_algs(ptr noundef nonnull %4)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load ptr, ptr %9, align 4
  %126 = getelementptr i8, ptr %125, i32 1012
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #12, !srcloc !8
  %128 = load i32, ptr %121, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %127, i32 noundef %128) #14
  %129 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #12
  br label %155

130:                                              ; preds = %117, %114
  %131 = phi i32 [ %115, %114 ], [ %122, %117 ]
  %132 = load ptr, ptr %112, align 4
  %133 = call i32 @crypto_engine_exit(ptr noundef %132) #12
  br label %134

134:                                              ; preds = %130, %106
  %135 = phi i32 [ %131, %130 ], [ -12, %106 ]
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %136 = load ptr, ptr %108, align 4
  %137 = load ptr, ptr %4, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  store ptr %136, ptr %138, align 4
  store volatile ptr %137, ptr %136, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %108, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %139 = load i16, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1), align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  br label %141

141:                                              ; preds = %134, %104
  %142 = phi i32 [ %105, %104 ], [ %135, %134 ]
  %143 = getelementptr inbounds %struct.stm32_hash_dev, ptr %4, i32 0, i32 12
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call void @dma_release_channel(ptr noundef nonnull %144) #12
  br label %147

147:                                              ; preds = %146, %141, %64
  %148 = phi i32 [ %142, %146 ], [ %142, %141 ], [ -517, %64 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #12, !srcloc !13
  %149 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 0, i32 -1, ptr elementtype(i32) %58) #12, !srcloc !20
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  br label %153

153:                                              ; preds = %152, %147
  %154 = load ptr, ptr %43, align 4
  call void @clk_disable(ptr noundef %154) #12
  call void @clk_unprepare(ptr noundef %154) #12
  br label %155

155:                                              ; preds = %153, %124, %55, %45, %40, %27, %26, %11, %1
  %156 = phi i32 [ %12, %11 ], [ %38, %40 ], [ %47, %45 ], [ %56, %55 ], [ %148, %153 ], [ 0, %124 ], [ -12, %1 ], [ -22, %26 ], [ %28, %27 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #12, !srcloc !13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #12, !srcloc !20
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %75, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  br label %75

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_hash_pdata, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %18, align 4
  br label %24

24:                                               ; preds = %43, %22
  %25 = phi ptr [ %44, %43 ], [ %23, %22 ]
  %26 = phi ptr [ %45, %43 ], [ %18, %22 ]
  %27 = phi i32 [ %46, %43 ], [ 0, %22 ]
  %28 = getelementptr %struct.stm32_hash_algs_info, ptr %25, i32 %27, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %31, %24
  %32 = phi ptr [ %39, %31 ], [ %25, %24 ]
  %33 = phi i32 [ %37, %31 ], [ 0, %24 ]
  %34 = getelementptr %struct.stm32_hash_algs_info, ptr %32, i32 %27
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr %struct.ahash_alg, ptr %35, i32 %33
  tail call void @crypto_unregister_ahash(ptr noundef %36) #12
  %37 = add nuw i32 %33, 1
  %38 = load ptr, ptr %17, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %struct.stm32_hash_algs_info, ptr %39, i32 %27, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %31, label %43

43:                                               ; preds = %31, %24
  %44 = phi ptr [ %25, %24 ], [ %39, %31 ]
  %45 = phi ptr [ %26, %24 ], [ %38, %31 ]
  %46 = add nuw i32 %27, 1
  %47 = getelementptr inbounds %struct.stm32_hash_pdata, ptr %45, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %24, label %50

50:                                               ; preds = %43, %16
  %51 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @crypto_engine_exit(ptr noundef %52) #12
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1)) #12
  %54 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %58 = load i16, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1), align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr getelementptr inbounds (%struct.stm32_hash_drv, ptr @stm32_hash, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %60 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 12
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  tail call void @dma_release_channel(ptr noundef nonnull %61) #12
  br label %64

64:                                               ; preds = %63, %50
  %65 = load ptr, ptr %6, align 4
  tail call void @__pm_runtime_disable(ptr noundef %65, i1 noundef zeroext true) #12
  %66 = load ptr, ptr %6, align 4
  %67 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #12, !srcloc !13
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 0, i32 -1, ptr elementtype(i32) %67) #12, !srcloc !20
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  br label %72

72:                                               ; preds = %71, %64
  %73 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  tail call void @clk_disable(ptr noundef %74) #12
  tail call void @clk_unprepare(ptr noundef %74) #12
  br label %75

75:                                               ; preds = %72, %15, %10, %1
  %76 = phi i32 [ 0, %72 ], [ -19, %1 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_irq_handler(i32 noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !8
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, -3
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #12, !srcloc !11
  %13 = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 2
  store i32 %15, ptr %13, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #12, !srcloc !11
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi i32 [ 2, %9 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_irq_thread(i32 noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = and i32 %4, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %13

10:                                               ; preds = %2
  %11 = and i32 %4, 24
  %12 = icmp eq i32 %11, 24
  br i1 %12, label %13, label %18

13:                                               ; preds = %10, %7
  %14 = phi i32 [ -3, %7 ], [ -17, %10 ]
  %15 = and i32 %4, %14
  store i32 %15, ptr %3, align 4
  %16 = getelementptr inbounds %struct.stm32_hash_dev, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  tail call fastcc void @stm32_hash_finish_req(ptr noundef %17, i32 noundef 0)
  br label %18

18:                                               ; preds = %13, %10, %7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_hash_register_algs(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_hash_pdata, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %58, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %31, %7
  %10 = phi ptr [ %32, %31 ], [ %8, %7 ]
  %11 = phi ptr [ %33, %31 ], [ %3, %7 ]
  %12 = phi i32 [ %34, %31 ], [ 0, %7 ]
  %13 = getelementptr %struct.stm32_hash_algs_info, ptr %10, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %24, %9
  %17 = phi ptr [ %27, %24 ], [ %10, %9 ]
  %18 = phi i32 [ %25, %24 ], [ 0, %9 ]
  %19 = getelementptr %struct.stm32_hash_algs_info, ptr %17, i32 %12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.ahash_alg, ptr %20, i32 %18
  %22 = tail call i32 @crypto_register_ahash(ptr noundef %21) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = add nuw i32 %18, 1
  %26 = load ptr, ptr %2, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.stm32_hash_algs_info, ptr %27, i32 %12, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %16, label %31

31:                                               ; preds = %24, %9
  %32 = phi ptr [ %10, %9 ], [ %27, %24 ]
  %33 = phi ptr [ %11, %9 ], [ %26, %24 ]
  %34 = add nuw i32 %12, 1
  %35 = getelementptr inbounds %struct.stm32_hash_pdata, ptr %33, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %9, label %58

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.stm32_hash_dev, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.18, i32 noundef %12, i32 noundef %18) #14
  %41 = icmp eq i32 %12, 0
  br i1 %41, label %58, label %44

42:                                               ; preds = %49, %44
  %43 = icmp eq i32 %47, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %47, %42 ], [ %12, %38 ]
  %46 = phi i32 [ -1, %42 ], [ %18, %38 ]
  %47 = add i32 %45, -1
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %42, label %49

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %51, %49 ], [ %46, %44 ]
  %51 = add i32 %50, -1
  %52 = load ptr, ptr %2, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.stm32_hash_algs_info, ptr %53, i32 %47
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.ahash_alg, ptr %55, i32 %51
  tail call void @crypto_unregister_ahash(ptr noundef %56) #12
  %57 = icmp eq i32 %51, 0
  br i1 %57, label %42, label %49

58:                                               ; preds = %42, %38, %31, %1
  %59 = phi i32 [ %22, %38 ], [ 0, %1 ], [ %22, %42 ], [ 0, %31 ]
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_runtime_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #12
  tail call void @clk_unprepare(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_hash_runtime_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #12
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = getelementptr inbounds %struct.stm32_hash_dev, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.19) #14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
!8 = !{i64 5109060}
!9 = !{i64 2153551141}
!10 = !{i64 2153550983}
!11 = !{i64 5108642}
!12 = !{!"auto-init"}
!13 = !{i64 477468, i64 2147967439, i64 2147967465, i64 2147967512, i64 2147967534, i64 2147967562, i64 2147967582}
!14 = !{i64 2147979651, i64 2147979677, i64 2147979706, i64 2147979740, i64 2147979771, i64 2147979794}
!15 = !{i64 2148915636}
!16 = !{i64 2148911460}
!17 = !{i64 2148911535, i64 2148911562, i64 2148911609, i64 2148911631, i64 2148911659, i64 2148911679}
!18 = !{i64 2148938639}
!19 = !{i64 2147979158}
!20 = !{i64 464037, i64 464062, i64 464084, i64 464100, i64 464112, i64 464132, i64 464156, i64 464172, i64 464184}
!21 = !{i64 2147979284}
